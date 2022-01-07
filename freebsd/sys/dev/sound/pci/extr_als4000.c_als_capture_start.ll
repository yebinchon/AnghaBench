; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_capture_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_als4000.c_als_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sc_chinfo = type { i32, i32, i32, %struct.sc_info* }
%struct.sc_info = type { i32 }

@AFMT_16BIT = common dso_local global i32 0, align 4
@DSP_CMD_SPKON = common dso_local global i32 0, align 4
@ALS_GCR_FIFO1_START = common dso_local global i32 0, align 4
@ALS_GCR_FIFO1_COUNT = common dso_local global i32 0, align 4
@ALS_FIFO1_LENGTH_LO = common dso_local global i32 0, align 4
@ALS_FIFO1_LENGTH_HI = common dso_local global i32 0, align 4
@ALS_FIFO1_RUN = common dso_local global i32 0, align 4
@ALS_FIFO1_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sc_chinfo*)* @als_capture_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @als_capture_start(%struct.sc_chinfo* %0) #0 {
  %2 = alloca %struct.sc_chinfo*, align 8
  %3 = alloca %struct.sc_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sc_chinfo* %0, %struct.sc_chinfo** %2, align 8
  %8 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %9 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %8, i32 0, i32 3
  %10 = load %struct.sc_info*, %struct.sc_info** %9, align 8
  store %struct.sc_info* %10, %struct.sc_info** %3, align 8
  %11 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %12 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @sndbuf_getbufaddr(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %16 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sndbuf_getsize(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %6, align 4
  %21 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %22 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AFMT_16BIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* %6, align 4
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %27, %1
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %34 = load i32, i32* @DSP_CMD_SPKON, align 4
  %35 = call i32 @als_esp_wr(%struct.sc_info* %33, i32 %34)
  %36 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %37 = call i32 @als_set_speed(%struct.sc_chinfo* %36)
  %38 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %39 = load i32, i32* @ALS_GCR_FIFO1_START, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @als_gcr_wr(%struct.sc_info* %38, i32 %39, i32 %40)
  %42 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %43 = load i32, i32* @ALS_GCR_FIFO1_COUNT, align 4
  %44 = load i32, i32* %5, align 4
  %45 = sub nsw i32 %44, 1
  %46 = call i32 @als_gcr_wr(%struct.sc_info* %42, i32 %43, i32 %45)
  %47 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %48 = load i32, i32* @ALS_FIFO1_LENGTH_LO, align 4
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, 255
  %51 = call i32 @als_mix_wr(%struct.sc_info* %47, i32 %48, i32 %50)
  %52 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %53 = load i32, i32* @ALS_FIFO1_LENGTH_HI, align 4
  %54 = load i32, i32* %6, align 4
  %55 = ashr i32 %54, 8
  %56 = call i32 @als_mix_wr(%struct.sc_info* %52, i32 %53, i32 %55)
  %57 = load i32, i32* @ALS_FIFO1_RUN, align 4
  %58 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %59 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %60 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @als_get_fifo_format(%struct.sc_info* %58, i32 %61)
  %63 = or i32 %57, %62
  store i32 %63, i32* %7, align 4
  %64 = load %struct.sc_info*, %struct.sc_info** %3, align 8
  %65 = load i32, i32* @ALS_FIFO1_CONTROL, align 4
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @als_mix_wr(%struct.sc_info* %64, i32 %65, i32 %66)
  %68 = load %struct.sc_chinfo*, %struct.sc_chinfo** %2, align 8
  %69 = getelementptr inbounds %struct.sc_chinfo, %struct.sc_chinfo* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  ret void
}

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @sndbuf_getsize(i32) #1

declare dso_local i32 @als_esp_wr(%struct.sc_info*, i32) #1

declare dso_local i32 @als_set_speed(%struct.sc_chinfo*) #1

declare dso_local i32 @als_gcr_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @als_mix_wr(%struct.sc_info*, i32, i32) #1

declare dso_local i32 @als_get_fifo_format(%struct.sc_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
