; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_edsc.c_edsc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_edsc.c_edsc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IFCOUNTER_OBYTES = common dso_local global i32 0, align 4
@IFCOUNTER_OPACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @edsc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edsc_start(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  br label %4

4:                                                ; preds = %12, %1
  %5 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %6 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %5, i32 0, i32 0
  %7 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %8 = call i32 @IFQ_DEQUEUE(i32* %6, %struct.mbuf* %7)
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %10 = icmp eq %struct.mbuf* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  br label %28

12:                                               ; preds = %4
  %13 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %14 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %15 = call i32 @BPF_MTAP(%struct.ifnet* %13, %struct.mbuf* %14)
  %16 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %17 = load i32, i32* @IFCOUNTER_OBYTES, align 4
  %18 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @if_inc_counter(%struct.ifnet* %16, i32 %17, i32 %21)
  %23 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %24 = load i32, i32* @IFCOUNTER_OPACKETS, align 4
  %25 = call i32 @if_inc_counter(%struct.ifnet* %23, i32 %24, i32 1)
  %26 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  br label %4

28:                                               ; preds = %11
  ret void
}

declare dso_local i32 @IFQ_DEQUEUE(i32*, %struct.mbuf*) #1

declare dso_local i32 @BPF_MTAP(%struct.ifnet*, %struct.mbuf*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
