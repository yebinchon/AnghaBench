; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.target = type { i32, %struct.TYPE_18__*, i32 }
%struct.TYPE_18__ = type { %struct.target*, i32* }
%struct.auth_name = type { i32 }
%struct.auth_portal = type { i32 }
%struct.pport = type { i32 }
%struct.port = type { i32 }

@conf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"\22alias\22 property of target \22%s\22 is not a string\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"auth-group\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"auth-group for target \22%s\22 specified more than once\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"cannot use both auth-group and explicit authorisations for target \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"unknown auth-group \22%s\22 for target \22%s\22\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"auth-type\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"cannot use both auth-group and auth-type for target \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"chap\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"chap-mutual\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"initiator-name\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"cannot use both auth-group and initiator-name for target \22%s\22\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"initiator-portal\00", align 1
@.str.13 = private unnamed_addr constant [64 x i8] c"cannot use both auth-group and initiator-portal for target \22%s\22\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"portal-group\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"ioctl/%d/%d\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"can't create new ioctl port for target \22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"unknown port \22%s\22 for target \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [72 x i8] c"can't link port \22%s\22 to target \22%s\22, port already linked to some target\00", align 1
@.str.20 = private unnamed_addr constant [36 x i8] c"can't link port \22%s\22 to target \22%s\22\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"\22redirect\22 property of target \22%s\22 is not a string\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"lun\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_17__*)* @uclparse_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_target(i8* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.target*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.auth_name*, align 8
  %14 = alloca %struct.auth_portal*, align 8
  %15 = alloca %struct.pport*, align 8
  %16 = alloca %struct.port*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %10, align 8
  %21 = load i32, i32* @conf, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.target* @target_new(i32 %21, i8* %22)
  store %struct.target* %23, %struct.target** %6, align 8
  %24 = load %struct.target*, %struct.target** %6, align 8
  %25 = icmp eq %struct.target* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %434

27:                                               ; preds = %2
  br label %28

28:                                               ; preds = %432, %27
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %30 = call %struct.TYPE_17__* @ucl_iterate_object(%struct.TYPE_17__* %29, i32** %7, i32 1)
  store %struct.TYPE_17__* %30, %struct.TYPE_17__** %9, align 8
  %31 = icmp ne %struct.TYPE_17__* %30, null
  br i1 %31, label %32, label %433

32:                                               ; preds = %28
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %34 = call i8* @ucl_object_key(%struct.TYPE_17__* %33)
  store i8* %34, i8** %11, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 @strcmp(i8* %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @UCL_STRING, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.target*, %struct.target** %6, align 8
  %46 = getelementptr inbounds %struct.target, %struct.target* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  store i32 1, i32* %3, align 4
  br label %434

51:                                               ; preds = %38
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %52)
  %54 = call i32 @strdup(i8* %53)
  %55 = load %struct.target*, %struct.target** %6, align 8
  %56 = getelementptr inbounds %struct.target, %struct.target* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %51, %32
  %58 = load i8*, i8** %11, align 8
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %107, label %61

61:                                               ; preds = %57
  %62 = load %struct.target*, %struct.target** %6, align 8
  %63 = getelementptr inbounds %struct.target, %struct.target* %62, i32 0, i32 1
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = icmp ne %struct.TYPE_18__* %64, null
  br i1 %65, label %66, label %88

66:                                               ; preds = %61
  %67 = load %struct.target*, %struct.target** %6, align 8
  %68 = getelementptr inbounds %struct.target, %struct.target* %67, i32 0, i32 1
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %80

73:                                               ; preds = %66
  %74 = load %struct.target*, %struct.target** %6, align 8
  %75 = getelementptr inbounds %struct.target, %struct.target* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %87

80:                                               ; preds = %66
  %81 = load %struct.target*, %struct.target** %6, align 8
  %82 = getelementptr inbounds %struct.target, %struct.target* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i8* %85)
  br label %87

87:                                               ; preds = %80, %73
  store i32 1, i32* %3, align 4
  br label %434

88:                                               ; preds = %61
  %89 = load i32, i32* @conf, align 4
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %91 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %90)
  %92 = call %struct.TYPE_18__* @auth_group_find(i32 %89, i8* %91)
  %93 = load %struct.target*, %struct.target** %6, align 8
  %94 = getelementptr inbounds %struct.target, %struct.target* %93, i32 0, i32 1
  store %struct.TYPE_18__* %92, %struct.TYPE_18__** %94, align 8
  %95 = load %struct.target*, %struct.target** %6, align 8
  %96 = getelementptr inbounds %struct.target, %struct.target* %95, i32 0, i32 1
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %96, align 8
  %98 = icmp eq %struct.TYPE_18__* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %88
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %101 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %100)
  %102 = load %struct.target*, %struct.target** %6, align 8
  %103 = getelementptr inbounds %struct.target, %struct.target* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i8* %101, i32 %104)
  store i32 1, i32* %3, align 4
  br label %434

106:                                              ; preds = %88
  br label %107

107:                                              ; preds = %106, %57
  %108 = load i8*, i8** %11, align 8
  %109 = call i32 @strcmp(i8* %108, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %159, label %111

111:                                              ; preds = %107
  %112 = load %struct.target*, %struct.target** %6, align 8
  %113 = getelementptr inbounds %struct.target, %struct.target* %112, i32 0, i32 1
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %113, align 8
  %115 = icmp ne %struct.TYPE_18__* %114, null
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load %struct.target*, %struct.target** %6, align 8
  %118 = getelementptr inbounds %struct.target, %struct.target* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %116
  %124 = load %struct.target*, %struct.target** %6, align 8
  %125 = getelementptr inbounds %struct.target, %struct.target* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = sext i32 %126 to i64
  %128 = inttoptr i64 %127 to i8*
  %129 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i8* %128)
  store i32 1, i32* %3, align 4
  br label %434

130:                                              ; preds = %116
  br label %148

131:                                              ; preds = %111
  %132 = load i32, i32* @conf, align 4
  %133 = call i8* @auth_group_new(i32 %132, i32* null)
  %134 = bitcast i8* %133 to %struct.TYPE_18__*
  %135 = load %struct.target*, %struct.target** %6, align 8
  %136 = getelementptr inbounds %struct.target, %struct.target* %135, i32 0, i32 1
  store %struct.TYPE_18__* %134, %struct.TYPE_18__** %136, align 8
  %137 = load %struct.target*, %struct.target** %6, align 8
  %138 = getelementptr inbounds %struct.target, %struct.target* %137, i32 0, i32 1
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = icmp eq %struct.TYPE_18__* %139, null
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  store i32 1, i32* %3, align 4
  br label %434

142:                                              ; preds = %131
  %143 = load %struct.target*, %struct.target** %6, align 8
  %144 = load %struct.target*, %struct.target** %6, align 8
  %145 = getelementptr inbounds %struct.target, %struct.target* %144, i32 0, i32 1
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store %struct.target* %143, %struct.target** %147, align 8
  br label %148

148:                                              ; preds = %142, %130
  %149 = load %struct.target*, %struct.target** %6, align 8
  %150 = getelementptr inbounds %struct.target, %struct.target* %149, i32 0, i32 1
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %153 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %152)
  %154 = call i32 @auth_group_set_type(%struct.TYPE_18__* %151, i8* %153)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %148
  store i32 1, i32* %3, align 4
  br label %434

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %107
  %160 = load i8*, i8** %11, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %172, label %163

163:                                              ; preds = %159
  %164 = load %struct.target*, %struct.target** %6, align 8
  %165 = getelementptr inbounds %struct.target, %struct.target* %164, i32 0, i32 1
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %168 = call i64 @uclparse_chap(%struct.TYPE_18__* %166, %struct.TYPE_17__* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 1, i32* %3, align 4
  br label %434

171:                                              ; preds = %163
  br label %172

172:                                              ; preds = %171, %159
  %173 = load i8*, i8** %11, align 8
  %174 = call i32 @strcmp(i8* %173, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %172
  %177 = load %struct.target*, %struct.target** %6, align 8
  %178 = getelementptr inbounds %struct.target, %struct.target* %177, i32 0, i32 1
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %178, align 8
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %181 = call i64 @uclparse_chap_mutual(%struct.TYPE_18__* %179, %struct.TYPE_17__* %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %176
  store i32 1, i32* %3, align 4
  br label %434

184:                                              ; preds = %176
  br label %185

185:                                              ; preds = %184, %172
  %186 = load i8*, i8** %11, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %237, label %189

189:                                              ; preds = %185
  %190 = load %struct.target*, %struct.target** %6, align 8
  %191 = getelementptr inbounds %struct.target, %struct.target* %190, i32 0, i32 1
  %192 = load %struct.TYPE_18__*, %struct.TYPE_18__** %191, align 8
  %193 = icmp ne %struct.TYPE_18__* %192, null
  br i1 %193, label %194, label %209

194:                                              ; preds = %189
  %195 = load %struct.target*, %struct.target** %6, align 8
  %196 = getelementptr inbounds %struct.target, %struct.target* %195, i32 0, i32 1
  %197 = load %struct.TYPE_18__*, %struct.TYPE_18__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %208

201:                                              ; preds = %194
  %202 = load %struct.target*, %struct.target** %6, align 8
  %203 = getelementptr inbounds %struct.target, %struct.target* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = inttoptr i64 %205 to i8*
  %207 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i8* %206)
  store i32 1, i32* %3, align 4
  br label %434

208:                                              ; preds = %194
  br label %226

209:                                              ; preds = %189
  %210 = load i32, i32* @conf, align 4
  %211 = call i8* @auth_group_new(i32 %210, i32* null)
  %212 = bitcast i8* %211 to %struct.TYPE_18__*
  %213 = load %struct.target*, %struct.target** %6, align 8
  %214 = getelementptr inbounds %struct.target, %struct.target* %213, i32 0, i32 1
  store %struct.TYPE_18__* %212, %struct.TYPE_18__** %214, align 8
  %215 = load %struct.target*, %struct.target** %6, align 8
  %216 = getelementptr inbounds %struct.target, %struct.target* %215, i32 0, i32 1
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = icmp eq %struct.TYPE_18__* %217, null
  br i1 %218, label %219, label %220

219:                                              ; preds = %209
  store i32 1, i32* %3, align 4
  br label %434

220:                                              ; preds = %209
  %221 = load %struct.target*, %struct.target** %6, align 8
  %222 = load %struct.target*, %struct.target** %6, align 8
  %223 = getelementptr inbounds %struct.target, %struct.target* %222, i32 0, i32 1
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  store %struct.target* %221, %struct.target** %225, align 8
  br label %226

226:                                              ; preds = %220, %208
  %227 = load %struct.target*, %struct.target** %6, align 8
  %228 = getelementptr inbounds %struct.target, %struct.target* %227, i32 0, i32 1
  %229 = load %struct.TYPE_18__*, %struct.TYPE_18__** %228, align 8
  %230 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %231 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %230)
  %232 = call %struct.auth_name* @auth_name_new(%struct.TYPE_18__* %229, i8* %231)
  store %struct.auth_name* %232, %struct.auth_name** %13, align 8
  %233 = load %struct.auth_name*, %struct.auth_name** %13, align 8
  %234 = icmp eq %struct.auth_name* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %226
  store i32 1, i32* %3, align 4
  br label %434

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %236, %185
  %238 = load i8*, i8** %11, align 8
  %239 = call i32 @strcmp(i8* %238, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %289, label %241

241:                                              ; preds = %237
  %242 = load %struct.target*, %struct.target** %6, align 8
  %243 = getelementptr inbounds %struct.target, %struct.target* %242, i32 0, i32 1
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %243, align 8
  %245 = icmp ne %struct.TYPE_18__* %244, null
  br i1 %245, label %246, label %261

246:                                              ; preds = %241
  %247 = load %struct.target*, %struct.target** %6, align 8
  %248 = getelementptr inbounds %struct.target, %struct.target* %247, i32 0, i32 1
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = icmp ne i32* %251, null
  br i1 %252, label %253, label %260

253:                                              ; preds = %246
  %254 = load %struct.target*, %struct.target** %6, align 8
  %255 = getelementptr inbounds %struct.target, %struct.target* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = inttoptr i64 %257 to i8*
  %259 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.13, i64 0, i64 0), i8* %258)
  store i32 1, i32* %3, align 4
  br label %434

260:                                              ; preds = %246
  br label %278

261:                                              ; preds = %241
  %262 = load i32, i32* @conf, align 4
  %263 = call i8* @auth_group_new(i32 %262, i32* null)
  %264 = bitcast i8* %263 to %struct.TYPE_18__*
  %265 = load %struct.target*, %struct.target** %6, align 8
  %266 = getelementptr inbounds %struct.target, %struct.target* %265, i32 0, i32 1
  store %struct.TYPE_18__* %264, %struct.TYPE_18__** %266, align 8
  %267 = load %struct.target*, %struct.target** %6, align 8
  %268 = getelementptr inbounds %struct.target, %struct.target* %267, i32 0, i32 1
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %268, align 8
  %270 = icmp eq %struct.TYPE_18__* %269, null
  br i1 %270, label %271, label %272

271:                                              ; preds = %261
  store i32 1, i32* %3, align 4
  br label %434

272:                                              ; preds = %261
  %273 = load %struct.target*, %struct.target** %6, align 8
  %274 = load %struct.target*, %struct.target** %6, align 8
  %275 = getelementptr inbounds %struct.target, %struct.target* %274, i32 0, i32 1
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 0
  store %struct.target* %273, %struct.target** %277, align 8
  br label %278

278:                                              ; preds = %272, %260
  %279 = load %struct.target*, %struct.target** %6, align 8
  %280 = getelementptr inbounds %struct.target, %struct.target* %279, i32 0, i32 1
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %283 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %282)
  %284 = call %struct.auth_portal* @auth_portal_new(%struct.TYPE_18__* %281, i8* %283)
  store %struct.auth_portal* %284, %struct.auth_portal** %14, align 8
  %285 = load %struct.auth_portal*, %struct.auth_portal** %14, align 8
  %286 = icmp eq %struct.auth_portal* %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %278
  store i32 1, i32* %3, align 4
  br label %434

288:                                              ; preds = %278
  br label %289

289:                                              ; preds = %288, %237
  %290 = load i8*, i8** %11, align 8
  %291 = call i32 @strcmp(i8* %290, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %326, label %293

293:                                              ; preds = %289
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @UCL_OBJECT, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %306

299:                                              ; preds = %293
  %300 = load %struct.target*, %struct.target** %6, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %302 = call i64 @uclparse_target_portal_group(%struct.target* %300, %struct.TYPE_17__* %301)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %305

304:                                              ; preds = %299
  store i32 1, i32* %3, align 4
  br label %434

305:                                              ; preds = %299
  br label %306

306:                                              ; preds = %305, %293
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @UCL_ARRAY, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %325

312:                                              ; preds = %306
  br label %313

313:                                              ; preds = %323, %312
  %314 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %315 = call %struct.TYPE_17__* @ucl_iterate_object(%struct.TYPE_17__* %314, i32** %8, i32 1)
  store %struct.TYPE_17__* %315, %struct.TYPE_17__** %10, align 8
  %316 = icmp ne %struct.TYPE_17__* %315, null
  br i1 %316, label %317, label %324

317:                                              ; preds = %313
  %318 = load %struct.target*, %struct.target** %6, align 8
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %320 = call i64 @uclparse_target_portal_group(%struct.target* %318, %struct.TYPE_17__* %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %323

322:                                              ; preds = %317
  store i32 1, i32* %3, align 4
  br label %434

323:                                              ; preds = %317
  br label %313

324:                                              ; preds = %313
  br label %325

325:                                              ; preds = %324, %306
  br label %326

326:                                              ; preds = %325, %289
  %327 = load i8*, i8** %11, align 8
  %328 = call i32 @strcmp(i8* %327, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %390, label %330

330:                                              ; preds = %326
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %332 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %331)
  store i8* %332, i8** %17, align 8
  store i32 0, i32* %20, align 4
  %333 = load i8*, i8** %17, align 8
  %334 = call i32 @sscanf(i8* %333, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32* %19, i32* %20)
  store i32 %334, i32* %18, align 4
  %335 = load i32, i32* %18, align 4
  %336 = icmp sgt i32 %335, 0
  br i1 %336, label %337, label %353

337:                                              ; preds = %330
  %338 = load i32, i32* @conf, align 4
  %339 = load %struct.target*, %struct.target** %6, align 8
  %340 = load i32, i32* %19, align 4
  %341 = load i32, i32* %20, align 4
  %342 = call %struct.port* @port_new_ioctl(i32 %338, %struct.target* %339, i32 %340, i32 %341)
  store %struct.port* %342, %struct.port** %16, align 8
  %343 = load %struct.port*, %struct.port** %16, align 8
  %344 = icmp eq %struct.port* %343, null
  br i1 %344, label %345, label %352

345:                                              ; preds = %337
  %346 = load %struct.target*, %struct.target** %6, align 8
  %347 = getelementptr inbounds %struct.target, %struct.target* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = sext i32 %348 to i64
  %350 = inttoptr i64 %349 to i8*
  %351 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.17, i64 0, i64 0), i8* %350)
  store i32 1, i32* %3, align 4
  br label %434

352:                                              ; preds = %337
  store i32 0, i32* %3, align 4
  br label %434

353:                                              ; preds = %330
  %354 = load i32, i32* @conf, align 4
  %355 = load i8*, i8** %17, align 8
  %356 = call %struct.pport* @pport_find(i32 %354, i8* %355)
  store %struct.pport* %356, %struct.pport** %15, align 8
  %357 = load %struct.pport*, %struct.pport** %15, align 8
  %358 = icmp eq %struct.pport* %357, null
  br i1 %358, label %359, label %365

359:                                              ; preds = %353
  %360 = load i8*, i8** %17, align 8
  %361 = load %struct.target*, %struct.target** %6, align 8
  %362 = getelementptr inbounds %struct.target, %struct.target* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0), i8* %360, i32 %363)
  store i32 1, i32* %3, align 4
  br label %434

365:                                              ; preds = %353
  %366 = load %struct.pport*, %struct.pport** %15, align 8
  %367 = getelementptr inbounds %struct.pport, %struct.pport* %366, i32 0, i32 0
  %368 = call i32 @TAILQ_EMPTY(i32* %367)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %376, label %370

370:                                              ; preds = %365
  %371 = load i8*, i8** %17, align 8
  %372 = load %struct.target*, %struct.target** %6, align 8
  %373 = getelementptr inbounds %struct.target, %struct.target* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.19, i64 0, i64 0), i8* %371, i32 %374)
  store i32 1, i32* %3, align 4
  br label %434

376:                                              ; preds = %365
  %377 = load i32, i32* @conf, align 4
  %378 = load %struct.target*, %struct.target** %6, align 8
  %379 = load %struct.pport*, %struct.pport** %15, align 8
  %380 = call %struct.port* @port_new_pp(i32 %377, %struct.target* %378, %struct.pport* %379)
  store %struct.port* %380, %struct.port** %16, align 8
  %381 = load %struct.port*, %struct.port** %16, align 8
  %382 = icmp eq %struct.port* %381, null
  br i1 %382, label %383, label %389

383:                                              ; preds = %376
  %384 = load i8*, i8** %17, align 8
  %385 = load %struct.target*, %struct.target** %6, align 8
  %386 = getelementptr inbounds %struct.target, %struct.target* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 8
  %388 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.20, i64 0, i64 0), i8* %384, i32 %387)
  store i32 1, i32* %3, align 4
  br label %434

389:                                              ; preds = %376
  br label %390

390:                                              ; preds = %389, %326
  %391 = load i8*, i8** %11, align 8
  %392 = call i32 @strcmp(i8* %391, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0))
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %415, label %394

394:                                              ; preds = %390
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %396 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @UCL_STRING, align 8
  %399 = icmp ne i64 %397, %398
  br i1 %399, label %400, label %407

400:                                              ; preds = %394
  %401 = load %struct.target*, %struct.target** %6, align 8
  %402 = getelementptr inbounds %struct.target, %struct.target* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  %404 = sext i32 %403 to i64
  %405 = inttoptr i64 %404 to i8*
  %406 = call i32 (i8*, i8*, ...) @log_warnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0), i8* %405)
  store i32 1, i32* %3, align 4
  br label %434

407:                                              ; preds = %394
  %408 = load %struct.target*, %struct.target** %6, align 8
  %409 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %410 = call i8* @ucl_object_tostring(%struct.TYPE_17__* %409)
  %411 = call i64 @target_set_redirection(%struct.target* %408, i8* %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %407
  store i32 1, i32* %3, align 4
  br label %434

414:                                              ; preds = %407
  br label %415

415:                                              ; preds = %414, %390
  %416 = load i8*, i8** %11, align 8
  %417 = call i32 @strcmp(i8* %416, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0))
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %432, label %419

419:                                              ; preds = %415
  br label %420

420:                                              ; preds = %430, %419
  %421 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %422 = call %struct.TYPE_17__* @ucl_iterate_object(%struct.TYPE_17__* %421, i32** %8, i32 1)
  store %struct.TYPE_17__* %422, %struct.TYPE_17__** %10, align 8
  %423 = icmp ne %struct.TYPE_17__* %422, null
  br i1 %423, label %424, label %431

424:                                              ; preds = %420
  %425 = load %struct.target*, %struct.target** %6, align 8
  %426 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %427 = call i64 @uclparse_target_lun(%struct.target* %425, %struct.TYPE_17__* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %430

429:                                              ; preds = %424
  store i32 1, i32* %3, align 4
  br label %434

430:                                              ; preds = %424
  br label %420

431:                                              ; preds = %420
  br label %432

432:                                              ; preds = %431, %415
  br label %28

433:                                              ; preds = %28
  store i32 0, i32* %3, align 4
  br label %434

434:                                              ; preds = %433, %429, %413, %400, %383, %370, %359, %352, %345, %322, %304, %287, %271, %253, %235, %219, %201, %183, %170, %157, %141, %123, %99, %87, %44, %26
  %435 = load i32, i32* %3, align 4
  ret i32 %435
}

declare dso_local %struct.target* @target_new(i32, i8*) #1

declare dso_local %struct.TYPE_17__* @ucl_iterate_object(%struct.TYPE_17__*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_17__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*, ...) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i8* @ucl_object_tostring(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_18__* @auth_group_find(i32, i8*) #1

declare dso_local i8* @auth_group_new(i32, i32*) #1

declare dso_local i32 @auth_group_set_type(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @uclparse_chap(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i64 @uclparse_chap_mutual(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local %struct.auth_name* @auth_name_new(%struct.TYPE_18__*, i8*) #1

declare dso_local %struct.auth_portal* @auth_portal_new(%struct.TYPE_18__*, i8*) #1

declare dso_local i64 @uclparse_target_portal_group(%struct.target*, %struct.TYPE_17__*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local %struct.port* @port_new_ioctl(i32, %struct.target*, i32, i32) #1

declare dso_local %struct.pport* @pport_find(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.port* @port_new_pp(i32, %struct.target*, %struct.pport*) #1

declare dso_local i64 @target_set_redirection(%struct.target*, i8*) #1

declare dso_local i64 @uclparse_target_lun(%struct.target*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
