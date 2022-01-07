; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbfs_fctx = type { i32, i32, i64, i32, i32, i32, i32, %struct.smb_rq*, i32, i32, i32 }
%struct.smb_rq = type { i64, i64 }
%struct.smb_vc = type { i32 }
%struct.mbchain = type { i32 }
%struct.mdchain = type { i32 }

@SMB_HDRLEN = common dso_local global i32 0, align 4
@SMB_DENTRYLEN = common dso_local global i32 0, align 4
@SMB_COM_SEARCH = common dso_local global i32 0, align 4
@SMB_DT_ASCII = common dso_local global i32 0, align 4
@SMBFS_RDD_FINDFIRST = common dso_local global i32 0, align 4
@SMB_DT_VARIABLE = common dso_local global i32 0, align 4
@SMB_SKEYLEN = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@ERRDOS = common dso_local global i64 0, align 8
@ERRnofiles = common dso_local global i64 0, align 8
@SMBFS_RDD_EOF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbfs_fctx*)* @smbfs_smb_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_smb_search(%struct.smbfs_fctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smbfs_fctx*, align 8
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.smb_rq*, align 8
  %6 = alloca %struct.mbchain*, align 8
  %7 = alloca %struct.mdchain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.smbfs_fctx* %0, %struct.smbfs_fctx** %3, align 8
  %16 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %17 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.smb_vc* @SSTOVC(i32 %18)
  store %struct.smb_vc* %19, %struct.smb_vc** %4, align 8
  store i32 0, i32* %15, align 4
  %20 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %21 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %24 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SMB_HDRLEN, align 4
  %27 = sub nsw i32 %25, %26
  %28 = sub nsw i32 %27, 3
  %29 = load i32, i32* @SMB_DENTRYLEN, align 4
  %30 = sdiv i32 %28, %29
  %31 = call i32 @min(i32 %22, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %33 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %32, i32 0, i32 7
  %34 = load %struct.smb_rq*, %struct.smb_rq** %33, align 8
  %35 = icmp ne %struct.smb_rq* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %38 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %37, i32 0, i32 7
  %39 = load %struct.smb_rq*, %struct.smb_rq** %38, align 8
  %40 = call i32 @smb_rq_done(%struct.smb_rq* %39)
  %41 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %42 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %41, i32 0, i32 7
  store %struct.smb_rq* null, %struct.smb_rq** %42, align 8
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %45 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SSTOCP(i32 %46)
  %48 = load i32, i32* @SMB_COM_SEARCH, align 4
  %49 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %50 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %49, i32 0, i32 8
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @smb_rq_alloc(i32 %47, i32 %48, i32 %51, %struct.smb_rq** %5)
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %43
  %56 = load i32, i32* %14, align 4
  store i32 %56, i32* %2, align 4
  br label %226

57:                                               ; preds = %43
  %58 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %59 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %60 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %59, i32 0, i32 7
  store %struct.smb_rq* %58, %struct.smb_rq** %60, align 8
  %61 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %62 = call i32 @smb_rq_getrequest(%struct.smb_rq* %61, %struct.mbchain** %6)
  %63 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %64 = call i32 @smb_rq_wstart(%struct.smb_rq* %63)
  %65 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @mb_put_uint16le(%struct.mbchain* %65, i32 %66)
  %68 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %69 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %70 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @mb_put_uint16le(%struct.mbchain* %68, i32 %71)
  %73 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %74 = call i32 @smb_rq_wend(%struct.smb_rq* %73)
  %75 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %76 = call i32 @smb_rq_bstart(%struct.smb_rq* %75)
  %77 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %78 = load i32, i32* @SMB_DT_ASCII, align 4
  %79 = call i32 @mb_put_uint8(%struct.mbchain* %77, i32 %78)
  %80 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %81 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SMBFS_RDD_FINDFIRST, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %115

86:                                               ; preds = %57
  %87 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %88 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %89 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %90 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %93 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %96 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @smbfs_fullpath(%struct.mbchain* %87, %struct.smb_vc* %88, i32 %91, i32 %94, i32 %97)
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %86
  %102 = load i32, i32* %14, align 4
  store i32 %102, i32* %2, align 4
  br label %226

103:                                              ; preds = %86
  %104 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %105 = load i32, i32* @SMB_DT_VARIABLE, align 4
  %106 = call i32 @mb_put_uint8(%struct.mbchain* %104, i32 %105)
  %107 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %108 = call i32 @mb_put_uint16le(%struct.mbchain* %107, i32 0)
  %109 = load i32, i32* @SMBFS_RDD_FINDFIRST, align 4
  %110 = xor i32 %109, -1
  %111 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %112 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %140

115:                                              ; preds = %57
  %116 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %117 = call i64 @SMB_UNICODE_STRINGS(%struct.smb_vc* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %115
  %120 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %121 = call i32 @mb_put_padbyte(%struct.mbchain* %120)
  %122 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %123 = call i32 @mb_put_uint8(%struct.mbchain* %122, i32 0)
  br label %124

124:                                              ; preds = %119, %115
  %125 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %126 = call i32 @mb_put_uint8(%struct.mbchain* %125, i32 0)
  %127 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %128 = load i32, i32* @SMB_DT_VARIABLE, align 4
  %129 = call i32 @mb_put_uint8(%struct.mbchain* %127, i32 %128)
  %130 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %131 = load i32, i32* @SMB_SKEYLEN, align 4
  %132 = call i32 @mb_put_uint16le(%struct.mbchain* %130, i32 %131)
  %133 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %134 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %135 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @SMB_SKEYLEN, align 4
  %138 = load i32, i32* @MB_MSYSTEM, align 4
  %139 = call i32 @mb_put_mem(%struct.mbchain* %133, i32 %136, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %124, %103
  %141 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %142 = call i32 @smb_rq_bend(%struct.smb_rq* %141)
  %143 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %144 = call i32 @smb_rq_simple(%struct.smb_rq* %143)
  store i32 %144, i32* %14, align 4
  %145 = load i32, i32* %14, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %140
  %148 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %149 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @ERRDOS, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %147
  %154 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %155 = getelementptr inbounds %struct.smb_rq, %struct.smb_rq* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @ERRnofiles, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %165

159:                                              ; preds = %153
  store i32 0, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %160 = load i32, i32* @SMBFS_RDD_EOF, align 4
  %161 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %162 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %167

165:                                              ; preds = %153, %147
  %166 = load i32, i32* %14, align 4
  store i32 %166, i32* %2, align 4
  br label %226

167:                                              ; preds = %159
  br label %168

168:                                              ; preds = %167, %140
  %169 = load %struct.smb_rq*, %struct.smb_rq** %5, align 8
  %170 = call i32 @smb_rq_getreply(%struct.smb_rq* %169, %struct.mdchain** %7)
  %171 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %172 = call i32 @md_get_uint8(%struct.mdchain* %171, i32* %8)
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 1
  br i1 %174, label %175, label %184

175:                                              ; preds = %168
  %176 = load i32, i32* %15, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32, i32* @ENOENT, align 4
  br label %182

180:                                              ; preds = %175
  %181 = load i32, i32* @EBADRPC, align 4
  br label %182

182:                                              ; preds = %180, %178
  %183 = phi i32 [ %179, %178 ], [ %181, %180 ]
  store i32 %183, i32* %2, align 4
  br label %226

184:                                              ; preds = %168
  %185 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %186 = call i32 @md_get_uint16le(%struct.mdchain* %185, i64* %10)
  %187 = load i64, i64* %10, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %184
  %190 = load i32, i32* @ENOENT, align 4
  store i32 %190, i32* %2, align 4
  br label %226

191:                                              ; preds = %184
  %192 = load i64, i64* %10, align 8
  %193 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %194 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %193, i32 0, i32 2
  store i64 %192, i64* %194, align 8
  %195 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %196 = call i32 @md_get_uint16le(%struct.mdchain* %195, i64* %12)
  %197 = load i64, i64* %12, align 8
  %198 = icmp slt i64 %197, 3
  br i1 %198, label %199, label %201

199:                                              ; preds = %191
  %200 = load i32, i32* @EBADRPC, align 4
  store i32 %200, i32* %2, align 4
  br label %226

201:                                              ; preds = %191
  %202 = load i64, i64* %12, align 8
  %203 = sub nsw i64 %202, 3
  store i64 %203, i64* %12, align 8
  %204 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %205 = call i32 @md_get_uint8(%struct.mdchain* %204, i32* %9)
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @SMB_DT_VARIABLE, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = load i32, i32* @EBADRPC, align 4
  store i32 %210, i32* %2, align 4
  br label %226

211:                                              ; preds = %201
  %212 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %213 = call i32 @md_get_uint16le(%struct.mdchain* %212, i64* %11)
  %214 = load i64, i64* %11, align 8
  %215 = load i64, i64* %12, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %211
  %218 = load i64, i64* %11, align 8
  %219 = load i32, i32* @SMB_DENTRYLEN, align 4
  %220 = sext i32 %219 to i64
  %221 = srem i64 %218, %220
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %217, %211
  %224 = load i32, i32* @EBADRPC, align 4
  store i32 %224, i32* %2, align 4
  br label %226

225:                                              ; preds = %217
  store i32 0, i32* %2, align 4
  br label %226

226:                                              ; preds = %225, %223, %209, %199, %189, %182, %165, %101, %55
  %227 = load i32, i32* %2, align 4
  ret i32 %227
}

declare dso_local %struct.smb_vc* @SSTOVC(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @smb_rq_done(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_alloc(i32, i32, i32, %struct.smb_rq**) #1

declare dso_local i32 @SSTOCP(i32) #1

declare dso_local i32 @smb_rq_getrequest(%struct.smb_rq*, %struct.mbchain**) #1

declare dso_local i32 @smb_rq_wstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_rq_wend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_bstart(%struct.smb_rq*) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, %struct.smb_vc*, i32, i32, i32) #1

declare dso_local i64 @SMB_UNICODE_STRINGS(%struct.smb_vc*) #1

declare dso_local i32 @mb_put_padbyte(%struct.mbchain*) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i32, i32, i32) #1

declare dso_local i32 @smb_rq_bend(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_simple(%struct.smb_rq*) #1

declare dso_local i32 @smb_rq_getreply(%struct.smb_rq*, %struct.mdchain**) #1

declare dso_local i32 @md_get_uint8(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
