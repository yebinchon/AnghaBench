; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_slot_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_qfq.c_qfq_slot_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qfq_group = type { i32, i32, i32, i32, %struct.qfq_class** }
%struct.qfq_class = type { %struct.qfq_class* }

@QFQ_MAX_SLOTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qfq_group*, %struct.qfq_class*, i32)* @qfq_slot_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qfq_slot_insert(%struct.qfq_group* %0, %struct.qfq_class* %1, i32 %2) #0 {
  %4 = alloca %struct.qfq_group*, align 8
  %5 = alloca %struct.qfq_class*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qfq_group* %0, %struct.qfq_group** %4, align 8
  store %struct.qfq_class* %1, %struct.qfq_class** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %11 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sub i32 %9, %12
  %14 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %15 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = lshr i32 %13, %16
  store i32 %17, i32* %7, align 4
  %18 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %19 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = add i32 %20, %21
  %23 = load i32, i32* @QFQ_MAX_SLOTS, align 4
  %24 = urem i32 %22, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %26 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %25, i32 0, i32 4
  %27 = load %struct.qfq_class**, %struct.qfq_class*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %27, i64 %29
  %31 = load %struct.qfq_class*, %struct.qfq_class** %30, align 8
  %32 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %33 = getelementptr inbounds %struct.qfq_class, %struct.qfq_class* %32, i32 0, i32 0
  store %struct.qfq_class* %31, %struct.qfq_class** %33, align 8
  %34 = load %struct.qfq_class*, %struct.qfq_class** %5, align 8
  %35 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %36 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %35, i32 0, i32 4
  %37 = load %struct.qfq_class**, %struct.qfq_class*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qfq_class*, %struct.qfq_class** %37, i64 %39
  store %struct.qfq_class* %34, %struct.qfq_class** %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.qfq_group*, %struct.qfq_group** %4, align 8
  %43 = getelementptr inbounds %struct.qfq_group, %struct.qfq_group* %42, i32 0, i32 3
  %44 = call i32 @__set_bit(i32 %41, i32* %43)
  ret void
}

declare dso_local i32 @__set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
