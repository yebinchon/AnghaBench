; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_queue.c_oce_wq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_wq = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, i32, %struct.oce_cq*, %struct.TYPE_7__* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.oce_cq = type { i32, %struct.oce_wq* }
%struct.TYPE_7__ = type { i32 }
%struct.oce_eq = type { i64, %struct.oce_cq** }

@CQ_LEN_1024 = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@QCREATED = common dso_local global i32 0, align 4
@oce_wq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"WQ create failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oce_wq*, %struct.oce_eq*)* @oce_wq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oce_wq_create(%struct.oce_wq* %0, %struct.oce_eq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.oce_wq*, align 8
  %5 = alloca %struct.oce_eq*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.oce_cq*, align 8
  %8 = alloca i32, align 4
  store %struct.oce_wq* %0, %struct.oce_wq** %4, align 8
  store %struct.oce_eq* %1, %struct.oce_eq** %5, align 8
  %9 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %10 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %9, i32 0, i32 5
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = load %struct.oce_eq*, %struct.oce_eq** %5, align 8
  %14 = load i32, i32* @CQ_LEN_1024, align 4
  %15 = call %struct.oce_cq* @oce_cq_create(%struct.TYPE_7__* %12, %struct.oce_eq* %13, i32 %14, i32 4, i32 0, i32 1, i32 0, i32 3)
  store %struct.oce_cq* %15, %struct.oce_cq** %7, align 8
  %16 = load %struct.oce_cq*, %struct.oce_cq** %7, align 8
  %17 = icmp ne %struct.oce_cq* %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  store i32 %19, i32* %3, align 4
  br label %73

20:                                               ; preds = %2
  %21 = load %struct.oce_cq*, %struct.oce_cq** %7, align 8
  %22 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %23 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %22, i32 0, i32 4
  store %struct.oce_cq* %21, %struct.oce_cq** %23, align 8
  %24 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %25 = call i32 @oce_mbox_create_wq(%struct.oce_wq* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %65

29:                                               ; preds = %20
  %30 = load i32, i32* @QCREATED, align 4
  %31 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %32 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %34 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %38 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %40 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %44 = getelementptr inbounds %struct.oce_wq, %struct.oce_wq* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load %struct.oce_cq*, %struct.oce_cq** %7, align 8
  %48 = load %struct.oce_eq*, %struct.oce_eq** %5, align 8
  %49 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %48, i32 0, i32 1
  %50 = load %struct.oce_cq**, %struct.oce_cq*** %49, align 8
  %51 = load %struct.oce_eq*, %struct.oce_eq** %5, align 8
  %52 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds %struct.oce_cq*, %struct.oce_cq** %50, i64 %53
  store %struct.oce_cq* %47, %struct.oce_cq** %54, align 8
  %55 = load %struct.oce_eq*, %struct.oce_eq** %5, align 8
  %56 = getelementptr inbounds %struct.oce_eq, %struct.oce_eq* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %60 = load %struct.oce_cq*, %struct.oce_cq** %7, align 8
  %61 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %60, i32 0, i32 1
  store %struct.oce_wq* %59, %struct.oce_wq** %61, align 8
  %62 = load i32, i32* @oce_wq_handler, align 4
  %63 = load %struct.oce_cq*, %struct.oce_cq** %7, align 8
  %64 = getelementptr inbounds %struct.oce_cq, %struct.oce_cq* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %3, align 4
  br label %73

65:                                               ; preds = %28
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.oce_wq*, %struct.oce_wq** %4, align 8
  %71 = call i32 @oce_wq_del(%struct.oce_wq* %70)
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %29, %18
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.oce_cq* @oce_cq_create(%struct.TYPE_7__*, %struct.oce_eq*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @oce_mbox_create_wq(%struct.oce_wq*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @oce_wq_del(%struct.oce_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
