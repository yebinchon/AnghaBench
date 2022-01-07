; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.proto_res*, %struct.proto_softc* }
%struct.proto_res = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.proto_softc = type { i64, i32 }
%struct.thread = type { i32 }

@PROTO_RES_BUSDMA = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @proto_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.proto_res*, align 8
  %10 = alloca %struct.proto_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %12 = load %struct.cdev*, %struct.cdev** %5, align 8
  %13 = getelementptr inbounds %struct.cdev, %struct.cdev* %12, i32 0, i32 1
  %14 = load %struct.proto_softc*, %struct.proto_softc** %13, align 8
  store %struct.proto_softc* %14, %struct.proto_softc** %10, align 8
  %15 = load %struct.proto_softc*, %struct.proto_softc** %10, align 8
  %16 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %15, i32 0, i32 1
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.proto_softc*, %struct.proto_softc** %10, align 8
  %19 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %53

22:                                               ; preds = %4
  %23 = load %struct.cdev*, %struct.cdev** %5, align 8
  %24 = getelementptr inbounds %struct.cdev, %struct.cdev* %23, i32 0, i32 0
  %25 = load %struct.proto_res*, %struct.proto_res** %24, align 8
  store %struct.proto_res* %25, %struct.proto_res** %9, align 8
  %26 = load %struct.proto_res*, %struct.proto_res** %9, align 8
  %27 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %50

30:                                               ; preds = %22
  %31 = load %struct.proto_res*, %struct.proto_res** %9, align 8
  %32 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PROTO_RES_BUSDMA, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.proto_softc*, %struct.proto_softc** %10, align 8
  %38 = load %struct.proto_res*, %struct.proto_res** %9, align 8
  %39 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @proto_busdma_cleanup(%struct.proto_softc* %37, i32 %41)
  br label %43

43:                                               ; preds = %36, %30
  %44 = load %struct.proto_res*, %struct.proto_res** %9, align 8
  %45 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.proto_softc*, %struct.proto_softc** %10, align 8
  %47 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, -1
  store i64 %49, i64* %47, align 8
  store i32 0, i32* %11, align 4
  br label %52

50:                                               ; preds = %22
  %51 = load i32, i32* @ENXIO, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %43
  br label %55

53:                                               ; preds = %4
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = load %struct.proto_softc*, %struct.proto_softc** %10, align 8
  %57 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %56, i32 0, i32 1
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load i32, i32* %11, align 4
  ret i32 %59
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @proto_busdma_cleanup(%struct.proto_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
