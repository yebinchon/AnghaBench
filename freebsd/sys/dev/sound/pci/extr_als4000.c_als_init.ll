; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_info = type { i32 }

@ALS_SB16_CONFIG = common dso_local global i32 0, align 4
@ALS_SB16_DMA_SETUP = common dso_local global i32 0, align 4
@ALS_GCR_MISC = common dso_local global i32 0, align 4
@ALS_GCR_DMA_EMULATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"GCR_DMA_EMULATION 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sc_info*)* @als_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @als_init(%struct.sc_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sc_info* %0, %struct.sc_info** %3, align 8
  %6 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %7 = call i64 @als_esp_reset(%struct.sc_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %56

10:                                               ; preds = %1
  %11 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %12 = load i32, i32* @ALS_SB16_CONFIG, align 4
  %13 = call i32 @als_mix_rd(%struct.sc_info* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %15 = load i32, i32* @ALS_SB16_CONFIG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, 128
  %18 = call i32 @als_mix_wr(%struct.sc_info* %14, i32 %15, i32 %17)
  %19 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %20 = load i32, i32* @ALS_SB16_DMA_SETUP, align 4
  %21 = call i32 @als_mix_wr(%struct.sc_info* %19, i32 %20, i32 1)
  %22 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %23 = load i32, i32* @ALS_SB16_CONFIG, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 127
  %26 = call i32 @als_mix_wr(%struct.sc_info* %22, i32 %23, i32 %25)
  %27 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %28 = load i32, i32* @ALS_GCR_MISC, align 4
  %29 = call i32 @als_gcr_rd(%struct.sc_info* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %31 = load i32, i32* @ALS_GCR_MISC, align 4
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, 163840
  %34 = call i32 @als_gcr_wr(%struct.sc_info* %30, i32 %31, i32 %33)
  store i32 145, i32* %4, align 4
  br label %35

35:                                               ; preds = %42, %10
  %36 = load i32, i32* %4, align 4
  %37 = icmp sle i32 %36, 150
  br i1 %37, label %38, label %45

38:                                               ; preds = %35
  %39 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @als_gcr_wr(%struct.sc_info* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %35

45:                                               ; preds = %35
  %46 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %47 = load i32, i32* @ALS_GCR_DMA_EMULATION, align 4
  %48 = call i32 @als_gcr_rd(%struct.sc_info* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %50 = load i32, i32* @ALS_GCR_DMA_EMULATION, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @als_gcr_wr(%struct.sc_info* %49, i32 %50, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = call i32 @DEB(i32 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %45, %9
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @als_esp_reset(%struct.sc_info*) #1

declare dso_local i32 @als_mix_rd(%struct.sc_info*, i32) #1

declare dso_local i32 @als_mix_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @als_gcr_rd(%struct.sc_info*, i32) #1

declare dso_local i32 @als_gcr_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
