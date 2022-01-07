; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_udp6_usrreq.c_udp6_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.pr_usrreqs* }
%struct.pr_usrreqs = type { i32 (%struct.socket*)* }
%struct.socket = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.inpcb = type { i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.inpcbinfo = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"udp6_close: inp == NULL\00", align 1
@in6addr_any = common dso_local global i32 0, align 4
@INP_IPV4 = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@IPPROTO_UDPLITE = common dso_local global i64 0, align 8
@inetsw = common dso_local global %struct.TYPE_8__* null, align 8
@ip_protox = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @udp6_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udp6_close(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.inpcbinfo*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %5 = load %struct.socket*, %struct.socket** %2, align 8
  %6 = getelementptr inbounds %struct.socket, %struct.socket* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.inpcbinfo* @udp_get_inpcbinfo(i32 %9)
  store %struct.inpcbinfo* %10, %struct.inpcbinfo** %4, align 8
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %3, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %14 = icmp ne %struct.inpcb* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %18 = call i32 @INP_WLOCK(%struct.inpcb* %17)
  %19 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %20 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %19, i32 0, i32 2
  %21 = call i32 @IN6_IS_ADDR_UNSPECIFIED(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %1
  %24 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %25 = call i32 @INP_HASH_WLOCK(%struct.inpcbinfo* %24)
  %26 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %27 = call i32 @in6_pcbdisconnect(%struct.inpcb* %26)
  %28 = load i32, i32* @in6addr_any, align 4
  %29 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %30 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inpcbinfo*, %struct.inpcbinfo** %4, align 8
  %32 = call i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo* %31)
  %33 = load %struct.socket*, %struct.socket** %2, align 8
  %34 = call i32 @soisdisconnected(%struct.socket* %33)
  br label %35

35:                                               ; preds = %23, %1
  %36 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %37 = call i32 @INP_WUNLOCK(%struct.inpcb* %36)
  ret void
}

declare dso_local %struct.inpcbinfo* @udp_get_inpcbinfo(i32) #1

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @IN6_IS_ADDR_UNSPECIFIED(i32*) #1

declare dso_local i32 @INP_HASH_WLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @in6_pcbdisconnect(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WUNLOCK(%struct.inpcbinfo*) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
