; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_init_dev.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [16 x i8] c"amd ntb db bits\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@AMD_LINK_HB_TIMEOUT = common dso_local global i32 0, align 4
@amd_link_hb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Unsupported AMD NTB topology %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AMD_EVENT_INTMASK = common dso_local global i32 0, align 4
@AMD_INTMASK_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_softc*)* @amd_ntb_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_init_dev(%struct.amd_ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amd_ntb_softc*, align 8
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %3, align 8
  %4 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %5 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %4, i32 0, i32 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = shl i64 1, %8
  %10 = sub i64 %9, 1
  %11 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %14 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %13, i32 0, i32 7
  %15 = load i32, i32* @MTX_SPIN, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  %17 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %49 [
    i32 129, label %20
    i32 128, label %20
  ]

20:                                               ; preds = %1, %1
  %21 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %26 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 129
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %30, i32 0, i32 3
  store i32 0, i32* %31, align 8
  %32 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %33 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %32, i32 0, i32 4
  store i32 32, i32* %33, align 4
  br label %39

34:                                               ; preds = %20
  %35 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %35, i32 0, i32 3
  store i32 32, i32* %36, align 8
  %37 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %37, i32 0, i32 4
  store i32 0, i32* %38, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %41 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %40, i32 0, i32 6
  %42 = call i32 @callout_init(i32* %41, i32 1)
  %43 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %43, i32 0, i32 6
  %45 = load i32, i32* @AMD_LINK_HB_TIMEOUT, align 4
  %46 = load i32, i32* @amd_link_hb, align 4
  %47 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %48 = call i32 @callout_reset(i32* %44, i32 %45, i32 %46, %struct.amd_ntb_softc* %47)
  br label %55

49:                                               ; preds = %1
  %50 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %51 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @amd_ntb_printf(i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %2, align 4
  br label %64

55:                                               ; preds = %39
  %56 = load i32, i32* @AMD_EVENT_INTMASK, align 4
  %57 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %58 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32, i32* @AMD_INTMASK_OFFSET, align 4
  %60 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %61 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @amd_ntb_reg_write(i32 4, i32 %59, i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %55, %49
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.amd_ntb_softc*) #1

declare dso_local i32 @amd_ntb_printf(i32, i8*, i32) #1

declare dso_local i32 @amd_ntb_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
