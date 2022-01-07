; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_destroy_rwq_ind_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_destroy_rwq_ind_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_rwq_ind_table = type { i32, %struct.TYPE_2__*, i32, %struct.ib_wq** }
%struct.TYPE_2__ = type { {}* }
%struct.ib_wq = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_rwq_ind_table(%struct.ib_rwq_ind_table* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_rwq_ind_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_wq**, align 8
  store %struct.ib_rwq_ind_table* %0, %struct.ib_rwq_ind_table** %3, align 8
  %8 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %9 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 1, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %13 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %12, i32 0, i32 3
  %14 = load %struct.ib_wq**, %struct.ib_wq*** %13, align 8
  store %struct.ib_wq** %14, %struct.ib_wq*** %7, align 8
  %15 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %16 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %15, i32 0, i32 2
  %17 = call i64 @atomic_read(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %52

22:                                               ; preds = %1
  %23 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %24 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.ib_rwq_ind_table*)**
  %28 = load i32 (%struct.ib_rwq_ind_table*)*, i32 (%struct.ib_rwq_ind_table*)** %27, align 8
  %29 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %3, align 8
  %30 = call i32 %28(%struct.ib_rwq_ind_table* %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %50, label %33

33:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load %struct.ib_wq**, %struct.ib_wq*** %7, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ib_wq*, %struct.ib_wq** %39, i64 %41
  %43 = load %struct.ib_wq*, %struct.ib_wq** %42, align 8
  %44 = getelementptr inbounds %struct.ib_wq, %struct.ib_wq* %43, i32 0, i32 0
  %45 = call i32 @atomic_dec(i32* %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %34

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %22
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %50, %19
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
