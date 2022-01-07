; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_rebase.c_read_basic_state.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_rebase.c_read_basic_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.rebase_options = type { i32, i32*, i32*, i32*, i32, i32, %struct.object_id, i32, i32* }
%struct.object_id = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [10 x i8] c"head-name\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"onto\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"refs/\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"could not get 'onto': '%s'\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"orig-head\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"head\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"invalid orig-head: '%s'\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@REBASE_NO_QUIET = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@REBASE_VERBOSE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"signoff\00", align 1
@REBASE_FORCE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [24 x i8] c"allow_rerere_autoupdate\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"--rerere-autoupdate\00", align 1
@RERERE_AUTOUPDATE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"--no-rerere-autoupdate\00", align 1
@RERERE_NOAUTOUPDATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"ignoring invalid allow_rerere_autoupdate: '%s'\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"gpg_sign_opt\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"strategy\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"strategy_opts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rebase_options*)* @read_basic_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_basic_state(%struct.rebase_options* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rebase_options*, align 8
  %4 = alloca %struct.strbuf, align 4
  %5 = alloca %struct.strbuf, align 4
  %6 = alloca %struct.object_id, align 4
  store %struct.rebase_options* %0, %struct.rebase_options** %3, align 8
  %7 = bitcast %struct.strbuf* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %8 = bitcast %struct.strbuf* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %9 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %10 = call i32 @state_dir_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.rebase_options* %9)
  %11 = call i64 @read_one(i32 %10, %struct.strbuf* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %15 = call i32 @state_dir_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.rebase_options* %14)
  %16 = call i64 @read_one(i32 %15, %struct.strbuf* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  store i32 -1, i32* %2, align 4
  br label %227

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @starts_with(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %4, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @xstrdup(i32 %26)
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %24
  %30 = phi i32* [ %27, %24 ], [ null, %28 ]
  %31 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %32 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %31, i32 0, i32 8
  store i32* %30, i32** %32, align 8
  %33 = call i32 @strbuf_release(%struct.strbuf* %4)
  %34 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @get_oid(i32 %35, %struct.object_id* %6)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %29
  %39 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @error(i32 %39, i32 %41)
  store i32 %42, i32* %2, align 4
  br label %227

43:                                               ; preds = %29
  %44 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @lookup_commit_or_die(%struct.object_id* %6, i32 %45)
  %47 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %48 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %50 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %51 = call i32 @state_dir_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.rebase_options* %50)
  %52 = call i64 @file_exists(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %43
  %55 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %56 = call i32 @state_dir_path(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), %struct.rebase_options* %55)
  %57 = call i64 @read_one(i32 %56, %struct.strbuf* %5)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %227

60:                                               ; preds = %54
  br label %68

61:                                               ; preds = %43
  %62 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %63 = call i32 @state_dir_path(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), %struct.rebase_options* %62)
  %64 = call i64 @read_one(i32 %63, %struct.strbuf* %5)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 -1, i32* %2, align 4
  br label %227

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %60
  %69 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %72 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %71, i32 0, i32 6
  %73 = call i64 @get_oid(i32 %70, %struct.object_id* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = call i32 @_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @error(i32 %76, i32 %78)
  store i32 %79, i32* %2, align 4
  br label %227

80:                                               ; preds = %68
  %81 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %82 = call i32 @state_dir_path(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), %struct.rebase_options* %81)
  %83 = call i64 @file_exists(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i32, i32* @REBASE_NO_QUIET, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %89 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %88, i32 0, i32 5
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %98

92:                                               ; preds = %80
  %93 = load i32, i32* @REBASE_NO_QUIET, align 4
  %94 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %95 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %92, %85
  %99 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %100 = call i32 @state_dir_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), %struct.rebase_options* %99)
  %101 = call i64 @file_exists(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %98
  %104 = load i32, i32* @REBASE_VERBOSE, align 4
  %105 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %106 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %103, %98
  %110 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %111 = call i32 @state_dir_path(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), %struct.rebase_options* %110)
  %112 = call i64 @file_exists(i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %109
  %115 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %116 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load i32, i32* @REBASE_FORCE, align 4
  %118 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %119 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %114, %109
  %123 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %124 = call i32 @state_dir_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), %struct.rebase_options* %123)
  %125 = call i64 @file_exists(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %159

127:                                              ; preds = %122
  %128 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %129 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %130 = call i32 @state_dir_path(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), %struct.rebase_options* %129)
  %131 = call i64 @read_one(i32 %130, %struct.strbuf* %5)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %127
  store i32 -1, i32* %2, align 4
  br label %227

134:                                              ; preds = %127
  %135 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @strcmp(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %143, label %139

139:                                              ; preds = %134
  %140 = load i32, i32* @RERERE_AUTOUPDATE, align 4
  %141 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %142 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  br label %158

143:                                              ; preds = %134
  %144 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @strcmp(i32 %145, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* @RERERE_NOAUTOUPDATE, align 4
  %150 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %151 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 8
  br label %157

152:                                              ; preds = %143
  %153 = call i32 @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  %154 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @warning(i32 %153, i32 %155)
  br label %157

157:                                              ; preds = %152, %148
  br label %158

158:                                              ; preds = %157, %139
  br label %159

159:                                              ; preds = %158, %122
  %160 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %161 = call i32 @state_dir_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), %struct.rebase_options* %160)
  %162 = call i64 @file_exists(i32 %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %181

164:                                              ; preds = %159
  %165 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %166 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %167 = call i32 @state_dir_path(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), %struct.rebase_options* %166)
  %168 = call i64 @read_one(i32 %167, %struct.strbuf* %5)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %164
  store i32 -1, i32* %2, align 4
  br label %227

171:                                              ; preds = %164
  %172 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %173 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %172, i32 0, i32 3
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @free(i32* %174)
  %176 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32* @xstrdup(i32 %177)
  %179 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %180 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %179, i32 0, i32 3
  store i32* %178, i32** %180, align 8
  br label %181

181:                                              ; preds = %171, %159
  %182 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %183 = call i32 @state_dir_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %struct.rebase_options* %182)
  %184 = call i64 @file_exists(i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %181
  %187 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %188 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %189 = call i32 @state_dir_path(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), %struct.rebase_options* %188)
  %190 = call i64 @read_one(i32 %189, %struct.strbuf* %5)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  store i32 -1, i32* %2, align 4
  br label %227

193:                                              ; preds = %186
  %194 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %195 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %194, i32 0, i32 2
  %196 = load i32*, i32** %195, align 8
  %197 = call i32 @free(i32* %196)
  %198 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32* @xstrdup(i32 %199)
  %201 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %202 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %201, i32 0, i32 2
  store i32* %200, i32** %202, align 8
  br label %203

203:                                              ; preds = %193, %181
  %204 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %205 = call i32 @state_dir_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), %struct.rebase_options* %204)
  %206 = call i64 @file_exists(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %225

208:                                              ; preds = %203
  %209 = call i32 @strbuf_reset(%struct.strbuf* %5)
  %210 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %211 = call i32 @state_dir_path(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0), %struct.rebase_options* %210)
  %212 = call i64 @read_one(i32 %211, %struct.strbuf* %5)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  store i32 -1, i32* %2, align 4
  br label %227

215:                                              ; preds = %208
  %216 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %217 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @free(i32* %218)
  %220 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %5, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32* @xstrdup(i32 %221)
  %223 = load %struct.rebase_options*, %struct.rebase_options** %3, align 8
  %224 = getelementptr inbounds %struct.rebase_options, %struct.rebase_options* %223, i32 0, i32 1
  store i32* %222, i32** %224, align 8
  br label %225

225:                                              ; preds = %215, %203
  %226 = call i32 @strbuf_release(%struct.strbuf* %5)
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %225, %214, %192, %170, %133, %75, %66, %59, %38, %18
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @read_one(i32, %struct.strbuf*) #2

declare dso_local i32 @state_dir_path(i8*, %struct.rebase_options*) #2

declare dso_local i64 @starts_with(i32, i8*) #2

declare dso_local i32* @xstrdup(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i64 @get_oid(i32, %struct.object_id*) #2

declare dso_local i32 @error(i32, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @lookup_commit_or_die(%struct.object_id*, i32) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i64 @file_exists(i32) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @warning(i32, i32) #2

declare dso_local i32 @free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
