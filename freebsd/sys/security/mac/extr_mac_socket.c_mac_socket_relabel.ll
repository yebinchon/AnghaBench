; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_relabel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_socket.c_mac_socket_relabel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.socket = type { i32 }
%struct.label = type { i32 }

@socket_relabel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ucred*, %struct.socket*, %struct.label*)* @mac_socket_relabel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac_socket_relabel(%struct.ucred* %0, %struct.socket* %1, %struct.label* %2) #0 {
  %4 = alloca %struct.ucred*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.label*, align 8
  store %struct.ucred* %0, %struct.ucred** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store %struct.label* %2, %struct.label** %6, align 8
  %7 = load %struct.socket*, %struct.socket** %5, align 8
  %8 = call i32 @SOCK_LOCK_ASSERT(%struct.socket* %7)
  %9 = load i32, i32* @socket_relabel, align 4
  %10 = load %struct.ucred*, %struct.ucred** %4, align 8
  %11 = load %struct.socket*, %struct.socket** %5, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.label*, %struct.label** %6, align 8
  %16 = call i32 @MAC_POLICY_PERFORM_NOSLEEP(i32 %9, %struct.ucred* %10, %struct.socket* %11, i32 %14, %struct.label* %15)
  ret void
}

declare dso_local i32 @SOCK_LOCK_ASSERT(%struct.socket*) #1

declare dso_local i32 @MAC_POLICY_PERFORM_NOSLEEP(i32, %struct.ucred*, %struct.socket*, i32, %struct.label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
