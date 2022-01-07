; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pms/freebsd/driver/ini/src/extr_agtiapi.c_agtiapi_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.agtiapi_softc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ccb_getdev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@maxTargets = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.cam_path*, i8*)* @agtiapi_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agtiapi_async(i8* %0, i32 %1, %struct.cam_path* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.agtiapi_softc*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca %struct.ccb_getdev*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.cam_path* %2, %struct.cam_path** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.agtiapi_softc*
  store %struct.agtiapi_softc* %14, %struct.agtiapi_softc** %9, align 8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %52 [
    i32 128, label %16
  ]

16:                                               ; preds = %4
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.ccb_getdev*
  store %struct.ccb_getdev* %18, %struct.ccb_getdev** %12, align 8
  %19 = load %struct.ccb_getdev*, %struct.ccb_getdev** %12, align 8
  %20 = icmp eq %struct.ccb_getdev* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %53

22:                                               ; preds = %16
  %23 = load %struct.ccb_getdev*, %struct.ccb_getdev** %12, align 8
  %24 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %10, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp uge i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %22
  %30 = load i64, i64* %10, align 8
  %31 = load i64, i64* @maxTargets, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %9, align 8
  %35 = icmp ne %struct.agtiapi_softc* %34, null
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %9, align 8
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @INDEX(%struct.agtiapi_softc* %37, i64 %38)
  store i64 %39, i64* %10, align 8
  %40 = load %struct.agtiapi_softc*, %struct.agtiapi_softc** %9, align 8
  %41 = getelementptr inbounds %struct.agtiapi_softc, %struct.agtiapi_softc* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i64, i64* %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %43
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %11, align 8
  %45 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @agtiapi_adjust_queue_depth(%struct.cam_path* %45, i32 %48)
  br label %50

50:                                               ; preds = %36, %33
  br label %51

51:                                               ; preds = %50, %29, %22
  br label %53

52:                                               ; preds = %4
  br label %53

53:                                               ; preds = %52, %51, %21
  ret void
}

declare dso_local i64 @INDEX(%struct.agtiapi_softc*, i64) #1

declare dso_local i32 @agtiapi_adjust_queue_depth(%struct.cam_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
