; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_socket_newconn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_test/extr_mac_test.c_test_socket_newconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.label = type { i32 }

@MAGIC_SOCKET = common dso_local global i32 0, align 4
@socket_newconn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*, %struct.label*, %struct.socket*, %struct.label*)* @test_socket_newconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_socket_newconn(%struct.socket* %0, %struct.label* %1, %struct.socket* %2, %struct.label* %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.label*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.label* %1, %struct.label** %6, align 8
  store %struct.socket* %2, %struct.socket** %7, align 8
  store %struct.label* %3, %struct.label** %8, align 8
  %9 = load %struct.socket*, %struct.socket** %5, align 8
  %10 = call i32 @SOCK_LOCK(%struct.socket* %9)
  %11 = load %struct.label*, %struct.label** %6, align 8
  %12 = load i32, i32* @MAGIC_SOCKET, align 4
  %13 = call i32 @LABEL_CHECK(%struct.label* %11, i32 %12)
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = call i32 @SOCK_UNLOCK(%struct.socket* %14)
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = call i32 @SOCK_LOCK(%struct.socket* %16)
  %18 = load %struct.label*, %struct.label** %8, align 8
  %19 = load i32, i32* @MAGIC_SOCKET, align 4
  %20 = call i32 @LABEL_CHECK(%struct.label* %18, i32 %19)
  %21 = load %struct.socket*, %struct.socket** %7, align 8
  %22 = call i32 @SOCK_UNLOCK(%struct.socket* %21)
  %23 = load i32, i32* @socket_newconn, align 4
  %24 = call i32 @COUNTER_INC(i32 %23)
  ret void
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @LABEL_CHECK(%struct.label*, i32) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @COUNTER_INC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
