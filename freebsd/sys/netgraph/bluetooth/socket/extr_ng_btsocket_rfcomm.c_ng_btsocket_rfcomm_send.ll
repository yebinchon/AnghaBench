; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_DLC_CONNECTED = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_DLC_SENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_rfcomm_send(%struct.socket* %0, i32 %1, %struct.mbuf* %2, %struct.sockaddr* %3, %struct.mbuf* %4, %struct.thread* %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.mbuf* %2, %struct.mbuf** %9, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %10, align 8
  store %struct.mbuf* %4, %struct.mbuf** %11, align 8
  store %struct.thread* %5, %struct.thread** %12, align 8
  %15 = load %struct.socket*, %struct.socket** %7, align 8
  %16 = call %struct.TYPE_5__* @so2rfcomm_pcb(%struct.socket* %15)
  store %struct.TYPE_5__* %16, %struct.TYPE_5__** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %18 = icmp eq %struct.TYPE_5__* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %21 = icmp eq %struct.mbuf* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %24 = icmp ne %struct.mbuf* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %19, %6
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %14, align 4
  br label %66

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = call i32 @mtx_lock(i32* %29)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NG_BTSOCKET_RFCOMM_DLC_CONNECTED, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %27
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  %39 = call i32 @mtx_unlock(i32* %38)
  %40 = load i32, i32* @ENOTCONN, align 4
  store i32 %40, i32* %14, align 4
  br label %66

41:                                               ; preds = %27
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @sbappend(i32* %45, %struct.mbuf* %46, i32 %47)
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @NG_BTSOCKET_RFCOMM_DLC_SENDING, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %41
  %56 = load i32, i32* @NG_BTSOCKET_RFCOMM_DLC_SENDING, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 8
  %61 = call i32 (...) @ng_btsocket_rfcomm_task_wakeup()
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %55, %41
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = call i32 @mtx_unlock(i32* %64)
  br label %66

66:                                               ; preds = %62, %36, %25
  %67 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %68 = call i32 @NG_FREE_M(%struct.mbuf* %67)
  %69 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %70 = call i32 @NG_FREE_M(%struct.mbuf* %69)
  %71 = load i32, i32* %14, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_5__* @so2rfcomm_pcb(%struct.socket*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sbappend(i32*, %struct.mbuf*, i32) #1

declare dso_local i32 @ng_btsocket_rfcomm_task_wakeup(...) #1

declare dso_local i32 @NG_FREE_M(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
