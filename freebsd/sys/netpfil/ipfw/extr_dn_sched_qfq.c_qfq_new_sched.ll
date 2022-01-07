; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_new_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_new_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_sch_inst = type { i32 }
%struct.qfq_sched = type { %struct.qfq_group* }
%struct.qfq_group = type { i32, i32 }

@QFQ_MAX_INDEX = common dso_local global i32 0, align 4
@QFQ_MTU_SHIFT = common dso_local global i32 0, align 4
@FRAC_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_sch_inst*)* @qfq_new_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qfq_new_sched(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.dn_sch_inst*, align 8
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca %struct.qfq_group*, align 8
  %5 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %2, align 8
  %6 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %2, align 8
  %7 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %6, i64 1
  %8 = bitcast %struct.dn_sch_inst* %7 to %struct.qfq_sched*
  store %struct.qfq_sched* %8, %struct.qfq_sched** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @QFQ_MAX_INDEX, align 4
  %12 = icmp sle i32 %10, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %9
  %14 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %15 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %14, i32 0, i32 0
  %16 = load %struct.qfq_group*, %struct.qfq_group** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %16, i64 %18
  store %struct.qfq_group* %19, %struct.qfq_group** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %22 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @QFQ_MTU_SHIFT, align 4
  %24 = load i32, i32* @FRAC_BITS, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @QFQ_MAX_INDEX, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %26, %27
  %29 = sub nsw i32 %25, %28
  %30 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %31 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %9

35:                                               ; preds = %9
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
