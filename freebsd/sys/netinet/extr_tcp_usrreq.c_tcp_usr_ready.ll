; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }

@INP_TIMEWAIT = common dso_local global i32 0, align 4
@INP_DROPPED = common dso_local global i32 0, align 4
@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, i32)* @tcp_usr_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_usr_ready(%struct.socket* %0, %struct.mbuf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = call %struct.inpcb* @sotoinpcb(%struct.socket* %11)
  store %struct.inpcb* %12, %struct.inpcb** %8, align 8
  %13 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %14 = call i32 @INP_WLOCK(%struct.inpcb* %13)
  %15 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %16 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INP_TIMEWAIT, align 4
  %19 = load i32, i32* @INP_DROPPED, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %25 = call i32 @INP_WUNLOCK(%struct.inpcb* %24)
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @mb_free_notready(%struct.mbuf* %26, i32 %27)
  %29 = load i32, i32* @ECONNRESET, align 4
  store i32 %29, i32* %4, align 4
  br label %58

30:                                               ; preds = %3
  %31 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %32 = call %struct.tcpcb* @intotcpcb(%struct.inpcb* %31)
  store %struct.tcpcb* %32, %struct.tcpcb** %9, align 8
  %33 = load %struct.socket*, %struct.socket** %5, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = call i32 @SOCKBUF_LOCK(i32* %34)
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @sbready(i32* %37, %struct.mbuf* %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.socket*, %struct.socket** %5, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = call i32 @SOCKBUF_UNLOCK(i32* %42)
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %30
  %47 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %50, align 8
  %52 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %53 = call i32 %51(%struct.tcpcb* %52)
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %46, %30
  %55 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %56 = call i32 @INP_WUNLOCK(%struct.inpcb* %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %23
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

declare dso_local i32 @mb_free_notready(%struct.mbuf*, i32) #1

declare dso_local %struct.tcpcb* @intotcpcb(%struct.inpcb*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @sbready(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @SOCKBUF_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
