; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_toplevel.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_toplevel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32, i8*, i8* }
%struct.TYPE_15__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@UCL_INT = common dso_local global i64 0, align 8
@conf = common dso_local global %struct.TYPE_14__* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"\22debug\22 property value is not integer\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"\22timeout\22 property value is not integer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"maxproc\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\22maxproc\22 property value is not integer\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"pidfile\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [39 x i8] c"\22pidfile\22 property value is not string\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"isns-server\00", align 1
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [45 x i8] c"\22isns-server\22 property value is not an array\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"isns-period\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\22isns-period\22 property value is not integer\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"isns-timeout\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"\22isns-timeout\22 property value is not integer\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"auth-group\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [38 x i8] c"\22auth-group\22 section is not an object\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"portal-group\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"\22portal-group\22 section is not an object\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"lun\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"\22lun\22 section is not an object\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"target\00", align 1
@.str.21 = private unnamed_addr constant [34 x i8] c"\22target\22 section is not an object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @uclparse_toplevel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_toplevel(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %233, %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = call %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__* %12, i32** %4, i32 1)
  store %struct.TYPE_15__* %13, %struct.TYPE_15__** %6, align 8
  %14 = icmp ne %struct.TYPE_15__* %13, null
  br i1 %14, label %15, label %234

15:                                               ; preds = %11
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = call i8* @ucl_object_key(%struct.TYPE_15__* %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = call i32 @strcmp(i8* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %15
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @UCL_INT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = call i8* @ucl_object_toint(%struct.TYPE_15__* %28)
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conf, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  br label %34

32:                                               ; preds = %21
  %33 = call i32 @log_warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

34:                                               ; preds = %27
  br label %35

35:                                               ; preds = %34, %15
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @UCL_INT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = call i8* @ucl_object_toint(%struct.TYPE_15__* %46)
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conf, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  br label %52

50:                                               ; preds = %39
  %51 = call i32 @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

52:                                               ; preds = %45
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i8*, i8** %9, align 8
  %55 = call i32 @strcmp(i8* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %53
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @UCL_INT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %65 = call i8* @ucl_object_toint(%struct.TYPE_15__* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conf, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %70

68:                                               ; preds = %57
  %69 = call i32 @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %53
  %72 = load i8*, i8** %9, align 8
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %90, label %75

75:                                               ; preds = %71
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @UCL_STRING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %75
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = call i32 @ucl_object_tostring(%struct.TYPE_15__* %82)
  %84 = call i32 @strdup(i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conf, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %89

87:                                               ; preds = %75
  %88 = call i32 @log_warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 @strcmp(i8* %91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %90
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @UCL_ARRAY, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %94
  store i32* null, i32** %5, align 8
  br label %101

101:                                              ; preds = %120, %100
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = call %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__* %102, i32** %5, i32 1)
  store %struct.TYPE_15__* %103, %struct.TYPE_15__** %7, align 8
  %104 = icmp ne %struct.TYPE_15__* %103, null
  br i1 %104, label %105, label %121

105:                                              ; preds = %101
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @UCL_STRING, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 1, i32* %2, align 4
  br label %267

112:                                              ; preds = %105
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conf, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %115 = call i32 @ucl_object_tostring(%struct.TYPE_15__* %114)
  %116 = call i32 @isns_new(%struct.TYPE_14__* %113, i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  store i32 1, i32* %2, align 4
  br label %267

120:                                              ; preds = %112
  br label %101

121:                                              ; preds = %101
  br label %124

122:                                              ; preds = %94
  %123 = call i32 @log_warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %124, %90
  %126 = load i8*, i8** %9, align 8
  %127 = call i32 @strcmp(i8* %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %143, label %129

129:                                              ; preds = %125
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @UCL_INT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %129
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %137 = call i8* @ucl_object_toint(%struct.TYPE_15__* %136)
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conf, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  br label %142

140:                                              ; preds = %129
  %141 = call i32 @log_warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

142:                                              ; preds = %135
  br label %143

143:                                              ; preds = %142, %125
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @strcmp(i8* %144, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %161, label %147

147:                                              ; preds = %143
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @UCL_INT, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %158

153:                                              ; preds = %147
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %155 = call i8* @ucl_object_toint(%struct.TYPE_15__* %154)
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** @conf, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  store i8* %155, i8** %157, align 8
  br label %160

158:                                              ; preds = %147
  %159 = call i32 @log_warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

160:                                              ; preds = %153
  br label %161

161:                                              ; preds = %160, %143
  %162 = load i8*, i8** %9, align 8
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %185, label %165

165:                                              ; preds = %161
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @UCL_OBJECT, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %165
  store i32* null, i32** %5, align 8
  br label %172

172:                                              ; preds = %176, %171
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %174 = call %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__* %173, i32** %5, i32 1)
  store %struct.TYPE_15__* %174, %struct.TYPE_15__** %7, align 8
  %175 = icmp ne %struct.TYPE_15__* %174, null
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %178 = call i8* @ucl_object_key(%struct.TYPE_15__* %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %180 = call i32 @uclparse_auth_group(i8* %178, %struct.TYPE_15__* %179)
  br label %172

181:                                              ; preds = %172
  br label %184

182:                                              ; preds = %165
  %183 = call i32 @log_warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

184:                                              ; preds = %181
  br label %185

185:                                              ; preds = %184, %161
  %186 = load i8*, i8** %9, align 8
  %187 = call i32 @strcmp(i8* %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %209, label %189

189:                                              ; preds = %185
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* @UCL_OBJECT, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %189
  store i32* null, i32** %5, align 8
  br label %196

196:                                              ; preds = %200, %195
  %197 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %198 = call %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__* %197, i32** %5, i32 1)
  store %struct.TYPE_15__* %198, %struct.TYPE_15__** %7, align 8
  %199 = icmp ne %struct.TYPE_15__* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %202 = call i8* @ucl_object_key(%struct.TYPE_15__* %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %204 = call i32 @uclparse_portal_group(i8* %202, %struct.TYPE_15__* %203)
  br label %196

205:                                              ; preds = %196
  br label %208

206:                                              ; preds = %189
  %207 = call i32 @log_warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

208:                                              ; preds = %205
  br label %209

209:                                              ; preds = %208, %185
  %210 = load i8*, i8** %9, align 8
  %211 = call i32 @strcmp(i8* %210, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %233, label %213

213:                                              ; preds = %209
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @UCL_OBJECT, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %213
  store i32* null, i32** %5, align 8
  br label %220

220:                                              ; preds = %224, %219
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %222 = call %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__* %221, i32** %5, i32 1)
  store %struct.TYPE_15__* %222, %struct.TYPE_15__** %7, align 8
  %223 = icmp ne %struct.TYPE_15__* %222, null
  br i1 %223, label %224, label %229

224:                                              ; preds = %220
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %226 = call i8* @ucl_object_key(%struct.TYPE_15__* %225)
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %228 = call i32 @uclparse_lun(i8* %226, %struct.TYPE_15__* %227)
  br label %220

229:                                              ; preds = %220
  br label %232

230:                                              ; preds = %213
  %231 = call i32 @log_warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %232, %209
  br label %11

234:                                              ; preds = %11
  store i32* null, i32** %4, align 8
  br label %235

235:                                              ; preds = %265, %234
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %237 = call %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__* %236, i32** %4, i32 1)
  store %struct.TYPE_15__* %237, %struct.TYPE_15__** %6, align 8
  %238 = icmp ne %struct.TYPE_15__* %237, null
  br i1 %238, label %239, label %266

239:                                              ; preds = %235
  %240 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %241 = call i8* @ucl_object_key(%struct.TYPE_15__* %240)
  store i8* %241, i8** %10, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = call i32 @strcmp(i8* %242, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0))
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %265, label %245

245:                                              ; preds = %239
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %247 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @UCL_OBJECT, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %262

251:                                              ; preds = %245
  store i32* null, i32** %5, align 8
  br label %252

252:                                              ; preds = %256, %251
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %254 = call %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__* %253, i32** %5, i32 1)
  store %struct.TYPE_15__* %254, %struct.TYPE_15__** %7, align 8
  %255 = icmp ne %struct.TYPE_15__* %254, null
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %258 = call i8* @ucl_object_key(%struct.TYPE_15__* %257)
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %260 = call i32 @uclparse_target(i8* %258, %struct.TYPE_15__* %259)
  br label %252

261:                                              ; preds = %252
  br label %264

262:                                              ; preds = %245
  %263 = call i32 @log_warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.21, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %267

264:                                              ; preds = %261
  br label %265

265:                                              ; preds = %264, %239
  br label %235

266:                                              ; preds = %235
  store i32 0, i32* %2, align 4
  br label %267

267:                                              ; preds = %266, %262, %230, %206, %182, %158, %140, %122, %119, %111, %87, %68, %50, %32
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local %struct.TYPE_15__* @ucl_iterate_object(%struct.TYPE_15__*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_15__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @ucl_object_toint(%struct.TYPE_15__*) #1

declare dso_local i32 @log_warnx(i8*) #1

declare dso_local i32 @strdup(i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_15__*) #1

declare dso_local i32 @isns_new(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @uclparse_auth_group(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @uclparse_portal_group(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @uclparse_lun(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @uclparse_target(i8*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
