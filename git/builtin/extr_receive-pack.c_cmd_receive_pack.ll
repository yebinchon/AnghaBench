; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_cmd_receive_pack.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_cmd_receive_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oid_array = type { i32 }
%struct.string_list = type { i32 }
%struct.child_process = type { i32, i32, i32, i32, i8** }
%struct.TYPE_2__ = type { i32 }
%struct.command = type { i8*, %struct.command* }
%struct.shallow_info = type { i32, i32 }
%struct.packet_reader = type { i32 }
%struct.option = type { i32 }

@OID_ARRAY_INIT = common dso_local global %struct.oid_array zeroinitializer, align 4
@quiet = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"stateless-rpc\00", align 1
@stateless_rpc = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"advertise-refs\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"reject-thin-pack-for-testing\00", align 1
@reject_thin = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"receive-pack\00", align 1
@receive_pack_usage = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Too many arguments.\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"You must specify a directory.\00", align 1
@service_dir = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [44 x i8] c"'%s' does not appear to be a git repository\00", align 1
@receive_pack_config = common dso_local global i32 0, align 4
@cert_nonce_seed = common dso_local global i64 0, align 8
@push_cert_nonce = common dso_local global i64 0, align 8
@transfer_unpack_limit = common dso_local global i64 0, align 8
@unpack_limit = common dso_local global i64 0, align 8
@receive_unpack_limit = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"version 1\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"unknown protocol version\00", align 1
@PACKET_READ_CHOMP_NEWLINE = common dso_local global i32 0, align 4
@PACKET_READ_DIE_ON_ERR_PACKET = common dso_local global i32 0, align 4
@STRING_LIST_INIT_DUP = common dso_local global %struct.string_list zeroinitializer, align 4
@use_push_options = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [26 x i8] c"inconsistent push options\00", align 1
@shallow_update = common dso_local global i64 0, align 8
@KEEPALIVE_ALWAYS = common dso_local global i32 0, align 4
@use_keepalive = common dso_local global i32 0, align 4
@pack_lockfile = common dso_local global i64 0, align 8
@report_status = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [13 x i8] c"post-receive\00", align 1
@auto_gc = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"gc\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"--auto\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@__const.cmd_receive_pack.argv_gc_auto = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0), i8* null], align 16
@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 8
@use_sideband = common dso_local global i64 0, align 8
@the_repository = common dso_local global %struct.TYPE_2__* null, align 8
@auto_update_server_info = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_receive_pack(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.command*, align 8
  %10 = alloca %struct.oid_array, align 4
  %11 = alloca %struct.oid_array, align 4
  %12 = alloca %struct.shallow_info, align 4
  %13 = alloca %struct.packet_reader, align 4
  %14 = alloca [5 x %struct.option], align 16
  %15 = alloca i8*, align 8
  %16 = alloca %struct.string_list, align 4
  %17 = alloca %struct.command*, align 8
  %18 = alloca [4 x i8*], align 16
  %19 = alloca %struct.child_process, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = bitcast %struct.oid_array* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %21 = bitcast %struct.oid_array* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.oid_array* @OID_ARRAY_INIT to i8*), i64 4, i1 false)
  %22 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %14, i64 0, i64 0
  %23 = call i32 @N_(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @OPT__QUIET(i32* @quiet, i32 %23)
  %25 = getelementptr inbounds %struct.option, %struct.option* %22, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = getelementptr inbounds %struct.option, %struct.option* %22, i64 1
  %27 = call i32 @OPT_HIDDEN_BOOL(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* @stateless_rpc, i32* null)
  %28 = getelementptr inbounds %struct.option, %struct.option* %26, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %26, i64 1
  %30 = call i32 @OPT_HIDDEN_BOOL(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %8, i32* null)
  %31 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %33 = call i32 @OPT_HIDDEN_BOOL(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32* @reject_thin, i32* null)
  %34 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = getelementptr inbounds %struct.option, %struct.option* %32, i64 1
  %36 = call i32 (...) @OPT_END()
  %37 = getelementptr inbounds %struct.option, %struct.option* %35, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = call i32 @packet_trace_identity(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* %5, align 4
  %40 = load i8**, i8*** %6, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %14, i64 0, i64 0
  %43 = load i32, i32* @receive_pack_usage, align 4
  %44 = call i32 @parse_options(i32 %39, i8** %40, i8* %41, %struct.option* %42, i32 %43, i32 0)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %52

47:                                               ; preds = %3
  %48 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %49 = load i32, i32* @receive_pack_usage, align 4
  %50 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %14, i64 0, i64 0
  %51 = call i32 @usage_msg_opt(i32 %48, i32 %49, %struct.option* %50)
  br label %52

52:                                               ; preds = %47, %3
  %53 = load i32, i32* %5, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = call i32 @_(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %57 = load i32, i32* @receive_pack_usage, align 4
  %58 = getelementptr inbounds [5 x %struct.option], [5 x %struct.option]* %14, i64 0, i64 0
  %59 = call i32 @usage_msg_opt(i32 %56, i32 %57, %struct.option* %58)
  br label %60

60:                                               ; preds = %55, %52
  %61 = load i8**, i8*** %6, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 0
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** @service_dir, align 8
  %64 = call i32 (...) @setup_path()
  %65 = load i8*, i8** @service_dir, align 8
  %66 = call i32 @enter_repo(i8* %65, i32 0)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %60
  %69 = load i8*, i8** @service_dir, align 8
  %70 = call i32 @die(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i8* %69)
  br label %71

71:                                               ; preds = %68, %60
  %72 = load i32, i32* @receive_pack_config, align 4
  %73 = call i32 @git_config(i32 %72, i32* null)
  %74 = load i64, i64* @cert_nonce_seed, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i8*, i8** @service_dir, align 8
  %78 = call i32 @time(i32* null)
  %79 = call i64 @prepare_push_cert_nonce(i8* %77, i32 %78)
  store i64 %79, i64* @push_cert_nonce, align 8
  br label %80

80:                                               ; preds = %76, %71
  %81 = load i64, i64* @transfer_unpack_limit, align 8
  %82 = icmp sle i64 0, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i64, i64* @transfer_unpack_limit, align 8
  store i64 %84, i64* @unpack_limit, align 8
  br label %91

85:                                               ; preds = %80
  %86 = load i64, i64* @receive_unpack_limit, align 8
  %87 = icmp sle i64 0, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i64, i64* @receive_unpack_limit, align 8
  store i64 %89, i64* @unpack_limit, align 8
  br label %90

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %83
  %92 = call i32 (...) @determine_protocol_version_server()
  switch i32 %92, label %106 [
    i32 128, label %93
    i32 129, label %94
    i32 130, label %103
    i32 131, label %104
  ]

93:                                               ; preds = %91
  br label %106

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @stateless_rpc, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97, %94
  %101 = call i32 @packet_write_fmt(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %91, %102
  br label %106

104:                                              ; preds = %91
  %105 = call i32 @BUG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %91, %103, %93
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %106
  %110 = load i32, i32* @stateless_rpc, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109, %106
  %113 = call i32 (...) @write_head_info()
  br label %114

114:                                              ; preds = %112, %109
  %115 = load i32, i32* %8, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  store i32 0, i32* %4, align 4
  br label %237

118:                                              ; preds = %114
  %119 = load i32, i32* @PACKET_READ_CHOMP_NEWLINE, align 4
  %120 = load i32, i32* @PACKET_READ_DIE_ON_ERR_PACKET, align 4
  %121 = or i32 %119, %120
  %122 = call i32 @packet_reader_init(%struct.packet_reader* %13, i32 0, i32* null, i32 0, i32 %121)
  %123 = call %struct.command* @read_head_info(%struct.packet_reader* %13, %struct.oid_array* %10)
  store %struct.command* %123, %struct.command** %9, align 8
  %124 = icmp ne %struct.command* %123, null
  br i1 %124, label %125, label %226

125:                                              ; preds = %118
  store i8* null, i8** %15, align 8
  %126 = bitcast %struct.string_list* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %126, i8* align 4 bitcast (%struct.string_list* @STRING_LIST_INIT_DUP to i8*), i64 4, i1 false)
  %127 = load i64, i64* @use_push_options, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %125
  %130 = call i32 @read_push_options(%struct.packet_reader* %13, %struct.string_list* %16)
  br label %131

131:                                              ; preds = %129, %125
  %132 = call i32 @check_cert_push_options(%struct.string_list* %16)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %131
  %135 = load %struct.command*, %struct.command** %9, align 8
  store %struct.command* %135, %struct.command** %17, align 8
  br label %136

136:                                              ; preds = %142, %134
  %137 = load %struct.command*, %struct.command** %17, align 8
  %138 = icmp ne %struct.command* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %136
  %140 = load %struct.command*, %struct.command** %17, align 8
  %141 = getelementptr inbounds %struct.command, %struct.command* %140, i32 0, i32 0
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8** %141, align 8
  br label %142

142:                                              ; preds = %139
  %143 = load %struct.command*, %struct.command** %17, align 8
  %144 = getelementptr inbounds %struct.command, %struct.command* %143, i32 0, i32 1
  %145 = load %struct.command*, %struct.command** %144, align 8
  store %struct.command* %145, %struct.command** %17, align 8
  br label %136

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146, %131
  %148 = call i32 @prepare_shallow_info(%struct.shallow_info* %12, %struct.oid_array* %10)
  %149 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %12, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = getelementptr inbounds %struct.shallow_info, %struct.shallow_info* %12, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %157, label %156

156:                                              ; preds = %152
  store i64 0, i64* @shallow_update, align 8
  br label %157

157:                                              ; preds = %156, %152, %147
  %158 = load %struct.command*, %struct.command** %9, align 8
  %159 = call i32 @delete_only(%struct.command* %158)
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %157
  %162 = call i8* @unpack_with_sideband(%struct.shallow_info* %12)
  store i8* %162, i8** %15, align 8
  %163 = load %struct.command*, %struct.command** %9, align 8
  %164 = call i32 @update_shallow_info(%struct.command* %163, %struct.shallow_info* %12, %struct.oid_array* %11)
  br label %165

165:                                              ; preds = %161, %157
  %166 = load i32, i32* @KEEPALIVE_ALWAYS, align 4
  store i32 %166, i32* @use_keepalive, align 4
  %167 = load %struct.command*, %struct.command** %9, align 8
  %168 = load i8*, i8** %15, align 8
  %169 = call i32 @execute_commands(%struct.command* %167, i8* %168, %struct.shallow_info* %12, %struct.string_list* %16)
  %170 = load i64, i64* @pack_lockfile, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %165
  %173 = load i64, i64* @pack_lockfile, align 8
  %174 = call i32 @unlink_or_warn(i64 %173)
  br label %175

175:                                              ; preds = %172, %165
  %176 = load i64, i64* @report_status, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.command*, %struct.command** %9, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = call i32 @report(%struct.command* %179, i8* %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = load %struct.command*, %struct.command** %9, align 8
  %184 = call i32 @run_receive_hook(%struct.command* %183, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0), i32 1, %struct.string_list* %16)
  %185 = load %struct.command*, %struct.command** %9, align 8
  %186 = call i32 @run_update_post_hook(%struct.command* %185)
  %187 = call i32 @string_list_clear(%struct.string_list* %16, i32 0)
  %188 = load i64, i64* @auto_gc, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %219

190:                                              ; preds = %182
  %191 = bitcast [4 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %191, i8* align 16 bitcast ([4 x i8*]* @__const.cmd_receive_pack.argv_gc_auto to i8*), i64 32, i1 false)
  %192 = bitcast %struct.child_process* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %192, i8* align 8 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 24, i1 false)
  %193 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 0
  store i32 1, i32* %193, align 8
  %194 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 1
  store i32 1, i32* %194, align 4
  %195 = load i64, i64* @use_sideband, align 8
  %196 = icmp ne i64 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 -1, i32 0
  %199 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 2
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 3
  store i32 1, i32* %200, align 4
  %201 = getelementptr inbounds [4 x i8*], [4 x i8*]* %18, i64 0, i64 0
  %202 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 4
  store i8** %201, i8*** %202, align 8
  %203 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_repository, align 8
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @close_object_store(i32 %205)
  %207 = call i32 @start_command(%struct.child_process* %19)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %218, label %209

209:                                              ; preds = %190
  %210 = load i64, i64* @use_sideband, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %209
  %213 = getelementptr inbounds %struct.child_process, %struct.child_process* %19, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @copy_to_sideband(i32 %214, i32 -1, i32* null)
  br label %216

216:                                              ; preds = %212, %209
  %217 = call i32 @finish_command(%struct.child_process* %19)
  br label %218

218:                                              ; preds = %216, %190
  br label %219

219:                                              ; preds = %218, %182
  %220 = load i64, i64* @auto_update_server_info, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call i32 @update_server_info(i32 0)
  br label %224

224:                                              ; preds = %222, %219
  %225 = call i32 @clear_shallow_info(%struct.shallow_info* %12)
  br label %226

226:                                              ; preds = %224, %118
  %227 = load i64, i64* @use_sideband, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = call i32 @packet_flush(i32 1)
  br label %231

231:                                              ; preds = %229, %226
  %232 = call i32 @oid_array_clear(%struct.oid_array* %10)
  %233 = call i32 @oid_array_clear(%struct.oid_array* %11)
  %234 = load i64, i64* @push_cert_nonce, align 8
  %235 = inttoptr i64 %234 to i8*
  %236 = call i32 @free(i8* %235)
  store i32 0, i32* %4, align 4
  br label %237

237:                                              ; preds = %231, %117
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT__QUIET(i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT_HIDDEN_BOOL(i32, i8*, i32*, i32*) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @packet_trace_identity(i8*) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_msg_opt(i32, i32, %struct.option*) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @setup_path(...) #2

declare dso_local i32 @enter_repo(i8*, i32) #2

declare dso_local i32 @die(i8*, i8*) #2

declare dso_local i32 @git_config(i32, i32*) #2

declare dso_local i64 @prepare_push_cert_nonce(i8*, i32) #2

declare dso_local i32 @time(i32*) #2

declare dso_local i32 @determine_protocol_version_server(...) #2

declare dso_local i32 @packet_write_fmt(i32, i8*) #2

declare dso_local i32 @BUG(i8*) #2

declare dso_local i32 @write_head_info(...) #2

declare dso_local i32 @packet_reader_init(%struct.packet_reader*, i32, i32*, i32, i32) #2

declare dso_local %struct.command* @read_head_info(%struct.packet_reader*, %struct.oid_array*) #2

declare dso_local i32 @read_push_options(%struct.packet_reader*, %struct.string_list*) #2

declare dso_local i32 @check_cert_push_options(%struct.string_list*) #2

declare dso_local i32 @prepare_shallow_info(%struct.shallow_info*, %struct.oid_array*) #2

declare dso_local i32 @delete_only(%struct.command*) #2

declare dso_local i8* @unpack_with_sideband(%struct.shallow_info*) #2

declare dso_local i32 @update_shallow_info(%struct.command*, %struct.shallow_info*, %struct.oid_array*) #2

declare dso_local i32 @execute_commands(%struct.command*, i8*, %struct.shallow_info*, %struct.string_list*) #2

declare dso_local i32 @unlink_or_warn(i64) #2

declare dso_local i32 @report(%struct.command*, i8*) #2

declare dso_local i32 @run_receive_hook(%struct.command*, i8*, i32, %struct.string_list*) #2

declare dso_local i32 @run_update_post_hook(%struct.command*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

declare dso_local i32 @close_object_store(i32) #2

declare dso_local i32 @start_command(%struct.child_process*) #2

declare dso_local i32 @copy_to_sideband(i32, i32, i32*) #2

declare dso_local i32 @finish_command(%struct.child_process*) #2

declare dso_local i32 @update_server_info(i32) #2

declare dso_local i32 @clear_shallow_info(%struct.shallow_info*) #2

declare dso_local i32 @packet_flush(i32) #2

declare dso_local i32 @oid_array_clear(%struct.oid_array*) #2

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
