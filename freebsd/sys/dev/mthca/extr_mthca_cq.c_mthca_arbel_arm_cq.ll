; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cq.c_mthca_arbel_arm_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cq.c_mthca_arbel_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.mthca_cq = type { i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@MTHCA_ARBEL_CQ_DB_REQ_NOT_SOL = common dso_local global i32 0, align 4
@MTHCA_ARBEL_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@MTHCA_CQ_DOORBELL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_arbel_arm_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mthca_cq*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %10 = call %struct.mthca_cq* @to_mcq(%struct.ib_cq* %9)
  store %struct.mthca_cq* %10, %struct.mthca_cq** %5, align 8
  %11 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %12 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 3
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %16 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cpu_to_be32(i32 %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %21 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %23, 64
  %25 = load i32, i32* %8, align 4
  %26 = shl i32 %25, 3
  %27 = or i32 %24, %26
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %32 = icmp eq i32 %30, %31
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 1, i32 2
  %35 = or i32 %27, %34
  %36 = call i32 @cpu_to_be32(i32 %35)
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %39 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %40 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mthca_write_db_rec(i32* %38, i32 %41)
  %43 = call i32 (...) @wmb()
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 28
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %2
  %52 = load i32, i32* @MTHCA_ARBEL_CQ_DB_REQ_NOT_SOL, align 4
  br label %55

53:                                               ; preds = %2
  %54 = load i32, i32* @MTHCA_ARBEL_CQ_DB_REQ_NOT, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = or i32 %45, %56
  %58 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %59 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %57, %60
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.mthca_cq*, %struct.mthca_cq** %5, align 8
  %64 = getelementptr inbounds %struct.mthca_cq, %struct.mthca_cq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %67 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_2__* @to_mdev(i32 %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MTHCA_CQ_DOORBELL, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %75 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.TYPE_2__* @to_mdev(i32 %76)
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = call i32 @MTHCA_GET_DOORBELL_LOCK(i32* %78)
  %80 = call i32 @mthca_write64(i32 %62, i32 %65, i64 %73, i32 %79)
  ret i32 0
}

declare dso_local %struct.mthca_cq* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mthca_write_db_rec(i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mthca_write64(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_2__* @to_mdev(i32) #1

declare dso_local i32 @MTHCA_GET_DOORBELL_LOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
