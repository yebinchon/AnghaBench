; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_trigger.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_via82c686.c_viachan_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_chinfo = type { i32, i32, i32, %struct.via_dma_op*, %struct.via_info* }
%struct.via_dma_op = type { i32 }
%struct.via_info = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"ado located at va=%p pa=%x\0A\00", align 1
@PCMTRIG_START = common dso_local global i32 0, align 4
@VIA_RPCTRL_START = common dso_local global i32 0, align 4
@VIA_RPCTRL_TERMINATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"viachan_trigger: go=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32)* @viachan_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viachan_trigger(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.via_chinfo*, align 8
  %9 = alloca %struct.via_info*, align 8
  %10 = alloca %struct.via_dma_op*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.via_chinfo*
  store %struct.via_chinfo* %13, %struct.via_chinfo** %8, align 8
  %14 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %15 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %14, i32 0, i32 4
  %16 = load %struct.via_info*, %struct.via_info** %15, align 8
  store %struct.via_info* %16, %struct.via_info** %9, align 8
  %17 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %18 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @PCMTRIG_COMMON(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

24:                                               ; preds = %3
  %25 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %26 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %25, i32 0, i32 3
  %27 = load %struct.via_dma_op*, %struct.via_dma_op** %26, align 8
  store %struct.via_dma_op* %27, %struct.via_dma_op** %10, align 8
  %28 = load %struct.via_dma_op*, %struct.via_dma_op** %10, align 8
  %29 = ptrtoint %struct.via_dma_op* %28 to i32
  %30 = load i32, i32* %11, align 4
  %31 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = call i32 @DEB(i32 %31)
  %33 = load %struct.via_info*, %struct.via_info** %9, align 8
  %34 = getelementptr inbounds %struct.via_info, %struct.via_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @snd_mtxlock(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PCMTRIG_START, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %55

40:                                               ; preds = %24
  %41 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %42 = call i32 @via_buildsgdt(%struct.via_chinfo* %41)
  %43 = load %struct.via_info*, %struct.via_info** %9, align 8
  %44 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %45 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @via_wr(%struct.via_info* %43, i32 %46, i32 %47, i32 4)
  %49 = load %struct.via_info*, %struct.via_info** %9, align 8
  %50 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %51 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @VIA_RPCTRL_START, align 4
  %54 = call i32 @via_wr(%struct.via_info* %49, i32 %52, i32 %53, i32 1)
  br label %62

55:                                               ; preds = %24
  %56 = load %struct.via_info*, %struct.via_info** %9, align 8
  %57 = load %struct.via_chinfo*, %struct.via_chinfo** %8, align 8
  %58 = getelementptr inbounds %struct.via_chinfo, %struct.via_chinfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VIA_RPCTRL_TERMINATE, align 4
  %61 = call i32 @via_wr(%struct.via_info* %56, i32 %59, i32 %60, i32 1)
  br label %62

62:                                               ; preds = %55, %40
  %63 = load %struct.via_info*, %struct.via_info** %9, align 8
  %64 = getelementptr inbounds %struct.via_info, %struct.via_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @snd_mtxunlock(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = call i32 @DEB(i32 %68)
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %62, %23
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @PCMTRIG_COMMON(i32) #1

declare dso_local i32 @DEB(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @snd_mtxlock(i32) #1

declare dso_local i32 @via_buildsgdt(%struct.via_chinfo*) #1

declare dso_local i32 @via_wr(%struct.via_info*, i32, i32, i32) #1

declare dso_local i32 @snd_mtxunlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
