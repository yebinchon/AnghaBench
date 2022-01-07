; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_output_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_output.c_ip6_output_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, %struct.m_snd_tag* }
%struct.m_snd_tag = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.mbuf = type { %struct.TYPE_7__, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.route_in6 = type { i32 }
%struct.route = type { i32 }

@CSUM_SND_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"trying to add a send tag to a forwarded packet\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@INP_RATE_LIMIT_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.ifnet*, %struct.ifnet*, %struct.mbuf*, %struct.sockaddr_in6*, %struct.route_in6*)* @ip6_output_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_output_send(%struct.inpcb* %0, %struct.ifnet* %1, %struct.ifnet* %2, %struct.mbuf* %3, %struct.sockaddr_in6* %4, %struct.route_in6* %5) #0 {
  %7 = alloca %struct.inpcb*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.sockaddr_in6*, align 8
  %12 = alloca %struct.route_in6*, align 8
  %13 = alloca %struct.m_snd_tag*, align 8
  %14 = alloca i32, align 4
  store %struct.inpcb* %0, %struct.inpcb** %7, align 8
  store %struct.ifnet* %1, %struct.ifnet** %8, align 8
  store %struct.ifnet* %2, %struct.ifnet** %9, align 8
  store %struct.mbuf* %3, %struct.mbuf** %10, align 8
  store %struct.sockaddr_in6* %4, %struct.sockaddr_in6** %11, align 8
  store %struct.route_in6* %5, %struct.route_in6** %12, align 8
  %15 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @CSUM_SND_TAG, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @MPASS(i32 %22)
  store %struct.m_snd_tag* null, %struct.m_snd_tag** %13, align 8
  %24 = load %struct.m_snd_tag*, %struct.m_snd_tag** %13, align 8
  %25 = icmp ne %struct.m_snd_tag* %24, null
  br i1 %25, label %26, label %53

26:                                               ; preds = %6
  %27 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.m_snd_tag*, %struct.m_snd_tag** %13, align 8
  %35 = getelementptr inbounds %struct.m_snd_tag, %struct.m_snd_tag* %34, i32 0, i32 0
  %36 = load %struct.ifnet*, %struct.ifnet** %35, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %38 = icmp ne %struct.ifnet* %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %26
  %40 = load i32, i32* @EAGAIN, align 4
  store i32 %40, i32* %14, align 4
  br label %61

41:                                               ; preds = %26
  %42 = load %struct.m_snd_tag*, %struct.m_snd_tag** %13, align 8
  %43 = call i32 @m_snd_tag_ref(%struct.m_snd_tag* %42)
  %44 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @CSUM_SND_TAG, align 4
  %48 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %47
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %41, %6
  %54 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %55 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %11, align 8
  %58 = load %struct.route_in6*, %struct.route_in6** %12, align 8
  %59 = bitcast %struct.route_in6* %58 to %struct.route*
  %60 = call i32 @nd6_output_ifp(%struct.ifnet* %54, %struct.ifnet* %55, %struct.mbuf* %56, %struct.sockaddr_in6* %57, %struct.route* %59)
  store i32 %60, i32* %14, align 4
  br label %61

61:                                               ; preds = %53, %39
  %62 = load i32, i32* %14, align 4
  ret i32 %62
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @m_snd_tag_ref(%struct.m_snd_tag*) #1

declare dso_local i32 @nd6_output_ifp(%struct.ifnet*, %struct.ifnet*, %struct.mbuf*, %struct.sockaddr_in6*, %struct.route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
