; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_socket_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_ip6_mroute.c_socket_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, %struct.sockaddr_in6*)* @socket_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_send(%struct.socket* %0, %struct.mbuf* %1, %struct.sockaddr_in6* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sockaddr_in6*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sockaddr_in6* %2, %struct.sockaddr_in6** %7, align 8
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = icmp ne %struct.socket* %8, null
  br i1 %9, label %10, label %22

10:                                               ; preds = %3
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %7, align 8
  %14 = bitcast %struct.sockaddr_in6* %13 to %struct.sockaddr*
  %15 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %16 = call i64 @sbappendaddr(i32* %12, %struct.sockaddr* %14, %struct.mbuf* %15, %struct.mbuf* null)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %10
  %19 = load %struct.socket*, %struct.socket** %5, align 8
  %20 = call i32 @sorwakeup(%struct.socket* %19)
  store i32 0, i32* %4, align 4
  br label %25

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21, %3
  %23 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %24 = call i32 @m_freem(%struct.mbuf* %23)
  store i32 -1, i32* %4, align 4
  br label %25

25:                                               ; preds = %22, %18
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @sbappendaddr(i32*, %struct.sockaddr*, %struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
