; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_mq_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dn_io.c_mq_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mq = type { %struct.mbuf*, i32, %struct.mbuf* }
%struct.mbuf = type { i32, i32, i32, i32, %struct.mbuf* }

@MT_DATA = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_STACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mq*, %struct.mbuf*)* @mq_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mq_append(%struct.mq* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mq*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.mq* %0, %struct.mq** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.mq*, %struct.mq** %3, align 8
  %6 = getelementptr inbounds %struct.mq, %struct.mq* %5, i32 0, i32 2
  %7 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %8 = icmp eq %struct.mbuf* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %11 = load %struct.mq*, %struct.mq** %3, align 8
  %12 = getelementptr inbounds %struct.mq, %struct.mq* %11, i32 0, i32 2
  store %struct.mbuf* %10, %struct.mbuf** %12, align 8
  br label %19

13:                                               ; preds = %2
  %14 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %15 = load %struct.mq*, %struct.mq** %3, align 8
  %16 = getelementptr inbounds %struct.mq, %struct.mq* %15, i32 0, i32 0
  %17 = load %struct.mbuf*, %struct.mbuf** %16, align 8
  %18 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %17, i32 0, i32 4
  store %struct.mbuf* %14, %struct.mbuf** %18, align 8
  br label %19

19:                                               ; preds = %13, %9
  %20 = load %struct.mq*, %struct.mq** %3, align 8
  %21 = getelementptr inbounds %struct.mq, %struct.mq* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %25 = load %struct.mq*, %struct.mq** %3, align 8
  %26 = getelementptr inbounds %struct.mq, %struct.mq* %25, i32 0, i32 0
  store %struct.mbuf* %24, %struct.mbuf** %26, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 4
  store %struct.mbuf* null, %struct.mbuf** %28, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
