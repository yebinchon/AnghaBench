; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_op_ng_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_netgraph/extr_snmp_netgraph.c_op_ng_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snmp_context = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32* }
%struct.snmp_value = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32* }
%struct.ngtype = type { i32 }

@ngtype_list = common dso_local global i32 0, align 4
@SNMP_ERR_NOSUCHNAME = common dso_local global i32 0, align 4
@SNMP_ERR_NO_CREATION = common dso_local global i32 0, align 4
@NG_TYPESIZ = common dso_local global i64 0, align 8
@SNMP_ERR_NOT_WRITEABLE = common dso_local global i32 0, align 4
@SNMP_ERR_WRONG_VALUE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@SNMP_ERR_INCONS_NAME = common dso_local global i32 0, align 4
@SNMP_ERR_GENERR = common dso_local global i32 0, align 4
@SNMP_ERR_NOERROR = common dso_local global i32 0, align 4
@SNMP_ERR_UNDO_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @op_ng_type(%struct.snmp_context* %0, %struct.snmp_value* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snmp_context*, align 8
  %8 = alloca %struct.snmp_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ngtype*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.snmp_context* %0, %struct.snmp_context** %7, align 8
  store %struct.snmp_value* %1, %struct.snmp_value** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %19 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  store i32 1, i32* %16, align 4
  %27 = load i32, i32* %11, align 4
  switch i32 %27, label %269 [
    i32 130, label %28
    i32 131, label %48
    i32 128, label %62
    i32 129, label %194
    i32 132, label %261
  ]

28:                                               ; preds = %5
  %29 = call i32 (...) @fetch_types()
  store i32 %29, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %17, align 4
  store i32 %32, i32* %6, align 4
  br label %282

33:                                               ; preds = %28
  %34 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %35 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %34, i32 0, i32 1
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.ngtype* @NEXT_OBJECT_OID(i32* @ngtype_list, %struct.TYPE_9__* %35, i32 %36)
  store %struct.ngtype* %37, %struct.ngtype** %13, align 8
  %38 = icmp eq %struct.ngtype* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %40, i32* %6, align 4
  br label %282

41:                                               ; preds = %33
  %42 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %43 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %42, i32 0, i32 1
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.ngtype*, %struct.ngtype** %13, align 8
  %46 = getelementptr inbounds %struct.ngtype, %struct.ngtype* %45, i32 0, i32 0
  %47 = call i32 @index_append(%struct.TYPE_9__* %43, i32 %44, i32* %46)
  br label %271

48:                                               ; preds = %5
  %49 = call i32 (...) @fetch_types()
  store i32 %49, i32* %17, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %17, align 4
  store i32 %52, i32* %6, align 4
  br label %282

53:                                               ; preds = %48
  %54 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %55 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %54, i32 0, i32 1
  %56 = load i32, i32* %9, align 4
  %57 = call %struct.ngtype* @FIND_OBJECT_OID(i32* @ngtype_list, %struct.TYPE_9__* %55, i32 %56)
  store %struct.ngtype* %57, %struct.ngtype** %13, align 8
  %58 = icmp eq %struct.ngtype* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @SNMP_ERR_NOSUCHNAME, align 4
  store i32 %60, i32* %6, align 4
  br label %282

61:                                               ; preds = %53
  br label %271

62:                                               ; preds = %5
  %63 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %64 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %63, i32 0, i32 1
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @index_decode(%struct.TYPE_9__* %64, i32 %65, i32 %66, i32** %14, i64* %15)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %70, i32* %6, align 4
  br label %282

71:                                               ; preds = %62
  %72 = load i64, i64* %15, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %71
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* @NG_TYPESIZ, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %74, %71
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @free(i32* %79)
  %81 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %81, i32* %6, align 4
  br label %282

82:                                               ; preds = %74
  %83 = call i32 (...) @fetch_types()
  store i32 %83, i32* %17, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @free(i32* %86)
  %88 = load i32, i32* %17, align 4
  store i32 %88, i32* %6, align 4
  br label %282

89:                                               ; preds = %82
  %90 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %91 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %90, i32 0, i32 1
  %92 = load i32, i32* %9, align 4
  %93 = call %struct.ngtype* @FIND_OBJECT_OID(i32* @ngtype_list, %struct.TYPE_9__* %91, i32 %92)
  store %struct.ngtype* %93, %struct.ngtype** %13, align 8
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 133
  br i1 %95, label %96, label %105

96:                                               ; preds = %89
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @free(i32* %97)
  %99 = load %struct.ngtype*, %struct.ngtype** %13, align 8
  %100 = icmp ne %struct.ngtype* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @SNMP_ERR_NOT_WRITEABLE, align 4
  store i32 %102, i32* %6, align 4
  br label %282

103:                                              ; preds = %96
  %104 = load i32, i32* @SNMP_ERR_NO_CREATION, align 4
  store i32 %104, i32* %6, align 4
  br label %282

105:                                              ; preds = %89
  %106 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %107 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @TRUTH_OK(i32 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %105
  %113 = load i32*, i32** %14, align 8
  %114 = call i32 @free(i32* %113)
  %115 = load i32, i32* @SNMP_ERR_WRONG_VALUE, align 4
  store i32 %115, i32* %6, align 4
  br label %282

116:                                              ; preds = %105
  %117 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %118 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @TRUTH_GET(i32 %120)
  %122 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %123 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %122, i32 0, i32 0
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  store i32 %121, i32* %125, align 8
  %126 = load %struct.ngtype*, %struct.ngtype** %13, align 8
  %127 = icmp ne %struct.ngtype* %126, null
  %128 = zext i1 %127 to i32
  %129 = shl i32 %128, 1
  %130 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %131 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %130, i32 0, i32 0
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 8
  %136 = load i32*, i32** %14, align 8
  %137 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %138 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %137, i32 0, i32 0
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  store i32* %136, i32** %140, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %143 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %142, i32 0, i32 0
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i64 %141, i64* %145, align 8
  %146 = load %struct.ngtype*, %struct.ngtype** %13, align 8
  %147 = icmp eq %struct.ngtype* %146, null
  br i1 %147, label %148, label %173

148:                                              ; preds = %116
  %149 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %150 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %149, i32 0, i32 0
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %148
  %157 = load i32*, i32** %14, align 8
  %158 = load i64, i64* %15, align 8
  %159 = call i32 @ngtype_load(i32* %157, i64 %158)
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %161, label %171

161:                                              ; preds = %156
  %162 = load i32*, i32** %14, align 8
  %163 = call i32 @free(i32* %162)
  %164 = load i32, i32* @errno, align 4
  %165 = load i32, i32* @ENOENT, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @SNMP_ERR_INCONS_NAME, align 4
  store i32 %168, i32* %6, align 4
  br label %282

169:                                              ; preds = %161
  %170 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %170, i32* %6, align 4
  br label %282

171:                                              ; preds = %156
  br label %172

172:                                              ; preds = %171, %148
  br label %192

173:                                              ; preds = %116
  %174 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %175 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %174, i32 0, i32 0
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %191, label %181

181:                                              ; preds = %173
  %182 = load i32*, i32** %14, align 8
  %183 = load i64, i64* %15, align 8
  %184 = call i32 @ngtype_unload(i32* %182, i64 %183)
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = load i32*, i32** %14, align 8
  %188 = call i32 @free(i32* %187)
  %189 = load i32, i32* @SNMP_ERR_GENERR, align 4
  store i32 %189, i32* %6, align 4
  br label %282

190:                                              ; preds = %181
  br label %191

191:                                              ; preds = %190, %173
  br label %192

192:                                              ; preds = %191, %172
  %193 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %193, i32* %6, align 4
  br label %282

194:                                              ; preds = %5
  %195 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %195, i32* %17, align 4
  %196 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %197 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %196, i32 0, i32 0
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, 2
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %228, label %203

203:                                              ; preds = %194
  %204 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %205 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %204, i32 0, i32 0
  %206 = load %struct.TYPE_7__*, %struct.TYPE_7__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = and i32 %208, 1
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %227

211:                                              ; preds = %203
  %212 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %213 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %212, i32 0, i32 0
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 2
  %216 = load i32*, i32** %215, align 8
  %217 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %218 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %217, i32 0, i32 0
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = call i32 @ngtype_unload(i32* %216, i64 %221)
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %226

224:                                              ; preds = %211
  %225 = load i32, i32* @SNMP_ERR_UNDO_FAILED, align 4
  store i32 %225, i32* %17, align 4
  br label %226

226:                                              ; preds = %224, %211
  br label %227

227:                                              ; preds = %226, %203
  br label %253

228:                                              ; preds = %194
  %229 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %230 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %229, i32 0, i32 0
  %231 = load %struct.TYPE_7__*, %struct.TYPE_7__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = and i32 %233, 1
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %252, label %236

236:                                              ; preds = %228
  %237 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %238 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %237, i32 0, i32 0
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %243 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %242, i32 0, i32 0
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = call i32 @ngtype_load(i32* %241, i64 %246)
  %248 = icmp eq i32 %247, -1
  br i1 %248, label %249, label %251

249:                                              ; preds = %236
  %250 = load i32, i32* @SNMP_ERR_UNDO_FAILED, align 4
  store i32 %250, i32* %17, align 4
  br label %251

251:                                              ; preds = %249, %236
  br label %252

252:                                              ; preds = %251, %228
  br label %253

253:                                              ; preds = %252, %227
  %254 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %255 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %254, i32 0, i32 0
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 2
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @free(i32* %258)
  %260 = load i32, i32* %17, align 4
  store i32 %260, i32* %6, align 4
  br label %282

261:                                              ; preds = %5
  %262 = load %struct.snmp_context*, %struct.snmp_context** %7, align 8
  %263 = getelementptr inbounds %struct.snmp_context, %struct.snmp_context* %262, i32 0, i32 0
  %264 = load %struct.TYPE_7__*, %struct.TYPE_7__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 2
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @free(i32* %266)
  %268 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %268, i32* %6, align 4
  br label %282

269:                                              ; preds = %5
  %270 = call i32 (...) @abort() #3
  unreachable

271:                                              ; preds = %61, %41
  %272 = load i32, i32* %12, align 4
  switch i32 %272, label %278 [
    i32 133, label %273
  ]

273:                                              ; preds = %271
  %274 = load i32, i32* %16, align 4
  %275 = load %struct.snmp_value*, %struct.snmp_value** %8, align 8
  %276 = getelementptr inbounds %struct.snmp_value, %struct.snmp_value* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %276, i32 0, i32 0
  store i32 %274, i32* %277, align 8
  br label %280

278:                                              ; preds = %271
  %279 = call i32 (...) @abort() #3
  unreachable

280:                                              ; preds = %273
  %281 = load i32, i32* @SNMP_ERR_NOERROR, align 4
  store i32 %281, i32* %6, align 4
  br label %282

282:                                              ; preds = %280, %261, %253, %192, %186, %169, %167, %112, %103, %101, %85, %78, %69, %59, %51, %39, %31
  %283 = load i32, i32* %6, align 4
  ret i32 %283
}

declare dso_local i32 @fetch_types(...) #1

declare dso_local %struct.ngtype* @NEXT_OBJECT_OID(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @index_append(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local %struct.ngtype* @FIND_OBJECT_OID(i32*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @index_decode(%struct.TYPE_9__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @TRUTH_OK(i32) #1

declare dso_local i32 @TRUTH_GET(i32) #1

declare dso_local i32 @ngtype_load(i32*, i64) #1

declare dso_local i32 @ngtype_unload(i32*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
