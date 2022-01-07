; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_free_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_prio.c_prio_free_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_queue = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.prio_si = type { i32, %struct.dn_queue** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_queue*)* @prio_free_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prio_free_queue(%struct.dn_queue* %0) #0 {
  %2 = alloca %struct.dn_queue*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.prio_si*, align 8
  store %struct.dn_queue* %0, %struct.dn_queue** %2, align 8
  %5 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %6 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %3, align 4
  %13 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %14 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = inttoptr i64 %16 to %struct.prio_si*
  store %struct.prio_si* %17, %struct.prio_si** %4, align 8
  %18 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %19 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %18, i32 0, i32 1
  %20 = load %struct.dn_queue**, %struct.dn_queue*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dn_queue*, %struct.dn_queue** %20, i64 %22
  %24 = load %struct.dn_queue*, %struct.dn_queue** %23, align 8
  %25 = load %struct.dn_queue*, %struct.dn_queue** %2, align 8
  %26 = icmp eq %struct.dn_queue* %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %1
  %28 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %29 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %28, i32 0, i32 1
  %30 = load %struct.dn_queue**, %struct.dn_queue*** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.dn_queue*, %struct.dn_queue** %30, i64 %32
  store %struct.dn_queue* null, %struct.dn_queue** %33, align 8
  %34 = load i32, i32* %3, align 4
  %35 = load %struct.prio_si*, %struct.prio_si** %4, align 8
  %36 = getelementptr inbounds %struct.prio_si, %struct.prio_si* %35, i32 0, i32 0
  %37 = call i32 @__clear_bit(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %27, %1
  ret i32 0
}

declare dso_local i32 @__clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
