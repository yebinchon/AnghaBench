; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_receive_pack_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_receive-pack.c_receive_pack_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"receive\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"receive.denydeletes\00", align 1
@deny_deletes = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"receive.denynonfastforwards\00", align 1
@deny_non_fast_forwards = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"receive.unpacklimit\00", align 1
@receive_unpack_limit = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"transfer.unpacklimit\00", align 1
@transfer_unpack_limit = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"receive.fsck.skiplist\00", align 1
@fsck_msg_types = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"%cskiplist=%s\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"receive.fsck.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"%c%s=%s\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Skipping unknown msg id '%s'\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"receive.fsckobjects\00", align 1
@receive_fsck_objects = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [21 x i8] c"transfer.fsckobjects\00", align 1
@transfer_fsck_objects = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"receive.denycurrentbranch\00", align 1
@deny_current_branch = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [26 x i8] c"receive.denydeletecurrent\00", align 1
@deny_delete_current = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [26 x i8] c"repack.usedeltabaseoffset\00", align 1
@prefer_ofs_delta = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [25 x i8] c"receive.updateserverinfo\00", align 1
@auto_update_server_info = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [15 x i8] c"receive.autogc\00", align 1
@auto_gc = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"receive.shallowupdate\00", align 1
@shallow_update = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"receive.certnonceseed\00", align 1
@cert_nonce_seed = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"receive.certnonceslop\00", align 1
@nonce_stamp_slop_limit = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [24 x i8] c"receive.advertiseatomic\00", align 1
@advertise_atomic_push = common dso_local global i8* null, align 8
@.str.21 = private unnamed_addr constant [29 x i8] c"receive.advertisepushoptions\00", align 1
@advertise_push_options = common dso_local global i8* null, align 8
@.str.22 = private unnamed_addr constant [18 x i8] c"receive.keepalive\00", align 1
@keepalive_in_sec = common dso_local global i8* null, align 8
@.str.23 = private unnamed_addr constant [21 x i8] c"receive.maxinputsize\00", align 1
@max_input_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @receive_pack_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_pack_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @parse_hide_refs_config(i8* %10, i8* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %208

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i8* @git_config_bool(i8* %22, i8* %23)
  store i8* %24, i8** @deny_deletes, align 8
  store i32 0, i32* %4, align 4
  br label %208

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = call i8* @git_config_bool(i8* %30, i8* %31)
  store i8* %32, i8** @deny_non_fast_forwards, align 8
  store i32 0, i32* %4, align 4
  br label %208

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @git_config_int(i8* %38, i8* %39)
  store i8* %40, i8** @receive_unpack_limit, align 8
  store i32 0, i32* %4, align 4
  br label %208

41:                                               ; preds = %33
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load i8*, i8** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i8* @git_config_int(i8* %46, i8* %47)
  store i8* %48, i8** @transfer_unpack_limit, align 8
  store i32 0, i32* %4, align 4
  br label %208

49:                                               ; preds = %41
  %50 = load i8*, i8** %5, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %49
  %54 = load i8*, i8** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call i64 @git_config_pathname(i8** %9, i8* %54, i8* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %4, align 4
  br label %208

59:                                               ; preds = %53
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fsck_msg_types, i32 0, i32 0), align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 44, i32 61
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %9, align 8
  %66 = call i32 (%struct.TYPE_3__*, i8*, i8, i8*, ...) @strbuf_addf(%struct.TYPE_3__* @fsck_msg_types, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i8 signext %64, i8* %65)
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 @free(i8* %67)
  store i32 0, i32* %4, align 4
  br label %208

69:                                               ; preds = %49
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @skip_prefix(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i8** %5)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %69
  %74 = load i8*, i8** %5, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = call i64 @is_valid_msg_type(i8* %74, i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @fsck_msg_types, i32 0, i32 0), align 8
  %80 = icmp ne i64 %79, 0
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i32 44, i32 61
  %83 = trunc i32 %82 to i8
  %84 = load i8*, i8** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 (%struct.TYPE_3__*, i8*, i8, i8*, ...) @strbuf_addf(%struct.TYPE_3__* @fsck_msg_types, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8 signext %83, i8* %84, i8* %85)
  br label %90

87:                                               ; preds = %73
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %88)
  br label %90

90:                                               ; preds = %87, %78
  store i32 0, i32* %4, align 4
  br label %208

91:                                               ; preds = %69
  %92 = load i8*, i8** %5, align 8
  %93 = call i64 @strcmp(i8* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i8*, i8** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = call i8* @git_config_bool(i8* %96, i8* %97)
  store i8* %98, i8** @receive_fsck_objects, align 8
  store i32 0, i32* %4, align 4
  br label %208

99:                                               ; preds = %91
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i8*, i8** %5, align 8
  %105 = load i8*, i8** %6, align 8
  %106 = call i8* @git_config_bool(i8* %104, i8* %105)
  store i8* %106, i8** @transfer_fsck_objects, align 8
  store i32 0, i32* %4, align 4
  br label %208

107:                                              ; preds = %99
  %108 = load i8*, i8** %5, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0))
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i8*, i8** %5, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = call i8* @parse_deny_action(i8* %112, i8* %113)
  store i8* %114, i8** @deny_current_branch, align 8
  store i32 0, i32* %4, align 4
  br label %208

115:                                              ; preds = %107
  %116 = load i8*, i8** %5, align 8
  %117 = call i64 @strcmp(i8* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load i8*, i8** %5, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = call i8* @parse_deny_action(i8* %120, i8* %121)
  store i8* %122, i8** @deny_delete_current, align 8
  store i32 0, i32* %4, align 4
  br label %208

123:                                              ; preds = %115
  %124 = load i8*, i8** %5, align 8
  %125 = call i64 @strcmp(i8* %124, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i8*, i8** %5, align 8
  %129 = load i8*, i8** %6, align 8
  %130 = call i8* @git_config_bool(i8* %128, i8* %129)
  store i8* %130, i8** @prefer_ofs_delta, align 8
  store i32 0, i32* %4, align 4
  br label %208

131:                                              ; preds = %123
  %132 = load i8*, i8** %5, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.15, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i8*, i8** %5, align 8
  %137 = load i8*, i8** %6, align 8
  %138 = call i8* @git_config_bool(i8* %136, i8* %137)
  store i8* %138, i8** @auto_update_server_info, align 8
  store i32 0, i32* %4, align 4
  br label %208

139:                                              ; preds = %131
  %140 = load i8*, i8** %5, align 8
  %141 = call i64 @strcmp(i8* %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %139
  %144 = load i8*, i8** %5, align 8
  %145 = load i8*, i8** %6, align 8
  %146 = call i8* @git_config_bool(i8* %144, i8* %145)
  store i8* %146, i8** @auto_gc, align 8
  store i32 0, i32* %4, align 4
  br label %208

147:                                              ; preds = %139
  %148 = load i8*, i8** %5, align 8
  %149 = call i64 @strcmp(i8* %148, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0))
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i8*, i8** %5, align 8
  %153 = load i8*, i8** %6, align 8
  %154 = call i8* @git_config_bool(i8* %152, i8* %153)
  store i8* %154, i8** @shallow_update, align 8
  store i32 0, i32* %4, align 4
  br label %208

155:                                              ; preds = %147
  %156 = load i8*, i8** %5, align 8
  %157 = call i64 @strcmp(i8* %156, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i8*, i8** %5, align 8
  %161 = load i8*, i8** %6, align 8
  %162 = call i32 @git_config_string(i32* @cert_nonce_seed, i8* %160, i8* %161)
  store i32 %162, i32* %4, align 4
  br label %208

163:                                              ; preds = %155
  %164 = load i8*, i8** %5, align 8
  %165 = call i64 @strcmp(i8* %164, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %163
  %168 = load i8*, i8** %5, align 8
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @git_config_ulong(i8* %168, i8* %169)
  store i32 %170, i32* @nonce_stamp_slop_limit, align 4
  store i32 0, i32* %4, align 4
  br label %208

171:                                              ; preds = %163
  %172 = load i8*, i8** %5, align 8
  %173 = call i64 @strcmp(i8* %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %179

175:                                              ; preds = %171
  %176 = load i8*, i8** %5, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = call i8* @git_config_bool(i8* %176, i8* %177)
  store i8* %178, i8** @advertise_atomic_push, align 8
  store i32 0, i32* %4, align 4
  br label %208

179:                                              ; preds = %171
  %180 = load i8*, i8** %5, align 8
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %179
  %184 = load i8*, i8** %5, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = call i8* @git_config_bool(i8* %184, i8* %185)
  store i8* %186, i8** @advertise_push_options, align 8
  store i32 0, i32* %4, align 4
  br label %208

187:                                              ; preds = %179
  %188 = load i8*, i8** %5, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %187
  %192 = load i8*, i8** %5, align 8
  %193 = load i8*, i8** %6, align 8
  %194 = call i8* @git_config_int(i8* %192, i8* %193)
  store i8* %194, i8** @keepalive_in_sec, align 8
  store i32 0, i32* %4, align 4
  br label %208

195:                                              ; preds = %187
  %196 = load i8*, i8** %5, align 8
  %197 = call i64 @strcmp(i8* %196, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0))
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %195
  %200 = load i8*, i8** %5, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = call i32 @git_config_int64(i8* %200, i8* %201)
  store i32 %202, i32* @max_input_size, align 4
  store i32 0, i32* %4, align 4
  br label %208

203:                                              ; preds = %195
  %204 = load i8*, i8** %5, align 8
  %205 = load i8*, i8** %6, align 8
  %206 = load i8*, i8** %7, align 8
  %207 = call i32 @git_default_config(i8* %204, i8* %205, i8* %206)
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %203, %199, %191, %183, %175, %167, %159, %151, %143, %135, %127, %119, %111, %103, %95, %90, %59, %58, %45, %37, %29, %21, %15
  %209 = load i32, i32* %4, align 4
  ret i32 %209
}

declare dso_local i32 @parse_hide_refs_config(i8*, i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i8* @git_config_int(i8*, i8*) #1

declare dso_local i64 @git_config_pathname(i8**, i8*, i8*) #1

declare dso_local i32 @strbuf_addf(%struct.TYPE_3__*, i8*, i8 signext, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i64 @is_valid_msg_type(i8*, i8*) #1

declare dso_local i32 @warning(i8*, i8*) #1

declare dso_local i8* @parse_deny_action(i8*, i8*) #1

declare dso_local i32 @git_config_string(i32*, i8*, i8*) #1

declare dso_local i32 @git_config_ulong(i8*, i8*) #1

declare dso_local i32 @git_config_int64(i8*, i8*) #1

declare dso_local i32 @git_default_config(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
