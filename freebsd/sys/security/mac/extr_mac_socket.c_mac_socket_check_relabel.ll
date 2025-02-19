; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_check_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_check_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.socket = type { i32 }
%struct.label = type { i32 }

@socket_check_relabel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucred*, %struct.socket*, %struct.label*)* @mac_socket_check_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mac_socket_check_relabel(%struct.ucred* %0, %struct.socket* %1, %struct.label* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.label*, align 8
  %7 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store %struct.label* %2, %struct.label** %6, align 8
  %8 = load %struct.socket*, %struct.socket** %5, align 8
  %9 = call i32 @SOCK_LOCK_ASSERT(%struct.socket* %8)
  %10 = load i32, i32* @socket_check_relabel, align 4
  %11 = load %struct.ucred*, %struct.ucred** %4, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = load %struct.socket*, %struct.socket** %5, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.label*, %struct.label** %6, align 8
  %17 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %10, %struct.ucred* %11, %struct.socket* %12, i32 %15, %struct.label* %16)
  %18 = load i32, i32* @socket_check_relabel, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.ucred*, %struct.ucred** %4, align 8
  %21 = load %struct.socket*, %struct.socket** %5, align 8
  %22 = load %struct.label*, %struct.label** %6, align 8
  %23 = call i32 @MAC_CHECK_PROBE3(i32 %18, i32 %19, %struct.ucred* %20, %struct.socket* %21, %struct.label* %22)
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @SOCK_LOCK_ASSERT(%struct.socket*) #1

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.ucred*, %struct.socket*, i32, %struct.label*) #1

declare dso_local i32 @MAC_CHECK_PROBE3(i32, i32, %struct.ucred*, %struct.socket*, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
