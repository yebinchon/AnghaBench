; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* }
%struct.ib_qp_attr = type { i32 }
%struct.ib_qp_init_attr = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca %struct.ib_qp*, align 8
  %6 = alloca %struct.ib_qp_attr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_qp_init_attr*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %5, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %8, align 8
  %9 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)*, i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)** %12, align 8
  %14 = icmp ne i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)* %13, null
  br i1 %14, label %15, label %28

15:                                               ; preds = %4
  %16 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %17 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)*, i32 (i32, %struct.ib_qp_attr*, i32, %struct.ib_qp_init_attr*)** %19, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %5, align 8
  %22 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %8, align 8
  %27 = call i32 %20(i32 %23, %struct.ib_qp_attr* %24, i32 %25, %struct.ib_qp_init_attr* %26)
  br label %31

28:                                               ; preds = %4
  %29 = load i32, i32* @ENOSYS, align 4
  %30 = sub nsw i32 0, %29
  br label %31

31:                                               ; preds = %28, %15
  %32 = phi i32 [ %27, %15 ], [ %30, %28 ]
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
