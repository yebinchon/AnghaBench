; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_front_slot_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_front_slot_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_group = type { i64, i32, %struct.qfq_class** }
%struct.qfq_class = type { %struct.qfq_class* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_group*)* @qfq_front_slot_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_front_slot_remove(%struct.qfq_group* %0) #0 {
  %2 = alloca %struct.qfq_group*, align 8
  %3 = alloca %struct.qfq_class**, align 8
  store %struct.qfq_group* %0, %struct.qfq_group** %2, align 8
  %4 = load %struct.qfq_group*, %struct.qfq_group** %2, align 8
  %5 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %4, i32 0, i32 2
  %6 = load %struct.qfq_class**, %struct.qfq_class*** %5, align 8
  %7 = load %struct.qfq_group*, %struct.qfq_group** %2, align 8
  %8 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %6, i64 %9
  store %struct.qfq_class** %10, %struct.qfq_class*** %3, align 8
  %11 = load %struct.qfq_class**, %struct.qfq_class*** %3, align 8
  %12 = load %struct.qfq_class*, %struct.qfq_class** %11, align 8
  %13 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %12, i32 0, i32 0
  %14 = load %struct.qfq_class*, %struct.qfq_class** %13, align 8
  %15 = load %struct.qfq_class**, %struct.qfq_class*** %3, align 8
  store %struct.qfq_class* %14, %struct.qfq_class** %15, align 8
  %16 = load %struct.qfq_class**, %struct.qfq_class*** %3, align 8
  %17 = load %struct.qfq_class*, %struct.qfq_class** %16, align 8
  %18 = icmp ne %struct.qfq_class* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.qfq_group*, %struct.qfq_group** %2, align 8
  %21 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %20, i32 0, i32 1
  %22 = call i32 @__clear_bit(i32 0, i32* %21)
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
