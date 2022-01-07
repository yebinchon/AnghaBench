; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap_raw.c_ng_btsocket_l2cap_raw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap_raw.c_ng_btsocket_l2cap_raw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64 }
%struct.thread = type { i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.socket* }

@EISCONN = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_raw_node = common dso_local global i32* null, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_RAW_SENDSPACE = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_RAW_RECVSPACE = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_L2CAP_RAW = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PRIV_NETBLUETOOTH_RAW = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_RAW_PRIVILEGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"btsocks_l2cap_raw_pcb_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_raw_sockets_mtx = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_raw_sockets = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_l2cap_raw_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.TYPE_5__* @so2l2cap_raw_pcb(%struct.socket* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %8, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %13 = icmp ne %struct.TYPE_5__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EISCONN, align 4
  store i32 %15, i32* %4, align 4
  br label %76

16:                                               ; preds = %3
  %17 = load i32*, i32** @ng_btsocket_l2cap_raw_node, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %20, i32* %4, align 4
  br label %76

21:                                               ; preds = %16
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_RAW, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  store i32 %28, i32* %4, align 4
  br label %76

29:                                               ; preds = %21
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = load i32, i32* @NG_BTSOCKET_L2CAP_RAW_SENDSPACE, align 4
  %32 = load i32, i32* @NG_BTSOCKET_L2CAP_RAW_RECVSPACE, align 4
  %33 = call i32 @soreserve(%struct.socket* %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %4, align 4
  br label %76

38:                                               ; preds = %29
  %39 = load i32, i32* @M_NETGRAPH_BTSOCKET_L2CAP_RAW, align 4
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = load i32, i32* @M_ZERO, align 4
  %42 = or i32 %40, %41
  %43 = call %struct.TYPE_5__* @malloc(i32 16, i32 %39, i32 %42)
  store %struct.TYPE_5__* %43, %struct.TYPE_5__** %8, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %45 = icmp eq %struct.TYPE_5__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @ENOMEM, align 4
  store i32 %47, i32* %4, align 4
  br label %76

48:                                               ; preds = %38
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %50 = ptrtoint %struct.TYPE_5__* %49 to i64
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = getelementptr inbounds %struct.socket, %struct.socket* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = load %struct.socket*, %struct.socket** %5, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 2
  store %struct.socket* %53, %struct.socket** %55, align 8
  %56 = load %struct.thread*, %struct.thread** %7, align 8
  %57 = load i32, i32* @PRIV_NETBLUETOOTH_RAW, align 4
  %58 = call i64 @priv_check(%struct.thread* %56, i32 %57)
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %48
  %61 = load i32, i32* @NG_BTSOCKET_L2CAP_RAW_PRIVILEGED, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %48
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* @MTX_DEF, align 4
  %70 = call i32 @mtx_init(i32* %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32* null, i32 %69)
  %71 = call i32 @mtx_lock(i32* @ng_btsocket_l2cap_raw_sockets_mtx)
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %73 = load i32, i32* @next, align 4
  %74 = call i32 @LIST_INSERT_HEAD(i32* @ng_btsocket_l2cap_raw_sockets, %struct.TYPE_5__* %72, i32 %73)
  %75 = call i32 @mtx_unlock(i32* @ng_btsocket_l2cap_raw_sockets_mtx)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %66, %46, %36, %27, %19, %14
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local %struct.TYPE_5__* @so2l2cap_raw_pcb(%struct.socket*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_5__* @malloc(i32, i32, i32) #1

declare dso_local i64 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
