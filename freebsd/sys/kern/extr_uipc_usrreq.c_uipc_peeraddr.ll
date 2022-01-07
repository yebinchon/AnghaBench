; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_peeraddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_peeraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.socket = type { i32 }
%struct.unpcb = type { i32*, %struct.unpcb* }

@.str = private unnamed_addr constant [27 x i8] c"uipc_peeraddr: unp == NULL\00", align 1
@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sun_noname = common dso_local global %struct.sockaddr zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @uipc_peeraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_peeraddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr**, align 8
  %5 = alloca %struct.unpcb*, align 8
  %6 = alloca %struct.unpcb*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = call %struct.unpcb* @sotounpcb(%struct.socket* %8)
  store %struct.unpcb* %9, %struct.unpcb** %5, align 8
  %10 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %11 = icmp ne %struct.unpcb* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @M_SONAME, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call %struct.sockaddr* @malloc(i32 4, i32 %14, i32 %15)
  %17 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  store %struct.sockaddr* %16, %struct.sockaddr** %17, align 8
  %18 = call i32 (...) @UNP_LINK_RLOCK()
  %19 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %20 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %19, i32 0, i32 1
  %21 = load %struct.unpcb*, %struct.unpcb** %20, align 8
  store %struct.unpcb* %21, %struct.unpcb** %6, align 8
  %22 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %23 = icmp ne %struct.unpcb* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %2
  %25 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %26 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %25)
  %27 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %28 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %33 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = bitcast i32* %34 to %struct.sockaddr*
  store %struct.sockaddr* %35, %struct.sockaddr** %7, align 8
  br label %37

36:                                               ; preds = %24
  store %struct.sockaddr* @sun_noname, %struct.sockaddr** %7, align 8
  br label %37

37:                                               ; preds = %36, %31
  %38 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %39 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %40 = load %struct.sockaddr*, %struct.sockaddr** %39, align 8
  %41 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %42 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @bcopy(%struct.sockaddr* %38, %struct.sockaddr* %40, i32 %43)
  %45 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %46 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %45)
  br label %55

47:                                               ; preds = %2
  store %struct.sockaddr* @sun_noname, %struct.sockaddr** %7, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %49 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %50 = load %struct.sockaddr*, %struct.sockaddr** %49, align 8
  %51 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %52 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bcopy(%struct.sockaddr* %48, %struct.sockaddr* %50, i32 %53)
  br label %55

55:                                               ; preds = %47, %37
  %56 = call i32 (...) @UNP_LINK_RUNLOCK()
  ret i32 0
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.sockaddr* @malloc(i32, i32, i32) #1

declare dso_local i32 @UNP_LINK_RLOCK(...) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

declare dso_local i32 @UNP_LINK_RUNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
