; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_slot_rotate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_slot_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_sched = type { i32 }
%struct.qfq_group = type { i32, i32, i32, i32 }

@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_sched*, %struct.qfq_group*, i32)* @qfq_slot_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_slot_rotate(%struct.qfq_sched* %0, %struct.qfq_group* %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_sched*, align 8
  %5 = alloca %struct.qfq_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qfq_sched* %0, %struct.qfq_sched** %4, align 8
  store %struct.qfq_group* %1, %struct.qfq_group** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %9 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub i32 %10, %11
  %13 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %14 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = lshr i32 %12, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.qfq_sched*, %struct.qfq_sched** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %20 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %24 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = sub i32 %25, %26
  %28 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %29 = urem i32 %27, %28
  %30 = load %struct.qfq_group*, %struct.qfq_group** %5, align 8
  %31 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
