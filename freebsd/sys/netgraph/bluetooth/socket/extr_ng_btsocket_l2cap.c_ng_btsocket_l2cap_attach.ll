; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap.c_ng_btsocket_l2cap_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, %struct.TYPE_11__, i32, i32, i32, %struct.socket* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i32 }

@ng_btsocket_l2cap_attach.token = internal global i64 0, align 8
@ng_btsocket_l2cap_node = common dso_local global i32* null, align 8
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_SENDSPACE = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_RECVSPACE = common dso_local global i32 0, align 4
@M_NETGRAPH_BTSOCKET_L2CAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_CLOSED = common dso_local global i32 0, align 4
@NG_L2CAP_MTU_DEFAULT = common dso_local global i32 0, align 4
@NG_HCI_SERVICE_TYPE_BEST_EFFORT = common dso_local global i32 0, align 4
@NG_L2CAP_FLUSH_TIMO_DEFAULT = common dso_local global i32 0, align 4
@NG_L2CAP_LINK_TIMO_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"btsocks_l2cap_pcb_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_DUPOK = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_sockets_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_sockets = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_l2cap_attach(%struct.socket* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.TYPE_10__* @so2l2cap_pcb(%struct.socket* %10)
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load i32*, i32** @ng_btsocket_l2cap_node, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %15, i32* %4, align 4
  br label %147

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
  br label %147

24:                                               ; preds = %16
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %26 = icmp ne %struct.TYPE_10__* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* @EISCONN, align 4
  store i32 %28, i32* %4, align 4
  br label %147

29:                                               ; preds = %24
  %30 = load %struct.socket*, %struct.socket** %5, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.socket*, %struct.socket** %5, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %29
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  %43 = load i32, i32* @NG_BTSOCKET_L2CAP_SENDSPACE, align 4
  %44 = load i32, i32* @NG_BTSOCKET_L2CAP_RECVSPACE, align 4
  %45 = call i32 @soreserve(%struct.socket* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %147

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* @M_NETGRAPH_BTSOCKET_L2CAP, align 4
  %53 = load i32, i32* @M_NOWAIT, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call %struct.TYPE_10__* @malloc(i32 80, i32 %52, i32 %55)
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %8, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %58 = icmp eq %struct.TYPE_10__* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @ENOMEM, align 4
  store i32 %60, i32* %4, align 4
  br label %147

61:                                               ; preds = %51
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = ptrtoint %struct.TYPE_10__* %62 to i64
  %64 = load %struct.socket*, %struct.socket** %5, align 8
  %65 = getelementptr inbounds %struct.socket, %struct.socket* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.socket*, %struct.socket** %5, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 10
  store %struct.socket* %66, %struct.socket** %68, align 8
  %69 = load i32, i32* @NG_BTSOCKET_L2CAP_CLOSED, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 9
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @NG_L2CAP_MTU_DEFAULT, align 4
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 8
  store i32 %72, i32* %76, align 4
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* @NG_HCI_SERVICE_TYPE_BEST_EFFORT, align 4
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 6
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 6
  store i32 %80, i32* %83, align 4
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  store i32 -1, i32* %86, align 4
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  store i32 -1, i32* %89, align 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 3
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 4
  store i32 -1, i32* %95, align 4
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 6
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 5
  store i32 -1, i32* %98, align 4
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 5
  %103 = call i32 @bcopy(%struct.TYPE_11__* %100, i32* %102, i32 4)
  %104 = load i32, i32* @NG_L2CAP_FLUSH_TIMO_DEFAULT, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @NG_L2CAP_LINK_TIMO_DEFAULT, align 4
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i32, i32* @MTX_DEF, align 4
  %113 = load i32, i32* @MTX_DUPOK, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @mtx_init(i32* %111, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* null, i32 %114)
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = call i32 @callout_init_mtx(i32* %117, i32* %119, i32 0)
  %121 = load %struct.thread*, %struct.thread** %7, align 8
  %122 = icmp ne %struct.thread* %121, null
  br i1 %122, label %123, label %125

123:                                              ; preds = %61
  %124 = call i32 @mtx_lock(i32* @ng_btsocket_l2cap_sockets_mtx)
  br label %128

125:                                              ; preds = %61
  %126 = load i32, i32* @MA_OWNED, align 4
  %127 = call i32 @mtx_assert(i32* @ng_btsocket_l2cap_sockets_mtx, i32 %126)
  br label %128

128:                                              ; preds = %125, %123
  %129 = load i64, i64* @ng_btsocket_l2cap_attach.token, align 8
  %130 = add nsw i64 %129, 1
  store i64 %130, i64* @ng_btsocket_l2cap_attach.token, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i64, i64* @ng_btsocket_l2cap_attach.token, align 8
  %134 = add nsw i64 %133, 1
  store i64 %134, i64* @ng_btsocket_l2cap_attach.token, align 8
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i64, i64* @ng_btsocket_l2cap_attach.token, align 8
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %140 = load i32, i32* @next, align 4
  %141 = call i32 @LIST_INSERT_HEAD(i32* @ng_btsocket_l2cap_sockets, %struct.TYPE_10__* %139, i32 %140)
  %142 = load %struct.thread*, %struct.thread** %7, align 8
  %143 = icmp ne %struct.thread* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %135
  %145 = call i32 @mtx_unlock(i32* @ng_btsocket_l2cap_sockets_mtx)
  br label %146

146:                                              ; preds = %144, %135
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %146, %59, %48, %27, %22, %14
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local %struct.TYPE_10__* @so2l2cap_pcb(%struct.socket*) #1

declare dso_local i32 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
