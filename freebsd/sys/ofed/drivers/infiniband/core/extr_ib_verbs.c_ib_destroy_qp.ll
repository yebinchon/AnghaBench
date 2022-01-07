; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_destroy_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_verbs.c_ib_destroy_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { %struct.TYPE_2__*, %struct.ib_rwq_ind_table*, %struct.ib_srq*, %struct.ib_cq*, %struct.ib_cq*, %struct.ib_pd*, %struct.ib_qp*, i32 }
%struct.TYPE_2__ = type { {}* }
%struct.ib_rwq_ind_table = type { i32 }
%struct.ib_srq = type { i32 }
%struct.ib_cq = type { i32 }
%struct.ib_pd = type { i32 }

@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ib_destroy_qp(%struct.ib_qp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_cq*, align 8
  %6 = alloca %struct.ib_cq*, align 8
  %7 = alloca %struct.ib_srq*, align 8
  %8 = alloca %struct.ib_rwq_ind_table*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %3, align 8
  %10 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %11 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %10, i32 0, i32 7
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EBUSY, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %90

17:                                               ; preds = %1
  %18 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %19 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %18, i32 0, i32 6
  %20 = load %struct.ib_qp*, %struct.ib_qp** %19, align 8
  %21 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %22 = icmp ne %struct.ib_qp* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %25 = call i32 @__ib_destroy_shared_qp(%struct.ib_qp* %24)
  store i32 %25, i32* %2, align 4
  br label %90

26:                                               ; preds = %17
  %27 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %28 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %27, i32 0, i32 5
  %29 = load %struct.ib_pd*, %struct.ib_pd** %28, align 8
  store %struct.ib_pd* %29, %struct.ib_pd** %4, align 8
  %30 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %31 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %30, i32 0, i32 4
  %32 = load %struct.ib_cq*, %struct.ib_cq** %31, align 8
  store %struct.ib_cq* %32, %struct.ib_cq** %5, align 8
  %33 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %34 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %33, i32 0, i32 3
  %35 = load %struct.ib_cq*, %struct.ib_cq** %34, align 8
  store %struct.ib_cq* %35, %struct.ib_cq** %6, align 8
  %36 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %37 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %36, i32 0, i32 2
  %38 = load %struct.ib_srq*, %struct.ib_srq** %37, align 8
  store %struct.ib_srq* %38, %struct.ib_srq** %7, align 8
  %39 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %40 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %39, i32 0, i32 1
  %41 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %40, align 8
  store %struct.ib_rwq_ind_table* %41, %struct.ib_rwq_ind_table** %8, align 8
  %42 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %43 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = bitcast {}** %45 to i32 (%struct.ib_qp*)**
  %47 = load i32 (%struct.ib_qp*)*, i32 (%struct.ib_qp*)** %46, align 8
  %48 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  %49 = call i32 %47(%struct.ib_qp* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %88, label %52

52:                                               ; preds = %26
  %53 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %54 = icmp ne %struct.ib_pd* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %57 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %56, i32 0, i32 0
  %58 = call i32 @atomic_dec(i32* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %61 = icmp ne %struct.ib_cq* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load %struct.ib_cq*, %struct.ib_cq** %5, align 8
  %64 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %63, i32 0, i32 0
  %65 = call i32 @atomic_dec(i32* %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %68 = icmp ne %struct.ib_cq* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load %struct.ib_cq*, %struct.ib_cq** %6, align 8
  %71 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %70, i32 0, i32 0
  %72 = call i32 @atomic_dec(i32* %71)
  br label %73

73:                                               ; preds = %69, %66
  %74 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %75 = icmp ne %struct.ib_srq* %74, null
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load %struct.ib_srq*, %struct.ib_srq** %7, align 8
  %78 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %77, i32 0, i32 0
  %79 = call i32 @atomic_dec(i32* %78)
  br label %80

80:                                               ; preds = %76, %73
  %81 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %8, align 8
  %82 = icmp ne %struct.ib_rwq_ind_table* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.ib_rwq_ind_table*, %struct.ib_rwq_ind_table** %8, align 8
  %85 = getelementptr inbounds %struct.ib_rwq_ind_table, %struct.ib_rwq_ind_table* %84, i32 0, i32 0
  %86 = call i32 @atomic_dec(i32* %85)
  br label %87

87:                                               ; preds = %83, %80
  br label %88

88:                                               ; preds = %87, %26
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %23, %14
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @__ib_destroy_shared_qp(%struct.ib_qp*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
