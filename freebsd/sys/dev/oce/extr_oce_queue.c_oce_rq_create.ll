; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_rq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { %struct.TYPE_6__*, i64, %struct.TYPE_5__, %struct.oce_cq*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.oce_cq = type { i32, %struct.oce_rq* }
%struct.TYPE_7__ = type { i64 }
%struct.oce_eq = type { i64, %struct.oce_cq** }

@CQ_LEN_2048 = common dso_local global i32 0, align 4
@CQ_LEN_1024 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@oce_rq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oce_rq*, i32, %struct.oce_eq*)* @oce_rq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_rq_create(%struct.oce_rq* %0, i32 %1, %struct.oce_eq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.oce_rq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.oce_eq*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.oce_cq*, align 8
  store %struct.oce_rq* %0, %struct.oce_rq** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.oce_eq* %2, %struct.oce_eq** %7, align 8
  %10 = load %struct.oce_rq*, %struct.oce_rq** %5, align 8
  %11 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %10, i32 0, i32 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = load %struct.oce_eq*, %struct.oce_eq** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @CQ_LEN_2048, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @CQ_LEN_1024, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  %25 = call %struct.oce_cq* @oce_cq_create(%struct.TYPE_7__* %13, %struct.oce_eq* %14, i32 %24, i32 4, i32 0, i32 1, i32 0, i32 3)
  store %struct.oce_cq* %25, %struct.oce_cq** %9, align 8
  %26 = load %struct.oce_cq*, %struct.oce_cq** %9, align 8
  %27 = icmp ne %struct.oce_cq* %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %4, align 4
  br label %66

30:                                               ; preds = %23
  %31 = load %struct.oce_cq*, %struct.oce_cq** %9, align 8
  %32 = load %struct.oce_rq*, %struct.oce_rq** %5, align 8
  %33 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %32, i32 0, i32 3
  store %struct.oce_cq* %31, %struct.oce_cq** %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.oce_rq*, %struct.oce_rq** %5, align 8
  %36 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  %38 = load %struct.oce_rq*, %struct.oce_rq** %5, align 8
  %39 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.oce_rq*, %struct.oce_rq** %5, align 8
  %41 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.oce_rq*, %struct.oce_rq** %5, align 8
  %45 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.oce_cq*, %struct.oce_cq** %9, align 8
  %49 = load %struct.oce_eq*, %struct.oce_eq** %7, align 8
  %50 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %49, i32 0, i32 1
  %51 = load %struct.oce_cq**, %struct.oce_cq*** %50, align 8
  %52 = load %struct.oce_eq*, %struct.oce_eq** %7, align 8
  %53 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.oce_cq*, %struct.oce_cq** %51, i64 %54
  store %struct.oce_cq* %48, %struct.oce_cq** %55, align 8
  %56 = load %struct.oce_eq*, %struct.oce_eq** %7, align 8
  %57 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.oce_rq*, %struct.oce_rq** %5, align 8
  %61 = load %struct.oce_cq*, %struct.oce_cq** %9, align 8
  %62 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %61, i32 0, i32 1
  store %struct.oce_rq* %60, %struct.oce_rq** %62, align 8
  %63 = load i32, i32* @oce_rq_handler, align 4
  %64 = load %struct.oce_cq*, %struct.oce_cq** %9, align 8
  %65 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %30, %28
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.oce_cq* @oce_cq_create(%struct.TYPE_7__*, %struct.oce_eq*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
