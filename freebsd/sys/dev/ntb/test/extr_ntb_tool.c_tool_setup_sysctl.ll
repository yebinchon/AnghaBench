; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_setup_sysctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_setup_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, %struct.tool_ctx* }
%struct.sysctl_oid_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_ctx_list = type { i32 }

@TOOL_BUF_LEN = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"port\00", align 1
@CTLTYPE_UINT = common dso_local global i32 0, align 4
@CTLFLAG_RDTUN = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@sysctl_local_port_number = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"local port number\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@sysctl_link_handle = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"link info\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"db\00", align 1
@sysctl_db_handle = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"db info\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"db_valid_mask\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sysctl_db_valid_mask_handle = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"db valid mask\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"db_mask\00", align 1
@sysctl_db_mask_handle = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [8 x i8] c"db mask\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"db_event\00", align 1
@CTLFLAG_WR = common dso_local global i32 0, align 4
@sysctl_db_event_handle = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] c"db event\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"peer_db\00", align 1
@sysctl_peer_db_handle = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [8 x i8] c"peer db\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"peer_db_mask\00", align 1
@sysctl_peer_db_mask_handle = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"peer db mask info\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"spad%d\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"spad%d info\00", align 1
@sysctl_spad_handle = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [7 x i8] c"peer%d\00", align 1
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_peer_port_number = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"peer port number\00", align 1
@sysctl_peer_link_handle = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [15 x i8] c"peer_link info\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"link_event\00", align 1
@sysctl_peer_link_event_handle = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [11 x i8] c"link event\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"mw_trans%d\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"mw trans%d info\00", align 1
@sysctl_mw_trans_handler = common dso_local global i32 0, align 4
@.str.27 = private unnamed_addr constant [5 x i8] c"mw%d\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"mw%d info\00", align 1
@sysctl_mw_handle = common dso_local global i32 0, align 4
@.str.29 = private unnamed_addr constant [10 x i8] c"peer_mw%d\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c"peer_mw%d info\00", align 1
@sysctl_peer_mw_handle = common dso_local global i32 0, align 4
@sysctl_peer_spad_handle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tool_ctx*)* @tool_setup_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_setup_sysctl(%struct.tool_ctx* %0) #0 {
  %2 = alloca %struct.tool_ctx*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  %8 = alloca %struct.sysctl_oid*, align 8
  %9 = alloca %struct.sysctl_oid*, align 8
  %10 = alloca %struct.sysctl_ctx_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tool_ctx* %0, %struct.tool_ctx** %2, align 8
  %14 = load i32, i32* @TOOL_BUF_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %3, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %4, align 8
  %18 = load i32, i32* @TOOL_BUF_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %5, align 8
  %21 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %22 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %23)
  store %struct.sysctl_ctx_list* %24, %struct.sysctl_ctx_list** %10, align 8
  %25 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %26 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %27)
  store %struct.sysctl_oid* %28, %struct.sysctl_oid** %8, align 8
  %29 = load %struct.sysctl_oid*, %struct.sysctl_oid** %8, align 8
  %30 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %29)
  store %struct.sysctl_oid_list* %30, %struct.sysctl_oid_list** %6, align 8
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %32 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLTYPE_UINT, align 4
  %35 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %40 = load i32, i32* @sysctl_local_port_number, align 4
  %41 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %31, %struct.sysctl_oid_list* %32, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %38, %struct.tool_ctx* %39, i32 0, i32 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %43 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLTYPE_STRING, align 4
  %46 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %51 = load i32, i32* @sysctl_link_handle, align 4
  %52 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %42, %struct.sysctl_oid_list* %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %49, %struct.tool_ctx* %50, i32 0, i32 %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %54 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %55 = load i32, i32* @OID_AUTO, align 4
  %56 = load i32, i32* @CTLTYPE_STRING, align 4
  %57 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %62 = load i32, i32* @sysctl_db_handle, align 4
  %63 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %53, %struct.sysctl_oid_list* %54, i32 %55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %60, %struct.tool_ctx* %61, i32 0, i32 %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %64 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %65 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %66 = load i32, i32* @OID_AUTO, align 4
  %67 = load i32, i32* @CTLTYPE_STRING, align 4
  %68 = load i32, i32* @CTLFLAG_RD, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %73 = load i32, i32* @sysctl_db_valid_mask_handle, align 4
  %74 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %64, %struct.sysctl_oid_list* %65, i32 %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %71, %struct.tool_ctx* %72, i32 0, i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %75 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %76 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLTYPE_STRING, align 4
  %79 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %84 = load i32, i32* @sysctl_db_mask_handle, align 4
  %85 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %75, %struct.sysctl_oid_list* %76, i32 %77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i32 %82, %struct.tool_ctx* %83, i32 0, i32 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %86 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %87 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %88 = load i32, i32* @OID_AUTO, align 4
  %89 = load i32, i32* @CTLTYPE_STRING, align 4
  %90 = load i32, i32* @CTLFLAG_WR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %93 = or i32 %91, %92
  %94 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %95 = load i32, i32* @sysctl_db_event_handle, align 4
  %96 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %86, %struct.sysctl_oid_list* %87, i32 %88, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %93, %struct.tool_ctx* %94, i32 0, i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0))
  %97 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %98 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %99 = load i32, i32* @OID_AUTO, align 4
  %100 = load i32, i32* @CTLTYPE_STRING, align 4
  %101 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %106 = load i32, i32* @sysctl_peer_db_handle, align 4
  %107 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %97, %struct.sysctl_oid_list* %98, i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i32 %104, %struct.tool_ctx* %105, i32 0, i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0))
  %108 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %109 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %110 = load i32, i32* @OID_AUTO, align 4
  %111 = load i32, i32* @CTLTYPE_STRING, align 4
  %112 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %117 = load i32, i32* @sysctl_peer_db_mask_handle, align 4
  %118 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %108, %struct.sysctl_oid_list* %109, i32 %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i32 %115, %struct.tool_ctx* %116, i32 0, i32 %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %119 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %120 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %153

123:                                              ; preds = %1
  store i32 0, i32* %12, align 4
  br label %124

124:                                              ; preds = %149, %123
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %127 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp ult i32 %125, %128
  br i1 %129, label %130, label %152

130:                                              ; preds = %124
  %131 = trunc i64 %15 to i32
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @snprintf(i8* %17, i32 %131, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %132)
  %134 = trunc i64 %19 to i32
  %135 = load i32, i32* %12, align 4
  %136 = call i32 @snprintf(i8* %20, i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %135)
  %137 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %138 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %139 = load i32, i32* @OID_AUTO, align 4
  %140 = load i32, i32* @CTLTYPE_STRING, align 4
  %141 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %144 = or i32 %142, %143
  %145 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @sysctl_spad_handle, align 4
  %148 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %137, %struct.sysctl_oid_list* %138, i32 %139, i8* %17, i32 %144, %struct.tool_ctx* %145, i32 %146, i32 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %149

149:                                              ; preds = %130
  %150 = load i32, i32* %12, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %12, align 4
  br label %124

152:                                              ; preds = %124
  br label %153

153:                                              ; preds = %152, %1
  store i32 0, i32* %11, align 4
  br label %154

154:                                              ; preds = %338, %153
  %155 = load i32, i32* %11, align 4
  %156 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %157 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp ult i32 %155, %158
  br i1 %159, label %160, label %341

160:                                              ; preds = %154
  %161 = trunc i64 %15 to i32
  %162 = load i32, i32* %11, align 4
  %163 = call i32 @snprintf(i8* %17, i32 %161, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %162)
  %164 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %165 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %166 = load i32, i32* @OID_AUTO, align 4
  %167 = load i32, i32* @CTLFLAG_RW, align 4
  %168 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list* %164, %struct.sysctl_oid_list* %165, i32 %166, i8* %17, i32 %167, i32 0, i8* %17)
  store %struct.sysctl_oid* %168, %struct.sysctl_oid** %9, align 8
  %169 = load %struct.sysctl_oid*, %struct.sysctl_oid** %9, align 8
  %170 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %169)
  store %struct.sysctl_oid_list* %170, %struct.sysctl_oid_list** %7, align 8
  %171 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %172 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %173 = load i32, i32* @OID_AUTO, align 4
  %174 = load i32, i32* @CTLTYPE_UINT, align 4
  %175 = load i32, i32* @CTLFLAG_RDTUN, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @sysctl_peer_port_number, align 4
  %182 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %171, %struct.sysctl_oid_list* %172, i32 %173, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %178, %struct.tool_ctx* %179, i32 %180, i32 %181, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %183 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %184 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %185 = load i32, i32* @OID_AUTO, align 4
  %186 = load i32, i32* @CTLTYPE_STRING, align 4
  %187 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %192 = load i32, i32* %11, align 4
  %193 = load i32, i32* @sysctl_peer_link_handle, align 4
  %194 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %183, %struct.sysctl_oid_list* %184, i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %190, %struct.tool_ctx* %191, i32 %192, i32 %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %195 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %196 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %197 = load i32, i32* @OID_AUTO, align 4
  %198 = load i32, i32* @CTLTYPE_STRING, align 4
  %199 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %204 = load i32, i32* %11, align 4
  %205 = load i32, i32* @sysctl_peer_link_event_handle, align 4
  %206 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %195, %struct.sysctl_oid_list* %196, i32 %197, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0), i32 %202, %struct.tool_ctx* %203, i32 %204, i32 %205, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %207

207:                                              ; preds = %300, %160
  %208 = load i32, i32* %13, align 4
  %209 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %210 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %209, i32 0, i32 2
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %210, align 8
  %212 = load i32, i32* %11, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ult i32 %208, %216
  br i1 %217, label %218, label %303

218:                                              ; preds = %207
  %219 = trunc i64 %15 to i32
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @snprintf(i8* %17, i32 %219, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 %220)
  %222 = trunc i64 %19 to i32
  %223 = load i32, i32* %13, align 4
  %224 = call i32 @snprintf(i8* %20, i32 %222, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 %223)
  %225 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %226 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %227 = load i32, i32* @OID_AUTO, align 4
  %228 = load i32, i32* @CTLTYPE_STRING, align 4
  %229 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %232 = or i32 %230, %231
  %233 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %234 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %233, i32 0, i32 2
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 2
  %240 = load %struct.tool_ctx*, %struct.tool_ctx** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %240, i64 %242
  %244 = load i32, i32* @sysctl_mw_trans_handler, align 4
  %245 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %225, %struct.sysctl_oid_list* %226, i32 %227, i8* %17, i32 %232, %struct.tool_ctx* %243, i32 0, i32 %244, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %246 = trunc i64 %15 to i32
  %247 = load i32, i32* %13, align 4
  %248 = call i32 @snprintf(i8* %17, i32 %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i32 %247)
  %249 = trunc i64 %19 to i32
  %250 = load i32, i32* %13, align 4
  %251 = call i32 @snprintf(i8* %20, i32 %249, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32 %250)
  %252 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %253 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %254 = load i32, i32* @OID_AUTO, align 4
  %255 = load i32, i32* @CTLTYPE_STRING, align 4
  %256 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %257 = or i32 %255, %256
  %258 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %261 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %260, i32 0, i32 2
  %262 = load %struct.TYPE_2__*, %struct.TYPE_2__** %261, align 8
  %263 = load i32, i32* %11, align 4
  %264 = zext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 2
  %267 = load %struct.tool_ctx*, %struct.tool_ctx** %266, align 8
  %268 = load i32, i32* %13, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %267, i64 %269
  %271 = load i32, i32* @sysctl_mw_handle, align 4
  %272 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %252, %struct.sysctl_oid_list* %253, i32 %254, i8* %17, i32 %259, %struct.tool_ctx* %270, i32 0, i32 %271, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %273 = trunc i64 %15 to i32
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @snprintf(i8* %17, i32 %273, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i64 0, i64 0), i32 %274)
  %276 = trunc i64 %19 to i32
  %277 = load i32, i32* %13, align 4
  %278 = call i32 @snprintf(i8* %20, i32 %276, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0), i32 %277)
  %279 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %280 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %281 = load i32, i32* @OID_AUTO, align 4
  %282 = load i32, i32* @CTLTYPE_STRING, align 4
  %283 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %286 = or i32 %284, %285
  %287 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %288 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %287, i32 0, i32 2
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = load i32, i32* %11, align 4
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 2
  %294 = load %struct.tool_ctx*, %struct.tool_ctx** %293, align 8
  %295 = load i32, i32* %13, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %294, i64 %296
  %298 = load i32, i32* @sysctl_peer_mw_handle, align 4
  %299 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %279, %struct.sysctl_oid_list* %280, i32 %281, i8* %17, i32 %286, %struct.tool_ctx* %297, i32 0, i32 %298, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %300

300:                                              ; preds = %218
  %301 = load i32, i32* %13, align 4
  %302 = add i32 %301, 1
  store i32 %302, i32* %13, align 4
  br label %207

303:                                              ; preds = %207
  store i32 0, i32* %12, align 4
  br label %304

304:                                              ; preds = %334, %303
  %305 = load i32, i32* %12, align 4
  %306 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %307 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %306, i32 0, i32 2
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = load i32, i32* %11, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = icmp ult i32 %305, %313
  br i1 %314, label %315, label %337

315:                                              ; preds = %304
  %316 = trunc i64 %15 to i32
  %317 = load i32, i32* %12, align 4
  %318 = call i32 @snprintf(i8* %17, i32 %316, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %317)
  %319 = trunc i64 %19 to i32
  %320 = load i32, i32* %12, align 4
  %321 = call i32 @snprintf(i8* %20, i32 %319, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i32 %320)
  %322 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %10, align 8
  %323 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %324 = load i32, i32* @OID_AUTO, align 4
  %325 = load i32, i32* @CTLTYPE_STRING, align 4
  %326 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %327 = or i32 %325, %326
  %328 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %329 = or i32 %327, %328
  %330 = load %struct.tool_ctx*, %struct.tool_ctx** %2, align 8
  %331 = load i32, i32* %12, align 4
  %332 = load i32, i32* @sysctl_peer_spad_handle, align 4
  %333 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %322, %struct.sysctl_oid_list* %323, i32 %324, i8* %17, i32 %329, %struct.tool_ctx* %330, i32 %331, i32 %332, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  br label %334

334:                                              ; preds = %315
  %335 = load i32, i32* %12, align 4
  %336 = add i32 %335, 1
  store i32 %336, i32* %12, align 4
  br label %304

337:                                              ; preds = %304
  br label %338

338:                                              ; preds = %337
  %339 = load i32, i32* %11, align 4
  %340 = add i32 %339, 1
  store i32 %340, i32* %11, align 4
  br label %154

341:                                              ; preds = %154
  %342 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %342)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #2

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #2

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #2

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.tool_ctx*, i32, i32, i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
