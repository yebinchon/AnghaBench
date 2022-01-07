; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_flow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_create_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_flow = type { i32 }
%struct.ib_qp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ib_flow_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_flow* @ib_create_flow(%struct.ib_qp* %0, %struct.ib_flow_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_flow*, align 8
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_flow_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_flow*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_flow_attr* %1, %struct.ib_flow_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to %struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)**
  %14 = load %struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)*, %struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)** %13, align 8
  %15 = icmp ne %struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.ib_flow* @ERR_PTR(i32 %18)
  store %struct.ib_flow* %19, %struct.ib_flow** %4, align 8
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to %struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)**
  %26 = load %struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)*, %struct.ib_flow* (%struct.ib_qp*, %struct.ib_flow_attr*, i32)** %25, align 8
  %27 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %28 = load %struct.ib_flow_attr*, %struct.ib_flow_attr** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call %struct.ib_flow* %26(%struct.ib_qp* %27, %struct.ib_flow_attr* %28, i32 %29)
  store %struct.ib_flow* %30, %struct.ib_flow** %8, align 8
  %31 = load %struct.ib_flow*, %struct.ib_flow** %8, align 8
  %32 = call i32 @IS_ERR(%struct.ib_flow* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %20
  %35 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %36 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %35, i32 0, i32 0
  %37 = call i32 @atomic_inc(i32* %36)
  br label %38

38:                                               ; preds = %34, %20
  %39 = load %struct.ib_flow*, %struct.ib_flow** %8, align 8
  store %struct.ib_flow* %39, %struct.ib_flow** %4, align 8
  br label %40

40:                                               ; preds = %38, %16
  %41 = load %struct.ib_flow*, %struct.ib_flow** %4, align 8
  ret %struct.ib_flow* %41
}

declare dso_local %struct.ib_flow* @ERR_PTR(i32) #1

declare dso_local i32 @IS_ERR(%struct.ib_flow*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
