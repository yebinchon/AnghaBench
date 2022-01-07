; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"ng_btsocket_hci_raw_detach: pcb == NULL\00", align 1
@ng_btsocket_hci_raw_node = common dso_local global i32* null, align 8
@ng_btsocket_hci_raw_sockets_mtx = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_HCI_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_btsocket_hci_raw_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call %struct.TYPE_6__* @so2hci_raw_pcb(%struct.socket* %4)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = icmp ne %struct.TYPE_6__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %35

13:                                               ; preds = %1
  %14 = call i32 @mtx_lock(i32* @ng_btsocket_hci_raw_sockets_mtx)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = load i32, i32* @next, align 4
  %20 = call i32 @LIST_REMOVE(%struct.TYPE_6__* %18, i32 %19)
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @mtx_unlock(i32* %22)
  %24 = call i32 @mtx_unlock(i32* @ng_btsocket_hci_raw_sockets_mtx)
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = call i32 @mtx_destroy(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = call i32 @bzero(%struct.TYPE_6__* %28, i32 4)
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = load i32, i32* @M_NETGRAPH_BTSOCKET_HCI_RAW, align 4
  %32 = call i32 @free(%struct.TYPE_6__* %30, i32 %31)
  %33 = load %struct.socket*, %struct.socket** %2, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.TYPE_6__* @so2hci_raw_pcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
