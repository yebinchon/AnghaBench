; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/l2cap/extr_ng_l2cap_misc.c_ng_l2cap_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @ng_l2cap_prepend(%struct.mbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = call i32 @M_PREPEND(%struct.mbuf* %6, i32 %7, i32 %8)
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = icmp eq %struct.mbuf* %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.mbuf* @m_pullup(%struct.mbuf* %19, i32 %20)
  store %struct.mbuf* %21, %struct.mbuf** %4, align 8
  %22 = icmp eq %struct.mbuf* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %2
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %26

24:                                               ; preds = %18, %12
  %25 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %25, %struct.mbuf** %3, align 8
  br label %26

26:                                               ; preds = %24, %23
  %27 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %27
}

declare dso_local i32 @M_PREPEND(%struct.mbuf*, i32, i32) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
