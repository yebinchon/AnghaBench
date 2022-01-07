; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_modify_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, i32*)* }
%struct.ib_srq_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_modify_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %8 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, i32*)*, i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, i32*)** %10, align 8
  %12 = icmp ne i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, i32*)* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %15 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, i32*)*, i32 (%struct.ib_srq*, %struct.ib_srq_attr*, i32, i32*)** %17, align 8
  %19 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %20 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 %18(%struct.ib_srq* %19, %struct.ib_srq_attr* %20, i32 %21, i32* null)
  br label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOSYS, align 4
  %25 = sub nsw i32 0, %24
  br label %26

26:                                               ; preds = %23, %13
  %27 = phi i32 [ %22, %13 ], [ %25, %23 ]
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
