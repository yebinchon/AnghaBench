; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_connect_cfm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_connect_cfm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i32, i32, i32 }
%struct.TYPE_12__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@session_next = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT = common dso_local global i64 0, align 8
@NG_BTSOCKET_RFCOMM_DLC_CONFIGURING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*)* @ng_btsocket_rfcomm_connect_cfm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ng_btsocket_rfcomm_connect_cfm(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 3
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = call %struct.TYPE_11__* @LIST_FIRST(i32* %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %3, align 8
  br label %13

13:                                               ; preds = %55, %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %60

16:                                               ; preds = %13
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = load i32, i32* @session_next, align 4
  %22 = call %struct.TYPE_11__* @LIST_NEXT(%struct.TYPE_11__* %20, i32 %21)
  store %struct.TYPE_11__* %22, %struct.TYPE_11__** %4, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %16
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_12__* @so2l2cap_pcb(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 2
  %41 = call i32 @bcopy(i32* %38, i32* %40, i32 4)
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %43 = call i32 @ng_btsocket_rfcomm_send_pn(%struct.TYPE_11__* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %28
  %47 = load i64, i64* @NG_BTSOCKET_RFCOMM_DLC_CONFIGURING, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  br label %54

50:                                               ; preds = %28
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ng_btsocket_rfcomm_pcb_kill(%struct.TYPE_11__* %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %46
  br label %55

55:                                               ; preds = %54, %16
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %3, align 8
  br label %13

60:                                               ; preds = %13
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local %struct.TYPE_11__* @LIST_FIRST(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_11__* @LIST_NEXT(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_12__* @so2l2cap_pcb(i32) #1

declare dso_local i32 @ng_btsocket_rfcomm_send_pn(%struct.TYPE_11__*) #1

declare dso_local i32 @ng_btsocket_rfcomm_pcb_kill(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
