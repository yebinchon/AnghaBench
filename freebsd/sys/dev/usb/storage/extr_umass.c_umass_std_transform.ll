; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_std_transform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_std_transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32 (%struct.umass_softc*, i32*, i32)* }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umass_softc*, %union.ccb*, i32*, i32)* @umass_std_transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_std_transform(%struct.umass_softc* %0, %union.ccb* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.umass_softc*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.umass_softc* %0, %struct.umass_softc** %6, align 8
  store %union.ccb* %1, %union.ccb** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.umass_softc*, %struct.umass_softc** %6, align 8
  %12 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %11, i32 0, i32 0
  %13 = load i32 (%struct.umass_softc*, i32*, i32)*, i32 (%struct.umass_softc*, i32*, i32)** %12, align 8
  %14 = load %struct.umass_softc*, %struct.umass_softc** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 %13(%struct.umass_softc* %14, i32* %15, i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %27

20:                                               ; preds = %4
  %21 = load i32, i32* @CAM_REQ_CMP, align 4
  %22 = load %union.ccb*, %union.ccb** %7, align 8
  %23 = bitcast %union.ccb* %22 to %struct.TYPE_2__*
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %union.ccb*, %union.ccb** %7, align 8
  %26 = call i32 @xpt_done(%union.ccb* %25)
  store i32 0, i32* %5, align 4
  br label %46

27:                                               ; preds = %4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %27
  %31 = load %union.ccb*, %union.ccb** %7, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_2__*
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @xpt_freeze_devq(i32 %34, i32 1)
  %36 = load i32, i32* @CAM_REQ_INVALID, align 4
  %37 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %38 = or i32 %36, %37
  %39 = load %union.ccb*, %union.ccb** %7, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load %union.ccb*, %union.ccb** %7, align 8
  %43 = call i32 @xpt_done(%union.ccb* %42)
  store i32 0, i32* %5, align 4
  br label %46

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  store i32 1, i32* %5, align 4
  br label %46

46:                                               ; preds = %45, %30, %20
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
