; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_solisten_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_socket.c_solisten_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32*, i32, %struct.TYPE_2__, i32, i32 (%struct.socket*, i32, i32)* }
%struct.TYPE_2__ = type { i32 }

@M_NOWAIT = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@SS_ASYNC = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solisten_wakeup(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %3 = load %struct.socket*, %struct.socket** %2, align 8
  %4 = getelementptr inbounds %struct.socket, %struct.socket* %3, i32 0, i32 5
  %5 = load i32 (%struct.socket*, i32, i32)*, i32 (%struct.socket*, i32, i32)** %4, align 8
  %6 = icmp ne i32 (%struct.socket*, i32, i32)* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load %struct.socket*, %struct.socket** %2, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 5
  %10 = load i32 (%struct.socket*, i32, i32)*, i32 (%struct.socket*, i32, i32)** %9, align 8
  %11 = load %struct.socket*, %struct.socket** %2, align 8
  %12 = load %struct.socket*, %struct.socket** %2, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call i32 %10(%struct.socket* %11, i32 %14, i32 %15)
  br label %26

17:                                               ; preds = %1
  %18 = load %struct.socket*, %struct.socket** %2, align 8
  %19 = getelementptr inbounds %struct.socket, %struct.socket* %18, i32 0, i32 3
  %20 = load i32, i32* @PSOCK, align 4
  %21 = call i32 @selwakeuppri(%struct.TYPE_2__* %19, i32 %20)
  %22 = load %struct.socket*, %struct.socket** %2, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @KNOTE_LOCKED(i32* %24, i32 0)
  br label %26

26:                                               ; preds = %17, %7
  %27 = load %struct.socket*, %struct.socket** %2, align 8
  %28 = call i32 @SOLISTEN_UNLOCK(%struct.socket* %27)
  %29 = load %struct.socket*, %struct.socket** %2, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 2
  %31 = call i32 @wakeup_one(i32* %30)
  %32 = load %struct.socket*, %struct.socket** %2, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @SS_ASYNC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.socket*, %struct.socket** %2, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.socket*, %struct.socket** %2, align 8
  %45 = getelementptr inbounds %struct.socket, %struct.socket* %44, i32 0, i32 1
  %46 = load i32, i32* @SIGIO, align 4
  %47 = call i32 @pgsigio(i32** %45, i32 %46, i32 0)
  br label %48

48:                                               ; preds = %43, %38, %26
  ret void
}

declare dso_local i32 @selwakeuppri(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @KNOTE_LOCKED(i32*, i32) #1

declare dso_local i32 @SOLISTEN_UNLOCK(%struct.socket*) #1

declare dso_local i32 @wakeup_one(i32*) #1

declare dso_local i32 @pgsigio(i32**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
