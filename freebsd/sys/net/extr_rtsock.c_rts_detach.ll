; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rts_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rts_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.socket*)* }
%struct.socket = type { i32 }
%struct.rawcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"rts_detach: rp == NULL\00", align 1
@V_route_cb = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@raw_usrreqs = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.socket*)* @rts_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.rawcb*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call %struct.rawcb* @sotorawcb(%struct.socket* %4)
  store %struct.rawcb* %5, %struct.rawcb** %3, align 8
  %6 = load %struct.rawcb*, %struct.rawcb** %3, align 8
  %7 = icmp ne %struct.rawcb* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 (...) @RTSOCK_LOCK()
  %11 = load %struct.rawcb*, %struct.rawcb** %3, align 8
  %12 = getelementptr inbounds %struct.rawcb, %struct.rawcb* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 2), align 4
  %17 = add nsw i32 %16, -1
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 2), align 4
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 1), align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 1), align 4
  br label %21

21:                                               ; preds = %1, %18, %15
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 0), align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @V_route_cb, i32 0, i32 0), align 4
  %24 = call i32 (...) @RTSOCK_UNLOCK()
  %25 = load i32 (%struct.socket*)*, i32 (%struct.socket*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @raw_usrreqs, i32 0, i32 0), align 8
  %26 = load %struct.socket*, %struct.socket** %2, align 8
  %27 = call i32 %25(%struct.socket* %26)
  ret void
}

declare dso_local %struct.rawcb* @sotorawcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @RTSOCK_LOCK(...) #1

declare dso_local i32 @RTSOCK_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
