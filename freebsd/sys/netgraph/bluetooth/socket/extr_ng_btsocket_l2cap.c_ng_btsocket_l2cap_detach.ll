; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32* }
%struct.TYPE_8__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"ng_btsocket_l2cap_detach: pcb == NULL\00", align 1
@ng_btsocket_l2cap_node = common dso_local global i32* null, align 8
@ng_btsocket_l2cap_sockets_mtx = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_TIMO = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_CLOSED = common dso_local global i64 0, align 8
@NG_BTSOCKET_L2CAP_DISCONNECTING = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_L2CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_btsocket_l2cap_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call %struct.TYPE_8__* @so2l2cap_pcb(%struct.socket* %4)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** @ng_btsocket_l2cap_node, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %65

13:                                               ; preds = %1
  %14 = call i32 @mtx_lock(i32* @ng_btsocket_l2cap_sockets_mtx)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NG_BTSOCKET_L2CAP_TIMO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 @ng_btsocket_l2cap_untimeout(%struct.TYPE_8__* %25)
  br label %27

27:                                               ; preds = %24, %13
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NG_BTSOCKET_L2CAP_CLOSED, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @NG_BTSOCKET_L2CAP_DISCONNECTING, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = call i32 @ng_btsocket_l2cap_send_l2ca_discon_req(i32 0, %struct.TYPE_8__* %40)
  br label %42

42:                                               ; preds = %39, %33, %27
  %43 = load i64, i64* @NG_BTSOCKET_L2CAP_CLOSED, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = load i32, i32* @next, align 4
  %48 = call i32 @LIST_REMOVE(%struct.TYPE_8__* %46, i32 %47)
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = call i32 @mtx_unlock(i32* %50)
  %52 = call i32 @mtx_unlock(i32* @ng_btsocket_l2cap_sockets_mtx)
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = call i32 @mtx_destroy(i32* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = call i32 @bzero(%struct.TYPE_8__* %56, i32 24)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %59 = load i32, i32* @M_NETGRAPH_BTSOCKET_L2CAP, align 4
  %60 = call i32 @free(%struct.TYPE_8__* %58, i32 %59)
  %61 = load %struct.socket*, %struct.socket** %2, align 8
  %62 = call i32 @soisdisconnected(%struct.socket* %61)
  %63 = load %struct.socket*, %struct.socket** %2, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %42, %12
  ret void
}

declare dso_local %struct.TYPE_8__* @so2l2cap_pcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ng_btsocket_l2cap_untimeout(%struct.TYPE_8__*) #1

declare dso_local i32 @ng_btsocket_l2cap_send_l2ca_discon_req(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @soisdisconnected(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
