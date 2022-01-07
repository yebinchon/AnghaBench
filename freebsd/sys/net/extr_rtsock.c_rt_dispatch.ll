; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rt_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.m_tag = type { i32 }

@AF_UNSPEC = common dso_local global i16 0, align 2
@PACKET_TAG_RTSOCKFAM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@NETISR_ROUTE = common dso_local global i32 0, align 4
@V_loif = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i16)* @rt_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_dispatch(%struct.mbuf* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %3, align 8
  store i16 %1, i16* %4, align 2
  %6 = load i16, i16* %4, align 2
  %7 = zext i16 %6 to i32
  %8 = load i16, i16* @AF_UNSPEC, align 2
  %9 = zext i16 %8 to i32
  %10 = icmp ne i32 %7, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load i32, i32* @PACKET_TAG_RTSOCKFAM, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = call %struct.m_tag* @m_tag_get(i32 %12, i32 2, i32 %13)
  store %struct.m_tag* %14, %struct.m_tag** %5, align 8
  %15 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %16 = icmp eq %struct.m_tag* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %19 = call i32 @m_freem(%struct.mbuf* %18)
  br label %32

20:                                               ; preds = %11
  %21 = load i16, i16* %4, align 2
  %22 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %23 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %22, i64 1
  %24 = bitcast %struct.m_tag* %23 to i16*
  store i16 %21, i16* %24, align 2
  %25 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %26 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %27 = call i32 @m_tag_prepend(%struct.mbuf* %25, %struct.m_tag* %26)
  br label %28

28:                                               ; preds = %20, %2
  %29 = load i32, i32* @NETISR_ROUTE, align 4
  %30 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %31 = call i32 @netisr_queue(i32 %29, %struct.mbuf* %30)
  br label %32

32:                                               ; preds = %28, %17
  ret void
}

declare dso_local %struct.m_tag* @m_tag_get(i32, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_tag_prepend(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @netisr_queue(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
