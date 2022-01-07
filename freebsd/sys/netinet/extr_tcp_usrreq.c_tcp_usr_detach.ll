; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_usr_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.inpcb = type { i32* }
%struct.epoch_tracker = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"tcp_usr_detach: inp == NULL\00", align 1
@V_tcbinfo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"tcp_usr_detach: inp_socket == NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @tcp_usr_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_usr_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.epoch_tracker, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.socket*, %struct.socket** %2, align 8
  %7 = call %struct.inpcb* @sotoinpcb(%struct.socket* %6)
  store %struct.inpcb* %7, %struct.inpcb** %3, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = icmp ne %struct.inpcb* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @INP_INFO_WLOCKED(i32* @V_tcbinfo)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @NET_EPOCH_ENTER(i32 %16)
  store i32 1, i32* %4, align 4
  br label %18

18:                                               ; preds = %14, %1
  %19 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %20 = call i32 @INP_WLOCK(%struct.inpcb* %19)
  %21 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.socket*, %struct.socket** %2, align 8
  %28 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %29 = call i32 @tcp_detach(%struct.socket* %27, %struct.inpcb* %28)
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %18
  %33 = getelementptr inbounds %struct.epoch_tracker, %struct.epoch_tracker* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @NET_EPOCH_EXIT(i32 %34)
  br label %36

36:                                               ; preds = %32, %18
  ret void
}

declare dso_local %struct.inpcb* @sotoinpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @INP_INFO_WLOCKED(i32*) #1

declare dso_local i32 @NET_EPOCH_ENTER(i32) #1

declare dso_local i32 @INP_WLOCK(%struct.inpcb*) #1

declare dso_local i32 @tcp_detach(%struct.socket*, %struct.inpcb*) #1

declare dso_local i32 @NET_EPOCH_EXIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
