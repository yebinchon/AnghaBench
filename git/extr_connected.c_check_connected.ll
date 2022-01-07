; ModuleID = '/home/carl/AnghaBench/git/extr_connected.c_check_connected.c'
source_filename = "/home/carl/AnghaBench/git/extr_connected.c_check_connected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.child_process = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.check_connected_options = type { i32, i8*, i32, i32, i64, i32, i64, %struct.transport* }
%struct.transport = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.strbuf = type { i32, i32 }
%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }

@CHILD_PROCESS_INIT = common dso_local global %struct.child_process zeroinitializer, align 4
@CHECK_CONNECTED_INIT = common dso_local global %struct.check_connected_options zeroinitializer, align 8
@GIT_MAX_HEXSZ = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [6 x i8] c".keep\00", align 1
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c".idx\00", align 1
@the_repository = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"--shallow-file\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"rev-list\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"--objects\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"--exclude-promisor-objects\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"--not\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"--all\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"--quiet\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"--alternate-refs\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"--progress=%s\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"Checking connectivity\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Could not run 'git rev-list'\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [25 x i8] c"failed write to rev-list\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"failed to close rev-list's stdin\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_connected(i64 (i8*, %struct.object_id*)* %0, i8* %1, %struct.check_connected_options* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64 (i8*, %struct.object_id*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.check_connected_options*, align 8
  %8 = alloca %struct.child_process, align 4
  %9 = alloca %struct.check_connected_options, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.object_id, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.packed_git*, align 8
  %15 = alloca %struct.transport*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.strbuf, align 4
  store i64 (i8*, %struct.object_id*)* %0, i64 (i8*, %struct.object_id*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.check_connected_options* %2, %struct.check_connected_options** %7, align 8
  %20 = bitcast %struct.child_process* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast (%struct.child_process* @CHILD_PROCESS_INIT to i8*), i64 28, i1 false)
  %21 = bitcast %struct.check_connected_options* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 bitcast (%struct.check_connected_options* @CHECK_CONNECTED_INIT to i8*), i64 56, i1 false)
  %22 = load i32, i32* @GIT_MAX_HEXSZ, align 4
  %23 = add nsw i32 %22, 1
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %10, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  store i32 0, i32* %13, align 4
  store %struct.packed_git* null, %struct.packed_git** %14, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** @the_hash_algo, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  %30 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %31 = icmp ne %struct.check_connected_options* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store %struct.check_connected_options* %9, %struct.check_connected_options** %7, align 8
  br label %33

33:                                               ; preds = %32, %3
  %34 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %35 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %34, i32 0, i32 7
  %36 = load %struct.transport*, %struct.transport** %35, align 8
  store %struct.transport* %36, %struct.transport** %15, align 8
  %37 = load i64 (i8*, %struct.object_id*)*, i64 (i8*, %struct.object_id*)** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 %37(i8* %38, %struct.object_id* %12)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %33
  %42 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %43 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %48 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @close(i32 %49)
  br label %51

51:                                               ; preds = %46, %41
  %52 = load i32, i32* %13, align 4
  store i32 %52, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %253

53:                                               ; preds = %33
  %54 = load %struct.transport*, %struct.transport** %15, align 8
  %55 = icmp ne %struct.transport* %54, null
  br i1 %55, label %56, label %93

56:                                               ; preds = %53
  %57 = load %struct.transport*, %struct.transport** %15, align 8
  %58 = getelementptr inbounds %struct.transport, %struct.transport* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = icmp ne %struct.TYPE_3__* %59, null
  br i1 %60, label %61, label %93

61:                                               ; preds = %56
  %62 = load %struct.transport*, %struct.transport** %15, align 8
  %63 = getelementptr inbounds %struct.transport, %struct.transport* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  %69 = load %struct.transport*, %struct.transport** %15, align 8
  %70 = getelementptr inbounds %struct.transport, %struct.transport* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %68
  %74 = load %struct.transport*, %struct.transport** %15, align 8
  %75 = getelementptr inbounds %struct.transport, %struct.transport* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @strip_suffix(i64 %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %16)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %73
  %80 = bitcast %struct.strbuf* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %81 = load %struct.transport*, %struct.transport** %15, align 8
  %82 = getelementptr inbounds %struct.transport, %struct.transport* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @strbuf_add(%struct.strbuf* %19, i64 %83, i64 %84)
  %86 = call i32 @strbuf_addstr(%struct.strbuf* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %87 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %19, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.packed_git* @add_packed_git(i32 %88, i32 %90, i32 1)
  store %struct.packed_git* %91, %struct.packed_git** %14, align 8
  %92 = call i32 @strbuf_release(%struct.strbuf* %19)
  br label %93

93:                                               ; preds = %79, %73, %68, %61, %56, %53
  %94 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %95 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %105, %98
  %100 = load i32, i32* @the_repository, align 4
  %101 = call i32 @repo_has_object_file(i32 %100, %struct.object_id* %12)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  store i32 1, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %253

104:                                              ; preds = %99
  br label %105

105:                                              ; preds = %104
  %106 = load i64 (i8*, %struct.object_id*)*, i64 (i8*, %struct.object_id*)** %5, align 8
  %107 = load i8*, i8** %6, align 8
  %108 = call i64 %106(i8* %107, %struct.object_id* %12)
  %109 = icmp ne i64 %108, 0
  %110 = xor i1 %109, true
  br i1 %110, label %99, label %111

111:                                              ; preds = %105
  store i32 0, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %253

112:                                              ; preds = %93
  %113 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %114 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %119 = call i32 @argv_array_push(i32* %118, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %120 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %121 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %122 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 @argv_array_push(i32* %120, i8* %123)
  br label %125

125:                                              ; preds = %117, %112
  %126 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %127 = call i32 @argv_array_push(i32* %126, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %128 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %129 = call i32 @argv_array_push(i32* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %130 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %131 = call i32 @argv_array_push(i32* %130, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %132 = call i64 (...) @has_promisor_remote()
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %125
  %135 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %136 = call i32 @argv_array_push(i32* %135, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %137

137:                                              ; preds = %134, %125
  %138 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %139 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %147, label %142

142:                                              ; preds = %137
  %143 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %144 = call i32 @argv_array_push(i32* %143, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %145 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %146 = call i32 @argv_array_push(i32* %145, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %142, %137
  %148 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %149 = call i32 @argv_array_push(i32* %148, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %150 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %151 = call i32 @argv_array_push(i32* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %152 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %153 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %152, i32 0, i32 4
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 6
  %158 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0))
  %159 = call i32 @argv_array_pushf(i32* %157, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %158)
  br label %160

160:                                              ; preds = %156, %147
  %161 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 0
  store i32 1, i32* %161, align 4
  %162 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %163 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 5
  store i32 %164, i32* %165, align 4
  %166 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  store i32 -1, i32* %166, align 4
  %167 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 2
  store i32 1, i32* %167, align 4
  %168 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %169 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %160
  %173 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %174 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 3
  store i32 %175, i32* %176, align 4
  br label %182

177:                                              ; preds = %160
  %178 = load %struct.check_connected_options*, %struct.check_connected_options** %7, align 8
  %179 = getelementptr inbounds %struct.check_connected_options, %struct.check_connected_options* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 4
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %177, %172
  %183 = call i64 @start_command(%struct.child_process* %8)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %187 = call i32 @error(i32 %186)
  store i32 %187, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %253

188:                                              ; preds = %182
  %189 = load i32, i32* @SIGPIPE, align 4
  %190 = load i32, i32* @SIG_IGN, align 4
  %191 = call i32 @sigchain_push(i32 %189, i32 %190)
  %192 = load i32, i32* %17, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %26, i64 %193
  store i8 10, i8* %194, align 1
  br label %195

195:                                              ; preds = %228, %188
  %196 = load %struct.packed_git*, %struct.packed_git** %14, align 8
  %197 = icmp ne %struct.packed_git* %196, null
  br i1 %197, label %198, label %205

198:                                              ; preds = %195
  %199 = getelementptr inbounds %struct.object_id, %struct.object_id* %12, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.packed_git*, %struct.packed_git** %14, align 8
  %202 = call i64 @find_pack_entry_one(i32 %200, %struct.packed_git* %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %228

205:                                              ; preds = %198, %195
  %206 = call i32 @oid_to_hex(%struct.object_id* %12)
  %207 = load i32, i32* %17, align 4
  %208 = call i32 @memcpy(i8* %26, i32 %206, i32 %207)
  %209 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* %17, align 4
  %212 = add i32 %211, 1
  %213 = call i64 @write_in_full(i32 %210, i8* %26, i32 %212)
  %214 = icmp slt i64 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %205
  %216 = load i64, i64* @errno, align 8
  %217 = load i64, i64* @EPIPE, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %215
  %220 = load i64, i64* @errno, align 8
  %221 = load i64, i64* @EINVAL, align 8
  %222 = icmp ne i64 %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0))
  %225 = call i32 @error_errno(i32 %224)
  br label %226

226:                                              ; preds = %223, %219, %215
  store i32 -1, i32* %13, align 4
  br label %234

227:                                              ; preds = %205
  br label %228

228:                                              ; preds = %227, %204
  %229 = load i64 (i8*, %struct.object_id*)*, i64 (i8*, %struct.object_id*)** %5, align 8
  %230 = load i8*, i8** %6, align 8
  %231 = call i64 %229(i8* %230, %struct.object_id* %12)
  %232 = icmp ne i64 %231, 0
  %233 = xor i1 %232, true
  br i1 %233, label %195, label %234

234:                                              ; preds = %228, %226
  %235 = getelementptr inbounds %struct.child_process, %struct.child_process* %8, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = call i64 @close(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %242

239:                                              ; preds = %234
  %240 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %241 = call i32 @error_errno(i32 %240)
  store i32 %241, i32* %13, align 4
  br label %242

242:                                              ; preds = %239, %234
  %243 = load i32, i32* @SIGPIPE, align 4
  %244 = call i32 @sigchain_pop(i32 %243)
  %245 = call i64 @finish_command(%struct.child_process* %8)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %242
  %248 = load i32, i32* %13, align 4
  %249 = icmp ne i32 %248, 0
  br label %250

250:                                              ; preds = %247, %242
  %251 = phi i1 [ true, %242 ], [ %249, %247 ]
  %252 = zext i1 %251 to i32
  store i32 %252, i32* %4, align 4
  store i32 1, i32* %18, align 4
  br label %253

253:                                              ; preds = %250, %185, %111, %103, %51
  %254 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %254)
  %255 = load i32, i32* %4, align 4
  ret i32 %255
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @close(i32) #3

declare dso_local i64 @strip_suffix(i64, i8*, i64*) #3

declare dso_local i32 @strbuf_add(%struct.strbuf*, i64, i64) #3

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #3

declare dso_local %struct.packed_git* @add_packed_git(i32, i32, i32) #3

declare dso_local i32 @strbuf_release(%struct.strbuf*) #3

declare dso_local i32 @repo_has_object_file(i32, %struct.object_id*) #3

declare dso_local i32 @argv_array_push(i32*, i8*) #3

declare dso_local i64 @has_promisor_remote(...) #3

declare dso_local i32 @argv_array_pushf(i32*, i8*, i32) #3

declare dso_local i32 @_(i8*) #3

declare dso_local i64 @start_command(%struct.child_process*) #3

declare dso_local i32 @error(i32) #3

declare dso_local i32 @sigchain_push(i32, i32) #3

declare dso_local i64 @find_pack_entry_one(i32, %struct.packed_git*) #3

declare dso_local i32 @memcpy(i8*, i32, i32) #3

declare dso_local i32 @oid_to_hex(%struct.object_id*) #3

declare dso_local i64 @write_in_full(i32, i8*, i32) #3

declare dso_local i32 @error_errno(i32) #3

declare dso_local i32 @sigchain_pop(i32) #3

declare dso_local i64 @finish_command(%struct.child_process*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
