; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mbq.c___mbq_purge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mbq.c___mbq_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbq = type { i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbq*, i32)* @__mbq_purge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mbq_purge(%struct.mbq* %0, i32 %1) #0 {
  %3 = alloca %struct.mbq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  store %struct.mbq* %0, %struct.mbq** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load %struct.mbq*, %struct.mbq** %3, align 8
  %11 = call %struct.mbuf* @mbq_safe_dequeue(%struct.mbq* %10)
  br label %15

12:                                               ; preds = %6
  %13 = load %struct.mbq*, %struct.mbq** %3, align 8
  %14 = call %struct.mbuf* @mbq_dequeue(%struct.mbq* %13)
  br label %15

15:                                               ; preds = %12, %9
  %16 = phi %struct.mbuf* [ %11, %9 ], [ %14, %12 ]
  store %struct.mbuf* %16, %struct.mbuf** %5, align 8
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = icmp ne %struct.mbuf* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i32 @m_freem(%struct.mbuf* %20)
  br label %23

22:                                               ; preds = %15
  br label %24

23:                                               ; preds = %19
  br label %6

24:                                               ; preds = %22
  ret void
}

declare dso_local %struct.mbuf* @mbq_safe_dequeue(%struct.mbq*) #1

declare dso_local %struct.mbuf* @mbq_dequeue(%struct.mbq*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
