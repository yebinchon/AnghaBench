; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_specspec.c_compare_nodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_specspec.c_compare_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 }

@F_LINK = common dso_local global i64 0, align 8
@F_MODE = common dso_local global i32 0, align 4
@F_TYPE = common dso_local global i32 0, align 4
@F_CKSUM = common dso_local global i32 0, align 4
@cksum = common dso_local global i32 0, align 4
@F_GID = common dso_local global i32 0, align 4
@st_gid = common dso_local global i32 0, align 4
@F_GNAME = common dso_local global i32 0, align 4
@st_mode = common dso_local global i32 0, align 4
@F_NLINK = common dso_local global i32 0, align 4
@st_nlink = common dso_local global i32 0, align 4
@F_SIZE = common dso_local global i32 0, align 4
@st_size = common dso_local global i32 0, align 4
@F_SLINK = common dso_local global i32 0, align 4
@slink = common dso_local global i32 0, align 4
@F_TIME = common dso_local global i32 0, align 4
@st_mtimespec = common dso_local global i32 0, align 4
@F_UID = common dso_local global i32 0, align 4
@st_uid = common dso_local global i32 0, align 4
@F_UNAME = common dso_local global i32 0, align 4
@F_MD5 = common dso_local global i32 0, align 4
@md5digest = common dso_local global i32 0, align 4
@F_SHA1 = common dso_local global i32 0, align 4
@sha1digest = common dso_local global i32 0, align 4
@F_RMD160 = common dso_local global i32 0, align 4
@rmd160digest = common dso_local global i32 0, align 4
@F_SHA256 = common dso_local global i32 0, align 4
@sha256digest = common dso_local global i32 0, align 4
@F_FLAGS = common dso_local global i32 0, align 4
@st_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_12__*, i8*)* @compare_nodes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_nodes(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @F_LINK, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load i32, i32* @F_MODE, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %17, %11, %3
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %26 = icmp ne %struct.TYPE_12__* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %24
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @F_LINK, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load i32, i32* @F_MODE, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %33, %27, %24
  store i32 0, i32* %8, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = icmp eq %struct.TYPE_12__* %41, null
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %45 = icmp ne %struct.TYPE_12__* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %8, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @mismatch(%struct.TYPE_12__* %50, %struct.TYPE_12__* %51, i32 %52, i8* %53)
  store i32 1, i32* %4, align 4
  br label %260

55:                                               ; preds = %43, %40
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %57 = icmp ne %struct.TYPE_12__* %56, null
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = icmp eq %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  store i32 %64, i32* %8, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @mismatch(%struct.TYPE_12__* %65, %struct.TYPE_12__* %66, i32 %67, i8* %68)
  store i32 1, i32* %4, align 4
  br label %260

70:                                               ; preds = %58, %55
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* @F_TYPE, align 4
  store i32 %79, i32* %8, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %82 = load i32, i32* %8, align 4
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @mismatch(%struct.TYPE_12__* %80, %struct.TYPE_12__* %81, i32 %82, i8* %83)
  store i32 1, i32* %4, align 4
  br label %260

85:                                               ; preds = %70
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = load i32, i32* @F_CKSUM, align 4
  %89 = load i32, i32* @cksum, align 4
  %90 = call i64 @FF(%struct.TYPE_12__* %86, %struct.TYPE_12__* %87, i32 %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @F_CKSUM, align 4
  %94 = load i32, i32* %8, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %8, align 4
  br label %96

96:                                               ; preds = %92, %85
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %99 = load i32, i32* @F_GID, align 4
  %100 = load i32, i32* @st_gid, align 4
  %101 = call i64 @FF(%struct.TYPE_12__* %97, %struct.TYPE_12__* %98, i32 %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load i32, i32* @F_GID, align 4
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %110 = load i32, i32* @F_GNAME, align 4
  %111 = load i32, i32* @st_gid, align 4
  %112 = call i64 @FF(%struct.TYPE_12__* %108, %struct.TYPE_12__* %109, i32 %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @F_GNAME, align 4
  %116 = load i32, i32* %8, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %8, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = load i32, i32* @F_MODE, align 4
  %122 = load i32, i32* @st_mode, align 4
  %123 = call i64 @FF(%struct.TYPE_12__* %119, %struct.TYPE_12__* %120, i32 %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = load i32, i32* @F_MODE, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %129

129:                                              ; preds = %125, %118
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %132 = load i32, i32* @F_NLINK, align 4
  %133 = load i32, i32* @st_nlink, align 4
  %134 = call i64 @FF(%struct.TYPE_12__* %130, %struct.TYPE_12__* %131, i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %129
  %137 = load i32, i32* @F_NLINK, align 4
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %136, %129
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = load i32, i32* @F_SIZE, align 4
  %144 = load i32, i32* @st_size, align 4
  %145 = call i64 @FF(%struct.TYPE_12__* %141, %struct.TYPE_12__* %142, i32 %143, i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %140
  %148 = load i32, i32* @F_SIZE, align 4
  %149 = load i32, i32* %8, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %8, align 4
  br label %151

151:                                              ; preds = %147, %140
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %154 = load i32, i32* @F_SLINK, align 4
  %155 = load i32, i32* @slink, align 4
  %156 = call i64 @FS(%struct.TYPE_12__* %152, %struct.TYPE_12__* %153, i32 %154, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = load i32, i32* @F_SLINK, align 4
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %8, align 4
  br label %162

162:                                              ; preds = %158, %151
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %165 = load i32, i32* @F_TIME, align 4
  %166 = load i32, i32* @st_mtimespec, align 4
  %167 = call i64 @FM(%struct.TYPE_12__* %163, %struct.TYPE_12__* %164, i32 %165, i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load i32, i32* @F_TIME, align 4
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %173

173:                                              ; preds = %169, %162
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %176 = load i32, i32* @F_UID, align 4
  %177 = load i32, i32* @st_uid, align 4
  %178 = call i64 @FF(%struct.TYPE_12__* %174, %struct.TYPE_12__* %175, i32 %176, i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load i32, i32* @F_UID, align 4
  %182 = load i32, i32* %8, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %8, align 4
  br label %184

184:                                              ; preds = %180, %173
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %187 = load i32, i32* @F_UNAME, align 4
  %188 = load i32, i32* @st_uid, align 4
  %189 = call i64 @FF(%struct.TYPE_12__* %185, %struct.TYPE_12__* %186, i32 %187, i32 %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %184
  %192 = load i32, i32* @F_UNAME, align 4
  %193 = load i32, i32* %8, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %8, align 4
  br label %195

195:                                              ; preds = %191, %184
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %198 = load i32, i32* @F_MD5, align 4
  %199 = load i32, i32* @md5digest, align 4
  %200 = call i64 @FS(%struct.TYPE_12__* %196, %struct.TYPE_12__* %197, i32 %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %195
  %203 = load i32, i32* @F_MD5, align 4
  %204 = load i32, i32* %8, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %202, %195
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %209 = load i32, i32* @F_SHA1, align 4
  %210 = load i32, i32* @sha1digest, align 4
  %211 = call i64 @FS(%struct.TYPE_12__* %207, %struct.TYPE_12__* %208, i32 %209, i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %206
  %214 = load i32, i32* @F_SHA1, align 4
  %215 = load i32, i32* %8, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %8, align 4
  br label %217

217:                                              ; preds = %213, %206
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %220 = load i32, i32* @F_RMD160, align 4
  %221 = load i32, i32* @rmd160digest, align 4
  %222 = call i64 @FS(%struct.TYPE_12__* %218, %struct.TYPE_12__* %219, i32 %220, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %217
  %225 = load i32, i32* @F_RMD160, align 4
  %226 = load i32, i32* %8, align 4
  %227 = or i32 %226, %225
  store i32 %227, i32* %8, align 4
  br label %228

228:                                              ; preds = %224, %217
  %229 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %231 = load i32, i32* @F_SHA256, align 4
  %232 = load i32, i32* @sha256digest, align 4
  %233 = call i64 @FS(%struct.TYPE_12__* %229, %struct.TYPE_12__* %230, i32 %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %228
  %236 = load i32, i32* @F_SHA256, align 4
  %237 = load i32, i32* %8, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %8, align 4
  br label %239

239:                                              ; preds = %235, %228
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %242 = load i32, i32* @F_FLAGS, align 4
  %243 = load i32, i32* @st_flags, align 4
  %244 = call i64 @FF(%struct.TYPE_12__* %240, %struct.TYPE_12__* %241, i32 %242, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %239
  %247 = load i32, i32* @F_FLAGS, align 4
  %248 = load i32, i32* %8, align 4
  %249 = or i32 %248, %247
  store i32 %249, i32* %8, align 4
  br label %250

250:                                              ; preds = %246, %239
  %251 = load i32, i32* %8, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %255 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %256 = load i32, i32* %8, align 4
  %257 = load i8*, i8** %7, align 8
  %258 = call i32 @mismatch(%struct.TYPE_12__* %254, %struct.TYPE_12__* %255, i32 %256, i8* %257)
  store i32 1, i32* %4, align 4
  br label %260

259:                                              ; preds = %250
  store i32 0, i32* %4, align 4
  br label %260

260:                                              ; preds = %259, %253, %78, %61, %46
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @mismatch(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i8*) #1

declare dso_local i64 @FF(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @FS(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i64 @FM(%struct.TYPE_12__*, %struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
