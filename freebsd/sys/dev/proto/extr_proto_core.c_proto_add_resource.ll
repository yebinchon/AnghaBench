; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_add_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/proto/extr_proto_core.c_proto_add_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_softc = type { i64, %struct.proto_res* }
%struct.proto_res = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.resource* }
%struct.resource = type { i32 }

@PROTO_RES_UNUSED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PROTO_RES_MAX = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_add_resource(%struct.proto_softc* %0, i32 %1, i32 %2, %struct.resource* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.proto_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.proto_res*, align 8
  store %struct.proto_softc* %0, %struct.proto_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.resource* %3, %struct.resource** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @PROTO_RES_UNUSED, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %5, align 4
  br label %43

16:                                               ; preds = %4
  %17 = load %struct.proto_softc*, %struct.proto_softc** %6, align 8
  %18 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PROTO_RES_MAX, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ENOSPC, align 4
  store i32 %23, i32* %5, align 4
  br label %43

24:                                               ; preds = %16
  %25 = load %struct.proto_softc*, %struct.proto_softc** %6, align 8
  %26 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %25, i32 0, i32 1
  %27 = load %struct.proto_res*, %struct.proto_res** %26, align 8
  %28 = load %struct.proto_softc*, %struct.proto_softc** %6, align 8
  %29 = getelementptr inbounds %struct.proto_softc, %struct.proto_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %27, i64 %30
  store %struct.proto_res* %32, %struct.proto_res** %10, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.proto_res*, %struct.proto_res** %10, align 8
  %35 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.proto_res*, %struct.proto_res** %10, align 8
  %38 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.resource*, %struct.resource** %9, align 8
  %40 = load %struct.proto_res*, %struct.proto_res** %10, align 8
  %41 = getelementptr inbounds %struct.proto_res, %struct.proto_res* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store %struct.resource* %39, %struct.resource** %42, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %24, %22, %14
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
