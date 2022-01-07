; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_git_status_config.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_git_status_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.wt_status = type { i32, i32, i32, i32, i8*, i32*, i8*, i32, i8*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"column.\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"status.submodulesummary\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"status.short\00", align 1
@STATUS_FORMAT_SHORT = common dso_local global i32 0, align 4
@status_deferred_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@STATUS_FORMAT_NONE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"status.branch\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"status.aheadbehind\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"status.showstash\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"status.color\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"color.status\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"status.displaycommentprefix\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"status.color.\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"color.status.\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"status.relativepaths\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"status.showuntrackedfiles\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@SHOW_NO_UNTRACKED_FILES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@SHOW_NORMAL_UNTRACKED_FILES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@SHOW_ALL_UNTRACKED_FILES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [34 x i8] c"Invalid untracked files mode '%s'\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"diff.renamelimit\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"status.renamelimit\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"diff.renames\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"status.renames\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @git_status_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @git_status_config(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.wt_status*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.wt_status*
  store %struct.wt_status* %13, %struct.wt_status** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @starts_with(i8* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %21 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %20, i32 0, i32 9
  %22 = call i32 @git_column_config(i8* %18, i8* %19, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %21)
  store i32 %22, i32* %4, align 4
  br label %250

23:                                               ; preds = %3
  %24 = load i8*, i8** %5, align 8
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %44, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @git_config_bool_or_int(i8* %28, i8* %29, i32* %10)
  %31 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %32 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %27
  %36 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %37 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %42 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %35, %27
  store i32 0, i32* %4, align 4
  br label %250

44:                                               ; preds = %23
  %45 = load i8*, i8** %5, align 8
  %46 = call i32 @strcmp(i8* %45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i8* @git_config_bool(i8* %49, i8* %50)
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @STATUS_FORMAT_SHORT, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @status_deferred_config, i32 0, i32 2), align 8
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @STATUS_FORMAT_NONE, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @status_deferred_config, i32 0, i32 2), align 8
  br label %57

57:                                               ; preds = %55, %53
  store i32 0, i32* %4, align 4
  br label %250

58:                                               ; preds = %44
  %59 = load i8*, i8** %5, align 8
  %60 = call i32 @strcmp(i8* %59, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i8* @git_config_bool(i8* %63, i8* %64)
  store i8* %65, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @status_deferred_config, i32 0, i32 1), align 8
  store i32 0, i32* %4, align 4
  br label %250

66:                                               ; preds = %58
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @strcmp(i8* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %66
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = call i8* @git_config_bool(i8* %71, i8* %72)
  store i8* %73, i8** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @status_deferred_config, i32 0, i32 0), align 8
  store i32 0, i32* %4, align 4
  br label %250

74:                                               ; preds = %66
  %75 = load i8*, i8** %5, align 8
  %76 = call i32 @strcmp(i8* %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0))
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %84, label %78

78:                                               ; preds = %74
  %79 = load i8*, i8** %5, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i8* @git_config_bool(i8* %79, i8* %80)
  %82 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %83 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %82, i32 0, i32 8
  store i8* %81, i8** %83, align 8
  store i32 0, i32* %4, align 4
  br label %250

84:                                               ; preds = %74
  %85 = load i8*, i8** %5, align 8
  %86 = call i32 @strcmp(i8* %85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = load i8*, i8** %5, align 8
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %88, %84
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @git_config_colorbool(i8* %93, i8* %94)
  %96 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %97 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %96, i32 0, i32 7
  store i32 %95, i32* %97, align 8
  store i32 0, i32* %4, align 4
  br label %250

98:                                               ; preds = %88
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @strcmp(i8* %99, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i8* @git_config_bool(i8* %103, i8* %104)
  %106 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %107 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %106, i32 0, i32 6
  store i8* %105, i8** %107, align 8
  store i32 0, i32* %4, align 4
  br label %250

108:                                              ; preds = %98
  %109 = load i8*, i8** %5, align 8
  %110 = call i64 @skip_prefix(i8* %109, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8** %9)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %108
  %113 = load i8*, i8** %5, align 8
  %114 = call i64 @skip_prefix(i8* %113, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i8** %9)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %112, %108
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @parse_status_slot(i8* %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %116
  store i32 0, i32* %4, align 4
  br label %250

122:                                              ; preds = %116
  %123 = load i8*, i8** %6, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i8*, i8** %5, align 8
  %127 = call i32 @config_error_nonbool(i8* %126)
  store i32 %127, i32* %4, align 4
  br label %250

128:                                              ; preds = %122
  %129 = load i8*, i8** %6, align 8
  %130 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %131 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %130, i32 0, i32 5
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @color_parse(i8* %129, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %250

138:                                              ; preds = %112
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 @strcmp(i8* %139, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %138
  %143 = load i8*, i8** %5, align 8
  %144 = load i8*, i8** %6, align 8
  %145 = call i8* @git_config_bool(i8* %143, i8* %144)
  %146 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %147 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  store i32 0, i32* %4, align 4
  br label %250

148:                                              ; preds = %138
  %149 = load i8*, i8** %5, align 8
  %150 = call i32 @strcmp(i8* %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %190, label %152

152:                                              ; preds = %148
  %153 = load i8*, i8** %6, align 8
  %154 = icmp ne i8* %153, null
  br i1 %154, label %158, label %155

155:                                              ; preds = %152
  %156 = load i8*, i8** %5, align 8
  %157 = call i32 @config_error_nonbool(i8* %156)
  store i32 %157, i32* %4, align 4
  br label %250

158:                                              ; preds = %152
  %159 = load i8*, i8** %6, align 8
  %160 = call i32 @strcmp(i8* %159, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %158
  %163 = load i32, i32* @SHOW_NO_UNTRACKED_FILES, align 4
  %164 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %165 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %164, i32 0, i32 3
  store i32 %163, i32* %165, align 4
  br label %188

166:                                              ; preds = %158
  %167 = load i8*, i8** %6, align 8
  %168 = call i32 @strcmp(i8* %167, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %174, label %170

170:                                              ; preds = %166
  %171 = load i32, i32* @SHOW_NORMAL_UNTRACKED_FILES, align 4
  %172 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %173 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 4
  br label %187

174:                                              ; preds = %166
  %175 = load i8*, i8** %6, align 8
  %176 = call i32 @strcmp(i8* %175, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0))
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %174
  %179 = load i32, i32* @SHOW_ALL_UNTRACKED_FILES, align 4
  %180 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %181 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  br label %186

182:                                              ; preds = %174
  %183 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0))
  %184 = load i8*, i8** %6, align 8
  %185 = call i32 @error(i32 %183, i8* %184)
  store i32 %185, i32* %4, align 4
  br label %250

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %170
  br label %188

188:                                              ; preds = %187, %162
  br label %189

189:                                              ; preds = %188
  store i32 0, i32* %4, align 4
  br label %250

190:                                              ; preds = %148
  %191 = load i8*, i8** %5, align 8
  %192 = call i32 @strcmp(i8* %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0))
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %207, label %194

194:                                              ; preds = %190
  %195 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %196 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load i8*, i8** %5, align 8
  %201 = load i8*, i8** %6, align 8
  %202 = call i8* @git_config_int(i8* %200, i8* %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %205 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  br label %206

206:                                              ; preds = %199, %194
  store i32 0, i32* %4, align 4
  br label %250

207:                                              ; preds = %190
  %208 = load i8*, i8** %5, align 8
  %209 = call i32 @strcmp(i8* %208, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %218, label %211

211:                                              ; preds = %207
  %212 = load i8*, i8** %5, align 8
  %213 = load i8*, i8** %6, align 8
  %214 = call i8* @git_config_int(i8* %212, i8* %213)
  %215 = ptrtoint i8* %214 to i32
  %216 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %217 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  store i32 0, i32* %4, align 4
  br label %250

218:                                              ; preds = %207
  %219 = load i8*, i8** %5, align 8
  %220 = call i32 @strcmp(i8* %219, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %235, label %222

222:                                              ; preds = %218
  %223 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %224 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = icmp eq i32 %225, -1
  br i1 %226, label %227, label %234

227:                                              ; preds = %222
  %228 = load i8*, i8** %5, align 8
  %229 = load i8*, i8** %6, align 8
  %230 = call i8* @git_config_rename(i8* %228, i8* %229)
  %231 = ptrtoint i8* %230 to i32
  %232 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %233 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %232, i32 0, i32 2
  store i32 %231, i32* %233, align 8
  br label %234

234:                                              ; preds = %227, %222
  store i32 0, i32* %4, align 4
  br label %250

235:                                              ; preds = %218
  %236 = load i8*, i8** %5, align 8
  %237 = call i32 @strcmp(i8* %236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0))
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %246, label %239

239:                                              ; preds = %235
  %240 = load i8*, i8** %5, align 8
  %241 = load i8*, i8** %6, align 8
  %242 = call i8* @git_config_rename(i8* %240, i8* %241)
  %243 = ptrtoint i8* %242 to i32
  %244 = load %struct.wt_status*, %struct.wt_status** %8, align 8
  %245 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  store i32 0, i32* %4, align 4
  br label %250

246:                                              ; preds = %235
  %247 = load i8*, i8** %5, align 8
  %248 = load i8*, i8** %6, align 8
  %249 = call i32 @git_diff_ui_config(i8* %247, i8* %248, i32* null)
  store i32 %249, i32* %4, align 4
  br label %250

250:                                              ; preds = %246, %239, %234, %211, %206, %189, %182, %155, %142, %128, %125, %121, %102, %92, %78, %70, %62, %57, %43, %17
  %251 = load i32, i32* %4, align 4
  ret i32 %251
}

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i32 @git_column_config(i8*, i8*, i8*, i32*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @git_config_bool_or_int(i8*, i8*, i32*) #1

declare dso_local i8* @git_config_bool(i8*, i8*) #1

declare dso_local i32 @git_config_colorbool(i8*, i8*) #1

declare dso_local i64 @skip_prefix(i8*, i8*, i8**) #1

declare dso_local i32 @parse_status_slot(i8*) #1

declare dso_local i32 @config_error_nonbool(i8*) #1

declare dso_local i32 @color_parse(i8*, i32) #1

declare dso_local i32 @error(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @git_config_int(i8*, i8*) #1

declare dso_local i8* @git_config_rename(i8*, i8*) #1

declare dso_local i32 @git_diff_ui_config(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
