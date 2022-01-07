; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64 }
%struct.thread = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, %struct.socket* }
%struct.TYPE_6__ = type { i32 }

@EISCONN = common dso_local global i32 0, align 4
@ng_btsocket_hci_raw_node = common dso_local global i32* null, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_HCI = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@NG_BTSOCKET_HCI_RAW_SENDSPACE = common dso_local global i32 0, align 4
@NG_BTSOCKET_HCI_RAW_RECVSPACE = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_HCI_RAW = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PRIV_NETBLUETOOTH_RAW = common dso_local global i32 0, align 4
@NG_BTSOCKET_HCI_RAW_PRIVILEGED = common dso_local global i32 0, align 4
@NG_HCI_EVENT_COMMAND_COMPL = common dso_local global i64 0, align 8
@NG_HCI_EVENT_COMMAND_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"btsocks_hci_raw_pcb_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ng_btsocket_hci_raw_sockets_mtx = common dso_local global i32 0, align 4
@ng_btsocket_hci_raw_sockets = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_hci_raw_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.TYPE_7__* @so2hci_raw_pcb(%struct.socket* %10)
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EISCONN, align 4
  store i32 %15, i32* %4, align 4
  br label %96

16:                                               ; preds = %3
  %17 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %20, i32* %4, align 4
  br label %96

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @BLUETOOTH_PROTO_HCI, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %26, i32* %4, align 4
  br label %96

27:                                               ; preds = %21
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_RAW, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  store i32 %34, i32* %4, align 4
  br label %96

35:                                               ; preds = %27
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = load i32, i32* @NG_BTSOCKET_HCI_RAW_SENDSPACE, align 4
  %38 = load i32, i32* @NG_BTSOCKET_HCI_RAW_RECVSPACE, align 4
  %39 = call i32 @soreserve(%struct.socket* %36, i32 %37, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %96

44:                                               ; preds = %35
  %45 = load i32, i32* @M_NETGRAPH_BTSOCKET_HCI_RAW, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = load i32, i32* @M_ZERO, align 4
  %48 = or i32 %46, %47
  %49 = call %struct.TYPE_7__* @malloc(i32 24, i32 %45, i32 %48)
  store %struct.TYPE_7__* %49, %struct.TYPE_7__** %8, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = icmp eq %struct.TYPE_7__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %4, align 4
  br label %96

54:                                               ; preds = %44
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %56 = ptrtoint %struct.TYPE_7__* %55 to i64
  %57 = load %struct.socket*, %struct.socket** %5, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.socket*, %struct.socket** %5, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  store %struct.socket* %59, %struct.socket** %61, align 8
  %62 = load %struct.thread*, %struct.thread** %7, align 8
  %63 = load i32, i32* @PRIV_NETBLUETOOTH_RAW, align 4
  %64 = call i64 @priv_check(%struct.thread* %62, i32 %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %54
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i64, i64* @NG_HCI_EVENT_COMMAND_COMPL, align 8
  %78 = sub nsw i64 %77, 1
  %79 = call i32 @bit_set(i32 %76, i64 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i64, i64* @NG_HCI_EVENT_COMMAND_STATUS, align 8
  %85 = sub nsw i64 %84, 1
  %86 = call i32 @bit_set(i32 %83, i64 %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* @MTX_DEF, align 4
  %90 = call i32 @mtx_init(i32* %88, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null, i32 %89)
  %91 = call i32 @mtx_lock(i32* @ng_btsocket_hci_raw_sockets_mtx)
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %93 = load i32, i32* @next, align 4
  %94 = call i32 @LIST_INSERT_HEAD(i32* @ng_btsocket_hci_raw_sockets, %struct.TYPE_7__* %92, i32 %93)
  %95 = call i32 @mtx_unlock(i32* @ng_btsocket_hci_raw_sockets_mtx)
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %72, %52, %42, %33, %25, %19, %14
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local %struct.TYPE_7__* @so2hci_raw_pcb(%struct.socket*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @malloc(i32, i32, i32) #1

declare dso_local i64 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @bit_set(i32, i64) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
