; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_common_ctlinput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_common_ctlinput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i64, i32 }
%struct.inpcbinfo = type { i32 }
%struct.udphdr = type { i32, i32 }
%struct.ip6_hdr = type { i32, i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ip6ctlparam = type { i32, %struct.sockaddr_in6*, i8*, %struct.ip6_hdr*, %struct.mbuf* }
%struct.inpcb = type { i32 }
%struct.udp_portonly = type { i32, i32 }
%struct.udpcb = type { i32, i32 (i32, %struct.sockaddr.0*, i8*, i32)* }
%struct.sockaddr.0 = type opaque

@AF_INET6 = common dso_local global i64 0, align 8
@PRC_NCMDS = common dso_local global i32 0, align 4
@PRC_HOSTDEAD = common dso_local global i32 0, align 4
@inet6ctlerrmap = common dso_local global i64* null, align 8
@sa6_any = common dso_local global %struct.sockaddr_in6 zeroinitializer, align 4
@INPLOOKUP_WILDCARD = common dso_local global i32 0, align 4
@INPLOOKUP_RLOCKPCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.sockaddr*, i8*, %struct.inpcbinfo*)* @udp6_common_ctlinput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp6_common_ctlinput(i32 %0, %struct.sockaddr* %1, i8* %2, %struct.inpcbinfo* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inpcbinfo*, align 8
  %9 = alloca %struct.udphdr, align 4
  %10 = alloca %struct.ip6_hdr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ip6ctlparam*, align 8
  %14 = alloca %struct.sockaddr_in6*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.inpcb* (%struct.inpcb*, i32)*, align 8
  %17 = alloca %struct.udp_portonly*, align 8
  %18 = alloca %struct.inpcb*, align 8
  %19 = alloca %struct.udpcb*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.inpcbinfo* %3, %struct.inpcbinfo** %8, align 8
  store i32 0, i32* %12, align 4
  store %struct.ip6ctlparam* null, %struct.ip6ctlparam** %13, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %14, align 8
  store %struct.inpcb* (%struct.inpcb*, i32)* @udp_notify, %struct.inpcb* (%struct.inpcb*, i32)** %16, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %4
  br label %176

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @PRC_NCMDS, align 4
  %35 = icmp uge i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %176

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @PRC_IS_REDIRECT(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store %struct.inpcb* (%struct.inpcb*, i32)* @in6_rtchange, %struct.inpcb* (%struct.inpcb*, i32)** %16, align 8
  store i8* null, i8** %7, align 8
  br label %57

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @PRC_HOSTDEAD, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i8* null, i8** %7, align 8
  br label %56

47:                                               ; preds = %42
  %48 = load i64*, i64** @inet6ctlerrmap, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %176

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56, %41
  %58 = load i8*, i8** %7, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %57
  %61 = load i8*, i8** %7, align 8
  %62 = bitcast i8* %61 to %struct.ip6ctlparam*
  store %struct.ip6ctlparam* %62, %struct.ip6ctlparam** %13, align 8
  %63 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %13, align 8
  %64 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %63, i32 0, i32 4
  %65 = load %struct.mbuf*, %struct.mbuf** %64, align 8
  store %struct.mbuf* %65, %struct.mbuf** %11, align 8
  %66 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %13, align 8
  %67 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %66, i32 0, i32 3
  %68 = load %struct.ip6_hdr*, %struct.ip6_hdr** %67, align 8
  store %struct.ip6_hdr* %68, %struct.ip6_hdr** %10, align 8
  %69 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %13, align 8
  %70 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %12, align 4
  %72 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %13, align 8
  %73 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %15, align 8
  %75 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %13, align 8
  %76 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %75, i32 0, i32 1
  %77 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %76, align 8
  store %struct.sockaddr_in6* %77, %struct.sockaddr_in6** %14, align 8
  br label %79

78:                                               ; preds = %57
  store %struct.mbuf* null, %struct.mbuf** %11, align 8
  store %struct.ip6_hdr* null, %struct.ip6_hdr** %10, align 8
  store i8* null, i8** %15, align 8
  store %struct.sockaddr_in6* @sa6_any, %struct.sockaddr_in6** %14, align 8
  br label %79

79:                                               ; preds = %78, %60
  %80 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %81 = icmp ne %struct.ip6_hdr* %80, null
  br i1 %81, label %82, label %167

82:                                               ; preds = %79
  %83 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %84 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 8
  %91 = icmp ult i64 %87, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %176

93:                                               ; preds = %82
  %94 = call i32 @bzero(%struct.udphdr* %9, i32 8)
  %95 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %96 = load i32, i32* %12, align 4
  %97 = ptrtoint %struct.udphdr* %9 to i32
  %98 = call i32 @m_copydata(%struct.mbuf* %95, i32 %96, i32 8, i32 %97)
  %99 = load i32, i32* %5, align 4
  %100 = call i64 @PRC_IS_REDIRECT(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %152, label %102

102:                                              ; preds = %93
  %103 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  %104 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %105 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %9, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ip6_hdr*, %struct.ip6_hdr** %10, align 8
  %109 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %9, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @INPLOOKUP_WILDCARD, align 4
  %113 = load i32, i32* @INPLOOKUP_RLOCKPCB, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %116 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %120 = call %struct.inpcb* @in6_pcblookup_mbuf(%struct.inpcbinfo* %103, i32* %105, i32 %107, i32* %109, i32 %111, i32 %114, i32 %118, %struct.mbuf* %119)
  store %struct.inpcb* %120, %struct.inpcb** %18, align 8
  %121 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %122 = icmp ne %struct.inpcb* %121, null
  br i1 %122, label %123, label %151

123:                                              ; preds = %102
  %124 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %125 = call %struct.udpcb* @intoudpcb(%struct.inpcb* %124)
  store %struct.udpcb* %125, %struct.udpcb** %19, align 8
  %126 = load %struct.udpcb*, %struct.udpcb** %19, align 8
  %127 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %126, i32 0, i32 1
  %128 = load i32 (i32, %struct.sockaddr.0*, i8*, i32)*, i32 (i32, %struct.sockaddr.0*, i8*, i32)** %127, align 8
  %129 = icmp ne i32 (i32, %struct.sockaddr.0*, i8*, i32)* %128, null
  br i1 %129, label %130, label %147

130:                                              ; preds = %123
  %131 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %132 = call i32 @INP_RUNLOCK(%struct.inpcb* %131)
  %133 = load %struct.udpcb*, %struct.udpcb** %19, align 8
  %134 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %133, i32 0, i32 1
  %135 = load i32 (i32, %struct.sockaddr.0*, i8*, i32)*, i32 (i32, %struct.sockaddr.0*, i8*, i32)** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %13, align 8
  %138 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %137, i32 0, i32 1
  %139 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %138, align 8
  %140 = bitcast %struct.sockaddr_in6* %139 to %struct.sockaddr*
  %141 = bitcast %struct.sockaddr* %140 to %struct.sockaddr.0*
  %142 = load i8*, i8** %7, align 8
  %143 = load %struct.udpcb*, %struct.udpcb** %19, align 8
  %144 = getelementptr inbounds %struct.udpcb, %struct.udpcb* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 %135(i32 %136, %struct.sockaddr.0* %141, i8* %142, i32 %145)
  br label %176

147:                                              ; preds = %123
  %148 = load %struct.inpcb*, %struct.inpcb** %18, align 8
  %149 = call i32 @INP_RUNLOCK(%struct.inpcb* %148)
  br label %150

150:                                              ; preds = %147
  br label %151

151:                                              ; preds = %150, %102
  br label %152

152:                                              ; preds = %151, %93
  %153 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  %154 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %155 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %9, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ip6ctlparam*, %struct.ip6ctlparam** %13, align 8
  %158 = getelementptr inbounds %struct.ip6ctlparam, %struct.ip6ctlparam* %157, i32 0, i32 1
  %159 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %158, align 8
  %160 = bitcast %struct.sockaddr_in6* %159 to %struct.sockaddr*
  %161 = getelementptr inbounds %struct.udphdr, %struct.udphdr* %9, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load i8*, i8** %15, align 8
  %165 = load %struct.inpcb* (%struct.inpcb*, i32)*, %struct.inpcb* (%struct.inpcb*, i32)** %16, align 8
  %166 = call i32 @in6_pcbnotify(%struct.inpcbinfo* %153, %struct.sockaddr* %154, i32 %156, %struct.sockaddr* %160, i32 %162, i32 %163, i8* %164, %struct.inpcb* (%struct.inpcb*, i32)* %165)
  br label %176

167:                                              ; preds = %79
  %168 = load %struct.inpcbinfo*, %struct.inpcbinfo** %8, align 8
  %169 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %170 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %14, align 8
  %171 = bitcast %struct.sockaddr_in6* %170 to %struct.sockaddr*
  %172 = load i32, i32* %5, align 4
  %173 = load i8*, i8** %15, align 8
  %174 = load %struct.inpcb* (%struct.inpcb*, i32)*, %struct.inpcb* (%struct.inpcb*, i32)** %16, align 8
  %175 = call i32 @in6_pcbnotify(%struct.inpcbinfo* %168, %struct.sockaddr* %169, i32 0, %struct.sockaddr* %171, i32 0, i32 %172, i8* %173, %struct.inpcb* (%struct.inpcb*, i32)* %174)
  br label %176

176:                                              ; preds = %31, %36, %54, %92, %130, %167, %152
  ret void
}

declare dso_local %struct.inpcb* @udp_notify(%struct.inpcb*, i32) #1

declare dso_local i64 @PRC_IS_REDIRECT(i32) #1

declare dso_local %struct.inpcb* @in6_rtchange(%struct.inpcb*, i32) #1

declare dso_local i32 @bzero(%struct.udphdr*, i32) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32) #1

declare dso_local %struct.inpcb* @in6_pcblookup_mbuf(%struct.inpcbinfo*, i32*, i32, i32*, i32, i32, i32, %struct.mbuf*) #1

declare dso_local %struct.udpcb* @intoudpcb(%struct.inpcb*) #1

declare dso_local i32 @INP_RUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @in6_pcbnotify(%struct.inpcbinfo*, %struct.sockaddr*, i32, %struct.sockaddr*, i32, i32, i8*, %struct.inpcb* (%struct.inpcb*, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
