; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap_raw.c_ng_btsocket_l2cap_raw_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_l2cap_raw.c_ng_btsocket_l2cap_raw_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.ifnet = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_25__ = type { i64, i32, i32, %struct.TYPE_19__*, %struct.ng_mesg*, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.ng_mesg = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64, i32 }
%struct.ng_btsocket_l2cap_raw_node_flags = type { i32 }
%struct.ng_btsocket_l2cap_raw_node_debug = type { i32 }
%struct.ng_btsocket_l2cap_raw_con_list = type { i32, i32* }
%struct.TYPE_20__ = type { i32 }
%struct.ng_btsocket_l2cap_raw_chan_list = type { i32, i32* }
%struct.TYPE_21__ = type { i32 }
%struct.ng_btsocket_l2cap_raw_ping = type { i32, %struct.TYPE_22__*, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.ng_btsocket_l2cap_raw_get_info = type { i32, %struct.TYPE_22__*, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.ng_btsocket_l2cap_raw_auto_discon_timo = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ng_btsocket_l2cap_raw_node = common dso_local global i32* null, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@NGM_L2CAP_NODE_GET_FLAGS = common dso_local global i32 0, align 4
@NGM_L2CAP_NODE_GET_DEBUG = common dso_local global i32 0, align 4
@NG_BTSOCKET_L2CAP_RAW_PRIVILEGED = common dso_local global i32 0, align 4
@NGM_L2CAP_NODE_SET_DEBUG = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NG_L2CAP_MAX_CON_NUM = common dso_local global i32 0, align 4
@NGM_L2CAP_COOKIE = common dso_local global i32 0, align 4
@NGM_L2CAP_NODE_GET_CON_LIST = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"l2ctl\00", align 1
@ng_btsocket_l2cap_raw_ioctl_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@NG_L2CAP_MAX_CHAN_NUM = common dso_local global i32 0, align 4
@NGM_L2CAP_NODE_GET_CHAN_LIST = common dso_local global i32 0, align 4
@NG_L2CAP_MAX_ECHO_SIZE = common dso_local global i32 0, align 4
@NGM_L2CAP_L2CA_PING = common dso_local global i32 0, align 4
@NGM_L2CAP_L2CA_GET_INFO = common dso_local global i32 0, align 4
@NGM_L2CAP_NODE_GET_AUTO_DISCON_TIMO = common dso_local global i32 0, align 4
@NGM_L2CAP_NODE_SET_AUTO_DISCON_TIMO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_l2cap_raw_control(%struct.socket* %0, i32 %1, %struct.TYPE_22__* %2, %struct.ifnet* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.ng_mesg*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ng_btsocket_l2cap_raw_node_flags*, align 8
  %16 = alloca %struct.ng_btsocket_l2cap_raw_node_debug*, align 8
  %17 = alloca %struct.ng_btsocket_l2cap_raw_node_debug*, align 8
  %18 = alloca %struct.ng_btsocket_l2cap_raw_con_list*, align 8
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.ng_btsocket_l2cap_raw_chan_list*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca %struct.ng_btsocket_l2cap_raw_ping*, align 8
  %25 = alloca %struct.TYPE_23__*, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca %struct.ng_btsocket_l2cap_raw_get_info*, align 8
  %28 = alloca %struct.TYPE_24__*, align 8
  %29 = alloca %struct.TYPE_22__*, align 8
  %30 = alloca %struct.ng_btsocket_l2cap_raw_auto_discon_timo*, align 8
  %31 = alloca %struct.ng_btsocket_l2cap_raw_auto_discon_timo*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %9, align 8
  store %struct.ifnet* %3, %struct.ifnet** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %32 = load %struct.socket*, %struct.socket** %7, align 8
  %33 = call %struct.TYPE_25__* @so2l2cap_raw_pcb(%struct.socket* %32)
  store %struct.TYPE_25__* %33, %struct.TYPE_25__** %12, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %13, align 8
  store i32 0, i32* %14, align 4
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %35 = icmp eq %struct.TYPE_25__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %5
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %6, align 4
  br label %810

38:                                               ; preds = %5
  %39 = load i32*, i32** @ng_btsocket_l2cap_raw_node, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %6, align 4
  br label %810

43:                                               ; preds = %38
  %44 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %44, i32 0, i32 2
  %46 = call i32 @mtx_lock(i32* %45)
  %47 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = icmp eq %struct.TYPE_19__* %49, null
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 2
  %54 = call i32 @mtx_unlock(i32* %53)
  %55 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %55, i32* %6, align 4
  br label %810

56:                                               ; preds = %43
  %57 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %63 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %62, i32 0, i32 2
  %64 = call i32 @mtx_unlock(i32* %63)
  %65 = load i32, i32* @EBUSY, align 4
  store i32 %65, i32* %6, align 4
  br label %810

66:                                               ; preds = %56
  %67 = load i32, i32* %8, align 4
  switch i32 %67, label %803 [
    i32 130, label %68
    i32 131, label %76
    i32 128, label %84
    i32 132, label %106
    i32 133, label %255
    i32 135, label %404
    i32 136, label %602
    i32 134, label %773
    i32 129, label %781
  ]

68:                                               ; preds = %66
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %70 = bitcast %struct.TYPE_22__* %69 to %struct.ng_btsocket_l2cap_raw_node_flags*
  store %struct.ng_btsocket_l2cap_raw_node_flags* %70, %struct.ng_btsocket_l2cap_raw_node_flags** %15, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %72 = load i32, i32* @NGM_L2CAP_NODE_GET_FLAGS, align 4
  %73 = load %struct.ng_btsocket_l2cap_raw_node_flags*, %struct.ng_btsocket_l2cap_raw_node_flags** %15, align 8
  %74 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_node_flags, %struct.ng_btsocket_l2cap_raw_node_flags* %73, i32 0, i32 0
  %75 = call i32 @ng_btsocket_l2cap_raw_send_sync_ngmsg(%struct.TYPE_25__* %71, i32 %72, i32* %74, i32 4)
  store i32 %75, i32* %14, align 4
  br label %805

76:                                               ; preds = %66
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %78 = bitcast %struct.TYPE_22__* %77 to %struct.ng_btsocket_l2cap_raw_node_debug*
  store %struct.ng_btsocket_l2cap_raw_node_debug* %78, %struct.ng_btsocket_l2cap_raw_node_debug** %16, align 8
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %80 = load i32, i32* @NGM_L2CAP_NODE_GET_DEBUG, align 4
  %81 = load %struct.ng_btsocket_l2cap_raw_node_debug*, %struct.ng_btsocket_l2cap_raw_node_debug** %16, align 8
  %82 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_node_debug, %struct.ng_btsocket_l2cap_raw_node_debug* %81, i32 0, i32 0
  %83 = call i32 @ng_btsocket_l2cap_raw_send_sync_ngmsg(%struct.TYPE_25__* %79, i32 %80, i32* %82, i32 4)
  store i32 %83, i32* %14, align 4
  br label %805

84:                                               ; preds = %66
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %86 = bitcast %struct.TYPE_22__* %85 to %struct.ng_btsocket_l2cap_raw_node_debug*
  store %struct.ng_btsocket_l2cap_raw_node_debug* %86, %struct.ng_btsocket_l2cap_raw_node_debug** %17, align 8
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NG_BTSOCKET_L2CAP_RAW_PRIVILEGED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %84
  %94 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @NGM_L2CAP_NODE_SET_DEBUG, align 4
  %100 = load %struct.ng_btsocket_l2cap_raw_node_debug*, %struct.ng_btsocket_l2cap_raw_node_debug** %17, align 8
  %101 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_node_debug, %struct.ng_btsocket_l2cap_raw_node_debug* %100, i32 0, i32 0
  %102 = call i32 @ng_btsocket_l2cap_raw_send_ngmsg(i32 %98, i32 %99, i32* %101, i32 4)
  store i32 %102, i32* %14, align 4
  br label %105

103:                                              ; preds = %84
  %104 = load i32, i32* @EPERM, align 4
  store i32 %104, i32* %14, align 4
  br label %105

105:                                              ; preds = %103, %93
  br label %805

106:                                              ; preds = %66
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %108 = bitcast %struct.TYPE_22__* %107 to %struct.ng_btsocket_l2cap_raw_con_list*
  store %struct.ng_btsocket_l2cap_raw_con_list* %108, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %19, align 8
  store i32* null, i32** %20, align 8
  %109 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %110 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %106
  %114 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %115 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @NG_L2CAP_MAX_CON_NUM, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %124, label %119

119:                                              ; preds = %113
  %120 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %121 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %129

124:                                              ; preds = %119, %113, %106
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %125, i32 0, i32 2
  %127 = call i32 @mtx_unlock(i32* %126)
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %6, align 4
  br label %810

129:                                              ; preds = %119
  %130 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %131 = load i32, i32* @NGM_L2CAP_COOKIE, align 4
  %132 = load i32, i32* @NGM_L2CAP_NODE_GET_CON_LIST, align 4
  %133 = load i32, i32* @M_NOWAIT, align 4
  %134 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %130, i32 %131, i32 %132, i32 0, i32 %133)
  %135 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %136 = icmp eq %struct.ng_mesg* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %129
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 2
  %140 = call i32 @mtx_unlock(i32* %139)
  %141 = load i32, i32* @ENOMEM, align 4
  store i32 %141, i32* %6, align 4
  br label %810

142:                                              ; preds = %129
  %143 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %144 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = call i32 @ng_btsocket_l2cap_raw_get_token(i64* %145)
  %147 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %148 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %151, i32 0, i32 0
  store i64 %150, i64* %152, align 8
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %153, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %154, align 8
  %155 = load i32, i32* %14, align 4
  %156 = load i32*, i32** @ng_btsocket_l2cap_raw_node, align 8
  %157 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %158, i32 0, i32 3
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @NG_SEND_MSG_HOOK(i32 %155, i32* %156, %struct.ng_mesg* %157, i32 %162, i32 0)
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %142
  %167 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %167, i32 0, i32 0
  store i64 0, i64* %168, align 8
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %170 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %169, i32 0, i32 2
  %171 = call i32 @mtx_unlock(i32* %170)
  %172 = load i32, i32* %14, align 4
  store i32 %172, i32* %6, align 4
  br label %810

173:                                              ; preds = %142
  %174 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %175 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %174, i32 0, i32 4
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 2
  %178 = load i32, i32* @PZERO, align 4
  %179 = load i32, i32* @PCATCH, align 4
  %180 = or i32 %178, %179
  %181 = load i32, i32* @ng_btsocket_l2cap_raw_ioctl_timeout, align 4
  %182 = load i32, i32* @hz, align 4
  %183 = mul nsw i32 %181, %182
  %184 = call i32 @msleep(%struct.ng_mesg** %175, i32* %177, i32 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %183)
  store i32 %184, i32* %14, align 4
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %186 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  %187 = load i32, i32* %14, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %173
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %191 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %190, i32 0, i32 2
  %192 = call i32 @mtx_unlock(i32* %191)
  %193 = load i32, i32* %14, align 4
  store i32 %193, i32* %6, align 4
  br label %810

194:                                              ; preds = %173
  %195 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %195, i32 0, i32 4
  %197 = load %struct.ng_mesg*, %struct.ng_mesg** %196, align 8
  store %struct.ng_mesg* %197, %struct.ng_mesg** %13, align 8
  %198 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %199 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %198, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %199, align 8
  %200 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %200, i32 0, i32 2
  %202 = call i32 @mtx_unlock(i32* %201)
  %203 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %204 = icmp ne %struct.ng_mesg* %203, null
  br i1 %204, label %205, label %249

205:                                              ; preds = %194
  %206 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %207 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @NGM_L2CAP_NODE_GET_CON_LIST, align 4
  %211 = icmp eq i32 %209, %210
  br i1 %211, label %212, label %249

212:                                              ; preds = %205
  %213 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %214 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = inttoptr i64 %215 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %216, %struct.TYPE_20__** %19, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i64 1
  %219 = bitcast %struct.TYPE_20__* %218 to i32*
  store i32* %219, i32** %20, align 8
  %220 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %221 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %224 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @min(i32 %222, i32 %225)
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %229 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  %230 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %231 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = icmp sgt i32 %232, 0
  br i1 %233, label %234, label %248

234:                                              ; preds = %212
  %235 = load i32*, i32** %20, align 8
  %236 = bitcast i32* %235 to %struct.TYPE_22__*
  %237 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %238 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = bitcast i32* %239 to %struct.TYPE_22__*
  %241 = load %struct.ng_btsocket_l2cap_raw_con_list*, %struct.ng_btsocket_l2cap_raw_con_list** %18, align 8
  %242 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_con_list, %struct.ng_btsocket_l2cap_raw_con_list* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = mul i64 %244, 4
  %246 = trunc i64 %245 to i32
  %247 = call i32 @copyout(%struct.TYPE_22__* %236, %struct.TYPE_22__* %240, i32 %246)
  store i32 %247, i32* %14, align 4
  br label %248

248:                                              ; preds = %234, %212
  br label %251

249:                                              ; preds = %205, %194
  %250 = load i32, i32* @EINVAL, align 4
  store i32 %250, i32* %14, align 4
  br label %251

251:                                              ; preds = %249, %248
  %252 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %253 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %252)
  %254 = load i32, i32* %14, align 4
  store i32 %254, i32* %6, align 4
  br label %810

255:                                              ; preds = %66
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %257 = bitcast %struct.TYPE_22__* %256 to %struct.ng_btsocket_l2cap_raw_chan_list*
  store %struct.ng_btsocket_l2cap_raw_chan_list* %257, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %22, align 8
  store i32* null, i32** %23, align 8
  %258 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %259 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %273, label %262

262:                                              ; preds = %255
  %263 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %264 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @NG_L2CAP_MAX_CHAN_NUM, align 4
  %267 = icmp sgt i32 %265, %266
  br i1 %267, label %273, label %268

268:                                              ; preds = %262
  %269 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %270 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = icmp eq i32* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %268, %262, %255
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %274, i32 0, i32 2
  %276 = call i32 @mtx_unlock(i32* %275)
  %277 = load i32, i32* @EINVAL, align 4
  store i32 %277, i32* %6, align 4
  br label %810

278:                                              ; preds = %268
  %279 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %280 = load i32, i32* @NGM_L2CAP_COOKIE, align 4
  %281 = load i32, i32* @NGM_L2CAP_NODE_GET_CHAN_LIST, align 4
  %282 = load i32, i32* @M_NOWAIT, align 4
  %283 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %279, i32 %280, i32 %281, i32 0, i32 %282)
  %284 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %285 = icmp eq %struct.ng_mesg* %284, null
  br i1 %285, label %286, label %291

286:                                              ; preds = %278
  %287 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %288 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %287, i32 0, i32 2
  %289 = call i32 @mtx_unlock(i32* %288)
  %290 = load i32, i32* @ENOMEM, align 4
  store i32 %290, i32* %6, align 4
  br label %810

291:                                              ; preds = %278
  %292 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %293 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %292, i32 0, i32 1
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 0
  %295 = call i32 @ng_btsocket_l2cap_raw_get_token(i64* %294)
  %296 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %297 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %296, i32 0, i32 1
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 0
  store i64 %299, i64* %301, align 8
  %302 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %302, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %303, align 8
  %304 = load i32, i32* %14, align 4
  %305 = load i32*, i32** @ng_btsocket_l2cap_raw_node, align 8
  %306 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %307 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %308 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %307, i32 0, i32 3
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @NG_SEND_MSG_HOOK(i32 %304, i32* %305, %struct.ng_mesg* %306, i32 %311, i32 0)
  %313 = load i32, i32* %14, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %291
  %316 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %317 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %316, i32 0, i32 0
  store i64 0, i64* %317, align 8
  %318 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %319 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %318, i32 0, i32 2
  %320 = call i32 @mtx_unlock(i32* %319)
  %321 = load i32, i32* %14, align 4
  store i32 %321, i32* %6, align 4
  br label %810

322:                                              ; preds = %291
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 4
  %325 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %325, i32 0, i32 2
  %327 = load i32, i32* @PZERO, align 4
  %328 = load i32, i32* @PCATCH, align 4
  %329 = or i32 %327, %328
  %330 = load i32, i32* @ng_btsocket_l2cap_raw_ioctl_timeout, align 4
  %331 = load i32, i32* @hz, align 4
  %332 = mul nsw i32 %330, %331
  %333 = call i32 @msleep(%struct.ng_mesg** %324, i32* %326, i32 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %332)
  store i32 %333, i32* %14, align 4
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %335 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %334, i32 0, i32 0
  store i64 0, i64* %335, align 8
  %336 = load i32, i32* %14, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %322
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %340 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %339, i32 0, i32 2
  %341 = call i32 @mtx_unlock(i32* %340)
  %342 = load i32, i32* %14, align 4
  store i32 %342, i32* %6, align 4
  br label %810

343:                                              ; preds = %322
  %344 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %345 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %344, i32 0, i32 4
  %346 = load %struct.ng_mesg*, %struct.ng_mesg** %345, align 8
  store %struct.ng_mesg* %346, %struct.ng_mesg** %13, align 8
  %347 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %348 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %347, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %348, align 8
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %350 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i32 0, i32 2
  %351 = call i32 @mtx_unlock(i32* %350)
  %352 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %353 = icmp ne %struct.ng_mesg* %352, null
  br i1 %353, label %354, label %398

354:                                              ; preds = %343
  %355 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %356 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %355, i32 0, i32 1
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @NGM_L2CAP_NODE_GET_CHAN_LIST, align 4
  %360 = icmp eq i32 %358, %359
  br i1 %360, label %361, label %398

361:                                              ; preds = %354
  %362 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %363 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = inttoptr i64 %364 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %365, %struct.TYPE_21__** %22, align 8
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i64 1
  %368 = bitcast %struct.TYPE_21__* %367 to i32*
  store i32* %368, i32** %23, align 8
  %369 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %370 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %373 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 4
  %375 = call i8* @min(i32 %371, i32 %374)
  %376 = ptrtoint i8* %375 to i32
  %377 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %378 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %377, i32 0, i32 0
  store i32 %376, i32* %378, align 8
  %379 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %380 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %379, i32 0, i32 0
  %381 = load i32, i32* %380, align 8
  %382 = icmp sgt i32 %381, 0
  br i1 %382, label %383, label %397

383:                                              ; preds = %361
  %384 = load i32*, i32** %23, align 8
  %385 = bitcast i32* %384 to %struct.TYPE_22__*
  %386 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %387 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = bitcast i32* %388 to %struct.TYPE_22__*
  %390 = load %struct.ng_btsocket_l2cap_raw_chan_list*, %struct.ng_btsocket_l2cap_raw_chan_list** %21, align 8
  %391 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_chan_list, %struct.ng_btsocket_l2cap_raw_chan_list* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = sext i32 %392 to i64
  %394 = mul i64 %393, 4
  %395 = trunc i64 %394 to i32
  %396 = call i32 @copyout(%struct.TYPE_22__* %385, %struct.TYPE_22__* %389, i32 %395)
  store i32 %396, i32* %14, align 4
  br label %397

397:                                              ; preds = %383, %361
  br label %400

398:                                              ; preds = %354, %343
  %399 = load i32, i32* @EINVAL, align 4
  store i32 %399, i32* %14, align 4
  br label %400

400:                                              ; preds = %398, %397
  %401 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %402 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %401)
  %403 = load i32, i32* %14, align 4
  store i32 %403, i32* %6, align 4
  br label %810

404:                                              ; preds = %66
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %406 = bitcast %struct.TYPE_22__* %405 to %struct.ng_btsocket_l2cap_raw_ping*
  store %struct.ng_btsocket_l2cap_raw_ping* %406, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %25, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %26, align 8
  %407 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %408 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %407, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %416

411:                                              ; preds = %404
  %412 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %413 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %412, i32 0, i32 1
  %414 = load %struct.TYPE_22__*, %struct.TYPE_22__** %413, align 8
  %415 = icmp eq %struct.TYPE_22__* %414, null
  br i1 %415, label %422, label %416

416:                                              ; preds = %411, %404
  %417 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %418 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %417, i32 0, i32 0
  %419 = load i32, i32* %418, align 8
  %420 = load i32, i32* @NG_L2CAP_MAX_ECHO_SIZE, align 4
  %421 = icmp sgt i32 %419, %420
  br i1 %421, label %422, label %427

422:                                              ; preds = %416, %411
  %423 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %424 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %423, i32 0, i32 2
  %425 = call i32 @mtx_unlock(i32* %424)
  %426 = load i32, i32* @EINVAL, align 4
  store i32 %426, i32* %6, align 4
  br label %810

427:                                              ; preds = %416
  %428 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %429 = load i32, i32* @NGM_L2CAP_COOKIE, align 4
  %430 = load i32, i32* @NGM_L2CAP_L2CA_PING, align 4
  %431 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %432 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = sext i32 %433 to i64
  %435 = add i64 8, %434
  %436 = trunc i64 %435 to i32
  %437 = load i32, i32* @M_NOWAIT, align 4
  %438 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %428, i32 %429, i32 %430, i32 %436, i32 %437)
  %439 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %440 = icmp eq %struct.ng_mesg* %439, null
  br i1 %440, label %441, label %446

441:                                              ; preds = %427
  %442 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %443 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %442, i32 0, i32 2
  %444 = call i32 @mtx_unlock(i32* %443)
  %445 = load i32, i32* @ENOMEM, align 4
  store i32 %445, i32* %6, align 4
  br label %810

446:                                              ; preds = %427
  %447 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %448 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %447, i32 0, i32 1
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 0
  %450 = call i32 @ng_btsocket_l2cap_raw_get_token(i64* %449)
  %451 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %452 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %451, i32 0, i32 1
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %456 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %455, i32 0, i32 0
  store i64 %454, i64* %456, align 8
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %458 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %457, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %458, align 8
  %459 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %460 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %459, i32 0, i32 0
  %461 = load i64, i64* %460, align 8
  %462 = inttoptr i64 %461 to %struct.TYPE_23__*
  store %struct.TYPE_23__* %462, %struct.TYPE_23__** %25, align 8
  %463 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %464 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %463, i32 0, i32 5
  %465 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %466 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %465, i32 0, i32 1
  %467 = call i32 @bcopy(i32* %464, i32* %466, i32 4)
  %468 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %469 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %472 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %471, i32 0, i32 0
  store i32 %470, i32* %472, align 4
  %473 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %474 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 4
  %476 = icmp sgt i32 %475, 0
  br i1 %476, label %477, label %505

477:                                              ; preds = %446
  %478 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %479 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %478, i32 0, i32 2
  %480 = call i32 @mtx_unlock(i32* %479)
  %481 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %482 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %481, i32 0, i32 1
  %483 = load %struct.TYPE_22__*, %struct.TYPE_22__** %482, align 8
  %484 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %485 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %484, i64 1
  %486 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %487 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = call i32 @copyin(%struct.TYPE_22__* %483, %struct.TYPE_23__* %485, i32 %488)
  store i32 %489, i32* %14, align 4
  %490 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %490, i32 0, i32 2
  %492 = call i32 @mtx_lock(i32* %491)
  %493 = load i32, i32* %14, align 4
  %494 = icmp ne i32 %493, 0
  br i1 %494, label %495, label %504

495:                                              ; preds = %477
  %496 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %497 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %496)
  %498 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %499 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %498, i32 0, i32 0
  store i64 0, i64* %499, align 8
  %500 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %501 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %500, i32 0, i32 2
  %502 = call i32 @mtx_unlock(i32* %501)
  %503 = load i32, i32* %14, align 4
  store i32 %503, i32* %6, align 4
  br label %810

504:                                              ; preds = %477
  br label %505

505:                                              ; preds = %504, %446
  %506 = load i32, i32* %14, align 4
  %507 = load i32*, i32** @ng_btsocket_l2cap_raw_node, align 8
  %508 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %509 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %510 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %509, i32 0, i32 3
  %511 = load %struct.TYPE_19__*, %struct.TYPE_19__** %510, align 8
  %512 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 4
  %514 = call i32 @NG_SEND_MSG_HOOK(i32 %506, i32* %507, %struct.ng_mesg* %508, i32 %513, i32 0)
  %515 = load i32, i32* %14, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %517, label %524

517:                                              ; preds = %505
  %518 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %519 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %518, i32 0, i32 0
  store i64 0, i64* %519, align 8
  %520 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %521 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %520, i32 0, i32 2
  %522 = call i32 @mtx_unlock(i32* %521)
  %523 = load i32, i32* %14, align 4
  store i32 %523, i32* %6, align 4
  br label %810

524:                                              ; preds = %505
  %525 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %526 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %525, i32 0, i32 4
  %527 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %528 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %527, i32 0, i32 2
  %529 = load i32, i32* @PZERO, align 4
  %530 = load i32, i32* @PCATCH, align 4
  %531 = or i32 %529, %530
  %532 = call i32 (...) @bluetooth_l2cap_rtx_timeout()
  %533 = call i32 @msleep(%struct.ng_mesg** %526, i32* %528, i32 %531, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %532)
  store i32 %533, i32* %14, align 4
  %534 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %535 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %534, i32 0, i32 0
  store i64 0, i64* %535, align 8
  %536 = load i32, i32* %14, align 4
  %537 = icmp ne i32 %536, 0
  br i1 %537, label %538, label %543

538:                                              ; preds = %524
  %539 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %540 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %539, i32 0, i32 2
  %541 = call i32 @mtx_unlock(i32* %540)
  %542 = load i32, i32* %14, align 4
  store i32 %542, i32* %6, align 4
  br label %810

543:                                              ; preds = %524
  %544 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %545 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %544, i32 0, i32 4
  %546 = load %struct.ng_mesg*, %struct.ng_mesg** %545, align 8
  store %struct.ng_mesg* %546, %struct.ng_mesg** %13, align 8
  %547 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %548 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %547, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %548, align 8
  %549 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %550 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %549, i32 0, i32 2
  %551 = call i32 @mtx_unlock(i32* %550)
  %552 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %553 = icmp ne %struct.ng_mesg* %552, null
  br i1 %553, label %554, label %596

554:                                              ; preds = %543
  %555 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %556 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %555, i32 0, i32 1
  %557 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %556, i32 0, i32 1
  %558 = load i32, i32* %557, align 8
  %559 = load i32, i32* @NGM_L2CAP_L2CA_PING, align 4
  %560 = icmp eq i32 %558, %559
  br i1 %560, label %561, label %596

561:                                              ; preds = %554
  %562 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %563 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = inttoptr i64 %564 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %565, %struct.TYPE_22__** %26, align 8
  %566 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %567 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %566, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %570 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %569, i32 0, i32 2
  store i32 %568, i32* %570, align 8
  %571 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %572 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %575 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %574, i32 0, i32 2
  %576 = load i32, i32* %575, align 4
  %577 = call i8* @min(i32 %573, i32 %576)
  %578 = ptrtoint i8* %577 to i32
  %579 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %580 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %579, i32 0, i32 0
  store i32 %578, i32* %580, align 8
  %581 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %582 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %581, i32 0, i32 0
  %583 = load i32, i32* %582, align 8
  %584 = icmp sgt i32 %583, 0
  br i1 %584, label %585, label %595

585:                                              ; preds = %561
  %586 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %587 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %586, i64 1
  %588 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %589 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %588, i32 0, i32 1
  %590 = load %struct.TYPE_22__*, %struct.TYPE_22__** %589, align 8
  %591 = load %struct.ng_btsocket_l2cap_raw_ping*, %struct.ng_btsocket_l2cap_raw_ping** %24, align 8
  %592 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %591, i32 0, i32 0
  %593 = load i32, i32* %592, align 8
  %594 = call i32 @copyout(%struct.TYPE_22__* %587, %struct.TYPE_22__* %590, i32 %593)
  store i32 %594, i32* %14, align 4
  br label %595

595:                                              ; preds = %585, %561
  br label %598

596:                                              ; preds = %554, %543
  %597 = load i32, i32* @EINVAL, align 4
  store i32 %597, i32* %14, align 4
  br label %598

598:                                              ; preds = %596, %595
  %599 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %600 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %599)
  %601 = load i32, i32* %14, align 4
  store i32 %601, i32* %6, align 4
  br label %810

602:                                              ; preds = %66
  %603 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %604 = bitcast %struct.TYPE_22__* %603 to %struct.ng_btsocket_l2cap_raw_get_info*
  store %struct.ng_btsocket_l2cap_raw_get_info* %604, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  store %struct.TYPE_24__* null, %struct.TYPE_24__** %28, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %29, align 8
  %605 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %606 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %605, i32 0, i32 1
  %607 = load i32, i32* %606, align 8
  %608 = load i32, i32* @NG_BTSOCKET_L2CAP_RAW_PRIVILEGED, align 4
  %609 = and i32 %607, %608
  %610 = icmp ne i32 %609, 0
  br i1 %610, label %616, label %611

611:                                              ; preds = %602
  %612 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %613 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %612, i32 0, i32 2
  %614 = call i32 @mtx_unlock(i32* %613)
  %615 = load i32, i32* @EPERM, align 4
  store i32 %615, i32* %6, align 4
  br label %810

616:                                              ; preds = %602
  %617 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %618 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %617, i32 0, i32 0
  %619 = load i32, i32* %618, align 8
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %631

621:                                              ; preds = %616
  %622 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %623 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %622, i32 0, i32 1
  %624 = load %struct.TYPE_22__*, %struct.TYPE_22__** %623, align 8
  %625 = icmp eq %struct.TYPE_22__* %624, null
  br i1 %625, label %626, label %631

626:                                              ; preds = %621
  %627 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %628 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %627, i32 0, i32 2
  %629 = call i32 @mtx_unlock(i32* %628)
  %630 = load i32, i32* @EINVAL, align 4
  store i32 %630, i32* %6, align 4
  br label %810

631:                                              ; preds = %621, %616
  %632 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %633 = load i32, i32* @NGM_L2CAP_COOKIE, align 4
  %634 = load i32, i32* @NGM_L2CAP_L2CA_GET_INFO, align 4
  %635 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %636 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %635, i32 0, i32 0
  %637 = load i32, i32* %636, align 8
  %638 = sext i32 %637 to i64
  %639 = add i64 8, %638
  %640 = trunc i64 %639 to i32
  %641 = load i32, i32* @M_NOWAIT, align 4
  %642 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %632, i32 %633, i32 %634, i32 %640, i32 %641)
  %643 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %644 = icmp eq %struct.ng_mesg* %643, null
  br i1 %644, label %645, label %650

645:                                              ; preds = %631
  %646 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %647 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %646, i32 0, i32 2
  %648 = call i32 @mtx_unlock(i32* %647)
  %649 = load i32, i32* @ENOMEM, align 4
  store i32 %649, i32* %6, align 4
  br label %810

650:                                              ; preds = %631
  %651 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %652 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %652, i32 0, i32 0
  %654 = call i32 @ng_btsocket_l2cap_raw_get_token(i64* %653)
  %655 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %656 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %656, i32 0, i32 0
  %658 = load i64, i64* %657, align 8
  %659 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %660 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %659, i32 0, i32 0
  store i64 %658, i64* %660, align 8
  %661 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %662 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %661, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %662, align 8
  %663 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %664 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %663, i32 0, i32 0
  %665 = load i64, i64* %664, align 8
  %666 = inttoptr i64 %665 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %666, %struct.TYPE_24__** %28, align 8
  %667 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %668 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %667, i32 0, i32 5
  %669 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %670 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %669, i32 0, i32 1
  %671 = call i32 @bcopy(i32* %668, i32* %670, i32 4)
  %672 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %673 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %672, i32 0, i32 3
  %674 = load i32, i32* %673, align 4
  %675 = load %struct.TYPE_24__*, %struct.TYPE_24__** %28, align 8
  %676 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %675, i32 0, i32 0
  store i32 %674, i32* %676, align 4
  %677 = load i32, i32* %14, align 4
  %678 = load i32*, i32** @ng_btsocket_l2cap_raw_node, align 8
  %679 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %680 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %681 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %680, i32 0, i32 3
  %682 = load %struct.TYPE_19__*, %struct.TYPE_19__** %681, align 8
  %683 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 4
  %685 = call i32 @NG_SEND_MSG_HOOK(i32 %677, i32* %678, %struct.ng_mesg* %679, i32 %684, i32 0)
  %686 = load i32, i32* %14, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %695

688:                                              ; preds = %650
  %689 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %690 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %689, i32 0, i32 0
  store i64 0, i64* %690, align 8
  %691 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %692 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %691, i32 0, i32 2
  %693 = call i32 @mtx_unlock(i32* %692)
  %694 = load i32, i32* %14, align 4
  store i32 %694, i32* %6, align 4
  br label %810

695:                                              ; preds = %650
  %696 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %697 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %696, i32 0, i32 4
  %698 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %699 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %698, i32 0, i32 2
  %700 = load i32, i32* @PZERO, align 4
  %701 = load i32, i32* @PCATCH, align 4
  %702 = or i32 %700, %701
  %703 = call i32 (...) @bluetooth_l2cap_rtx_timeout()
  %704 = call i32 @msleep(%struct.ng_mesg** %697, i32* %699, i32 %702, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %703)
  store i32 %704, i32* %14, align 4
  %705 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %706 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %705, i32 0, i32 0
  store i64 0, i64* %706, align 8
  %707 = load i32, i32* %14, align 4
  %708 = icmp ne i32 %707, 0
  br i1 %708, label %709, label %714

709:                                              ; preds = %695
  %710 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %711 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %710, i32 0, i32 2
  %712 = call i32 @mtx_unlock(i32* %711)
  %713 = load i32, i32* %14, align 4
  store i32 %713, i32* %6, align 4
  br label %810

714:                                              ; preds = %695
  %715 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %716 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %715, i32 0, i32 4
  %717 = load %struct.ng_mesg*, %struct.ng_mesg** %716, align 8
  store %struct.ng_mesg* %717, %struct.ng_mesg** %13, align 8
  %718 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %719 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %718, i32 0, i32 4
  store %struct.ng_mesg* null, %struct.ng_mesg** %719, align 8
  %720 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %721 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %720, i32 0, i32 2
  %722 = call i32 @mtx_unlock(i32* %721)
  %723 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %724 = icmp ne %struct.ng_mesg* %723, null
  br i1 %724, label %725, label %767

725:                                              ; preds = %714
  %726 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %727 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %726, i32 0, i32 1
  %728 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %727, i32 0, i32 1
  %729 = load i32, i32* %728, align 8
  %730 = load i32, i32* @NGM_L2CAP_L2CA_GET_INFO, align 4
  %731 = icmp eq i32 %729, %730
  br i1 %731, label %732, label %767

732:                                              ; preds = %725
  %733 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %734 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %733, i32 0, i32 0
  %735 = load i64, i64* %734, align 8
  %736 = inttoptr i64 %735 to %struct.TYPE_22__*
  store %struct.TYPE_22__* %736, %struct.TYPE_22__** %29, align 8
  %737 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %738 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %737, i32 0, i32 1
  %739 = load i32, i32* %738, align 4
  %740 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %741 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %740, i32 0, i32 2
  store i32 %739, i32* %741, align 8
  %742 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %743 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %742, i32 0, i32 0
  %744 = load i32, i32* %743, align 8
  %745 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %746 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %745, i32 0, i32 0
  %747 = load i32, i32* %746, align 4
  %748 = call i8* @min(i32 %744, i32 %747)
  %749 = ptrtoint i8* %748 to i32
  %750 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %751 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %750, i32 0, i32 0
  store i32 %749, i32* %751, align 8
  %752 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %753 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %752, i32 0, i32 0
  %754 = load i32, i32* %753, align 8
  %755 = icmp sgt i32 %754, 0
  br i1 %755, label %756, label %766

756:                                              ; preds = %732
  %757 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  %758 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %757, i64 1
  %759 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %760 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %759, i32 0, i32 1
  %761 = load %struct.TYPE_22__*, %struct.TYPE_22__** %760, align 8
  %762 = load %struct.ng_btsocket_l2cap_raw_get_info*, %struct.ng_btsocket_l2cap_raw_get_info** %27, align 8
  %763 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_get_info, %struct.ng_btsocket_l2cap_raw_get_info* %762, i32 0, i32 0
  %764 = load i32, i32* %763, align 8
  %765 = call i32 @copyout(%struct.TYPE_22__* %758, %struct.TYPE_22__* %761, i32 %764)
  store i32 %765, i32* %14, align 4
  br label %766

766:                                              ; preds = %756, %732
  br label %769

767:                                              ; preds = %725, %714
  %768 = load i32, i32* @EINVAL, align 4
  store i32 %768, i32* %14, align 4
  br label %769

769:                                              ; preds = %767, %766
  %770 = load %struct.ng_mesg*, %struct.ng_mesg** %13, align 8
  %771 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %770)
  %772 = load i32, i32* %14, align 4
  store i32 %772, i32* %6, align 4
  br label %810

773:                                              ; preds = %66
  %774 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %775 = bitcast %struct.TYPE_22__* %774 to %struct.ng_btsocket_l2cap_raw_auto_discon_timo*
  store %struct.ng_btsocket_l2cap_raw_auto_discon_timo* %775, %struct.ng_btsocket_l2cap_raw_auto_discon_timo** %30, align 8
  %776 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %777 = load i32, i32* @NGM_L2CAP_NODE_GET_AUTO_DISCON_TIMO, align 4
  %778 = load %struct.ng_btsocket_l2cap_raw_auto_discon_timo*, %struct.ng_btsocket_l2cap_raw_auto_discon_timo** %30, align 8
  %779 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_auto_discon_timo, %struct.ng_btsocket_l2cap_raw_auto_discon_timo* %778, i32 0, i32 0
  %780 = call i32 @ng_btsocket_l2cap_raw_send_sync_ngmsg(%struct.TYPE_25__* %776, i32 %777, i32* %779, i32 4)
  store i32 %780, i32* %14, align 4
  br label %805

781:                                              ; preds = %66
  %782 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %783 = bitcast %struct.TYPE_22__* %782 to %struct.ng_btsocket_l2cap_raw_auto_discon_timo*
  store %struct.ng_btsocket_l2cap_raw_auto_discon_timo* %783, %struct.ng_btsocket_l2cap_raw_auto_discon_timo** %31, align 8
  %784 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %785 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %784, i32 0, i32 1
  %786 = load i32, i32* %785, align 8
  %787 = load i32, i32* @NG_BTSOCKET_L2CAP_RAW_PRIVILEGED, align 4
  %788 = and i32 %786, %787
  %789 = icmp ne i32 %788, 0
  br i1 %789, label %790, label %800

790:                                              ; preds = %781
  %791 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %792 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %791, i32 0, i32 3
  %793 = load %struct.TYPE_19__*, %struct.TYPE_19__** %792, align 8
  %794 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %793, i32 0, i32 0
  %795 = load i32, i32* %794, align 4
  %796 = load i32, i32* @NGM_L2CAP_NODE_SET_AUTO_DISCON_TIMO, align 4
  %797 = load %struct.ng_btsocket_l2cap_raw_auto_discon_timo*, %struct.ng_btsocket_l2cap_raw_auto_discon_timo** %31, align 8
  %798 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_auto_discon_timo, %struct.ng_btsocket_l2cap_raw_auto_discon_timo* %797, i32 0, i32 0
  %799 = call i32 @ng_btsocket_l2cap_raw_send_ngmsg(i32 %795, i32 %796, i32* %798, i32 4)
  store i32 %799, i32* %14, align 4
  br label %802

800:                                              ; preds = %781
  %801 = load i32, i32* @EPERM, align 4
  store i32 %801, i32* %14, align 4
  br label %802

802:                                              ; preds = %800, %790
  br label %805

803:                                              ; preds = %66
  %804 = load i32, i32* @EINVAL, align 4
  store i32 %804, i32* %14, align 4
  br label %805

805:                                              ; preds = %803, %802, %773, %105, %76, %68
  %806 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %807 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %806, i32 0, i32 2
  %808 = call i32 @mtx_unlock(i32* %807)
  %809 = load i32, i32* %14, align 4
  store i32 %809, i32* %6, align 4
  br label %810

810:                                              ; preds = %805, %769, %709, %688, %645, %626, %611, %598, %538, %517, %495, %441, %422, %400, %338, %315, %286, %273, %251, %189, %166, %137, %124, %61, %51, %41, %36
  %811 = load i32, i32* %6, align 4
  ret i32 %811
}

declare dso_local %struct.TYPE_25__* @so2l2cap_raw_pcb(%struct.socket*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ng_btsocket_l2cap_raw_send_sync_ngmsg(%struct.TYPE_25__*, i32, i32*, i32) #1

declare dso_local i32 @ng_btsocket_l2cap_raw_send_ngmsg(i32, i32, i32*, i32) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @ng_btsocket_l2cap_raw_get_token(i64*) #1

declare dso_local i32 @NG_SEND_MSG_HOOK(i32, i32*, %struct.ng_mesg*, i32, i32) #1

declare dso_local i32 @msleep(%struct.ng_mesg**, i32*, i32, i8*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @copyout(%struct.TYPE_22__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @copyin(%struct.TYPE_22__*, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @bluetooth_l2cap_rtx_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
