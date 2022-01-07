; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_sco.c_ng_btsocket_sco_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.socket* }

@ng_btsocket_sco_node = common dso_local global i32* null, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@NG_BTSOCKET_SCO_SENDSPACE = common dso_local global i32 0, align 4
@NG_BTSOCKET_SCO_RECVSPACE = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_SCO = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NG_BTSOCKET_SCO_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"btsocks_sco_pcb_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@ng_btsocket_sco_sockets_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@ng_btsocket_sco_sockets = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_SCO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_sco_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.TYPE_9__* @so2sco_pcb(%struct.socket* %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load i32*, i32** @ng_btsocket_sco_node, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %15, i32* %4, align 4
  br label %97

16:                                               ; preds = %3
  %17 = load %struct.socket*, %struct.socket** %5, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SOCK_SEQPACKET, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  store i32 %23, i32* %4, align 4
  br label %97

24:                                               ; preds = %16
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %26 = icmp ne %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @EISCONN, align 4
  store i32 %28, i32* %4, align 4
  br label %97

29:                                               ; preds = %24
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %29
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = load i32, i32* @NG_BTSOCKET_SCO_SENDSPACE, align 4
  %44 = load i32, i32* @NG_BTSOCKET_SCO_RECVSPACE, align 4
  %45 = call i32 @soreserve(%struct.socket* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %97

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* @M_NETGRAPH_BTSOCKET_SCO, align 4
  %53 = load i32, i32* @M_NOWAIT, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.TYPE_9__* @malloc(i32 24, i32 %52, i32 %55)
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %8, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = icmp eq %struct.TYPE_9__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %4, align 4
  br label %97

61:                                               ; preds = %51
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = ptrtoint %struct.TYPE_9__* %62 to i64
  %64 = load %struct.socket*, %struct.socket** %5, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.socket*, %struct.socket** %5, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  store %struct.socket* %66, %struct.socket** %68, align 8
  %69 = load i32, i32* @NG_BTSOCKET_SCO_CLOSED, align 4
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  %74 = call i32 @callout_init(i32* %73, i32 1)
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* @MTX_DEF, align 4
  %78 = load i32, i32* @MTX_DUPOK, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @mtx_init(i32* %76, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* null, i32 %79)
  %81 = load %struct.thread*, %struct.thread** %7, align 8
  %82 = icmp ne %struct.thread* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %61
  %84 = call i32 @mtx_lock(i32* @ng_btsocket_sco_sockets_mtx)
  br label %88

85:                                               ; preds = %61
  %86 = load i32, i32* @MA_OWNED, align 4
  %87 = call i32 @mtx_assert(i32* @ng_btsocket_sco_sockets_mtx, i32 %86)
  br label %88

88:                                               ; preds = %85, %83
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %90 = load i32, i32* @next, align 4
  %91 = call i32 @LIST_INSERT_HEAD(i32* @ng_btsocket_sco_sockets, %struct.TYPE_9__* %89, i32 %90)
  %92 = load %struct.thread*, %struct.thread** %7, align 8
  %93 = icmp ne %struct.thread* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 @mtx_unlock(i32* @ng_btsocket_sco_sockets_mtx)
  br label %96

96:                                               ; preds = %94, %88
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %59, %48, %27, %22, %14
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_9__* @so2sco_pcb(%struct.socket*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32, i32, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
