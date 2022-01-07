; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/tools/bsnmptools/extr_bsnmpget.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.snmp_toolinfo = type { i64, i32 }

@.str = private unnamed_addr constant [9 x i8] c"snmptool\00", align 1
@program_name = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error: No program name?\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"bsnmpget\00", align 1
@program = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"bsnmpwalk\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"bsnmpset\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Unknown snmp tool name '%s'.\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"No OID given.\0A\00", align 1
@snmpwalk_add_default = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Error setting default subtree.\0A\00", align 1
@snmp_client = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SNMP_V1 = common dso_local global i64 0, align 8
@SNMP_PDU_GETBULK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [38 x i8] c"Cannot send GETBULK PDU with SNMPv1.\0A\00", align 1
@snmpset_parse_oid = common dso_local global i32 0, align 4
@snmptools_parse_oid = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Error parsing OID string '%s'.\0A\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"Failed to open snmp session\00", align 1
@SNMP_V3 = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [23 x i8] c"Unknown SNMP Engine ID\00", align 1
@OUTPUT_VERBOSE = common dso_local global i64 0, align 8
@SNMP_CODE_OK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [19 x i8] c"Failed to get keys\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.snmp_toolinfo, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** @program_name, align 8
  br label %28

15:                                               ; preds = %2
  %16 = load i8**, i8*** %5, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i8* @strrchr(i8* %17, i8 signext 47)
  store i8* %18, i8** @program_name, align 8
  %19 = load i8*, i8** @program_name, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i8*, i8** @program_name, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** @program_name, align 8
  br label %27

24:                                               ; preds = %15
  %25 = load i8**, i8*** %5, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** @program_name, align 8
  br label %27

27:                                               ; preds = %24, %21
  br label %28

28:                                               ; preds = %27, %14
  %29 = load i8*, i8** @program_name, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %28
  %36 = load i8*, i8** @program_name, align 8
  %37 = call i64 @strcmp(i8* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 130, i32* @program, align 4
  br label %57

40:                                               ; preds = %35
  %41 = load i8*, i8** @program_name, align 8
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 128, i32* @program, align 4
  br label %56

45:                                               ; preds = %40
  %46 = load i8*, i8** @program_name, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 129, i32* @program, align 4
  br label %55

50:                                               ; preds = %45
  %51 = load i32, i32* @stderr, align 4
  %52 = load i8*, i8** @program_name, align 8
  %53 = call i32 (i32, i8*, ...) @fprintf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %52)
  %54 = call i32 @exit(i32 1) #3
  unreachable

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %44
  br label %57

57:                                               ; preds = %56, %39
  br label %58

58:                                               ; preds = %57
  %59 = call i64 @snmptool_init(%struct.snmp_toolinfo* %6)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 @exit(i32 1) #3
  unreachable

63:                                               ; preds = %58
  %64 = load i32, i32* %4, align 4
  %65 = load i8**, i8*** %5, align 8
  %66 = call i32 @snmptool_parse_options(%struct.snmp_toolinfo* %6, i32 %64, i8** %65)
  store i32 %66, i32* %9, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %70 = load i32, i32* %9, align 4
  %71 = icmp eq i32 %70, -2
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = call i32 @exit(i32 0) #3
  unreachable

74:                                               ; preds = %68
  %75 = call i32 @exit(i32 1) #3
  unreachable

76:                                               ; preds = %63
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %9, align 4
  %79 = sub nsw i32 %77, %78
  %80 = sub nsw i32 %79, 1
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %115

83:                                               ; preds = %76
  %84 = load i32, i32* @program, align 4
  switch i32 %84, label %114 [
    i32 130, label %85
    i32 128, label %98
    i32 129, label %108
  ]

85:                                               ; preds = %83
  %86 = call i64 @ISSET_EDISCOVER(%struct.snmp_toolinfo* %6)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %85
  %89 = call i64 @ISSET_LOCALKEY(%struct.snmp_toolinfo* %6)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @stderr, align 4
  %93 = call i32 (i32, i8*, ...) @fprintf(i32 %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %94 = call i32 (...) @usage()
  %95 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %96 = call i32 @exit(i32 1) #3
  unreachable

97:                                               ; preds = %88, %85
  br label %114

98:                                               ; preds = %83
  %99 = load i32, i32* @snmpwalk_add_default, align 4
  %100 = call i64 @snmp_object_add(%struct.snmp_toolinfo* %6, i32 %99, i8* null)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = load i32, i32* @stderr, align 4
  %104 = call i32 (i32, i8*, ...) @fprintf(i32 %103, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %105 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %106 = call i32 @exit(i32 1) #3
  unreachable

107:                                              ; preds = %98
  br label %114

108:                                              ; preds = %83
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %111 = call i32 (...) @usage()
  %112 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %113 = call i32 @exit(i32 1) #3
  unreachable

114:                                              ; preds = %83, %107, %97
  br label %115

115:                                              ; preds = %114, %76
  %116 = call i64 @snmp_import_all(%struct.snmp_toolinfo* %6)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %120 = call i32 @exit(i32 1) #3
  unreachable

121:                                              ; preds = %115
  %122 = load i32, i32* @program, align 4
  %123 = icmp eq i32 %122, 130
  br i1 %123, label %124, label %137

124:                                              ; preds = %121
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0), align 8
  %126 = load i64, i64* @SNMP_V1, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %137

128:                                              ; preds = %124
  %129 = call i64 @GET_PDUTYPE(%struct.snmp_toolinfo* %6)
  %130 = load i64, i64* @SNMP_PDU_GETBULK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %128
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 (i32, i8*, ...) @fprintf(i32 %133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %135 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %136 = call i32 @exit(i32 1) #3
  unreachable

137:                                              ; preds = %128, %124, %121
  %138 = load i32, i32* %4, align 4
  %139 = sub nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %170, %137
  %141 = load i32, i32* %7, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %175

143:                                              ; preds = %140
  %144 = load i32, i32* @program, align 4
  %145 = icmp eq i32 %144, 129
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i32, i32* @snmpset_parse_oid, align 4
  br label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @snmptools_parse_oid, align 4
  br label %150

150:                                              ; preds = %148, %146
  %151 = phi i32 [ %147, %146 ], [ %149, %148 ]
  %152 = load i8**, i8*** %5, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8*, i8** %152, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = call i64 @snmp_object_add(%struct.snmp_toolinfo* %6, i32 %151, i8* %156)
  %158 = icmp slt i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %150
  %160 = load i32, i32* @stderr, align 4
  %161 = load i8**, i8*** %5, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i8*, i8** %161, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 (i32, i8*, ...) @fprintf(i32 %160, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %165)
  %167 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %168 = call i32 @exit(i32 1) #3
  unreachable

169:                                              ; preds = %150
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %8, align 4
  %173 = load i32, i32* %7, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %7, align 4
  br label %140

175:                                              ; preds = %140
  %176 = call i64 @snmp_open(i32* null, i32* null, i32* null, i32* null)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %180 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %181 = call i32 @exit(i32 1) #3
  unreachable

182:                                              ; preds = %175
  %183 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0), align 8
  %184 = load i64, i64* @SNMP_V3, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %182
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 1, i32 0), align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = call i32 @SET_EDISCOVER(%struct.snmp_toolinfo* %6)
  br label %191

191:                                              ; preds = %189, %186, %182
  %192 = call i64 @ISSET_EDISCOVER(%struct.snmp_toolinfo* %6)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %6, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @snmp_discover_engine(i32 %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = call i32 @warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %261

201:                                              ; preds = %194, %191
  %202 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %6)
  %203 = load i64, i64* @OUTPUT_VERBOSE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %208, label %205

205:                                              ; preds = %201
  %206 = call i64 @ISSET_EDISCOVER(%struct.snmp_toolinfo* %6)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %205, %201
  %209 = call i32 (...) @snmp_output_engine()
  br label %210

210:                                              ; preds = %208, %205
  %211 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 0), align 8
  %212 = load i64, i64* @SNMP_V3, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %235

214:                                              ; preds = %210
  %215 = call i64 @ISSET_LOCALKEY(%struct.snmp_toolinfo* %6)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %235

217:                                              ; preds = %214
  %218 = call i64 @ISSET_EDISCOVER(%struct.snmp_toolinfo* %6)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %235, label %220

220:                                              ; preds = %217
  %221 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %6, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @snmp_passwd_to_keys(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 2), i32 %222)
  %224 = load i64, i64* @SNMP_CODE_OK, align 8
  %225 = icmp ne i64 %223, %224
  br i1 %225, label %232, label %226

226:                                              ; preds = %220
  %227 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 1, i32 1), align 8
  %228 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 1, i32 0), align 8
  %229 = call i64 @snmp_get_local_keys(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @snmp_client, i32 0, i32 2), i32 %227, i64 %228)
  %230 = load i64, i64* @SNMP_CODE_OK, align 8
  %231 = icmp ne i64 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %226, %220
  %233 = call i32 @warn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %261

234:                                              ; preds = %226
  br label %235

235:                                              ; preds = %234, %217, %214, %210
  %236 = call i64 @GET_OUTPUT(%struct.snmp_toolinfo* %6)
  %237 = load i64, i64* @OUTPUT_VERBOSE, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %242, label %239

239:                                              ; preds = %235
  %240 = call i64 @ISSET_EDISCOVER(%struct.snmp_toolinfo* %6)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %239, %235
  %243 = call i32 (...) @snmp_output_keys()
  br label %244

244:                                              ; preds = %242, %239
  %245 = call i64 @ISSET_EDISCOVER(%struct.snmp_toolinfo* %6)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %244
  %248 = getelementptr inbounds %struct.snmp_toolinfo, %struct.snmp_toolinfo* %6, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  br label %261

252:                                              ; preds = %247, %244
  %253 = load i32, i32* @program, align 4
  switch i32 %253, label %260 [
    i32 130, label %254
    i32 128, label %256
    i32 129, label %258
  ]

254:                                              ; preds = %252
  %255 = call i32 @snmptool_get(%struct.snmp_toolinfo* %6)
  store i32 %255, i32* %10, align 4
  br label %260

256:                                              ; preds = %252
  %257 = call i32 @snmptool_walk(%struct.snmp_toolinfo* %6)
  store i32 %257, i32* %10, align 4
  br label %260

258:                                              ; preds = %252
  %259 = call i32 @snmptool_set(%struct.snmp_toolinfo* %6)
  store i32 %259, i32* %10, align 4
  br label %260

260:                                              ; preds = %252, %258, %256, %254
  br label %261

261:                                              ; preds = %260, %251, %232, %199
  %262 = call i32 @snmp_tool_freeall(%struct.snmp_toolinfo* %6)
  %263 = call i32 (...) @snmp_close()
  %264 = load i32, i32* %10, align 4
  %265 = call i32 @exit(i32 %264) #3
  unreachable
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @snmptool_init(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmptool_parse_options(%struct.snmp_toolinfo*, i32, i8**) #1

declare dso_local i32 @snmp_tool_freeall(%struct.snmp_toolinfo*) #1

declare dso_local i64 @ISSET_EDISCOVER(%struct.snmp_toolinfo*) #1

declare dso_local i64 @ISSET_LOCALKEY(%struct.snmp_toolinfo*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @snmp_object_add(%struct.snmp_toolinfo*, i32, i8*) #1

declare dso_local i64 @snmp_import_all(%struct.snmp_toolinfo*) #1

declare dso_local i64 @GET_PDUTYPE(%struct.snmp_toolinfo*) #1

declare dso_local i64 @snmp_open(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @SET_EDISCOVER(%struct.snmp_toolinfo*) #1

declare dso_local i64 @snmp_discover_engine(i32) #1

declare dso_local i64 @GET_OUTPUT(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmp_output_engine(...) #1

declare dso_local i64 @snmp_passwd_to_keys(i32*, i32) #1

declare dso_local i64 @snmp_get_local_keys(i32*, i32, i64) #1

declare dso_local i32 @snmp_output_keys(...) #1

declare dso_local i32 @snmptool_get(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmptool_walk(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmptool_set(%struct.snmp_toolinfo*) #1

declare dso_local i32 @snmp_close(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
