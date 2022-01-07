; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32* }
%struct.TYPE_8__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [36 x i8] c"ng_btsocket_sco_detach: pcb == NULL\00", align 1
@ng_btsocket_sco_node = common dso_local global i32* null, align 8
@ng_btsocket_sco_sockets_mtx = common dso_local global i32 0, align 4
@NG_BTSOCKET_SCO_TIMO = common dso_local global i32 0, align 4
@NG_BTSOCKET_SCO_OPEN = common dso_local global i64 0, align 8
@NG_BTSOCKET_SCO_CLOSED = common dso_local global i64 0, align 8
@next = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_SCO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ng_btsocket_sco_detach(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  %4 = load %struct.socket*, %struct.socket** %2, align 8
  %5 = call %struct.TYPE_8__* @so2sco_pcb(%struct.socket* %4)
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = icmp ne %struct.TYPE_8__* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %10 = load i32*, i32** @ng_btsocket_sco_node, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %59

13:                                               ; preds = %1
  %14 = call i32 @mtx_lock(i32* @ng_btsocket_sco_sockets_mtx)
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @NG_BTSOCKET_SCO_TIMO, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = call i32 @ng_btsocket_sco_untimeout(%struct.TYPE_8__* %25)
  br label %27

27:                                               ; preds = %24, %13
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NG_BTSOCKET_SCO_OPEN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = call i32 @ng_btsocket_sco_send_lp_discon_req(%struct.TYPE_8__* %34)
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i64, i64* @NG_BTSOCKET_SCO_CLOSED, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = load i32, i32* @next, align 4
  %42 = call i32 @LIST_REMOVE(%struct.TYPE_8__* %40, i32 %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 2
  %45 = call i32 @mtx_unlock(i32* %44)
  %46 = call i32 @mtx_unlock(i32* @ng_btsocket_sco_sockets_mtx)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 2
  %49 = call i32 @mtx_destroy(i32* %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %51 = call i32 @bzero(%struct.TYPE_8__* %50, i32 24)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %53 = load i32, i32* @M_NETGRAPH_BTSOCKET_SCO, align 4
  %54 = call i32 @free(%struct.TYPE_8__* %52, i32 %53)
  %55 = load %struct.socket*, %struct.socket** %2, align 8
  %56 = call i32 @soisdisconnected(%struct.socket* %55)
  %57 = load %struct.socket*, %struct.socket** %2, align 8
  %58 = getelementptr inbounds %struct.socket, %struct.socket* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %36, %12
  ret void
}

declare dso_local %struct.TYPE_8__* @so2sco_pcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @ng_btsocket_sco_untimeout(%struct.TYPE_8__*) #1

declare dso_local i32 @ng_btsocket_sco_send_lp_discon_req(%struct.TYPE_8__*) #1

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
