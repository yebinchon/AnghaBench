; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.proto_res*, %struct.proto_softc* }
%struct.proto_res = type { i32 }
%struct.proto_softc = type { i64, i32 }
%struct.thread = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @proto_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
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
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %40

22:                                               ; preds = %4
  %23 = load %struct.cdev*, %struct.cdev** %5, align 8
  %24 = getelementptr inbounds %struct.cdev, %struct.cdev* %23, i32 0, i32 0
  %25 = load %struct.proto_res*, %struct.proto_res** %24, align 8
  store %struct.proto_res* %25, %struct.proto_res** %9, align 8
  %26 = load %struct.proto_res*, %struct.proto_res** %9, align 8
  %27 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %22
  %31 = load %struct.proto_res*, %struct.proto_res** %9, align 8
  %32 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.proto_softc*, %struct.proto_softc** %10, align 8
  %34 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  store i32 0, i32* %11, align 4
  br label %39

37:                                               ; preds = %22
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %30
  br label %42

40:                                               ; preds = %4
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %11, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = load %struct.proto_softc*, %struct.proto_softc** %10, align 8
  %44 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %43, i32 0, i32 1
  %45 = call i32 @mtx_unlock(i32* %44)
  %46 = load i32, i32* %11, align 4
  ret i32 %46
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
