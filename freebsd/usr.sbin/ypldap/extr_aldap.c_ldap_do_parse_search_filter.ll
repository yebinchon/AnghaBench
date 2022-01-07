; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_ldap_do_parse_search_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ypldap/extr_aldap.c_ldap_do_parse_search_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ber_element = type { i32 }

@LDAP_FILT_AND = common dso_local global i64 0, align 8
@LDAP_FILT_OR = common dso_local global i64 0, align 8
@BER_CLASS_CONTEXT = common dso_local global i32 0, align 4
@LDAP_FILT_NOT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"()<>~=\00", align 1
@LDAP_FILT_APPR = common dso_local global i64 0, align 8
@LDAP_FILT_LE = common dso_local global i64 0, align 8
@LDAP_FILT_GE = common dso_local global i64 0, align 8
@LDAP_FILT_EQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"*)\00", align 1
@LDAP_FILT_PRES = common dso_local global i64 0, align 8
@LDAP_FILT_SUBS = common dso_local global i64 0, align 8
@LDAP_FILT_SUBS_INIT = common dso_local global i64 0, align 8
@LDAP_FILT_SUBS_FIN = common dso_local global i64 0, align 8
@LDAP_FILT_SUBS_ANY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ber_element* (%struct.ber_element*, i8**)* @ldap_do_parse_search_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ber_element* @ldap_do_parse_search_filter(%struct.ber_element* %0, i8** %1) #0 {
  %3 = alloca %struct.ber_element*, align 8
  %4 = alloca %struct.ber_element*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ber_element*, align 8
  %7 = alloca %struct.ber_element*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.ber_element* %0, %struct.ber_element** %4, align 8
  store i8** %1, i8*** %5, align 8
  store %struct.ber_element* null, %struct.ber_element** %7, align 8
  store %struct.ber_element* null, %struct.ber_element** %7, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp ne i32 %19, 40
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %285

22:                                               ; preds = %2
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %11, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %95 [
    i32 38, label %27
    i32 124, label %27
    i32 33, label %72
  ]

27:                                               ; preds = %22, %22
  %28 = load i8*, i8** %11, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp eq i32 %30, 38
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i64, i64* @LDAP_FILT_AND, align 8
  store i64 %33, i64* %13, align 8
  br label %36

34:                                               ; preds = %27
  %35 = load i64, i64* @LDAP_FILT_OR, align 8
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %38 = call %struct.ber_element* @ber_add_set(%struct.ber_element* %37)
  store %struct.ber_element* %38, %struct.ber_element** %6, align 8
  %39 = icmp eq %struct.ber_element* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  br label %286

41:                                               ; preds = %36
  %42 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  store %struct.ber_element* %42, %struct.ber_element** %7, align 8
  %43 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %44 = load i32, i32* @BER_CLASS_CONTEXT, align 4
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @ber_set_header(%struct.ber_element* %43, i32 %44, i64 %45)
  %47 = load i8*, i8** %11, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %11, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp ne i32 %50, 40
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %285

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %64, %53
  %55 = load i8*, i8** %11, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 40
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %61 = call %struct.ber_element* @ldap_do_parse_search_filter(%struct.ber_element* %60, i8** %11)
  store %struct.ber_element* %61, %struct.ber_element** %6, align 8
  %62 = icmp eq %struct.ber_element* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %287

64:                                               ; preds = %59
  br label %54

65:                                               ; preds = %54
  %66 = load i8*, i8** %11, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 41
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %285

71:                                               ; preds = %65
  br label %279

72:                                               ; preds = %22
  %73 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %74 = call %struct.ber_element* @ber_add_sequence(%struct.ber_element* %73)
  store %struct.ber_element* %74, %struct.ber_element** %7, align 8
  %75 = icmp eq %struct.ber_element* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %286

77:                                               ; preds = %72
  %78 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %79 = load i32, i32* @BER_CLASS_CONTEXT, align 4
  %80 = load i64, i64* @LDAP_FILT_NOT, align 8
  %81 = call i32 @ber_set_header(%struct.ber_element* %78, i32 %79, i64 %80)
  %82 = load i8*, i8** %11, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %11, align 8
  %84 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %85 = call %struct.ber_element* @ldap_do_parse_search_filter(%struct.ber_element* %84, i8** %11)
  store %struct.ber_element* %85, %struct.ber_element** %6, align 8
  %86 = icmp eq %struct.ber_element* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  br label %287

88:                                               ; preds = %77
  %89 = load i8*, i8** %11, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 41
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %285

94:                                               ; preds = %88
  br label %279

95:                                               ; preds = %22
  %96 = load i8*, i8** %11, align 8
  store i8* %96, i8** %8, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = call i64 @strcspn(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i64 %98, i64* %12, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 %99
  store i8* %101, i8** %11, align 8
  %102 = load i8*, i8** %11, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  switch i32 %104, label %120 [
    i32 126, label %105
    i32 60, label %109
    i32 62, label %113
    i32 61, label %117
    i32 40, label %119
    i32 41, label %119
  ]

105:                                              ; preds = %95
  %106 = load i64, i64* @LDAP_FILT_APPR, align 8
  store i64 %106, i64* %13, align 8
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i32 1
  store i8* %108, i8** %11, align 8
  br label %121

109:                                              ; preds = %95
  %110 = load i64, i64* @LDAP_FILT_LE, align 8
  store i64 %110, i64* %13, align 8
  %111 = load i8*, i8** %11, align 8
  %112 = getelementptr inbounds i8, i8* %111, i32 1
  store i8* %112, i8** %11, align 8
  br label %121

113:                                              ; preds = %95
  %114 = load i64, i64* @LDAP_FILT_GE, align 8
  store i64 %114, i64* %13, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %11, align 8
  br label %121

117:                                              ; preds = %95
  %118 = load i64, i64* @LDAP_FILT_EQ, align 8
  store i64 %118, i64* %13, align 8
  br label %121

119:                                              ; preds = %95, %95
  br label %120

120:                                              ; preds = %95, %119
  br label %285

121:                                              ; preds = %117, %113, %109, %105
  %122 = load i8*, i8** %11, align 8
  %123 = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %123, i8** %11, align 8
  store i8* %123, i8** %9, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = call i32 @strncmp(i8* %124, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load i8*, i8** %11, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %11, align 8
  %130 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %131 = load i8*, i8** %8, align 8
  %132 = load i64, i64* %12, align 8
  %133 = call %struct.ber_element* @ber_add_nstring(%struct.ber_element* %130, i8* %131, i64 %132)
  store %struct.ber_element* %133, %struct.ber_element** %7, align 8
  %134 = icmp eq %struct.ber_element* %133, null
  br i1 %134, label %135, label %136

135:                                              ; preds = %127
  br label %287

136:                                              ; preds = %127
  %137 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %138 = load i32, i32* @BER_CLASS_CONTEXT, align 4
  %139 = load i64, i64* @LDAP_FILT_PRES, align 8
  %140 = call i32 @ber_set_header(%struct.ber_element* %137, i32 %138, i64 %139)
  br label %279

141:                                              ; preds = %121
  %142 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %143 = call %struct.ber_element* @ber_add_sequence(%struct.ber_element* %142)
  store %struct.ber_element* %143, %struct.ber_element** %7, align 8
  %144 = icmp eq %struct.ber_element* %143, null
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %286

146:                                              ; preds = %141
  %147 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %148 = load i32, i32* @BER_CLASS_CONTEXT, align 4
  %149 = load i64, i64* %13, align 8
  %150 = call i32 @ber_set_header(%struct.ber_element* %147, i32 %148, i64 %149)
  %151 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call %struct.ber_element* @ber_add_nstring(%struct.ber_element* %151, i8* %152, i64 %153)
  store %struct.ber_element* %154, %struct.ber_element** %6, align 8
  %155 = icmp eq %struct.ber_element* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  br label %286

157:                                              ; preds = %146
  %158 = load i8*, i8** %9, align 8
  %159 = call i64 @strcspn(i8* %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %159, i64* %12, align 8
  %160 = load i64, i64* %12, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i8*, i8** %11, align 8
  %164 = load i8, i8* %163, align 1
  %165 = sext i8 %164 to i32
  %166 = icmp ne i32 %165, 42
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %285

168:                                              ; preds = %162, %157
  %169 = load i64, i64* %12, align 8
  %170 = load i8*, i8** %11, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 %169
  store i8* %171, i8** %11, align 8
  %172 = load i8*, i8** %11, align 8
  %173 = load i8, i8* %172, align 1
  %174 = sext i8 %173 to i32
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %168
  br label %285

177:                                              ; preds = %168
  %178 = load i8*, i8** %11, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 42
  br i1 %181, label %182, label %261

182:                                              ; preds = %177
  %183 = load i8*, i8** %9, align 8
  store i8* %183, i8** %11, align 8
  %184 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %185 = load i32, i32* @BER_CLASS_CONTEXT, align 4
  %186 = load i64, i64* @LDAP_FILT_SUBS, align 8
  %187 = call i32 @ber_set_header(%struct.ber_element* %184, i32 %185, i64 %186)
  %188 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %189 = call %struct.ber_element* @ber_add_sequence(%struct.ber_element* %188)
  store %struct.ber_element* %189, %struct.ber_element** %6, align 8
  %190 = icmp eq %struct.ber_element* %189, null
  br i1 %190, label %191, label %192

191:                                              ; preds = %182
  br label %286

192:                                              ; preds = %182
  store i32 1, i32* %14, align 4
  br label %193

193:                                              ; preds = %257, %192
  %194 = load i8*, i8** %11, align 8
  store i8* %194, i8** %9, align 8
  %195 = load i8*, i8** %9, align 8
  %196 = call i64 @strcspn(i8* %195, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i64 %196, i64* %12, align 8
  %197 = load i64, i64* %12, align 8
  %198 = icmp eq i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %193
  %200 = load i8*, i8** %11, align 8
  %201 = load i8, i8* %200, align 1
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 41
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %260

205:                                              ; preds = %199
  br label %257

206:                                              ; preds = %193
  %207 = load i64, i64* %12, align 8
  %208 = load i8*, i8** %11, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 %207
  store i8* %209, i8** %11, align 8
  %210 = load i8*, i8** %11, align 8
  %211 = load i8, i8* %210, align 1
  %212 = sext i8 %211 to i32
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %206
  br label %285

215:                                              ; preds = %206
  %216 = load i32, i32* %14, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i64, i64* @LDAP_FILT_SUBS_INIT, align 8
  store i64 %219, i64* %13, align 8
  br label %230

220:                                              ; preds = %215
  %221 = load i8*, i8** %11, align 8
  %222 = load i8, i8* %221, align 1
  %223 = sext i8 %222 to i32
  %224 = icmp eq i32 %223, 41
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i64, i64* @LDAP_FILT_SUBS_FIN, align 8
  store i64 %226, i64* %13, align 8
  br label %229

227:                                              ; preds = %220
  %228 = load i64, i64* @LDAP_FILT_SUBS_ANY, align 8
  store i64 %228, i64* %13, align 8
  br label %229

229:                                              ; preds = %227, %225
  br label %230

230:                                              ; preds = %229, %218
  %231 = load i8*, i8** %9, align 8
  %232 = load i64, i64* %12, align 8
  %233 = call i8* @parseval(i8* %231, i64 %232)
  store i8* %233, i8** %10, align 8
  %234 = icmp eq i8* %233, null
  br i1 %234, label %235, label %236

235:                                              ; preds = %230
  br label %286

236:                                              ; preds = %230
  %237 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %238 = load i8*, i8** %10, align 8
  %239 = load i8*, i8** %10, align 8
  %240 = call i64 @strlen(i8* %239)
  %241 = call %struct.ber_element* @ber_add_nstring(%struct.ber_element* %237, i8* %238, i64 %240)
  store %struct.ber_element* %241, %struct.ber_element** %6, align 8
  %242 = load i8*, i8** %10, align 8
  %243 = call i32 @free(i8* %242)
  %244 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %245 = icmp eq %struct.ber_element* %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %236
  br label %286

247:                                              ; preds = %236
  %248 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %249 = load i32, i32* @BER_CLASS_CONTEXT, align 4
  %250 = load i64, i64* %13, align 8
  %251 = call i32 @ber_set_header(%struct.ber_element* %248, i32 %249, i64 %250)
  %252 = load i64, i64* %13, align 8
  %253 = load i64, i64* @LDAP_FILT_SUBS_FIN, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %256

255:                                              ; preds = %247
  br label %260

256:                                              ; preds = %247
  br label %257

257:                                              ; preds = %256, %205
  %258 = load i8*, i8** %11, align 8
  %259 = getelementptr inbounds i8, i8* %258, i32 1
  store i8* %259, i8** %11, align 8
  store i32 0, i32* %14, align 4
  br label %193

260:                                              ; preds = %255, %204
  br label %279

261:                                              ; preds = %177
  %262 = load i8*, i8** %9, align 8
  %263 = load i64, i64* %12, align 8
  %264 = call i8* @parseval(i8* %262, i64 %263)
  store i8* %264, i8** %10, align 8
  %265 = icmp eq i8* %264, null
  br i1 %265, label %266, label %267

266:                                              ; preds = %261
  br label %286

267:                                              ; preds = %261
  %268 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %269 = load i8*, i8** %10, align 8
  %270 = load i8*, i8** %10, align 8
  %271 = call i64 @strlen(i8* %270)
  %272 = call %struct.ber_element* @ber_add_nstring(%struct.ber_element* %268, i8* %269, i64 %271)
  store %struct.ber_element* %272, %struct.ber_element** %6, align 8
  %273 = load i8*, i8** %10, align 8
  %274 = call i32 @free(i8* %273)
  %275 = load %struct.ber_element*, %struct.ber_element** %6, align 8
  %276 = icmp eq %struct.ber_element* %275, null
  br i1 %276, label %277, label %278

277:                                              ; preds = %267
  br label %286

278:                                              ; preds = %267
  br label %279

279:                                              ; preds = %278, %260, %136, %94, %71
  %280 = load i8*, i8** %11, align 8
  %281 = getelementptr inbounds i8, i8* %280, i32 1
  store i8* %281, i8** %11, align 8
  %282 = load i8*, i8** %11, align 8
  %283 = load i8**, i8*** %5, align 8
  store i8* %282, i8** %283, align 8
  %284 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  store %struct.ber_element* %284, %struct.ber_element** %3, align 8
  br label %296

285:                                              ; preds = %214, %176, %167, %120, %93, %70, %52, %21
  br label %286

286:                                              ; preds = %285, %277, %266, %246, %235, %191, %156, %145, %76, %40
  br label %287

287:                                              ; preds = %286, %135, %87, %63
  %288 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %289 = icmp ne %struct.ber_element* %288, null
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  %291 = load %struct.ber_element*, %struct.ber_element** %7, align 8
  %292 = call i32 @ber_free_elements(%struct.ber_element* %291)
  br label %293

293:                                              ; preds = %290, %287
  %294 = load %struct.ber_element*, %struct.ber_element** %4, align 8
  %295 = call i32 @ber_link_elements(%struct.ber_element* %294, i32* null)
  store %struct.ber_element* null, %struct.ber_element** %3, align 8
  br label %296

296:                                              ; preds = %293, %279
  %297 = load %struct.ber_element*, %struct.ber_element** %3, align 8
  ret %struct.ber_element* %297
}

declare dso_local %struct.ber_element* @ber_add_set(%struct.ber_element*) #1

declare dso_local i32 @ber_set_header(%struct.ber_element*, i32, i64) #1

declare dso_local %struct.ber_element* @ber_add_sequence(%struct.ber_element*) #1

declare dso_local i64 @strcspn(i8*, i8*) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local %struct.ber_element* @ber_add_nstring(%struct.ber_element*, i8*, i64) #1

declare dso_local i8* @parseval(i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ber_free_elements(%struct.ber_element*) #1

declare dso_local i32 @ber_link_elements(%struct.ber_element*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
