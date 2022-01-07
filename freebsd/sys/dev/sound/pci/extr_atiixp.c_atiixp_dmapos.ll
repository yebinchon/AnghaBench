; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_dmapos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_atiixp.c_atiixp_dmapos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atiixp_chinfo = type { i32, i32, i32, i32, i32, i64, i32, %struct.atiixp_info* }
%struct.atiixp_info = type { i32 }

@ATI_IXP_DMA_RETRY_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"PCMDIR_%s: invalid DMA pointer ptr=%u\0A\00", align 1
@PCMDIR_PLAY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"PLAY\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"REC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atiixp_chinfo*)* @atiixp_dmapos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atiixp_dmapos(%struct.atiixp_chinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atiixp_chinfo*, align 8
  %4 = alloca %struct.atiixp_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atiixp_chinfo* %0, %struct.atiixp_chinfo** %3, align 8
  %10 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %11 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %10, i32 0, i32 7
  %12 = load %struct.atiixp_info*, %struct.atiixp_info** %11, align 8
  store %struct.atiixp_info* %12, %struct.atiixp_info** %4, align 8
  %13 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %14 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store volatile i32 %15, i32* %5, align 4
  %16 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %17 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @sndbuf_getbufaddr(i32 %18)
  store volatile i32 %19, i32* %6, align 4
  %20 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %21 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %24 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %22, %25
  store volatile i32 %26, i32* %7, align 4
  %27 = load i32, i32* @ATI_IXP_DMA_RETRY_MAX, align 4
  store volatile i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %46, %1
  %29 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %30 = load volatile i32, i32* %5, align 4
  %31 = call i32 @atiixp_rd(%struct.atiixp_info* %29, i32 %30)
  store volatile i32 %31, i32* %9, align 4
  %32 = load volatile i32, i32* %9, align 4
  %33 = load volatile i32, i32* %6, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %46

36:                                               ; preds = %28
  %37 = load volatile i32, i32* %6, align 4
  %38 = load volatile i32, i32* %9, align 4
  %39 = sub nsw i32 %38, %37
  store volatile i32 %39, i32* %9, align 4
  %40 = load volatile i32, i32* %9, align 4
  %41 = load volatile i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load volatile i32, i32* %9, align 4
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %35
  %47 = load volatile i32, i32* %8, align 4
  %48 = add nsw i32 %47, -1
  store volatile i32 %48, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %28, label %50

50:                                               ; preds = %46
  %51 = load %struct.atiixp_info*, %struct.atiixp_info** %4, align 8
  %52 = getelementptr inbounds %struct.atiixp_info, %struct.atiixp_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.atiixp_chinfo*, %struct.atiixp_chinfo** %3, align 8
  %55 = getelementptr inbounds %struct.atiixp_chinfo, %struct.atiixp_chinfo* %54, i32 0, i32 5
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCMDIR_PLAY, align 8
  %58 = icmp eq i64 %56, %57
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %61 = load volatile i32, i32* %9, align 4
  %62 = call i32 (i32, i8*, i8*, i32, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %60, i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %50, %43
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @sndbuf_getbufaddr(i32) #1

declare dso_local i32 @atiixp_rd(%struct.atiixp_info*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
