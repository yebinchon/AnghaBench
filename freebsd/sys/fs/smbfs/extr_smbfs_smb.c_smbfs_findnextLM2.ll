; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findnextLM2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_findnextLM2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbfs_fctx = type { i64, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i64*, i32, %struct.TYPE_6__, %struct.smb_t2rq* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.smb_t2rq = type { %struct.mdchain }
%struct.mdchain = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@SMBFS_RDD_EOF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"unexpected info level %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SMB_MAXFNAMELEN = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"out of sync\0A\00", align 1
@EBADRPC = common dso_local global i32 0, align 4
@SMBFS_RDD_GOTRNAME = common dso_local global i32 0, align 4
@M_SMBFSDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbfs_fctx*, i32)* @smbfs_findnextLM2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_findnextLM2(%struct.smbfs_fctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smbfs_fctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mdchain*, align 8
  %7 = alloca %struct.smb_t2rq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.smbfs_fctx* %0, %struct.smbfs_fctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %24 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %2
  %28 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %29 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @SMBFS_RDD_EOF, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOENT, align 4
  store i32 %35, i32* %3, align 4
  br label %374

36:                                               ; preds = %27
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %39 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %41 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 4
  %42 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %43 = call i32 @smbfs_smb_trans2find2(%struct.smbfs_fctx* %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* %17, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* %17, align 4
  store i32 %47, i32* %3, align 4
  br label %374

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %51 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %50, i32 0, i32 13
  %52 = load %struct.smb_t2rq*, %struct.smb_t2rq** %51, align 8
  store %struct.smb_t2rq* %52, %struct.smb_t2rq** %7, align 8
  %53 = load %struct.smb_t2rq*, %struct.smb_t2rq** %7, align 8
  %54 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %53, i32 0, i32 0
  store %struct.mdchain* %54, %struct.mdchain** %6, align 8
  %55 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %56 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 8
  %58 = call %struct.TYPE_7__* @SSTOVC(i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %18, align 4
  %62 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %63 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  switch i32 %64, label %168 [
    i32 128, label %65
    i32 129, label %111
  ]

65:                                               ; preds = %49
  store i32 0, i32* %14, align 4
  store i32 0, i32* %20, align 4
  %66 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %67 = call i32 @md_get_uint16le(%struct.mdchain* %66, i32* %10)
  %68 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %69 = call i32 @md_get_uint16le(%struct.mdchain* %68, i32* %11)
  %70 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %71 = call i32 @md_get_uint16le(%struct.mdchain* %70, i32* %10)
  %72 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %73 = call i32 @md_get_uint16le(%struct.mdchain* %72, i32* %11)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %78 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %77, i32 0, i32 12
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 4
  %80 = call i32 @smb_dos2unixtime(i32 %74, i32 %75, i32 0, i32 %76, i32* %79)
  %81 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %82 = call i32 @md_get_uint16le(%struct.mdchain* %81, i32* %10)
  %83 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %84 = call i32 @md_get_uint16le(%struct.mdchain* %83, i32* %11)
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %18, align 4
  %88 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %89 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %88, i32 0, i32 12
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 3
  %91 = call i32 @smb_dos2unixtime(i32 %85, i32 %86, i32 0, i32 %87, i32* %90)
  %92 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %93 = call i32 @md_get_uint32le(%struct.mdchain* %92, i32* %13)
  %94 = load i32, i32* %13, align 4
  %95 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %96 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %95, i32 0, i32 12
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 4
  %98 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %99 = call i32 @md_get_uint32(%struct.mdchain* %98, i32* null)
  %100 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %101 = call i32 @md_get_uint16le(%struct.mdchain* %100, i32* %12)
  %102 = load i32, i32* %12, align 4
  %103 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %104 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %103, i32 0, i32 12
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  store i32 %102, i32* %105, align 4
  %106 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %107 = call i32 @md_get_uint8(%struct.mdchain* %106, i32* %9)
  %108 = load i32, i32* %9, align 4
  store i32 %108, i32* %21, align 4
  store i32 %108, i32* %13, align 4
  store i32 23, i32* %20, align 4
  %109 = load i32, i32* %21, align 4
  %110 = add nsw i32 24, %109
  store i32 %110, i32* %14, align 4
  store i32 %110, i32* %22, align 4
  br label %174

111:                                              ; preds = %49
  %112 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %113 = call i32 @md_get_uint32le(%struct.mdchain* %112, i32* %14)
  %114 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %115 = call i32 @md_get_uint32(%struct.mdchain* %114, i32* null)
  %116 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %117 = call i32 @md_get_int64(%struct.mdchain* %116, i32* null)
  %118 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %119 = call i32 @md_get_int64le(%struct.mdchain* %118, i32* %16)
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %18, align 4
  %122 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %123 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %122, i32 0, i32 12
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 4
  %125 = call i32 @smb_time_NT2local(i32 %120, i32 %121, i32* %124)
  %126 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %127 = call i32 @md_get_int64le(%struct.mdchain* %126, i32* %16)
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %18, align 4
  %130 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %131 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %130, i32 0, i32 12
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 3
  %133 = call i32 @smb_time_NT2local(i32 %128, i32 %129, i32* %132)
  %134 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %135 = call i32 @md_get_int64le(%struct.mdchain* %134, i32* %16)
  %136 = load i32, i32* %16, align 4
  %137 = load i32, i32* %18, align 4
  %138 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %139 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %138, i32 0, i32 12
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = call i32 @smb_time_NT2local(i32 %136, i32 %137, i32* %140)
  %142 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %143 = call i32 @md_get_int64le(%struct.mdchain* %142, i32* %16)
  %144 = load i32, i32* %16, align 4
  %145 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %146 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %145, i32 0, i32 12
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %144, i32* %147, align 4
  %148 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %149 = call i32 @md_get_int64(%struct.mdchain* %148, i32* null)
  %150 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %151 = call i32 @md_get_uint32le(%struct.mdchain* %150, i32* %15)
  %152 = load i32, i32* %15, align 4
  %153 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %154 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %153, i32 0, i32 12
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 4
  %156 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %157 = call i32 @md_get_uint32le(%struct.mdchain* %156, i32* %13)
  store i32 64, i32* %20, align 4
  %158 = load i32, i32* %14, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %111
  %161 = load i32, i32* %14, align 4
  br label %166

162:                                              ; preds = %111
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %163, %164
  br label %166

166:                                              ; preds = %162, %160
  %167 = phi i32 [ %161, %160 ], [ %165, %162 ]
  store i32 %167, i32* %22, align 4
  br label %174

168:                                              ; preds = %49
  %169 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %170 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %171)
  %173 = load i32, i32* @EINVAL, align 4
  store i32 %173, i32* %3, align 4
  br label %374

174:                                              ; preds = %166, %65
  %175 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %176 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 8
  %178 = call %struct.TYPE_7__* @SSTOVC(i32 %177)
  %179 = call i64 @SMB_UNICODE_STRINGS(%struct.TYPE_7__* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %174
  %182 = load i32, i32* %13, align 4
  %183 = load i32, i32* @SMB_MAXFNAMELEN, align 4
  %184 = mul nsw i32 %183, 2
  %185 = call i32 @min(i32 %182, i32 %184)
  store i32 %185, i32* %21, align 4
  br label %190

186:                                              ; preds = %174
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* @SMB_MAXFNAMELEN, align 4
  %189 = call i32 @min(i32 %187, i32 %188)
  store i32 %189, i32* %21, align 4
  br label %190

190:                                              ; preds = %186, %181
  %191 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %192 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %191, i32 0, i32 5
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** %8, align 8
  %194 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %195 = load i8*, i8** %8, align 8
  %196 = load i32, i32* %21, align 4
  %197 = load i32, i32* @MB_MSYSTEM, align 4
  %198 = call i32 @md_get_mem(%struct.mdchain* %194, i8* %195, i32 %196, i32 %197)
  store i32 %198, i32* %17, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %190
  %202 = load i32, i32* %17, align 4
  store i32 %202, i32* %3, align 4
  br label %374

203:                                              ; preds = %190
  %204 = load i32, i32* %14, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %227

206:                                              ; preds = %203
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %21, align 4
  %209 = sub nsw i32 %207, %208
  %210 = load i32, i32* %20, align 4
  %211 = sub nsw i32 %209, %210
  store i32 %211, i32* %19, align 4
  %212 = load i32, i32* %19, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %206
  %215 = load %struct.mdchain*, %struct.mdchain** %6, align 8
  %216 = load i32, i32* %19, align 4
  %217 = load i32, i32* @MB_MSYSTEM, align 4
  %218 = call i32 @md_get_mem(%struct.mdchain* %215, i8* null, i32 %216, i32 %217)
  br label %226

219:                                              ; preds = %206
  %220 = load i32, i32* %19, align 4
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = call i32 (i8*, ...) @SMBERROR(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %224 = load i32, i32* @EBADRPC, align 4
  store i32 %224, i32* %3, align 4
  br label %374

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %225, %214
  br label %227

227:                                              ; preds = %226, %203
  %228 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %229 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %228, i32 0, i32 11
  %230 = load i32, i32* %229, align 8
  %231 = call %struct.TYPE_7__* @SSTOVC(i32 %230)
  %232 = call i64 @SMB_UNICODE_STRINGS(%struct.TYPE_7__* %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %259

234:                                              ; preds = %227
  %235 = load i32, i32* %21, align 4
  %236 = icmp sgt i32 %235, 1
  br i1 %236, label %237, label %258

237:                                              ; preds = %234
  %238 = load i8*, i8** %8, align 8
  %239 = load i32, i32* %21, align 4
  %240 = sub nsw i32 %239, 1
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i8, i8* %238, i64 %241
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %237
  %247 = load i8*, i8** %8, align 8
  %248 = load i32, i32* %21, align 4
  %249 = sub nsw i32 %248, 2
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %247, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load i32, i32* %21, align 4
  %257 = sub nsw i32 %256, 2
  store i32 %257, i32* %21, align 4
  br label %258

258:                                              ; preds = %255, %246, %237, %234
  br label %275

259:                                              ; preds = %227
  %260 = load i32, i32* %21, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %274

262:                                              ; preds = %259
  %263 = load i8*, i8** %8, align 8
  %264 = load i32, i32* %21, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8, i8* %263, i64 %266
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %262
  %272 = load i32, i32* %21, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %21, align 4
  br label %274

274:                                              ; preds = %271, %262, %259
  br label %275

275:                                              ; preds = %274, %258
  %276 = load i32, i32* %21, align 4
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %280

278:                                              ; preds = %275
  %279 = load i32, i32* @EBADRPC, align 4
  store i32 %279, i32* %3, align 4
  br label %374

280:                                              ; preds = %275
  %281 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %282 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %281, i32 0, i32 6
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* %22, align 4
  %285 = add nsw i32 %283, %284
  store i32 %285, i32* %14, align 4
  %286 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %287 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %286, i32 0, i32 7
  %288 = load i32, i32* %287, align 4
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %359

290:                                              ; preds = %280
  %291 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %292 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 8
  %294 = load i32, i32* @SMBFS_RDD_GOTRNAME, align 4
  %295 = and i32 %293, %294
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %359

297:                                              ; preds = %290
  %298 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %299 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %298, i32 0, i32 7
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %302 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = icmp sge i32 %300, %303
  br i1 %304, label %305, label %359

305:                                              ; preds = %297
  %306 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %307 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %306, i32 0, i32 7
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %14, align 4
  %310 = icmp slt i32 %308, %309
  br i1 %310, label %311, label %359

311:                                              ; preds = %305
  %312 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %313 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %312, i32 0, i32 8
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %21, align 4
  %316 = icmp sle i32 %314, %315
  br i1 %316, label %317, label %339

317:                                              ; preds = %311
  %318 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %319 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %318, i32 0, i32 10
  %320 = load i64*, i64** %319, align 8
  %321 = icmp ne i64* %320, null
  br i1 %321, label %322, label %328

322:                                              ; preds = %317
  %323 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %324 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %323, i32 0, i32 10
  %325 = load i64*, i64** %324, align 8
  %326 = load i32, i32* @M_SMBFSDATA, align 4
  %327 = call i32 @free(i64* %325, i32 %326)
  br label %328

328:                                              ; preds = %322, %317
  %329 = load i32, i32* %21, align 4
  %330 = add nsw i32 %329, 1
  %331 = load i32, i32* @M_SMBFSDATA, align 4
  %332 = load i32, i32* @M_WAITOK, align 4
  %333 = call i64* @malloc(i32 %330, i32 %331, i32 %332)
  %334 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %335 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %334, i32 0, i32 10
  store i64* %333, i64** %335, align 8
  %336 = load i32, i32* %21, align 4
  %337 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %338 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %337, i32 0, i32 8
  store i32 %336, i32* %338, align 8
  br label %339

339:                                              ; preds = %328, %311
  %340 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %341 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %340, i32 0, i32 5
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %344 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %343, i32 0, i32 10
  %345 = load i64*, i64** %344, align 8
  %346 = load i32, i32* %21, align 4
  %347 = call i32 @bcopy(i8* %342, i64* %345, i32 %346)
  %348 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %349 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %348, i32 0, i32 10
  %350 = load i64*, i64** %349, align 8
  %351 = load i32, i32* %21, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i64, i64* %350, i64 %352
  store i64 0, i64* %353, align 8
  %354 = load i32, i32* @SMBFS_RDD_GOTRNAME, align 4
  %355 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %356 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = or i32 %357, %354
  store i32 %358, i32* %356, align 8
  br label %359

359:                                              ; preds = %339, %305, %297, %290, %280
  %360 = load i32, i32* %21, align 4
  %361 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %362 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %361, i32 0, i32 9
  store i32 %360, i32* %362, align 4
  %363 = load i32, i32* %14, align 4
  %364 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %365 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %364, i32 0, i32 6
  store i32 %363, i32* %365, align 8
  %366 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %367 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %366, i32 0, i32 0
  %368 = load i64, i64* %367, align 8
  %369 = add nsw i64 %368, -1
  store i64 %369, i64* %367, align 8
  %370 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %4, align 8
  %371 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %370, i32 0, i32 2
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, -1
  store i32 %373, i32* %371, align 4
  store i32 0, i32* %3, align 4
  br label %374

374:                                              ; preds = %359, %278, %222, %201, %168, %46, %34
  %375 = load i32, i32* %3, align 4
  ret i32 %375
}

declare dso_local i32 @smbfs_smb_trans2find2(%struct.smbfs_fctx*) #1

declare dso_local %struct.TYPE_7__* @SSTOVC(i32) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_dos2unixtime(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @md_get_uint32le(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint32(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_int64(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_int64le(%struct.mdchain*, i32*) #1

declare dso_local i32 @smb_time_NT2local(i32, i32, i32*) #1

declare dso_local i32 @SMBERROR(i8*, ...) #1

declare dso_local i64 @SMB_UNICODE_STRINGS(%struct.TYPE_7__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @md_get_mem(%struct.mdchain*, i8*, i32, i32) #1

declare dso_local i32 @free(i64*, i32) #1

declare dso_local i64* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
