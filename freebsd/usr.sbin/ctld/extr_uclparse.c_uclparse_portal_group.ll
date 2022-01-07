; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_portal_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_uclparse.c_uclparse_portal_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.portal_group = type { i32, i32, i32* }

@.str = private unnamed_addr constant [8 x i8] c"default\00", align 1
@conf = common dso_local global %struct.TYPE_13__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"discovery-auth-group\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"unknown discovery-auth-group \22%s\22 for portal-group \22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"discovery-filter\00", align 1
@UCL_STRING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [65 x i8] c"\22discovery-filter\22 property of portal-group \22%s\22 is not a string\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"listen\00", align 1
@UCL_ARRAY = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"\22listen\22 property of portal-group \22%s\22 is not a string\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"listen-iser\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"options\00", align 1
@UCL_OBJECT = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [57 x i8] c"\22options\22 property of portal group \22%s\22 is not an object\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_12__*)* @uclparse_portal_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uclparse_portal_group(i8* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.portal_group*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call %struct.portal_group* @portal_group_find(%struct.TYPE_13__* %21, i8* %22)
  store %struct.portal_group* %23, %struct.portal_group** %6, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %30

26:                                               ; preds = %15, %2
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = call %struct.portal_group* @portal_group_new(%struct.TYPE_13__* %27, i8* %28)
  store %struct.portal_group* %29, %struct.portal_group** %6, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %32 = icmp eq %struct.portal_group* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %231

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %229, %34
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %36, i32** %7, i32 1)
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %9, align 8
  %38 = icmp ne %struct.TYPE_12__* %37, null
  br i1 %38, label %39, label %230

39:                                               ; preds = %35
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = call i8* @ucl_object_key(%struct.TYPE_12__* %40)
  store i8* %41, i8** %11, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %64, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** @conf, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %47)
  %49 = call i32* @auth_group_find(%struct.TYPE_13__* %46, i32 %48)
  %50 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %51 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %53 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %57)
  %59 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %60 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %61)
  store i32 1, i32* %3, align 4
  br label %231

63:                                               ; preds = %45
  br label %64

64:                                               ; preds = %63, %39
  %65 = load i8*, i8** %11, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %87, label %68

68:                                               ; preds = %64
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @UCL_STRING, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %68
  %75 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %76 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  store i32 1, i32* %3, align 4
  br label %231

79:                                               ; preds = %68
  %80 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %81)
  %83 = call i64 @portal_group_set_filter(%struct.portal_group* %80, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1, i32* %3, align 4
  br label %231

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86, %64
  %88 = load i8*, i8** %11, align 8
  %89 = call i64 @strcmp(i8* %88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %132, label %91

91:                                               ; preds = %87
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @UCL_STRING, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %105

97:                                               ; preds = %91
  %98 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %100 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %99)
  %101 = call i64 @portal_group_add_listen(%struct.portal_group* %98, i32 %100, i32 0)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 1, i32* %3, align 4
  br label %231

104:                                              ; preds = %97
  br label %131

105:                                              ; preds = %91
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @UCL_ARRAY, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %123, %111
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %113, i32** %8, i32 1)
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %10, align 8
  %115 = icmp ne %struct.TYPE_12__* %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %112
  %117 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %119 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %118)
  %120 = call i64 @portal_group_add_listen(%struct.portal_group* %117, i32 %119, i32 0)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %231

123:                                              ; preds = %116
  br label %112

124:                                              ; preds = %112
  br label %130

125:                                              ; preds = %105
  %126 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %127 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %128)
  store i32 1, i32* %3, align 4
  br label %231

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %104
  br label %132

132:                                              ; preds = %131, %87
  %133 = load i8*, i8** %11, align 8
  %134 = call i64 @strcmp(i8* %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %177, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @UCL_STRING, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %150

142:                                              ; preds = %136
  %143 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %145 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %144)
  %146 = call i64 @portal_group_add_listen(%struct.portal_group* %143, i32 %145, i32 1)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %231

149:                                              ; preds = %142
  br label %176

150:                                              ; preds = %136
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @UCL_ARRAY, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %168, %156
  %158 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %159 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %158, i32** %8, i32 1)
  store %struct.TYPE_12__* %159, %struct.TYPE_12__** %10, align 8
  %160 = icmp ne %struct.TYPE_12__* %159, null
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %164 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %163)
  %165 = call i64 @portal_group_add_listen(%struct.portal_group* %162, i32 %164, i32 1)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %161
  store i32 1, i32* %3, align 4
  br label %231

168:                                              ; preds = %161
  br label %157

169:                                              ; preds = %157
  br label %175

170:                                              ; preds = %150
  %171 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %172 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %173)
  store i32 1, i32* %3, align 4
  br label %231

175:                                              ; preds = %169
  br label %176

176:                                              ; preds = %175, %149
  br label %177

177:                                              ; preds = %176, %132
  %178 = load i8*, i8** %11, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %200, label %181

181:                                              ; preds = %177
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @UCL_STRING, align 8
  %186 = icmp ne i64 %184, %185
  br i1 %186, label %187, label %192

187:                                              ; preds = %181
  %188 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %189 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %190)
  store i32 1, i32* %3, align 4
  br label %231

192:                                              ; preds = %181
  %193 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %195 = call i32 @ucl_object_tostring(%struct.TYPE_12__* %194)
  %196 = call i64 @portal_group_set_redirection(%struct.portal_group* %193, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %192
  store i32 1, i32* %3, align 4
  br label %231

199:                                              ; preds = %192
  br label %200

200:                                              ; preds = %199, %177
  %201 = load i8*, i8** %11, align 8
  %202 = call i64 @strcmp(i8* %201, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %229, label %204

204:                                              ; preds = %200
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @UCL_OBJECT, align 8
  %209 = icmp ne i64 %207, %208
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %212 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = call i32 (i8*, i32, ...) @log_warnx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0), i32 %213)
  store i32 1, i32* %3, align 4
  br label %231

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %220, %215
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %218 = call %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__* %217, i32** %8, i32 1)
  store %struct.TYPE_12__* %218, %struct.TYPE_12__** %10, align 8
  %219 = icmp ne %struct.TYPE_12__* %218, null
  br i1 %219, label %220, label %228

220:                                              ; preds = %216
  %221 = load %struct.portal_group*, %struct.portal_group** %6, align 8
  %222 = getelementptr inbounds %struct.portal_group, %struct.portal_group* %221, i32 0, i32 0
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %224 = call i8* @ucl_object_key(%struct.TYPE_12__* %223)
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %226 = call i32 @ucl_object_tostring_forced(%struct.TYPE_12__* %225)
  %227 = call i32 @option_new(i32* %222, i8* %224, i32 %226)
  br label %216

228:                                              ; preds = %216
  br label %229

229:                                              ; preds = %228, %200
  br label %35

230:                                              ; preds = %35
  store i32 0, i32* %3, align 4
  br label %231

231:                                              ; preds = %230, %210, %198, %187, %170, %167, %148, %125, %122, %103, %85, %74, %56, %33
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.portal_group* @portal_group_find(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.portal_group* @portal_group_new(%struct.TYPE_13__*, i8*) #1

declare dso_local %struct.TYPE_12__* @ucl_iterate_object(%struct.TYPE_12__*, i32**, i32) #1

declare dso_local i8* @ucl_object_key(%struct.TYPE_12__*) #1

declare dso_local i32* @auth_group_find(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @ucl_object_tostring(%struct.TYPE_12__*) #1

declare dso_local i32 @log_warnx(i8*, i32, ...) #1

declare dso_local i64 @portal_group_set_filter(%struct.portal_group*, i32) #1

declare dso_local i64 @portal_group_add_listen(%struct.portal_group*, i32, i32) #1

declare dso_local i64 @portal_group_set_redirection(%struct.portal_group*, i32) #1

declare dso_local i32 @option_new(i32*, i8*, i32) #1

declare dso_local i32 @ucl_object_tostring_forced(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
