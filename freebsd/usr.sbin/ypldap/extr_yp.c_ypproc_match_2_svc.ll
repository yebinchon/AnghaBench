; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_match_2_svc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_yp.c_ypproc_match_2_svc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_val = type { i8* }
%struct.TYPE_7__ = type { i32, i32*, i32, i32* }
%struct.TYPE_6__ = type { i8*, i8*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.svc_req = type { i32 }
%struct.userent = type { i8*, i8*, i8*, i8*, i8* }
%struct.groupent = type { i8*, i8*, i8*, i8*, i8* }

@ypproc_match_2_svc.res = internal global %struct.ypresp_val zeroinitializer, align 8
@.str = private unnamed_addr constant [26 x i8] c"matching '%.*s' in map %s\00", align 1
@env = common dso_local global %struct.TYPE_7__* null, align 8
@YPMAXRECORD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"argument too long\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"passwd.byname\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"master.passwd.byname\00", align 1
@user_name_tree = common dso_local global i32 0, align 4
@YP_NOKEY = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"passwd.byuid\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"master.passwd.byuid\00", align 1
@UID_MAX = common dso_local global i32 0, align 4
@YP_BADARGS = common dso_local global i8* null, align 8
@user_uid_tree = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"group.bygid\00", align 1
@GID_MAX = common dso_local global i32 0, align 4
@group_gid_tree = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"group.byname\00", align 1
@group_name_tree = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"netid.byname\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"unix.\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"unknown map %s\00", align 1
@YP_NOMAP = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ypresp_val* @ypproc_match_2_svc(%struct.TYPE_6__* %0, %struct.svc_req* %1) #0 {
  %3 = alloca %struct.ypresp_val*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.svc_req*, align 8
  %6 = alloca %struct.userent, align 8
  %7 = alloca %struct.userent*, align 8
  %8 = alloca %struct.groupent, align 8
  %9 = alloca %struct.groupent*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.svc_req* %1, %struct.svc_req** %5, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %21, i8* %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @yp_valid_domain(i8* %28, %struct.ypresp_val* @ypproc_match_2_svc.res)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store %struct.ypresp_val* @ypproc_match_2_svc.res, %struct.ypresp_val** %3, align 8
  br label %253

32:                                               ; preds = %2
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store %struct.ypresp_val* null, %struct.ypresp_val** %3, align 8
  br label %253

38:                                               ; preds = %32
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @YPMAXRECORD, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store %struct.ypresp_val* null, %struct.ypresp_val** %3, align 8
  br label %253

47:                                               ; preds = %38
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  %53 = call i8* @calloc(i32 %52, i32 1)
  store i8* %53, i8** %13, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %47
  store %struct.ypresp_val* null, %struct.ypresp_val** %3, align 8
  br label %253

57:                                               ; preds = %47
  %58 = load i8*, i8** %13, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @strncpy(i8* %58, i32 %62, i32 %66)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %57
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i64 @strcmp(i8* %76, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %95

79:                                               ; preds = %73, %57
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds %struct.userent, %struct.userent* %6, i32 0, i32 0
  store i8* %80, i8** %81, align 8
  %82 = load i32, i32* @user_name_tree, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = call %struct.userent* @RB_FIND(i32 %82, i32* %85, %struct.userent* %6)
  store %struct.userent* %86, %struct.userent** %7, align 8
  %87 = icmp eq %struct.userent* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = load i8*, i8** @YP_NOKEY, align 8
  store i8* %89, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

90:                                               ; preds = %79
  %91 = load %struct.userent*, %struct.userent** %7, align 8
  %92 = getelementptr inbounds %struct.userent, %struct.userent* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @yp_make_val(%struct.ypresp_val* @ypproc_match_2_svc.res, i8* %93, i32 1)
  br label %250

95:                                               ; preds = %73
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i64 @strcmp(i8* %98, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %129

107:                                              ; preds = %101, %95
  %108 = load i8*, i8** %13, align 8
  %109 = load i32, i32* @UID_MAX, align 4
  %110 = call i8* @strtonum(i8* %108, i32 0, i32 %109, i8** %10)
  %111 = getelementptr inbounds %struct.userent, %struct.userent* %6, i32 0, i32 3
  store i8* %110, i8** %111, align 8
  %112 = load i8*, i8** %10, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %107
  %115 = load i8*, i8** @YP_BADARGS, align 8
  store i8* %115, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

116:                                              ; preds = %107
  %117 = load i32, i32* @user_uid_tree, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = call %struct.userent* @RB_FIND(i32 %117, i32* %119, %struct.userent* %6)
  store %struct.userent* %120, %struct.userent** %7, align 8
  %121 = icmp eq %struct.userent* %120, null
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i8*, i8** @YP_NOKEY, align 8
  store i8* %123, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

124:                                              ; preds = %116
  %125 = load %struct.userent*, %struct.userent** %7, align 8
  %126 = getelementptr inbounds %struct.userent, %struct.userent* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @yp_make_val(%struct.ypresp_val* @ypproc_match_2_svc.res, i8* %127, i32 1)
  store %struct.ypresp_val* @ypproc_match_2_svc.res, %struct.ypresp_val** %3, align 8
  br label %253

129:                                              ; preds = %101
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i64 @strcmp(i8* %132, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %129
  %136 = load i8*, i8** %13, align 8
  %137 = load i32, i32* @GID_MAX, align 4
  %138 = call i8* @strtonum(i8* %136, i32 0, i32 %137, i8** %10)
  %139 = getelementptr inbounds %struct.groupent, %struct.groupent* %8, i32 0, i32 4
  store i8* %138, i8** %139, align 8
  %140 = load i8*, i8** %10, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i8*, i8** @YP_BADARGS, align 8
  store i8* %143, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

144:                                              ; preds = %135
  %145 = load i32, i32* @group_gid_tree, align 4
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 2
  %148 = bitcast %struct.groupent* %8 to %struct.userent*
  %149 = call %struct.userent* @RB_FIND(i32 %145, i32* %147, %struct.userent* %148)
  %150 = bitcast %struct.userent* %149 to %struct.groupent*
  store %struct.groupent* %150, %struct.groupent** %9, align 8
  %151 = icmp eq %struct.groupent* %150, null
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i8*, i8** @YP_NOKEY, align 8
  store i8* %153, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

154:                                              ; preds = %144
  %155 = load %struct.groupent*, %struct.groupent** %9, align 8
  %156 = getelementptr inbounds %struct.groupent, %struct.groupent* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @yp_make_val(%struct.ypresp_val* @ypproc_match_2_svc.res, i8* %157, i32 1)
  store %struct.ypresp_val* @ypproc_match_2_svc.res, %struct.ypresp_val** %3, align 8
  br label %253

159:                                              ; preds = %129
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 0
  %162 = load i8*, i8** %161, align 8
  %163 = call i64 @strcmp(i8* %162, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %159
  %166 = load i8*, i8** %13, align 8
  %167 = getelementptr inbounds %struct.groupent, %struct.groupent* %8, i32 0, i32 1
  store i8* %166, i8** %167, align 8
  %168 = load i32, i32* @group_name_tree, align 4
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 1
  %171 = load i32*, i32** %170, align 8
  %172 = bitcast %struct.groupent* %8 to %struct.userent*
  %173 = call %struct.userent* @RB_FIND(i32 %168, i32* %171, %struct.userent* %172)
  %174 = bitcast %struct.userent* %173 to %struct.groupent*
  store %struct.groupent* %174, %struct.groupent** %9, align 8
  %175 = icmp eq %struct.groupent* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %165
  %177 = load i8*, i8** @YP_NOKEY, align 8
  store i8* %177, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

178:                                              ; preds = %165
  %179 = load %struct.groupent*, %struct.groupent** %9, align 8
  %180 = getelementptr inbounds %struct.groupent, %struct.groupent* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @yp_make_val(%struct.ypresp_val* @ypproc_match_2_svc.res, i8* %181, i32 1)
  store %struct.ypresp_val* @ypproc_match_2_svc.res, %struct.ypresp_val** %3, align 8
  br label %253

183:                                              ; preds = %159
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i64 @strcmp(i8* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %244

189:                                              ; preds = %183
  %190 = load i8*, i8** %13, align 8
  store i8* %190, i8** %12, align 8
  store i8* %190, i8** %11, align 8
  %191 = load i8*, i8** %11, align 8
  %192 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %193 = call i64 @strncmp(i8* %191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load i8*, i8** @YP_BADARGS, align 8
  store i8* %196, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

197:                                              ; preds = %189
  %198 = call i32 @strlen(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %199 = load i8*, i8** %11, align 8
  %200 = sext i32 %198 to i64
  %201 = getelementptr inbounds i8, i8* %199, i64 %200
  store i8* %201, i8** %11, align 8
  %202 = load i8*, i8** %11, align 8
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %197
  %207 = load i8*, i8** @YP_BADARGS, align 8
  store i8* %207, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

208:                                              ; preds = %197
  %209 = call i8* @strsep(i8** %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0))
  store i8* %209, i8** %12, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %208
  %212 = load i8*, i8** @YP_BADARGS, align 8
  store i8* %212, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

213:                                              ; preds = %208
  %214 = load i8*, i8** %11, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = call i64 @strcmp(i8* %214, i8* %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i8*, i8** @YP_BADARGS, align 8
  store i8* %221, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

222:                                              ; preds = %213
  %223 = load i8*, i8** %12, align 8
  %224 = load i32, i32* @UID_MAX, align 4
  %225 = call i8* @strtonum(i8* %223, i32 0, i32 %224, i8** %10)
  %226 = getelementptr inbounds %struct.userent, %struct.userent* %6, i32 0, i32 3
  store i8* %225, i8** %226, align 8
  %227 = load i8*, i8** %10, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %222
  %230 = load i8*, i8** @YP_BADARGS, align 8
  store i8* %230, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

231:                                              ; preds = %222
  %232 = load i32, i32* @user_uid_tree, align 4
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** @env, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = call %struct.userent* @RB_FIND(i32 %232, i32* %234, %struct.userent* %6)
  store %struct.userent* %235, %struct.userent** %7, align 8
  %236 = icmp eq %struct.userent* %235, null
  br i1 %236, label %237, label %239

237:                                              ; preds = %231
  %238 = load i8*, i8** @YP_NOKEY, align 8
  store i8* %238, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

239:                                              ; preds = %231
  %240 = load %struct.userent*, %struct.userent** %7, align 8
  %241 = getelementptr inbounds %struct.userent, %struct.userent* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = call i32 @yp_make_val(%struct.ypresp_val* @ypproc_match_2_svc.res, i8* %242, i32 0)
  br label %250

244:                                              ; preds = %183
  %245 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = load i8*, i8** %246, align 8
  %248 = call i32 (i8*, ...) @log_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i8* %247)
  %249 = load i8*, i8** @YP_NOMAP, align 8
  store i8* %249, i8** getelementptr inbounds (%struct.ypresp_val, %struct.ypresp_val* @ypproc_match_2_svc.res, i32 0, i32 0), align 8
  br label %250

250:                                              ; preds = %244, %239, %237, %229, %220, %211, %206, %195, %176, %152, %142, %122, %114, %90, %88
  %251 = load i8*, i8** %13, align 8
  %252 = call i32 @free(i8* %251)
  store %struct.ypresp_val* @ypproc_match_2_svc.res, %struct.ypresp_val** %3, align 8
  br label %253

253:                                              ; preds = %250, %178, %154, %124, %56, %45, %37, %31
  %254 = load %struct.ypresp_val*, %struct.ypresp_val** %3, align 8
  ret %struct.ypresp_val* %254
}

declare dso_local i32 @log_debug(i8*, ...) #1

declare dso_local i32 @yp_valid_domain(i8*, %struct.ypresp_val*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.userent* @RB_FIND(i32, i32*, %struct.userent*) #1

declare dso_local i32 @yp_make_val(%struct.ypresp_val*, i8*, i32) #1

declare dso_local i8* @strtonum(i8*, i32, i32, i8**) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
