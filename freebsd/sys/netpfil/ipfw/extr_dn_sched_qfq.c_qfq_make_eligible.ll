; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_make_eligible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_make_eligible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i64 }

@QFQ_MIN_SLOT_SHIFT = common dso_local global i64 0, align 8
@IR = common dso_local global i32 0, align 4
@ER = common dso_local global i32 0, align 4
@IB = common dso_local global i32 0, align 4
@EB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, i64)* @qfq_make_eligible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_make_eligible(%struct.qfq_sched* %0, i64 %1) #0 {
  %3 = alloca %struct.qfq_sched*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qfq_sched* %0, %struct.qfq_sched** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %9 = getelementptr inbounds %struct.qfq_sched, %struct.qfq_sched* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QFQ_MIN_SLOT_SHIFT, align 8
  %12 = lshr i64 %10, %11
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @QFQ_MIN_SLOT_SHIFT, align 8
  %15 = lshr i64 %13, %14
  store i64 %15, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %36

19:                                               ; preds = %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = xor i64 %20, %21
  %23 = call i64 @__fls(i64 %22)
  %24 = shl i64 2, %23
  %25 = sub i64 %24, 1
  store i64 %25, i64* %5, align 8
  %26 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %27 = load i64, i64* %5, align 8
  %28 = load i32, i32* @IR, align 4
  %29 = load i32, i32* @ER, align 4
  %30 = call i32 @qfq_move_groups(%struct.qfq_sched* %26, i64 %27, i32 %28, i32 %29)
  %31 = load %struct.qfq_sched*, %struct.qfq_sched** %3, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load i32, i32* @IB, align 4
  %34 = load i32, i32* @EB, align 4
  %35 = call i32 @qfq_move_groups(%struct.qfq_sched* %31, i64 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %19, %2
  ret void
}

declare dso_local i64 @__fls(i64) #1

declare dso_local i32 @qfq_move_groups(%struct.qfq_sched*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
