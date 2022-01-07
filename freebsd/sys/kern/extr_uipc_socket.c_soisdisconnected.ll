; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soisdisconnected.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_soisdisconnected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32 }

@SS_ISCONNECTING = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISDISCONNECTING = common dso_local global i32 0, align 4
@SS_ISDISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @soisdisconnected(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = call i32 @SOCK_LOCK(%struct.socket* %3)
  %5 = load i32, i32* @SS_ISCONNECTING, align 4
  %6 = load i32, i32* @SS_ISCONNECTED, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @SS_ISDISCONNECTING, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @SS_ISDISCONNECTED, align 4
  %16 = load %struct.socket*, %struct.socket** %2, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.socket*, %struct.socket** %2, align 8
  %21 = call i32 @SOLISTENING(%struct.socket* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %42, label %23

23:                                               ; preds = %1
  %24 = load %struct.socket*, %struct.socket** %2, align 8
  %25 = call i32 @SOCK_UNLOCK(%struct.socket* %24)
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 3
  %28 = call i32 @SOCKBUF_LOCK(i32* %27)
  %29 = load %struct.socket*, %struct.socket** %2, align 8
  %30 = call i32 @socantrcvmore_locked(%struct.socket* %29)
  %31 = load %struct.socket*, %struct.socket** %2, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 2
  %33 = call i32 @SOCKBUF_LOCK(i32* %32)
  %34 = load %struct.socket*, %struct.socket** %2, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 2
  %36 = load %struct.socket*, %struct.socket** %2, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 2
  %38 = call i32 @sbused(i32* %37)
  %39 = call i32 @sbdrop_locked(i32* %35, i32 %38)
  %40 = load %struct.socket*, %struct.socket** %2, align 8
  %41 = call i32 @socantsendmore_locked(%struct.socket* %40)
  br label %45

42:                                               ; preds = %1
  %43 = load %struct.socket*, %struct.socket** %2, align 8
  %44 = call i32 @SOCK_UNLOCK(%struct.socket* %43)
  br label %45

45:                                               ; preds = %42, %23
  %46 = load %struct.socket*, %struct.socket** %2, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 1
  %48 = call i32 @wakeup(i32* %47)
  ret void
}

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @SOLISTENING(%struct.socket*) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @SOCKBUF_LOCK(i32*) #1

declare dso_local i32 @socantrcvmore_locked(%struct.socket*) #1

declare dso_local i32 @sbdrop_locked(i32*, i32) #1

declare dso_local i32 @sbused(i32*) #1

declare dso_local i32 @socantsendmore_locked(%struct.socket*) #1

declare dso_local i32 @wakeup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
