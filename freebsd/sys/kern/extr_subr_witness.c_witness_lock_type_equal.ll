; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_lock_type_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_witness.c_witness_lock_type_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.witness = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@LC_SLEEPLOCK = common dso_local global i32 0, align 4
@LC_SPINLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.witness*, %struct.witness*)* @witness_lock_type_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @witness_lock_type_equal(%struct.witness* %0, %struct.witness* %1) #0 {
  %3 = alloca %struct.witness*, align 8
  %4 = alloca %struct.witness*, align 8
  store %struct.witness* %0, %struct.witness** %3, align 8
  store %struct.witness* %1, %struct.witness** %4, align 8
  %5 = load %struct.witness*, %struct.witness** %3, align 8
  %6 = getelementptr inbounds %struct.witness, %struct.witness* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LC_SLEEPLOCK, align 4
  %11 = load i32, i32* @LC_SPINLOCK, align 4
  %12 = or i32 %10, %11
  %13 = and i32 %9, %12
  %14 = load %struct.witness*, %struct.witness** %4, align 8
  %15 = getelementptr inbounds %struct.witness, %struct.witness* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @LC_SLEEPLOCK, align 4
  %20 = load i32, i32* @LC_SPINLOCK, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %13, %22
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
