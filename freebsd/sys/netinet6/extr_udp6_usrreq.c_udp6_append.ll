; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i32, i32, %struct.socket* }
%struct.socket = type { i32, i32 }
%struct.mbuf = type { %struct.mbuf* }
%struct.sockaddr_in6 = type { i32 }
%struct.udpcb = type { i32, i32 (%struct.mbuf.0*, i32, %struct.inpcb.1*, %struct.sockaddr*, i32)* }
%struct.mbuf.0 = type opaque
%struct.inpcb.1 = type opaque
%struct.sockaddr = type opaque
%struct.sockaddr.2 = type { i32 }

@INP_CONTROLOPTS = common dso_local global i32 0, align 4
@SO_TIMESTAMP = common dso_local global i32 0, align 4
@INP_IPV6 = common dso_local global i32 0, align 4
@INP_ORIGDSTADDR = common dso_local global i32 0, align 4
@IPV6_ORIGDSTADDR = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@udps_fullsock = common dso_local global i32 0, align 4
@ipv6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inpcb*, %struct.mbuf*, i32, %struct.sockaddr_in6*)* @udp6_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @udp6_append(%struct.inpcb* %0, %struct.mbuf* %1, i32 %2, %struct.sockaddr_in6* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inpcb*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr_in6*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca %struct.udpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %6, align 8
  store %struct.mbuf* %1, %struct.mbuf** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr_in6* %3, %struct.sockaddr_in6** %9, align 8
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  %14 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %15 = call i32 @INP_LOCK_ASSERT(%struct.inpcb* %14)
  %16 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %17 = call %struct.udpcb* @intoudpcb(%struct.inpcb* %16)
  store %struct.udpcb* %17, %struct.udpcb** %13, align 8
  %18 = load %struct.udpcb*, %struct.udpcb** %13, align 8
  %19 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %18, i32 0, i32 1
  %20 = load i32 (%struct.mbuf.0*, i32, %struct.inpcb.1*, %struct.sockaddr*, i32)*, i32 (%struct.mbuf.0*, i32, %struct.inpcb.1*, %struct.sockaddr*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.mbuf.0*, i32, %struct.inpcb.1*, %struct.sockaddr*, i32)* %20, null
  br i1 %21, label %22, label %47

22:                                               ; preds = %4
  %23 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %24 = call i32 @in_pcbref(%struct.inpcb* %23)
  %25 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %26 = call i32 @INP_RUNLOCK(%struct.inpcb* %25)
  %27 = load %struct.udpcb*, %struct.udpcb** %13, align 8
  %28 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %27, i32 0, i32 1
  %29 = load i32 (%struct.mbuf.0*, i32, %struct.inpcb.1*, %struct.sockaddr*, i32)*, i32 (%struct.mbuf.0*, i32, %struct.inpcb.1*, %struct.sockaddr*, i32)** %28, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %31 = bitcast %struct.mbuf* %30 to %struct.mbuf.0*
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %34 = bitcast %struct.inpcb* %33 to %struct.inpcb.1*
  %35 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %36 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %35, i64 0
  %37 = bitcast %struct.sockaddr_in6* %36 to %struct.sockaddr.2*
  %38 = bitcast %struct.sockaddr.2* %37 to %struct.sockaddr*
  %39 = load %struct.udpcb*, %struct.udpcb** %13, align 8
  %40 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %29(%struct.mbuf.0* %31, i32 %32, %struct.inpcb.1* %34, %struct.sockaddr* %38, i32 %41)
  %43 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %44 = call i32 @INP_RLOCK(%struct.inpcb* %43)
  %45 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %46 = call i32 @in_pcbrele_rlocked(%struct.inpcb* %45)
  store i32 %46, i32* %5, align 4
  br label %142

47:                                               ; preds = %4
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  %48 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %49 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @INP_CONTROLOPTS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %56 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %55, i32 0, i32 3
  %57 = load %struct.socket*, %struct.socket** %56, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SO_TIMESTAMP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %54, %47
  %64 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %66 = call i32 @ip6_savecontrol(%struct.inpcb* %64, %struct.mbuf* %65, %struct.mbuf** %11)
  br label %67

67:                                               ; preds = %63, %54
  %68 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %69 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @INP_IPV6, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %67
  %75 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %76 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @INP_ORIGDSTADDR, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %102

81:                                               ; preds = %74
  %82 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %83 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %82, i64 1
  %84 = ptrtoint %struct.sockaddr_in6* %83 to i32
  %85 = load i32, i32* @IPV6_ORIGDSTADDR, align 4
  %86 = load i32, i32* @IPPROTO_IPV6, align 4
  %87 = call %struct.mbuf* @sbcreatecontrol(i32 %84, i32 4, i32 %85, i32 %86)
  store %struct.mbuf* %87, %struct.mbuf** %12, align 8
  %88 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %89 = icmp ne %struct.mbuf* %88, null
  br i1 %89, label %90, label %101

90:                                               ; preds = %81
  %91 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %92 = icmp ne %struct.mbuf* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %95 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 0
  store %struct.mbuf* %94, %struct.mbuf** %96, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %97, %struct.mbuf** %11, align 8
  br label %100

98:                                               ; preds = %90
  %99 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  store %struct.mbuf* %99, %struct.mbuf** %11, align 8
  br label %100

100:                                              ; preds = %98, %93
  br label %101

101:                                              ; preds = %100, %81
  br label %102

102:                                              ; preds = %101, %74, %67
  %103 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 4
  %107 = trunc i64 %106 to i32
  %108 = call i32 @m_adj(%struct.mbuf* %103, i32 %107)
  %109 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  %110 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %109, i32 0, i32 3
  %111 = load %struct.socket*, %struct.socket** %110, align 8
  store %struct.socket* %111, %struct.socket** %10, align 8
  %112 = load %struct.socket*, %struct.socket** %10, align 8
  %113 = getelementptr inbounds %struct.socket, %struct.socket* %112, i32 0, i32 1
  %114 = call i32 @SOCKBUF_LOCK(i32* %113)
  %115 = load %struct.socket*, %struct.socket** %10, align 8
  %116 = getelementptr inbounds %struct.socket, %struct.socket* %115, i32 0, i32 1
  %117 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %9, align 8
  %118 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %117, i64 0
  %119 = bitcast %struct.sockaddr_in6* %118 to %struct.sockaddr.2*
  %120 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %121 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %122 = call i64 @sbappendaddr_locked(i32* %116, %struct.sockaddr.2* %119, %struct.mbuf* %120, %struct.mbuf* %121)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %138

124:                                              ; preds = %102
  %125 = load %struct.socket*, %struct.socket** %10, align 8
  %126 = getelementptr inbounds %struct.socket, %struct.socket* %125, i32 0, i32 1
  %127 = call i32 @SOCKBUF_UNLOCK(i32* %126)
  %128 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %129 = call i32 @m_freem(%struct.mbuf* %128)
  %130 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %131 = icmp ne %struct.mbuf* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %134 = call i32 @m_freem(%struct.mbuf* %133)
  br label %135

135:                                              ; preds = %132, %124
  %136 = load i32, i32* @udps_fullsock, align 4
  %137 = call i32 @UDPSTAT_INC(i32 %136)
  br label %141

138:                                              ; preds = %102
  %139 = load %struct.socket*, %struct.socket** %10, align 8
  %140 = call i32 @sorwakeup_locked(%struct.socket* %139)
  br label %141

141:                                              ; preds = %138, %135
  store i32 0, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %22
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @INP_LOCK_ASSERT(%struct.inpcb*) #1

declare dso_local %struct.udpcb* @intoudpcb(%struct.inpcb*) #1

declare dso_local i32 @in_pcbref(%struct.inpcb*) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_RLOCK(%struct.inpcb*) #1

declare dso_local i32 @in_pcbrele_rlocked(%struct.inpcb*) #1

declare dso_local i32 @ip6_savecontrol(%struct.inpcb*, %struct.mbuf*, %struct.mbuf**) #1

declare dso_local %struct.mbuf* @sbcreatecontrol(i32, i32, i32, i32) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i64 @sbappendaddr_locked(i32*, %struct.sockaddr.2*, %struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @UDPSTAT_INC(i32) #1

declare dso_local i32 @sorwakeup_locked(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
