; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_add.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.string_list = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.strbuf = type { i32 }
%struct.remote = type { i32 }
%struct.option = type { i8*, i32*, i8*, i32, i32, i32, i32, i32 }

@TAGS_DEFAULT = common dso_local global i32 0, align 4
@MIRROR_NONE = common dso_local global i32 0, align 4
@STRING_LIST_INIT_NODUP = common dso_local global %struct.string_list zeroinitializer, align 8
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"fetch\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"fetch the remote branches\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"import all tags and associated objects when fetching\00", align 1
@TAGS_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"or do not fetch any tag at all (--no-tags)\00", align 1
@TAGS_UNSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"track\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"branch\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"branch(es) to track\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"master\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"master branch\00", align 1
@OPTION_CALLBACK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"mirror\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"(push|fetch)\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"set up remote as a mirror to push to or fetch from\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@PARSE_OPT_COMP_ARG = common dso_local global i32 0, align 4
@parse_mirror_opt = common dso_local global i32 0, align 4
@builtin_remote_add_usage = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [56 x i8] c"specifying a master branch makes no sense with --mirror\00", align 1
@MIRROR_FETCH = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [65 x i8] c"specifying branches to track makes sense only with fetch mirrors\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"remote %s already exists.\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"refs/heads/test:refs/remotes/%s/test\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"'%s' is not a valid remote name\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"remote.%s.url\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"remote.%s.fetch\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@MIRROR_PUSH = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [17 x i8] c"remote.%s.mirror\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"remote.%s.tagopt\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"--no-tags\00", align 1
@.str.26 = private unnamed_addr constant [21 x i8] c"refs/remotes/%s/HEAD\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"refs/remotes/%s/%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"remote add\00", align 1
@.str.29 = private unnamed_addr constant [28 x i8] c"Could not setup master '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.string_list, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.remote*, align 8
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.strbuf, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca [7 x %struct.option], align 16
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* @TAGS_DEFAULT, align 4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @MIRROR_NONE, align 4
  store i32 %19, i32* %8, align 4
  %20 = bitcast %struct.string_list* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.string_list* @STRING_LIST_INIT_NODUP to i8*), i64 16, i1 false)
  store i8* null, i8** %10, align 8
  %21 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %21, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %22 = bitcast %struct.strbuf* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %23 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %24 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  call void @OPT_BOOL(%struct.option* sret %23, float 1.020000e+02, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %6, i32 %24)
  %25 = getelementptr inbounds %struct.option, %struct.option* %23, i64 1
  %26 = call i32 @N_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* @TAGS_SET, align 4
  call void @OPT_SET_INT(%struct.option* sret %25, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32 %26, i32 %27)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %29 = call i32 @N_(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* @TAGS_UNSET, align 4
  call void @OPT_SET_INT(%struct.option* sret %28, i32 0, i8* null, i32* %7, i32 %29, i32 %30)
  %31 = getelementptr inbounds %struct.option, %struct.option* %28, i64 1
  %32 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %33 = call i32 @N_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  call void @OPT_STRING_LIST(%struct.option* sret %31, i8 signext 116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), %struct.string_list* %9, i32 %32, i32 %33)
  %34 = getelementptr inbounds %struct.option, %struct.option* %31, i64 1
  %35 = call i32 @N_(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %36 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  call void @OPT_STRING(%struct.option* sret %34, i8 signext 109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %10, i32 %35, i32 %36)
  %37 = getelementptr inbounds %struct.option, %struct.option* %34, i64 1
  %38 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 0
  %39 = load i32, i32* @OPTION_CALLBACK, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  store i8* %41, i8** %38, align 16
  %42 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %43, align 16
  %44 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 3
  %45 = ptrtoint i32* %8 to i32
  store i32 %45, i32* %44, align 8
  %46 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 4
  store i32 ptrtoint ([13 x i8]* @.str.11 to i32), i32* %46, align 4
  %47 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 5
  %48 = call i32 @N_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  store i32 %48, i32* %47, align 16
  %49 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 6
  %50 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %51 = load i32, i32* @PARSE_OPT_COMP_ARG, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %49, align 4
  %53 = getelementptr inbounds %struct.option, %struct.option* %37, i32 0, i32 7
  %54 = load i32, i32* @parse_mirror_opt, align 4
  store i32 %54, i32* %53, align 8
  %55 = getelementptr inbounds %struct.option, %struct.option* %37, i64 1
  call void (%struct.option*, ...) @OPT_END(%struct.option* sret %55)
  %56 = load i32, i32* %4, align 4
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %59 = load i32, i32* @builtin_remote_add_usage, align 4
  %60 = call i32 @parse_options(i32 %56, i8** %57, i32* null, %struct.option* %58, i32 %59, i32 0)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %67

63:                                               ; preds = %2
  %64 = load i32, i32* @builtin_remote_add_usage, align 4
  %65 = getelementptr inbounds [7 x %struct.option], [7 x %struct.option]* %17, i64 0, i64 0
  %66 = call i32 @usage_with_options(i32 %64, %struct.option* %65)
  br label %67

67:                                               ; preds = %63, %2
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %67
  %71 = load i8*, i8** %10, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = call i32 @_(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  %75 = call i32 (i32, ...) @die(i32 %74)
  br label %76

76:                                               ; preds = %73, %70, %67
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* @MIRROR_FETCH, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 @_(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0))
  %90 = call i32 (i32, ...) @die(i32 %89)
  br label %91

91:                                               ; preds = %88, %84, %79, %76
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  store i8* %94, i8** %14, align 8
  %95 = load i8**, i8*** %5, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i64 1
  %97 = load i8*, i8** %96, align 8
  store i8* %97, i8** %15, align 8
  %98 = load i8*, i8** %14, align 8
  %99 = call %struct.remote* @remote_get(i8* %98)
  store %struct.remote* %99, %struct.remote** %11, align 8
  %100 = load %struct.remote*, %struct.remote** %11, align 8
  %101 = call i64 @remote_is_configured(%struct.remote* %100, i32 1)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %91
  %104 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %105 = load i8*, i8** %14, align 8
  %106 = call i32 (i32, ...) @die(i32 %104, i8* %105)
  br label %107

107:                                              ; preds = %103, %91
  %108 = load i8*, i8** %14, align 8
  %109 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.16, i64 0, i64 0), i8* %108)
  %110 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @valid_fetch_refspec(i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %107
  %115 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %116 = load i8*, i8** %14, align 8
  %117 = call i32 (i32, ...) @die(i32 %115, i8* %116)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load i8*, i8** %14, align 8
  %120 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0), i8* %119)
  %121 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i8*, i8** %15, align 8
  %124 = call i32 @git_config_set(i32 %122, i8* %123)
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @MIRROR_FETCH, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %164

132:                                              ; preds = %127, %118
  %133 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %134 = load i8*, i8** %14, align 8
  %135 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* %134)
  %136 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %132
  %140 = call i32 @string_list_append(%struct.string_list* %9, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %132
  store i32 0, i32* %16, align 4
  br label %142

142:                                              ; preds = %160, %141
  %143 = load i32, i32* %16, align 4
  %144 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %143, %145
  br i1 %146, label %147, label %163

147:                                              ; preds = %142
  %148 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.string_list, %struct.string_list* %9, i32 0, i32 1
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i8*, i8** %14, align 8
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @add_branch(i32 %149, i32 %156, i8* %157, i32 %158, %struct.strbuf* %13)
  br label %160

160:                                              ; preds = %147
  %161 = load i32, i32* %16, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %16, align 4
  br label %142

163:                                              ; preds = %142
  br label %164

164:                                              ; preds = %163, %127
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @MIRROR_PUSH, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %171 = load i8*, i8** %14, align 8
  %172 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0), i8* %171)
  %173 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @git_config_set(i32 %174, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i64 0, i64 0))
  br label %176

176:                                              ; preds = %169, %164
  %177 = load i32, i32* %7, align 4
  %178 = load i32, i32* @TAGS_DEFAULT, align 4
  %179 = icmp ne i32 %177, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %176
  %181 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %182 = load i8*, i8** %14, align 8
  %183 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i8* %182)
  %184 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %7, align 4
  %187 = load i32, i32* @TAGS_SET, align 4
  %188 = icmp eq i32 %186, %187
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.25, i64 0, i64 0)
  %191 = call i32 @git_config_set(i32 %185, i8* %190)
  br label %192

192:                                              ; preds = %180, %176
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %192
  %196 = load i8*, i8** %14, align 8
  %197 = call i64 @fetch_remote(i8* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %200

199:                                              ; preds = %195
  store i32 1, i32* %3, align 4
  br label %226

200:                                              ; preds = %195, %192
  %201 = load i8*, i8** %10, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %222

203:                                              ; preds = %200
  %204 = call i32 @strbuf_reset(%struct.strbuf* %12)
  %205 = load i8*, i8** %14, align 8
  %206 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.26, i64 0, i64 0), i8* %205)
  %207 = call i32 @strbuf_reset(%struct.strbuf* %13)
  %208 = load i8*, i8** %14, align 8
  %209 = load i8*, i8** %10, align 8
  %210 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.27, i64 0, i64 0), i8* %208, i8* %209)
  %211 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %13, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i64 @create_symref(i32 %212, i32 %214, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i64 0, i64 0))
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %203
  %218 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.29, i64 0, i64 0))
  %219 = load i8*, i8** %10, align 8
  %220 = call i32 @error(i32 %218, i8* %219)
  store i32 %220, i32* %3, align 4
  br label %226

221:                                              ; preds = %203
  br label %222

222:                                              ; preds = %221, %200
  %223 = call i32 @strbuf_release(%struct.strbuf* %12)
  %224 = call i32 @strbuf_release(%struct.strbuf* %13)
  %225 = call i32 @string_list_clear(%struct.string_list* %9, i32 0)
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %222, %217, %199
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @OPT_BOOL(%struct.option* sret, float, i8*, i32*, i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local void @OPT_SET_INT(%struct.option* sret, i32, i8*, i32*, i32, i32) #2

declare dso_local void @OPT_STRING_LIST(%struct.option* sret, i8 signext, i8*, %struct.string_list*, i32, i32) #2

declare dso_local void @OPT_STRING(%struct.option* sret, i8 signext, i8*, i8**, i32, i32) #2

declare dso_local void @OPT_END(%struct.option* sret, ...) #2

declare dso_local i32 @parse_options(i32, i8**, i32*, %struct.option*, i32, i32) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @die(i32, ...) #2

declare dso_local i32 @_(i8*) #2

declare dso_local %struct.remote* @remote_get(i8*) #2

declare dso_local i64 @remote_is_configured(%struct.remote*, i32) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i32 @valid_fetch_refspec(i32) #2

declare dso_local i32 @git_config_set(i32, i8*) #2

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #2

declare dso_local i32 @string_list_append(%struct.string_list*, i8*) #2

declare dso_local i32 @add_branch(i32, i32, i8*, i32, %struct.strbuf*) #2

declare dso_local i64 @fetch_remote(i8*) #2

declare dso_local i64 @create_symref(i32, i32, i8*) #2

declare dso_local i32 @error(i32, i8*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @string_list_clear(%struct.string_list*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
