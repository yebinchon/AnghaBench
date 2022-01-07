; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_control.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/bluetooth/socket/extr_ng_btsocket_hci_raw.c_ng_btsocket_hci_raw_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.ifnet = type { i32 }
%struct.thread = type { i32 }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.ng_mesg*, %struct.TYPE_8__ }
%struct.ng_mesg = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64* }
%struct.ng_btsocket_hci_raw_node_state = type { i32 }
%struct.ng_btsocket_hci_raw_node_debug = type { i32 }
%struct.ng_btsocket_hci_raw_node_buffer = type { i32 }
%struct.ng_btsocket_hci_raw_node_bdaddr = type { i32 }
%struct.ng_btsocket_hci_raw_node_features = type { i32 }
%struct.ng_btsocket_hci_raw_node_stat = type { i32 }
%struct.ng_btsocket_hci_raw_node_neighbor_cache = type { i32, i32* }
%struct.TYPE_10__ = type { i32 }
%struct.ng_btsocket_hci_raw_con_list = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }
%struct.ng_btsocket_hci_raw_node_link_policy_mask = type { i32 }
%struct.ng_btsocket_hci_raw_node_packet_mask = type { i32 }
%struct.ng_btsocket_hci_raw_node_role_switch = type { i32 }
%struct.ng_btsocket_hci_raw_node_list_names = type { %struct.nodeinfo*, %struct.nodeinfo* }
%struct.nodeinfo = type { i32 }
%struct.namelist = type { i32, %struct.nodeinfo* }

@NG_NODESIZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ng_btsocket_hci_raw_node = common dso_local global i32* null, align 8
@EHOSTUNREACH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s:\00", align 1
@NGM_HCI_NODE_GET_STATE = common dso_local global i32 0, align 4
@NG_BTSOCKET_HCI_RAW_PRIVILEGED = common dso_local global i32 0, align 4
@NGM_HCI_NODE_INIT = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_DEBUG = common dso_local global i32 0, align 4
@NGM_HCI_NODE_SET_DEBUG = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_BUFFER = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_BDADDR = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_FEATURES = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_STAT = common dso_local global i32 0, align 4
@NGM_HCI_NODE_RESET_STAT = common dso_local global i32 0, align 4
@NGM_HCI_NODE_FLUSH_NEIGHBOR_CACHE = common dso_local global i32 0, align 4
@NG_HCI_MAX_NEIGHBOR_NUM = common dso_local global i32 0, align 4
@NGM_HCI_COOKIE = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_NEIGHBOR_CACHE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"hcictl\00", align 1
@ng_btsocket_hci_raw_ioctl_timeout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@NG_HCI_MAX_CON_NUM = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_CON_LIST = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_LINK_POLICY_SETTINGS_MASK = common dso_local global i32 0, align 4
@NGM_HCI_NODE_SET_LINK_POLICY_SETTINGS_MASK = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_PACKET_MASK = common dso_local global i32 0, align 4
@NGM_HCI_NODE_SET_PACKET_MASK = common dso_local global i32 0, align 4
@NGM_HCI_NODE_GET_ROLE_SWITCH = common dso_local global i32 0, align 4
@NGM_HCI_NODE_SET_ROLE_SWITCH = common dso_local global i32 0, align 4
@NGM_GENERIC_COOKIE = common dso_local global i32 0, align 4
@NGM_LISTNAMES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c".:\00", align 1
@NG_HCI_NODE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ng_btsocket_hci_raw_control(%struct.socket* %0, i32 %1, i64 %2, %struct.ifnet* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.ifnet*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ng_mesg*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ng_btsocket_hci_raw_node_state*, align 8
  %19 = alloca %struct.ng_btsocket_hci_raw_node_debug*, align 8
  %20 = alloca %struct.ng_btsocket_hci_raw_node_debug*, align 8
  %21 = alloca %struct.ng_btsocket_hci_raw_node_buffer*, align 8
  %22 = alloca %struct.ng_btsocket_hci_raw_node_bdaddr*, align 8
  %23 = alloca %struct.ng_btsocket_hci_raw_node_features*, align 8
  %24 = alloca %struct.ng_btsocket_hci_raw_node_stat*, align 8
  %25 = alloca %struct.ng_btsocket_hci_raw_node_neighbor_cache*, align 8
  %26 = alloca %struct.TYPE_10__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.ng_btsocket_hci_raw_con_list*, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.ng_btsocket_hci_raw_node_link_policy_mask*, align 8
  %32 = alloca %struct.ng_btsocket_hci_raw_node_link_policy_mask*, align 8
  %33 = alloca %struct.ng_btsocket_hci_raw_node_packet_mask*, align 8
  %34 = alloca %struct.ng_btsocket_hci_raw_node_packet_mask*, align 8
  %35 = alloca %struct.ng_btsocket_hci_raw_node_role_switch*, align 8
  %36 = alloca %struct.ng_btsocket_hci_raw_node_role_switch*, align 8
  %37 = alloca %struct.ng_btsocket_hci_raw_node_list_names*, align 8
  %38 = alloca %struct.nodeinfo*, align 8
  %39 = alloca %struct.namelist*, align 8
  %40 = alloca %struct.nodeinfo*, align 8
  store %struct.socket* %0, %struct.socket** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store %struct.ifnet* %3, %struct.ifnet** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %41 = load %struct.socket*, %struct.socket** %7, align 8
  %42 = call %struct.TYPE_12__* @so2hci_raw_pcb(%struct.socket* %41)
  store %struct.TYPE_12__* %42, %struct.TYPE_12__** %12, align 8
  %43 = load i32, i32* @NG_NODESIZ, align 4
  %44 = add nsw i32 %43, 1
  %45 = zext i32 %44 to i64
  %46 = call i8* @llvm.stacksave()
  store i8* %46, i8** %13, align 8
  %47 = alloca i8, i64 %45, align 16
  store i64 %45, i64* %14, align 8
  store %struct.ng_mesg* null, %struct.ng_mesg** %15, align 8
  store i32 0, i32* %16, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %49 = icmp eq %struct.TYPE_12__* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %5
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

52:                                               ; preds = %5
  %53 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = call i32 @mtx_lock(i32* %59)
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %57
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 2
  %71 = call i32 @mtx_unlock(i32* %70)
  %72 = load i32, i32* @EHOSTUNREACH, align 4
  store i32 %72, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

73:                                               ; preds = %57
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 2
  %81 = call i32 @mtx_unlock(i32* %80)
  %82 = load i32, i32* @EBUSY, align 4
  store i32 %82, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

83:                                               ; preds = %73
  %84 = trunc i64 %45 to i32
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64*, i64** %87, align 8
  %89 = call i32 @snprintf(i8* %47, i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64* %88)
  %90 = load i32, i32* %8, align 4
  switch i32 %90, label %720 [
    i32 135, label %91
    i32 134, label %99
    i32 142, label %112
    i32 131, label %120
    i32 144, label %137
    i32 145, label %145
    i32 141, label %153
    i32 136, label %161
    i32 132, label %169
    i32 146, label %182
    i32 139, label %195
    i32 143, label %339
    i32 140, label %483
    i32 130, label %491
    i32 138, label %508
    i32 129, label %516
    i32 137, label %533
    i32 128, label %541
    i32 133, label %558
  ]

91:                                               ; preds = %83
  %92 = load i64, i64* %9, align 8
  %93 = inttoptr i64 %92 to %struct.ng_btsocket_hci_raw_node_state*
  store %struct.ng_btsocket_hci_raw_node_state* %93, %struct.ng_btsocket_hci_raw_node_state** %18, align 8
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %95 = load i32, i32* @NGM_HCI_NODE_GET_STATE, align 4
  %96 = load %struct.ng_btsocket_hci_raw_node_state*, %struct.ng_btsocket_hci_raw_node_state** %18, align 8
  %97 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_state, %struct.ng_btsocket_hci_raw_node_state* %96, i32 0, i32 0
  %98 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %94, i8* %47, i32 %95, i32* %97, i32 4)
  store i32 %98, i32* %16, align 4
  br label %722

99:                                               ; preds = %83
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @NGM_HCI_NODE_INIT, align 4
  %108 = call i32 @ng_btsocket_hci_raw_send_ngmsg(i8* %47, i32 %107, i32* null, i32 0)
  store i32 %108, i32* %16, align 4
  br label %111

109:                                              ; preds = %99
  %110 = load i32, i32* @EPERM, align 4
  store i32 %110, i32* %16, align 4
  br label %111

111:                                              ; preds = %109, %106
  br label %722

112:                                              ; preds = %83
  %113 = load i64, i64* %9, align 8
  %114 = inttoptr i64 %113 to %struct.ng_btsocket_hci_raw_node_debug*
  store %struct.ng_btsocket_hci_raw_node_debug* %114, %struct.ng_btsocket_hci_raw_node_debug** %19, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %116 = load i32, i32* @NGM_HCI_NODE_GET_DEBUG, align 4
  %117 = load %struct.ng_btsocket_hci_raw_node_debug*, %struct.ng_btsocket_hci_raw_node_debug** %19, align 8
  %118 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_debug, %struct.ng_btsocket_hci_raw_node_debug* %117, i32 0, i32 0
  %119 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %115, i8* %47, i32 %116, i32* %118, i32 4)
  store i32 %119, i32* %16, align 4
  br label %722

120:                                              ; preds = %83
  %121 = load i64, i64* %9, align 8
  %122 = inttoptr i64 %121 to %struct.ng_btsocket_hci_raw_node_debug*
  store %struct.ng_btsocket_hci_raw_node_debug* %122, %struct.ng_btsocket_hci_raw_node_debug** %20, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load i32, i32* @NGM_HCI_NODE_SET_DEBUG, align 4
  %131 = load %struct.ng_btsocket_hci_raw_node_debug*, %struct.ng_btsocket_hci_raw_node_debug** %20, align 8
  %132 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_debug, %struct.ng_btsocket_hci_raw_node_debug* %131, i32 0, i32 0
  %133 = call i32 @ng_btsocket_hci_raw_send_ngmsg(i8* %47, i32 %130, i32* %132, i32 4)
  store i32 %133, i32* %16, align 4
  br label %136

134:                                              ; preds = %120
  %135 = load i32, i32* @EPERM, align 4
  store i32 %135, i32* %16, align 4
  br label %136

136:                                              ; preds = %134, %129
  br label %722

137:                                              ; preds = %83
  %138 = load i64, i64* %9, align 8
  %139 = inttoptr i64 %138 to %struct.ng_btsocket_hci_raw_node_buffer*
  store %struct.ng_btsocket_hci_raw_node_buffer* %139, %struct.ng_btsocket_hci_raw_node_buffer** %21, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %141 = load i32, i32* @NGM_HCI_NODE_GET_BUFFER, align 4
  %142 = load %struct.ng_btsocket_hci_raw_node_buffer*, %struct.ng_btsocket_hci_raw_node_buffer** %21, align 8
  %143 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_buffer, %struct.ng_btsocket_hci_raw_node_buffer* %142, i32 0, i32 0
  %144 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %140, i8* %47, i32 %141, i32* %143, i32 4)
  store i32 %144, i32* %16, align 4
  br label %722

145:                                              ; preds = %83
  %146 = load i64, i64* %9, align 8
  %147 = inttoptr i64 %146 to %struct.ng_btsocket_hci_raw_node_bdaddr*
  store %struct.ng_btsocket_hci_raw_node_bdaddr* %147, %struct.ng_btsocket_hci_raw_node_bdaddr** %22, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %149 = load i32, i32* @NGM_HCI_NODE_GET_BDADDR, align 4
  %150 = load %struct.ng_btsocket_hci_raw_node_bdaddr*, %struct.ng_btsocket_hci_raw_node_bdaddr** %22, align 8
  %151 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_bdaddr, %struct.ng_btsocket_hci_raw_node_bdaddr* %150, i32 0, i32 0
  %152 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %148, i8* %47, i32 %149, i32* %151, i32 4)
  store i32 %152, i32* %16, align 4
  br label %722

153:                                              ; preds = %83
  %154 = load i64, i64* %9, align 8
  %155 = inttoptr i64 %154 to %struct.ng_btsocket_hci_raw_node_features*
  store %struct.ng_btsocket_hci_raw_node_features* %155, %struct.ng_btsocket_hci_raw_node_features** %23, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %157 = load i32, i32* @NGM_HCI_NODE_GET_FEATURES, align 4
  %158 = load %struct.ng_btsocket_hci_raw_node_features*, %struct.ng_btsocket_hci_raw_node_features** %23, align 8
  %159 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_features, %struct.ng_btsocket_hci_raw_node_features* %158, i32 0, i32 0
  %160 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %156, i8* %47, i32 %157, i32* %159, i32 4)
  store i32 %160, i32* %16, align 4
  br label %722

161:                                              ; preds = %83
  %162 = load i64, i64* %9, align 8
  %163 = inttoptr i64 %162 to %struct.ng_btsocket_hci_raw_node_stat*
  store %struct.ng_btsocket_hci_raw_node_stat* %163, %struct.ng_btsocket_hci_raw_node_stat** %24, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %165 = load i32, i32* @NGM_HCI_NODE_GET_STAT, align 4
  %166 = load %struct.ng_btsocket_hci_raw_node_stat*, %struct.ng_btsocket_hci_raw_node_stat** %24, align 8
  %167 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_stat, %struct.ng_btsocket_hci_raw_node_stat* %166, i32 0, i32 0
  %168 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %164, i8* %47, i32 %165, i32* %167, i32 4)
  store i32 %168, i32* %16, align 4
  br label %722

169:                                              ; preds = %83
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = load i32, i32* @NGM_HCI_NODE_RESET_STAT, align 4
  %178 = call i32 @ng_btsocket_hci_raw_send_ngmsg(i8* %47, i32 %177, i32* null, i32 0)
  store i32 %178, i32* %16, align 4
  br label %181

179:                                              ; preds = %169
  %180 = load i32, i32* @EPERM, align 4
  store i32 %180, i32* %16, align 4
  br label %181

181:                                              ; preds = %179, %176
  br label %722

182:                                              ; preds = %83
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32, i32* @NGM_HCI_NODE_FLUSH_NEIGHBOR_CACHE, align 4
  %191 = call i32 @ng_btsocket_hci_raw_send_ngmsg(i8* %47, i32 %190, i32* null, i32 0)
  store i32 %191, i32* %16, align 4
  br label %194

192:                                              ; preds = %182
  %193 = load i32, i32* @EPERM, align 4
  store i32 %193, i32* %16, align 4
  br label %194

194:                                              ; preds = %192, %189
  br label %722

195:                                              ; preds = %83
  %196 = load i64, i64* %9, align 8
  %197 = inttoptr i64 %196 to %struct.ng_btsocket_hci_raw_node_neighbor_cache*
  store %struct.ng_btsocket_hci_raw_node_neighbor_cache* %197, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %26, align 8
  store i32* null, i32** %27, align 8
  %198 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %199 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp sle i32 %200, 0
  br i1 %201, label %213, label %202

202:                                              ; preds = %195
  %203 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %204 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @NG_HCI_MAX_NEIGHBOR_NUM, align 4
  %207 = icmp sgt i32 %205, %206
  br i1 %207, label %213, label %208

208:                                              ; preds = %202
  %209 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %210 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = icmp eq i32* %211, null
  br i1 %212, label %213, label %218

213:                                              ; preds = %208, %202, %195
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 2
  %216 = call i32 @mtx_unlock(i32* %215)
  %217 = load i32, i32* @EINVAL, align 4
  store i32 %217, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

218:                                              ; preds = %208
  %219 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %220 = load i32, i32* @NGM_HCI_COOKIE, align 4
  %221 = load i32, i32* @NGM_HCI_NODE_GET_NEIGHBOR_CACHE, align 4
  %222 = load i32, i32* @M_NOWAIT, align 4
  %223 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %219, i32 %220, i32 %221, i32 0, i32 %222)
  %224 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %225 = icmp eq %struct.ng_mesg* %224, null
  br i1 %225, label %226, label %231

226:                                              ; preds = %218
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = call i32 @mtx_unlock(i32* %228)
  %230 = load i32, i32* @ENOMEM, align 4
  store i32 %230, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

231:                                              ; preds = %218
  %232 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %233 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = call i32 @ng_btsocket_hci_raw_get_token(i64* %234)
  %236 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %237 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 3
  store %struct.ng_mesg* null, %struct.ng_mesg** %243, align 8
  %244 = load i32, i32* %16, align 4
  %245 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %246 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %247 = call i32 @NG_SEND_MSG_PATH(i32 %244, i32* %245, %struct.ng_mesg* %246, i8* %47, i32 0)
  %248 = load i32, i32* %16, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %231
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 0
  store i64 0, i64* %252, align 8
  %253 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 2
  %255 = call i32 @mtx_unlock(i32* %254)
  %256 = load i32, i32* %16, align 4
  store i32 %256, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

257:                                              ; preds = %231
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 3
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  %262 = load i32, i32* @PZERO, align 4
  %263 = load i32, i32* @PCATCH, align 4
  %264 = or i32 %262, %263
  %265 = load i32, i32* @ng_btsocket_hci_raw_ioctl_timeout, align 4
  %266 = load i32, i32* @hz, align 4
  %267 = mul nsw i32 %265, %266
  %268 = call i32 @msleep(%struct.ng_mesg** %259, i32* %261, i32 %264, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %267)
  store i32 %268, i32* %16, align 4
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 0
  store i64 0, i64* %270, align 8
  %271 = load i32, i32* %16, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %278

273:                                              ; preds = %257
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 2
  %276 = call i32 @mtx_unlock(i32* %275)
  %277 = load i32, i32* %16, align 4
  store i32 %277, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

278:                                              ; preds = %257
  %279 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %280 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %279, i32 0, i32 3
  %281 = load %struct.ng_mesg*, %struct.ng_mesg** %280, align 8
  store %struct.ng_mesg* %281, %struct.ng_mesg** %15, align 8
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 3
  store %struct.ng_mesg* null, %struct.ng_mesg** %283, align 8
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 2
  %286 = call i32 @mtx_unlock(i32* %285)
  %287 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %288 = icmp ne %struct.ng_mesg* %287, null
  br i1 %288, label %289, label %333

289:                                              ; preds = %278
  %290 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %291 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @NGM_HCI_NODE_GET_NEIGHBOR_CACHE, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %333

296:                                              ; preds = %289
  %297 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %298 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = inttoptr i64 %299 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %300, %struct.TYPE_10__** %26, align 8
  %301 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %302 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %301, i64 1
  %303 = bitcast %struct.TYPE_10__* %302 to i32*
  store i32* %303, i32** %27, align 8
  %304 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %305 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %308 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @min(i32 %306, i32 %309)
  %311 = ptrtoint i8* %310 to i32
  %312 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %313 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %312, i32 0, i32 0
  store i32 %311, i32* %313, align 8
  %314 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %315 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp sgt i32 %316, 0
  br i1 %317, label %318, label %332

318:                                              ; preds = %296
  %319 = load i32*, i32** %27, align 8
  %320 = ptrtoint i32* %319 to i64
  %321 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %322 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %321, i32 0, i32 1
  %323 = load i32*, i32** %322, align 8
  %324 = ptrtoint i32* %323 to i64
  %325 = load %struct.ng_btsocket_hci_raw_node_neighbor_cache*, %struct.ng_btsocket_hci_raw_node_neighbor_cache** %25, align 8
  %326 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_neighbor_cache, %struct.ng_btsocket_hci_raw_node_neighbor_cache* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 8
  %328 = sext i32 %327 to i64
  %329 = mul i64 %328, 4
  %330 = trunc i64 %329 to i32
  %331 = call i32 @copyout(i64 %320, i64 %324, i32 %330)
  store i32 %331, i32* %16, align 4
  br label %332

332:                                              ; preds = %318, %296
  br label %335

333:                                              ; preds = %289, %278
  %334 = load i32, i32* @EINVAL, align 4
  store i32 %334, i32* %16, align 4
  br label %335

335:                                              ; preds = %333, %332
  %336 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %337 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %336)
  %338 = load i32, i32* %16, align 4
  store i32 %338, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

339:                                              ; preds = %83
  %340 = load i64, i64* %9, align 8
  %341 = inttoptr i64 %340 to %struct.ng_btsocket_hci_raw_con_list*
  store %struct.ng_btsocket_hci_raw_con_list* %341, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %29, align 8
  store i32* null, i32** %30, align 8
  %342 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %343 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %357, label %346

346:                                              ; preds = %339
  %347 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %348 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @NG_HCI_MAX_CON_NUM, align 4
  %351 = icmp sgt i32 %349, %350
  br i1 %351, label %357, label %352

352:                                              ; preds = %346
  %353 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %354 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %353, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = icmp eq i32* %355, null
  br i1 %356, label %357, label %362

357:                                              ; preds = %352, %346, %339
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 2
  %360 = call i32 @mtx_unlock(i32* %359)
  %361 = load i32, i32* @EINVAL, align 4
  store i32 %361, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

362:                                              ; preds = %352
  %363 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %364 = load i32, i32* @NGM_HCI_COOKIE, align 4
  %365 = load i32, i32* @NGM_HCI_NODE_GET_CON_LIST, align 4
  %366 = load i32, i32* @M_NOWAIT, align 4
  %367 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %363, i32 %364, i32 %365, i32 0, i32 %366)
  %368 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %369 = icmp eq %struct.ng_mesg* %368, null
  br i1 %369, label %370, label %375

370:                                              ; preds = %362
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 2
  %373 = call i32 @mtx_unlock(i32* %372)
  %374 = load i32, i32* @ENOMEM, align 4
  store i32 %374, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

375:                                              ; preds = %362
  %376 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %377 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %377, i32 0, i32 0
  %379 = call i32 @ng_btsocket_hci_raw_get_token(i64* %378)
  %380 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %381 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %380, i32 0, i32 1
  %382 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %381, i32 0, i32 0
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 0
  store i64 %383, i64* %385, align 8
  %386 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %387 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %386, i32 0, i32 3
  store %struct.ng_mesg* null, %struct.ng_mesg** %387, align 8
  %388 = load i32, i32* %16, align 4
  %389 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %390 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %391 = call i32 @NG_SEND_MSG_PATH(i32 %388, i32* %389, %struct.ng_mesg* %390, i8* %47, i32 0)
  %392 = load i32, i32* %16, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %401

394:                                              ; preds = %375
  %395 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %396 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %395, i32 0, i32 0
  store i64 0, i64* %396, align 8
  %397 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 2
  %399 = call i32 @mtx_unlock(i32* %398)
  %400 = load i32, i32* %16, align 4
  store i32 %400, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

401:                                              ; preds = %375
  %402 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 3
  %404 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %405 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %404, i32 0, i32 2
  %406 = load i32, i32* @PZERO, align 4
  %407 = load i32, i32* @PCATCH, align 4
  %408 = or i32 %406, %407
  %409 = load i32, i32* @ng_btsocket_hci_raw_ioctl_timeout, align 4
  %410 = load i32, i32* @hz, align 4
  %411 = mul nsw i32 %409, %410
  %412 = call i32 @msleep(%struct.ng_mesg** %403, i32* %405, i32 %408, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %411)
  store i32 %412, i32* %16, align 4
  %413 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %414 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %413, i32 0, i32 0
  store i64 0, i64* %414, align 8
  %415 = load i32, i32* %16, align 4
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %422

417:                                              ; preds = %401
  %418 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %419 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %418, i32 0, i32 2
  %420 = call i32 @mtx_unlock(i32* %419)
  %421 = load i32, i32* %16, align 4
  store i32 %421, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

422:                                              ; preds = %401
  %423 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %424 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %423, i32 0, i32 3
  %425 = load %struct.ng_mesg*, %struct.ng_mesg** %424, align 8
  store %struct.ng_mesg* %425, %struct.ng_mesg** %15, align 8
  %426 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i32 0, i32 3
  store %struct.ng_mesg* null, %struct.ng_mesg** %427, align 8
  %428 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 2
  %430 = call i32 @mtx_unlock(i32* %429)
  %431 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %432 = icmp ne %struct.ng_mesg* %431, null
  br i1 %432, label %433, label %477

433:                                              ; preds = %422
  %434 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %435 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 8
  %438 = load i32, i32* @NGM_HCI_NODE_GET_CON_LIST, align 4
  %439 = icmp eq i32 %437, %438
  br i1 %439, label %440, label %477

440:                                              ; preds = %433
  %441 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %442 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = inttoptr i64 %443 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %444, %struct.TYPE_11__** %29, align 8
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %446 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i64 1
  %447 = bitcast %struct.TYPE_11__* %446 to i32*
  store i32* %447, i32** %30, align 8
  %448 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %449 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %448, i32 0, i32 0
  %450 = load i32, i32* %449, align 8
  %451 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 0
  %453 = load i32, i32* %452, align 4
  %454 = call i8* @min(i32 %450, i32 %453)
  %455 = ptrtoint i8* %454 to i32
  %456 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %457 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %456, i32 0, i32 0
  store i32 %455, i32* %457, align 8
  %458 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %459 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  %461 = icmp sgt i32 %460, 0
  br i1 %461, label %462, label %476

462:                                              ; preds = %440
  %463 = load i32*, i32** %30, align 8
  %464 = ptrtoint i32* %463 to i64
  %465 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %466 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %465, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = ptrtoint i32* %467 to i64
  %469 = load %struct.ng_btsocket_hci_raw_con_list*, %struct.ng_btsocket_hci_raw_con_list** %28, align 8
  %470 = getelementptr inbounds %struct.ng_btsocket_hci_raw_con_list, %struct.ng_btsocket_hci_raw_con_list* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = sext i32 %471 to i64
  %473 = mul i64 %472, 4
  %474 = trunc i64 %473 to i32
  %475 = call i32 @copyout(i64 %464, i64 %468, i32 %474)
  store i32 %475, i32* %16, align 4
  br label %476

476:                                              ; preds = %462, %440
  br label %479

477:                                              ; preds = %433, %422
  %478 = load i32, i32* @EINVAL, align 4
  store i32 %478, i32* %16, align 4
  br label %479

479:                                              ; preds = %477, %476
  %480 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %481 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %480)
  %482 = load i32, i32* %16, align 4
  store i32 %482, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

483:                                              ; preds = %83
  %484 = load i64, i64* %9, align 8
  %485 = inttoptr i64 %484 to %struct.ng_btsocket_hci_raw_node_link_policy_mask*
  store %struct.ng_btsocket_hci_raw_node_link_policy_mask* %485, %struct.ng_btsocket_hci_raw_node_link_policy_mask** %31, align 8
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %487 = load i32, i32* @NGM_HCI_NODE_GET_LINK_POLICY_SETTINGS_MASK, align 4
  %488 = load %struct.ng_btsocket_hci_raw_node_link_policy_mask*, %struct.ng_btsocket_hci_raw_node_link_policy_mask** %31, align 8
  %489 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_link_policy_mask, %struct.ng_btsocket_hci_raw_node_link_policy_mask* %488, i32 0, i32 0
  %490 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %486, i8* %47, i32 %487, i32* %489, i32 4)
  store i32 %490, i32* %16, align 4
  br label %722

491:                                              ; preds = %83
  %492 = load i64, i64* %9, align 8
  %493 = inttoptr i64 %492 to %struct.ng_btsocket_hci_raw_node_link_policy_mask*
  store %struct.ng_btsocket_hci_raw_node_link_policy_mask* %493, %struct.ng_btsocket_hci_raw_node_link_policy_mask** %32, align 8
  %494 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %495 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %494, i32 0, i32 1
  %496 = load i32, i32* %495, align 8
  %497 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %498 = and i32 %496, %497
  %499 = icmp ne i32 %498, 0
  br i1 %499, label %500, label %505

500:                                              ; preds = %491
  %501 = load i32, i32* @NGM_HCI_NODE_SET_LINK_POLICY_SETTINGS_MASK, align 4
  %502 = load %struct.ng_btsocket_hci_raw_node_link_policy_mask*, %struct.ng_btsocket_hci_raw_node_link_policy_mask** %32, align 8
  %503 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_link_policy_mask, %struct.ng_btsocket_hci_raw_node_link_policy_mask* %502, i32 0, i32 0
  %504 = call i32 @ng_btsocket_hci_raw_send_ngmsg(i8* %47, i32 %501, i32* %503, i32 4)
  store i32 %504, i32* %16, align 4
  br label %507

505:                                              ; preds = %491
  %506 = load i32, i32* @EPERM, align 4
  store i32 %506, i32* %16, align 4
  br label %507

507:                                              ; preds = %505, %500
  br label %722

508:                                              ; preds = %83
  %509 = load i64, i64* %9, align 8
  %510 = inttoptr i64 %509 to %struct.ng_btsocket_hci_raw_node_packet_mask*
  store %struct.ng_btsocket_hci_raw_node_packet_mask* %510, %struct.ng_btsocket_hci_raw_node_packet_mask** %33, align 8
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %512 = load i32, i32* @NGM_HCI_NODE_GET_PACKET_MASK, align 4
  %513 = load %struct.ng_btsocket_hci_raw_node_packet_mask*, %struct.ng_btsocket_hci_raw_node_packet_mask** %33, align 8
  %514 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_packet_mask, %struct.ng_btsocket_hci_raw_node_packet_mask* %513, i32 0, i32 0
  %515 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %511, i8* %47, i32 %512, i32* %514, i32 4)
  store i32 %515, i32* %16, align 4
  br label %722

516:                                              ; preds = %83
  %517 = load i64, i64* %9, align 8
  %518 = inttoptr i64 %517 to %struct.ng_btsocket_hci_raw_node_packet_mask*
  store %struct.ng_btsocket_hci_raw_node_packet_mask* %518, %struct.ng_btsocket_hci_raw_node_packet_mask** %34, align 8
  %519 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %520 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 8
  %522 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %523 = and i32 %521, %522
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %530

525:                                              ; preds = %516
  %526 = load i32, i32* @NGM_HCI_NODE_SET_PACKET_MASK, align 4
  %527 = load %struct.ng_btsocket_hci_raw_node_packet_mask*, %struct.ng_btsocket_hci_raw_node_packet_mask** %34, align 8
  %528 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_packet_mask, %struct.ng_btsocket_hci_raw_node_packet_mask* %527, i32 0, i32 0
  %529 = call i32 @ng_btsocket_hci_raw_send_ngmsg(i8* %47, i32 %526, i32* %528, i32 4)
  store i32 %529, i32* %16, align 4
  br label %532

530:                                              ; preds = %516
  %531 = load i32, i32* @EPERM, align 4
  store i32 %531, i32* %16, align 4
  br label %532

532:                                              ; preds = %530, %525
  br label %722

533:                                              ; preds = %83
  %534 = load i64, i64* %9, align 8
  %535 = inttoptr i64 %534 to %struct.ng_btsocket_hci_raw_node_role_switch*
  store %struct.ng_btsocket_hci_raw_node_role_switch* %535, %struct.ng_btsocket_hci_raw_node_role_switch** %35, align 8
  %536 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %537 = load i32, i32* @NGM_HCI_NODE_GET_ROLE_SWITCH, align 4
  %538 = load %struct.ng_btsocket_hci_raw_node_role_switch*, %struct.ng_btsocket_hci_raw_node_role_switch** %35, align 8
  %539 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_role_switch, %struct.ng_btsocket_hci_raw_node_role_switch* %538, i32 0, i32 0
  %540 = call i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__* %536, i8* %47, i32 %537, i32* %539, i32 4)
  store i32 %540, i32* %16, align 4
  br label %722

541:                                              ; preds = %83
  %542 = load i64, i64* %9, align 8
  %543 = inttoptr i64 %542 to %struct.ng_btsocket_hci_raw_node_role_switch*
  store %struct.ng_btsocket_hci_raw_node_role_switch* %543, %struct.ng_btsocket_hci_raw_node_role_switch** %36, align 8
  %544 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %545 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @NG_BTSOCKET_HCI_RAW_PRIVILEGED, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %555

550:                                              ; preds = %541
  %551 = load i32, i32* @NGM_HCI_NODE_SET_ROLE_SWITCH, align 4
  %552 = load %struct.ng_btsocket_hci_raw_node_role_switch*, %struct.ng_btsocket_hci_raw_node_role_switch** %36, align 8
  %553 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_role_switch, %struct.ng_btsocket_hci_raw_node_role_switch* %552, i32 0, i32 0
  %554 = call i32 @ng_btsocket_hci_raw_send_ngmsg(i8* %47, i32 %551, i32* %553, i32 4)
  store i32 %554, i32* %16, align 4
  br label %557

555:                                              ; preds = %541
  %556 = load i32, i32* @EPERM, align 4
  store i32 %556, i32* %16, align 4
  br label %557

557:                                              ; preds = %555, %550
  br label %722

558:                                              ; preds = %83
  %559 = load i64, i64* %9, align 8
  %560 = inttoptr i64 %559 to %struct.ng_btsocket_hci_raw_node_list_names*
  store %struct.ng_btsocket_hci_raw_node_list_names* %560, %struct.ng_btsocket_hci_raw_node_list_names** %37, align 8
  %561 = load %struct.ng_btsocket_hci_raw_node_list_names*, %struct.ng_btsocket_hci_raw_node_list_names** %37, align 8
  %562 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %561, i32 0, i32 0
  %563 = load %struct.nodeinfo*, %struct.nodeinfo** %562, align 8
  store %struct.nodeinfo* %563, %struct.nodeinfo** %38, align 8
  %564 = load %struct.ng_btsocket_hci_raw_node_list_names*, %struct.ng_btsocket_hci_raw_node_list_names** %37, align 8
  %565 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %564, i32 0, i32 1
  %566 = load %struct.nodeinfo*, %struct.nodeinfo** %565, align 8
  %567 = icmp eq %struct.nodeinfo* %566, null
  br i1 %567, label %568, label %573

568:                                              ; preds = %558
  %569 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %570 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %569, i32 0, i32 2
  %571 = call i32 @mtx_unlock(i32* %570)
  %572 = load i32, i32* @EINVAL, align 4
  store i32 %572, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

573:                                              ; preds = %558
  %574 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %575 = load i32, i32* @NGM_GENERIC_COOKIE, align 4
  %576 = load i32, i32* @NGM_LISTNAMES, align 4
  %577 = load i32, i32* @M_NOWAIT, align 4
  %578 = call i32 @NG_MKMESSAGE(%struct.ng_mesg* %574, i32 %575, i32 %576, i32 0, i32 %577)
  %579 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %580 = icmp eq %struct.ng_mesg* %579, null
  br i1 %580, label %581, label %586

581:                                              ; preds = %573
  %582 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %583 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %582, i32 0, i32 2
  %584 = call i32 @mtx_unlock(i32* %583)
  %585 = load i32, i32* @ENOMEM, align 4
  store i32 %585, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

586:                                              ; preds = %573
  %587 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %588 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %587, i32 0, i32 1
  %589 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %588, i32 0, i32 0
  %590 = call i32 @ng_btsocket_hci_raw_get_token(i64* %589)
  %591 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %592 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %591, i32 0, i32 1
  %593 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %592, i32 0, i32 0
  %594 = load i64, i64* %593, align 8
  %595 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %596 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %595, i32 0, i32 0
  store i64 %594, i64* %596, align 8
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 3
  store %struct.ng_mesg* null, %struct.ng_mesg** %598, align 8
  %599 = load i32, i32* %16, align 4
  %600 = load i32*, i32** @ng_btsocket_hci_raw_node, align 8
  %601 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %602 = call i32 @NG_SEND_MSG_PATH(i32 %599, i32* %600, %struct.ng_mesg* %601, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %603 = load i32, i32* %16, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %612

605:                                              ; preds = %586
  %606 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %607 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %606, i32 0, i32 0
  store i64 0, i64* %607, align 8
  %608 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %609 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %608, i32 0, i32 2
  %610 = call i32 @mtx_unlock(i32* %609)
  %611 = load i32, i32* %16, align 4
  store i32 %611, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

612:                                              ; preds = %586
  %613 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %614 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %613, i32 0, i32 3
  %615 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %616 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %615, i32 0, i32 2
  %617 = load i32, i32* @PZERO, align 4
  %618 = load i32, i32* @PCATCH, align 4
  %619 = or i32 %617, %618
  %620 = load i32, i32* @ng_btsocket_hci_raw_ioctl_timeout, align 4
  %621 = load i32, i32* @hz, align 4
  %622 = mul nsw i32 %620, %621
  %623 = call i32 @msleep(%struct.ng_mesg** %614, i32* %616, i32 %619, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %622)
  store i32 %623, i32* %16, align 4
  %624 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %625 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %624, i32 0, i32 0
  store i64 0, i64* %625, align 8
  %626 = load i32, i32* %16, align 4
  %627 = icmp ne i32 %626, 0
  br i1 %627, label %628, label %633

628:                                              ; preds = %612
  %629 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %630 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %629, i32 0, i32 2
  %631 = call i32 @mtx_unlock(i32* %630)
  %632 = load i32, i32* %16, align 4
  store i32 %632, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

633:                                              ; preds = %612
  %634 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %635 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %634, i32 0, i32 3
  %636 = load %struct.ng_mesg*, %struct.ng_mesg** %635, align 8
  store %struct.ng_mesg* %636, %struct.ng_mesg** %15, align 8
  %637 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %638 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %637, i32 0, i32 3
  store %struct.ng_mesg* null, %struct.ng_mesg** %638, align 8
  %639 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %640 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %639, i32 0, i32 2
  %641 = call i32 @mtx_unlock(i32* %640)
  %642 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %643 = icmp ne %struct.ng_mesg* %642, null
  br i1 %643, label %644, label %714

644:                                              ; preds = %633
  %645 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %646 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %646, i32 0, i32 1
  %648 = load i32, i32* %647, align 8
  %649 = load i32, i32* @NGM_LISTNAMES, align 4
  %650 = icmp eq i32 %648, %649
  br i1 %650, label %651, label %714

651:                                              ; preds = %644
  %652 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %653 = getelementptr inbounds %struct.ng_mesg, %struct.ng_mesg* %652, i32 0, i32 0
  %654 = load i64, i64* %653, align 8
  %655 = inttoptr i64 %654 to %struct.namelist*
  store %struct.namelist* %655, %struct.namelist** %39, align 8
  %656 = load %struct.namelist*, %struct.namelist** %39, align 8
  %657 = getelementptr inbounds %struct.namelist, %struct.namelist* %656, i32 0, i32 1
  %658 = load %struct.nodeinfo*, %struct.nodeinfo** %657, align 8
  %659 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %658, i64 0
  store %struct.nodeinfo* %659, %struct.nodeinfo** %40, align 8
  br label %660

660:                                              ; preds = %695, %651
  %661 = load %struct.ng_btsocket_hci_raw_node_list_names*, %struct.ng_btsocket_hci_raw_node_list_names** %37, align 8
  %662 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %661, i32 0, i32 1
  %663 = load %struct.nodeinfo*, %struct.nodeinfo** %662, align 8
  %664 = icmp ugt %struct.nodeinfo* %663, null
  br i1 %664, label %665, label %670

665:                                              ; preds = %660
  %666 = load %struct.namelist*, %struct.namelist** %39, align 8
  %667 = getelementptr inbounds %struct.namelist, %struct.namelist* %666, i32 0, i32 0
  %668 = load i32, i32* %667, align 8
  %669 = icmp sgt i32 %668, 0
  br label %670

670:                                              ; preds = %665, %660
  %671 = phi i1 [ false, %660 ], [ %669, %665 ]
  br i1 %671, label %672, label %702

672:                                              ; preds = %670
  %673 = load %struct.nodeinfo*, %struct.nodeinfo** %40, align 8
  %674 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %673, i32 0, i32 0
  %675 = load i32, i32* %674, align 4
  %676 = load i32, i32* @NG_HCI_NODE_TYPE, align 4
  %677 = call i32 @strcmp(i32 %675, i32 %676)
  %678 = icmp eq i32 %677, 0
  br i1 %678, label %679, label %695

679:                                              ; preds = %672
  %680 = load %struct.nodeinfo*, %struct.nodeinfo** %40, align 8
  %681 = ptrtoint %struct.nodeinfo* %680 to i64
  %682 = load %struct.nodeinfo*, %struct.nodeinfo** %38, align 8
  %683 = ptrtoint %struct.nodeinfo* %682 to i64
  %684 = call i32 @copyout(i64 %681, i64 %683, i32 4)
  store i32 %684, i32* %16, align 4
  %685 = load i32, i32* %16, align 4
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %687, label %688

687:                                              ; preds = %679
  br label %702

688:                                              ; preds = %679
  %689 = load %struct.ng_btsocket_hci_raw_node_list_names*, %struct.ng_btsocket_hci_raw_node_list_names** %37, align 8
  %690 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %689, i32 0, i32 1
  %691 = load %struct.nodeinfo*, %struct.nodeinfo** %690, align 8
  %692 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %691, i32 -1
  store %struct.nodeinfo* %692, %struct.nodeinfo** %690, align 8
  %693 = load %struct.nodeinfo*, %struct.nodeinfo** %38, align 8
  %694 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %693, i32 1
  store %struct.nodeinfo* %694, %struct.nodeinfo** %38, align 8
  br label %695

695:                                              ; preds = %688, %672
  %696 = load %struct.namelist*, %struct.namelist** %39, align 8
  %697 = getelementptr inbounds %struct.namelist, %struct.namelist* %696, i32 0, i32 0
  %698 = load i32, i32* %697, align 8
  %699 = add nsw i32 %698, -1
  store i32 %699, i32* %697, align 8
  %700 = load %struct.nodeinfo*, %struct.nodeinfo** %40, align 8
  %701 = getelementptr inbounds %struct.nodeinfo, %struct.nodeinfo* %700, i32 1
  store %struct.nodeinfo* %701, %struct.nodeinfo** %40, align 8
  br label %660

702:                                              ; preds = %687, %670
  %703 = load %struct.nodeinfo*, %struct.nodeinfo** %38, align 8
  %704 = load %struct.ng_btsocket_hci_raw_node_list_names*, %struct.ng_btsocket_hci_raw_node_list_names** %37, align 8
  %705 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %704, i32 0, i32 0
  %706 = load %struct.nodeinfo*, %struct.nodeinfo** %705, align 8
  %707 = ptrtoint %struct.nodeinfo* %703 to i64
  %708 = ptrtoint %struct.nodeinfo* %706 to i64
  %709 = sub i64 %707, %708
  %710 = sdiv exact i64 %709, 4
  %711 = inttoptr i64 %710 to %struct.nodeinfo*
  %712 = load %struct.ng_btsocket_hci_raw_node_list_names*, %struct.ng_btsocket_hci_raw_node_list_names** %37, align 8
  %713 = getelementptr inbounds %struct.ng_btsocket_hci_raw_node_list_names, %struct.ng_btsocket_hci_raw_node_list_names* %712, i32 0, i32 1
  store %struct.nodeinfo* %711, %struct.nodeinfo** %713, align 8
  br label %716

714:                                              ; preds = %644, %633
  %715 = load i32, i32* @EINVAL, align 4
  store i32 %715, i32* %16, align 4
  br label %716

716:                                              ; preds = %714, %702
  %717 = load %struct.ng_mesg*, %struct.ng_mesg** %15, align 8
  %718 = call i32 @NG_FREE_MSG(%struct.ng_mesg* %717)
  %719 = load i32, i32* %16, align 4
  store i32 %719, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

720:                                              ; preds = %83
  %721 = load i32, i32* @EINVAL, align 4
  store i32 %721, i32* %16, align 4
  br label %722

722:                                              ; preds = %720, %557, %533, %532, %508, %507, %483, %194, %181, %161, %153, %145, %137, %136, %112, %111, %91
  %723 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %724 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %723, i32 0, i32 2
  %725 = call i32 @mtx_unlock(i32* %724)
  %726 = load i32, i32* %16, align 4
  store i32 %726, i32* %6, align 4
  store i32 1, i32* %17, align 4
  br label %727

727:                                              ; preds = %722, %716, %628, %605, %581, %568, %479, %417, %394, %370, %357, %335, %273, %250, %226, %213, %78, %68, %55, %50
  %728 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %728)
  %729 = load i32, i32* %6, align 4
  ret i32 %729
}

declare dso_local %struct.TYPE_12__* @so2hci_raw_pcb(%struct.socket*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64*) #1

declare dso_local i32 @ng_btsocket_hci_raw_send_sync_ngmsg(%struct.TYPE_12__*, i8*, i32, i32*, i32) #1

declare dso_local i32 @ng_btsocket_hci_raw_send_ngmsg(i8*, i32, i32*, i32) #1

declare dso_local i32 @NG_MKMESSAGE(%struct.ng_mesg*, i32, i32, i32, i32) #1

declare dso_local i32 @ng_btsocket_hci_raw_get_token(i64*) #1

declare dso_local i32 @NG_SEND_MSG_PATH(i32, i32*, %struct.ng_mesg*, i8*, i32) #1

declare dso_local i32 @msleep(%struct.ng_mesg**, i32*, i32, i8*, i32) #1

declare dso_local i8* @min(i32, i32) #1

declare dso_local i32 @copyout(i64, i64, i32) #1

declare dso_local i32 @NG_FREE_MSG(%struct.ng_mesg*) #1

declare dso_local i32 @strcmp(i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
