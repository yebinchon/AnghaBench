; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cq.c_mthca_tavor_arm_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_cq.c_mthca_tavor_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i64 }

@IB_CQ_SOLICITED_MASK = common dso_local global i32 0, align 4
@IB_CQ_SOLICITED = common dso_local global i32 0, align 4
@MTHCA_TAVOR_CQ_DB_REQ_NOT_SOL = common dso_local global i32 0, align 4
@MTHCA_TAVOR_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@MTHCA_CQ_DOORBELL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_tavor_arm_cq(%struct.ib_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @IB_CQ_SOLICITED_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* @IB_CQ_SOLICITED, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MTHCA_TAVOR_CQ_DB_REQ_NOT_SOL, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MTHCA_TAVOR_CQ_DB_REQ_NOT, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %18 = call %struct.TYPE_4__* @to_mcq(%struct.ib_cq* %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %16, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %24 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_3__* @to_mdev(i32 %25)
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MTHCA_CQ_DOORBELL, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %32 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.TYPE_3__* @to_mdev(i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @MTHCA_GET_DOORBELL_LOCK(i32* %35)
  %37 = call i32 @mthca_write64(i32 %22, i32 -1, i64 %30, i32 %36)
  ret i32 0
}

declare dso_local %struct.TYPE_4__* @to_mcq(%struct.ib_cq*) #1

declare dso_local i32 @mthca_write64(i32, i32, i64, i32) #1

declare dso_local %struct.TYPE_3__* @to_mdev(i32) #1

declare dso_local i32 @MTHCA_GET_DOORBELL_LOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
