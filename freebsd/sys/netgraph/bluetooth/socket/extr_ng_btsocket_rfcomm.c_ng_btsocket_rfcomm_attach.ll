; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_rfcomm.c_ng_btsocket_rfcomm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.socket* }

@SOCK_STREAM = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_SENDSPACE = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_RECVSPACE = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_RFCOMM = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_DLC_CLOSED = common dso_local global i32 0, align 4
@NG_BTSOCKET_RFCOMM_DLC_CFC = common dso_local global i32 0, align 4
@RFCOMM_MODEM_RTC = common dso_local global i32 0, align 4
@RFCOMM_MODEM_RTR = common dso_local global i32 0, align 4
@RFCOMM_MODEM_DV = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_MTU = common dso_local global i32 0, align 4
@RFCOMM_DEFAULT_CREDITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"btsocks_rfcomm_pcb_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sockets_mtx = common dso_local global i32 0, align 4
@ng_btsocket_rfcomm_sockets = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_RFCOMM = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_rfcomm_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
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
  %11 = call %struct.TYPE_9__* @so2rfcomm_pcb(%struct.socket* %10)
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %8, align 8
  %12 = load %struct.socket*, %struct.socket** %5, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @SOCK_STREAM, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  store i32 %18, i32* %4, align 4
  br label %101

19:                                               ; preds = %3
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @EISCONN, align 4
  store i32 %23, i32* %4, align 4
  br label %101

24:                                               ; preds = %19
  %25 = load %struct.socket*, %struct.socket** %5, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %24
  %31 = load %struct.socket*, %struct.socket** %5, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30, %24
  %37 = load %struct.socket*, %struct.socket** %5, align 8
  %38 = load i32, i32* @NG_BTSOCKET_RFCOMM_SENDSPACE, align 4
  %39 = load i32, i32* @NG_BTSOCKET_RFCOMM_RECVSPACE, align 4
  %40 = call i32 @soreserve(%struct.socket* %37, i32 %38, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %101

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @M_NETGRAPH_BTSOCKET_RFCOMM, align 4
  %48 = load i32, i32* @M_NOWAIT, align 4
  %49 = load i32, i32* @M_ZERO, align 4
  %50 = or i32 %48, %49
  %51 = call %struct.TYPE_9__* @malloc(i32 56, i32 %47, i32 %50)
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %8, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = icmp eq %struct.TYPE_9__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %46
  %55 = load i32, i32* @ENOMEM, align 4
  store i32 %55, i32* %4, align 4
  br label %101

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %58 = ptrtoint %struct.TYPE_9__* %57 to i64
  %59 = load %struct.socket*, %struct.socket** %5, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.socket*, %struct.socket** %5, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 9
  store %struct.socket* %61, %struct.socket** %63, align 8
  %64 = load i32, i32* @NG_BTSOCKET_RFCOMM_DLC_CLOSED, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 8
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @NG_BTSOCKET_RFCOMM_DLC_CFC, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 7
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @RFCOMM_MODEM_RTC, align 4
  %71 = load i32, i32* @RFCOMM_MODEM_RTR, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RFCOMM_MODEM_DV, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 8
  %79 = load i32, i32* @RFCOMM_DEFAULT_MTU, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 6
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* @RFCOMM_DEFAULT_CREDITS, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i32, i32* @MTX_DEF, align 4
  %90 = call i32 @mtx_init(i32* %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* null, i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 2
  %95 = call i32 @callout_init_mtx(i32* %92, i32* %94, i32 0)
  %96 = call i32 @mtx_lock(i32* @ng_btsocket_rfcomm_sockets_mtx)
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %98 = load i32, i32* @next, align 4
  %99 = call i32 @LIST_INSERT_HEAD(i32* @ng_btsocket_rfcomm_sockets, %struct.TYPE_9__* %97, i32 %98)
  %100 = call i32 @mtx_unlock(i32* @ng_btsocket_rfcomm_sockets_mtx)
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %56, %54, %43, %22, %17
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_9__* @so2rfcomm_pcb(%struct.socket*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_9__* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
