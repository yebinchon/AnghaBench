; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.proto_res*, %struct.proto_softc* }
%struct.proto_res = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.proto_softc = type { i32 }
%struct.thread = type { i32 }
%struct.proto_ioc_region = type { i32, i32 }
%struct.proto_ioc_busdma = type { i32 }

@PROTO_RES_BUSDMA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PROTO_RES_PCICFG = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @proto_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proto_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.proto_ioc_region*, align 8
  %12 = alloca %struct.proto_ioc_busdma*, align 8
  %13 = alloca %struct.proto_res*, align 8
  %14 = alloca %struct.proto_softc*, align 8
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %16 = load %struct.cdev*, %struct.cdev** %6, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 1
  %18 = load %struct.proto_softc*, %struct.proto_softc** %17, align 8
  store %struct.proto_softc* %18, %struct.proto_softc** %14, align 8
  %19 = load %struct.cdev*, %struct.cdev** %6, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 0
  %21 = load %struct.proto_res*, %struct.proto_res** %20, align 8
  store %struct.proto_res* %21, %struct.proto_res** %13, align 8
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %75 [
    i32 128, label %23
    i32 129, label %56
  ]

23:                                               ; preds = %5
  %24 = load %struct.proto_res*, %struct.proto_res** %13, align 8
  %25 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PROTO_RES_BUSDMA, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %15, align 4
  br label %77

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = inttoptr i64 %32 to %struct.proto_ioc_region*
  store %struct.proto_ioc_region* %33, %struct.proto_ioc_region** %11, align 8
  %34 = load %struct.proto_res*, %struct.proto_res** %13, align 8
  %35 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.proto_ioc_region*, %struct.proto_ioc_region** %11, align 8
  %38 = getelementptr inbounds %struct.proto_ioc_region, %struct.proto_ioc_region* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.proto_res*, %struct.proto_res** %13, align 8
  %40 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @PROTO_RES_PCICFG, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.proto_ioc_region*, %struct.proto_ioc_region** %11, align 8
  %46 = getelementptr inbounds %struct.proto_ioc_region, %struct.proto_ioc_region* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %55

47:                                               ; preds = %31
  %48 = load %struct.proto_res*, %struct.proto_res** %13, align 8
  %49 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @rman_get_start(i32 %51)
  %53 = load %struct.proto_ioc_region*, %struct.proto_ioc_region** %11, align 8
  %54 = getelementptr inbounds %struct.proto_ioc_region, %struct.proto_ioc_region* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %47, %44
  br label %77

56:                                               ; preds = %5
  %57 = load %struct.proto_res*, %struct.proto_res** %13, align 8
  %58 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PROTO_RES_BUSDMA, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %15, align 4
  br label %77

64:                                               ; preds = %56
  %65 = load i64, i64* %8, align 8
  %66 = inttoptr i64 %65 to %struct.proto_ioc_busdma*
  store %struct.proto_ioc_busdma* %66, %struct.proto_ioc_busdma** %12, align 8
  %67 = load %struct.proto_softc*, %struct.proto_softc** %14, align 8
  %68 = load %struct.proto_res*, %struct.proto_res** %13, align 8
  %69 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.proto_ioc_busdma*, %struct.proto_ioc_busdma** %12, align 8
  %73 = load %struct.thread*, %struct.thread** %10, align 8
  %74 = call i32 @proto_busdma_ioctl(%struct.proto_softc* %67, i32 %71, %struct.proto_ioc_busdma* %72, %struct.thread* %73)
  store i32 %74, i32* %15, align 4
  br label %77

75:                                               ; preds = %5
  %76 = load i32, i32* @ENOIOCTL, align 4
  store i32 %76, i32* %15, align 4
  br label %77

77:                                               ; preds = %75, %64, %62, %55, %29
  %78 = load i32, i32* %15, align 4
  ret i32 %78
}

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @proto_busdma_ioctl(%struct.proto_softc*, i32, %struct.proto_ioc_busdma*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
