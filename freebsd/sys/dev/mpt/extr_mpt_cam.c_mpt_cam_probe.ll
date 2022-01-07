; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_cam_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@MPT_ROLE_TARGET = common dso_local global i32 0, align 4
@MPT_ROLE_INITIATOR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_cam_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_cam_probe(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  %5 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %6 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MPT_ROLE_TARGET, align 4
  %20 = load i32, i32* @MPT_ROLE_INITIATOR, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %17
  %25 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = icmp ne %struct.TYPE_2__* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %31 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %17
  store i32 0, i32* %2, align 4
  br label %39

37:                                               ; preds = %29, %24
  %38 = load i32, i32* @ENODEV, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %36
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
