; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soisdisconnecting.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soisdisconnecting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32 }

@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soisdisconnecting(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = call i32 @SOCK_LOCK(%struct.socket* %3)
  %5 = load i32, i32* @SS_ISCONNECTING, align 4
  %6 = xor i32 %5, -1
  %7 = load %struct.socket*, %struct.socket** %2, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %12 = load %struct.socket*, %struct.socket** %2, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.socket*, %struct.socket** %2, align 8
  %17 = call i32 @SOLISTENING(%struct.socket* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %1
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = getelementptr inbounds %struct.socket, %struct.socket* %20, i32 0, i32 2
  %22 = call i32 @SOCKBUF_LOCK(i32* %21)
  %23 = load %struct.socket*, %struct.socket** %2, align 8
  %24 = call i32 @socantrcvmore_locked(%struct.socket* %23)
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 1
  %27 = call i32 @SOCKBUF_LOCK(i32* %26)
  %28 = load %struct.socket*, %struct.socket** %2, align 8
  %29 = call i32 @socantsendmore_locked(%struct.socket* %28)
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.socket*, %struct.socket** %2, align 8
  %32 = call i32 @SOCK_UNLOCK(%struct.socket* %31)
  %33 = load %struct.socket*, %struct.socket** %2, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  %35 = call i32 @wakeup(i32* %34)
  ret void
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @socantrcvmore_locked(%struct.socket*) #1

declare dso_local i32 @socantsendmore_locked(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
