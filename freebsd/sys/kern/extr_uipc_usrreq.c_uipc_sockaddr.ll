; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_sockaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.socket = type { i32 }
%struct.unpcb = type { i32* }

@.str = private unnamed_addr constant [27 x i8] c"uipc_sockaddr: unp == NULL\00", align 1
@M_SONAME = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sun_noname = common dso_local global %struct.sockaddr zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr**)* @uipc_sockaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_sockaddr(%struct.socket* %0, %struct.sockaddr** %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockaddr**, align 8
  %5 = alloca %struct.unpcb*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockaddr** %1, %struct.sockaddr*** %4, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call %struct.unpcb* @sotounpcb(%struct.socket* %7)
  store %struct.unpcb* %8, %struct.unpcb** %5, align 8
  %9 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %10 = icmp ne %struct.unpcb* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @M_SONAME, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call %struct.sockaddr* @malloc(i32 4, i32 %13, i32 %14)
  %16 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  store %struct.sockaddr* %15, %struct.sockaddr** %16, align 8
  %17 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %18 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %17)
  %19 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %20 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %25 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.sockaddr*
  store %struct.sockaddr* %27, %struct.sockaddr** %6, align 8
  br label %29

28:                                               ; preds = %2
  store %struct.sockaddr* @sun_noname, %struct.sockaddr** %6, align 8
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %31 = load %struct.sockaddr**, %struct.sockaddr*** %4, align 8
  %32 = load %struct.sockaddr*, %struct.sockaddr** %31, align 8
  %33 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @bcopy(%struct.sockaddr* %30, %struct.sockaddr* %32, i32 %35)
  %37 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %38 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %37)
  ret i32 0
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.sockaddr* @malloc(i32, i32, i32) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @bcopy(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
