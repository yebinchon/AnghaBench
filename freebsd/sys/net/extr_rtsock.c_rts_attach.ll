; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rts_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rts_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.socket = type { i32, i32*, i32 }
%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.rawcb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"rts_attach: so_pcb != NULL\00", align 1
@M_PCB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@V_route_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SO_USELOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.thread*)* @rts_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rts_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.rawcb*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @M_PCB, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.rawcb* @malloc(i32 4, i32 %16, i32 %19)
  store %struct.rawcb* %20, %struct.rawcb** %8, align 8
  %21 = load %struct.rawcb*, %struct.rawcb** %8, align 8
  %22 = bitcast %struct.rawcb* %21 to i32*
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = getelementptr inbounds %struct.socket, %struct.socket* %23, i32 0, i32 1
  store i32* %22, i32** %24, align 8
  %25 = load %struct.thread*, %struct.thread** %7, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.socket*, %struct.socket** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @raw_attach(%struct.socket* %32, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.socket*, %struct.socket** %5, align 8
  %36 = call %struct.rawcb* @sotorawcb(%struct.socket* %35)
  store %struct.rawcb* %36, %struct.rawcb** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %3
  %40 = load %struct.socket*, %struct.socket** %5, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load %struct.rawcb*, %struct.rawcb** %8, align 8
  %43 = load i32, i32* @M_PCB, align 4
  %44 = call i32 @free(%struct.rawcb* %42, i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %69

46:                                               ; preds = %3
  %47 = call i32 (...) @RTSOCK_LOCK()
  %48 = load %struct.rawcb*, %struct.rawcb** %8, align 8
  %49 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %58 [
    i32 129, label %52
    i32 128, label %55
  ]

52:                                               ; preds = %46
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 2), align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 2), align 4
  br label %58

55:                                               ; preds = %46
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 1), align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 1), align 4
  br label %58

58:                                               ; preds = %46, %55, %52
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 0), align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 0), align 4
  %61 = call i32 (...) @RTSOCK_UNLOCK()
  %62 = load %struct.socket*, %struct.socket** %5, align 8
  %63 = call i32 @soisconnected(%struct.socket* %62)
  %64 = load i32, i32* @SO_USELOOPBACK, align 4
  %65 = load %struct.socket*, %struct.socket** %5, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %58, %39
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.rawcb* @malloc(i32, i32, i32) #1

declare dso_local i32 @raw_attach(%struct.socket*, i32) #1

declare dso_local %struct.rawcb* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @free(%struct.rawcb*, i32) #1

declare dso_local i32 @RTSOCK_LOCK(...) #1

declare dso_local i32 @RTSOCK_UNLOCK(...) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
