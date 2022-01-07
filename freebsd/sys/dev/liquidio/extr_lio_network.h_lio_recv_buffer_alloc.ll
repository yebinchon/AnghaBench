; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_network.h_lio_recv_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_network.h_lio_recv_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @lio_recv_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @lio_recv_buffer_alloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %2, align 4
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  %4 = load i32, i32* @M_NOWAIT, align 4
  %5 = load i32, i32* @MT_DATA, align 4
  %6 = load i32, i32* @M_PKTHDR, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.mbuf* @m_getjcl(i32 %4, i32 %5, i32 %6, i32 %7)
  store %struct.mbuf* %8, %struct.mbuf** %3, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %12, i32* %17, align 4
  br label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = bitcast %struct.mbuf* %19 to i8*
  ret i8* %20
}

declare dso_local %struct.mbuf* @m_getjcl(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
