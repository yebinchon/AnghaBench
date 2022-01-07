; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_usrreq.c_tcp_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, %struct.TYPE_2__*, i32, %struct.inpcb* }
%struct.TYPE_2__ = type { i32 (%struct.tcpcb*)* }
%struct.inpcb = type { i32, %struct.socket* }
%struct.socket = type { i32, i64, i32 }

@TCPS_ESTABLISHED = common dso_local global i64 0, align 8
@TCPS_LISTEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"tcp_disconnect: tcp_close() returned NULL\00", align 1
@SO_LINGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"tcp_disconnect: tcp_drop() returned NULL\00", align 1
@INP_DROPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*)* @tcp_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_disconnect(%struct.tcpcb* %0) #0 {
  %2 = alloca %struct.tcpcb*, align 8
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.socket*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %2, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 3
  %7 = load %struct.inpcb*, %struct.inpcb** %6, align 8
  store %struct.inpcb* %7, %struct.inpcb** %3, align 8
  %8 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %9 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %8, i32 0, i32 1
  %10 = load %struct.socket*, %struct.socket** %9, align 8
  store %struct.socket* %10, %struct.socket** %4, align 8
  %11 = call i32 (...) @NET_EPOCH_ASSERT()
  %12 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %13 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %12)
  %14 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %15 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TCPS_ESTABLISHED, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %1
  %20 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %21 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TCPS_LISTEN, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %27 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_FASTOPEN(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25, %19
  %32 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %33 = call %struct.tcpcb* @tcp_close(%struct.tcpcb* %32)
  store %struct.tcpcb* %33, %struct.tcpcb** %2, align 8
  %34 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %35 = icmp ne %struct.tcpcb* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %81

38:                                               ; preds = %25, %1
  %39 = load %struct.socket*, %struct.socket** %4, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SO_LINGER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %38
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %52 = call %struct.tcpcb* @tcp_drop(%struct.tcpcb* %51, i32 0)
  store %struct.tcpcb* %52, %struct.tcpcb** %2, align 8
  %53 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %54 = icmp ne %struct.tcpcb* %53, null
  %55 = zext i1 %54 to i32
  %56 = call i32 @KASSERT(i32 %55, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %80

57:                                               ; preds = %45, %38
  %58 = load %struct.socket*, %struct.socket** %4, align 8
  %59 = call i32 @soisdisconnecting(%struct.socket* %58)
  %60 = load %struct.socket*, %struct.socket** %4, align 8
  %61 = getelementptr inbounds %struct.socket, %struct.socket* %60, i32 0, i32 2
  %62 = call i32 @sbflush(i32* %61)
  %63 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %64 = call i32 @tcp_usrclosed(%struct.tcpcb* %63)
  %65 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %66 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @INP_DROPPED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %57
  %72 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %73 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32 (%struct.tcpcb*)*, i32 (%struct.tcpcb*)** %75, align 8
  %77 = load %struct.tcpcb*, %struct.tcpcb** %2, align 8
  %78 = call i32 %76(%struct.tcpcb* %77)
  br label %79

79:                                               ; preds = %71, %57
  br label %80

80:                                               ; preds = %79, %50
  br label %81

81:                                               ; preds = %80, %31
  ret void
}

declare dso_local i32 @NET_EPOCH_ASSERT(...) #1

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i64 @IS_FASTOPEN(i32) #1

declare dso_local %struct.tcpcb* @tcp_close(%struct.tcpcb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.tcpcb* @tcp_drop(%struct.tcpcb*, i32) #1

declare dso_local i32 @soisdisconnecting(%struct.socket*) #1

declare dso_local i32 @sbflush(i32*) #1

declare dso_local i32 @tcp_usrclosed(%struct.tcpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
