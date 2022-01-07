; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_socket_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_socket_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, %struct.sockaddr_in*)* @socket_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_send(%struct.socket* %0, %struct.mbuf* %1, %struct.sockaddr_in* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %7, align 8
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = icmp ne %struct.socket* %8, null
  br i1 %9, label %10, label %28

10:                                               ; preds = %3
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = call i32 @SOCKBUF_LOCK(i32* %12)
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %17 = bitcast %struct.sockaddr_in* %16 to %struct.sockaddr*
  %18 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %19 = call i64 @sbappendaddr_locked(i32* %15, %struct.sockaddr* %17, %struct.mbuf* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = call i32 @sorwakeup_locked(%struct.socket* %22)
  store i32 0, i32* %4, align 4
  br label %31

24:                                               ; preds = %10
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 0
  %27 = call i32 @SOCKBUF_UNLOCK(i32* %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %30 = call i32 @m_freem(%struct.mbuf* %29)
  store i32 -1, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %21
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i64 @sbappendaddr_locked(i32*, %struct.sockaddr*, %struct.mbuf*, i32*) #1

declare dso_local i32 @sorwakeup_locked(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
