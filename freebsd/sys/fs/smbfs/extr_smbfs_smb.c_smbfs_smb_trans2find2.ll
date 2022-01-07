; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_trans2find2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_smb.c_smbfs_smb_trans2find2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbfs_fctx = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i64, %struct.smb_t2rq*, i32, i32, i32, i32, i32 }
%struct.smb_t2rq = type { i32, %struct.mdchain, %struct.mdchain, i32, %struct.mbchain }
%struct.mdchain = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.mbchain = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.smb_vc = type { i32, i32 }

@SMBFS_RDD_GOTRNAME = common dso_local global i32 0, align 4
@SMBFS_RDD_FINDSINGLE = common dso_local global i32 0, align 4
@SMBFS_RDD_NOCLOSE = common dso_local global i32 0, align 4
@SMBFS_RDD_FINDFIRST = common dso_local global i32 0, align 4
@SMB_TRANS2_FIND_FIRST2 = common dso_local global i32 0, align 4
@SMB_TRANS2_FIND_NEXT2 = common dso_local global i32 0, align 4
@MB_MSYSTEM = common dso_local global i32 0, align 4
@SMBFS_RDD_EOF = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"bug: ecnt = %d, but data is NULL (please report)\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"bug: ecnt = %d, but m_len = 0 and m_next = %p (please report)\0A\00", align 1
@SMBC_WIN95 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbfs_fctx*)* @smbfs_smb_trans2find2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbfs_smb_trans2find2(%struct.smbfs_fctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smbfs_fctx*, align 8
  %4 = alloca %struct.smb_t2rq*, align 8
  %5 = alloca %struct.smb_vc*, align 8
  %6 = alloca %struct.mbchain*, align 8
  %7 = alloca %struct.mdchain*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smbfs_fctx* %0, %struct.smbfs_fctx** %3, align 8
  %11 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %12 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %11, i32 0, i32 12
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.smb_vc* @SSTOVC(i32 %13)
  store %struct.smb_vc* %14, %struct.smb_vc** %5, align 8
  %15 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %16 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %15, i32 0, i32 10
  %17 = load %struct.smb_t2rq*, %struct.smb_t2rq** %16, align 8
  %18 = icmp ne %struct.smb_t2rq* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %21 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %20, i32 0, i32 10
  %22 = load %struct.smb_t2rq*, %struct.smb_t2rq** %21, align 8
  %23 = call i32 @smb_t2_done(%struct.smb_t2rq* %22)
  %24 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %25 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %24, i32 0, i32 10
  store %struct.smb_t2rq* null, %struct.smb_t2rq** %25, align 8
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i32, i32* @SMBFS_RDD_GOTRNAME, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %30 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  store i32 10, i32* %9, align 4
  %33 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %34 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SMBFS_RDD_FINDSINGLE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %26
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @SMBFS_RDD_NOCLOSE, align 4
  %43 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %44 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %39, %26
  %48 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %49 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @SMBFS_RDD_FINDFIRST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %113

54:                                               ; preds = %47
  %55 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %56 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %55, i32 0, i32 12
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @SSTOCP(i32 %57)
  %59 = load i32, i32* @SMB_TRANS2_FIND_FIRST2, align 4
  %60 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %61 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %60, i32 0, i32 11
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @smb_t2_alloc(i32 %58, i32 %59, i32 %62, %struct.smb_t2rq** %4)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %2, align 4
  br label %302

68:                                               ; preds = %54
  %69 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %70 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %71 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %70, i32 0, i32 10
  store %struct.smb_t2rq* %69, %struct.smb_t2rq** %71, align 8
  %72 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %73 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %72, i32 0, i32 4
  store %struct.mbchain* %73, %struct.mbchain** %6, align 8
  %74 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %75 = call i32 @mb_init(%struct.mbchain* %74)
  %76 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %77 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %78 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @mb_put_uint16le(%struct.mbchain* %76, i32 %79)
  %81 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %82 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %83 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @mb_put_uint16le(%struct.mbchain* %81, i32 %84)
  %86 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @mb_put_uint16le(%struct.mbchain* %86, i32 %87)
  %89 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %90 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %91 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mb_put_uint16le(%struct.mbchain* %89, i32 %92)
  %94 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %95 = call i32 @mb_put_uint32le(%struct.mbchain* %94, i32 0)
  %96 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %97 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %98 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %99 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %98, i32 0, i32 15
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %102 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %101, i32 0, i32 14
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %105 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %104, i32 0, i32 13
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @smbfs_fullpath(%struct.mbchain* %96, %struct.smb_vc* %97, i32 %100, i32 %103, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %68
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %2, align 4
  br label %302

112:                                              ; preds = %68
  br label %175

113:                                              ; preds = %47
  %114 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %115 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %114, i32 0, i32 12
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SSTOCP(i32 %116)
  %118 = load i32, i32* @SMB_TRANS2_FIND_NEXT2, align 4
  %119 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %120 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %119, i32 0, i32 11
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @smb_t2_alloc(i32 %117, i32 %118, i32 %121, %struct.smb_t2rq** %4)
  store i32 %122, i32* %10, align 4
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %113
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %302

127:                                              ; preds = %113
  %128 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %129 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %130 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %129, i32 0, i32 10
  store %struct.smb_t2rq* %128, %struct.smb_t2rq** %130, align 8
  %131 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %132 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %131, i32 0, i32 4
  store %struct.mbchain* %132, %struct.mbchain** %6, align 8
  %133 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %134 = call i32 @mb_init(%struct.mbchain* %133)
  %135 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %136 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %137 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %136, i32 0, i32 8
  %138 = ptrtoint i32* %137 to i64
  %139 = load i32, i32* @MB_MSYSTEM, align 4
  %140 = call i32 @mb_put_mem(%struct.mbchain* %135, i64 %138, i32 2, i32 %139)
  %141 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %142 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %143 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @mb_put_uint16le(%struct.mbchain* %141, i32 %144)
  %146 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %147 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %148 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @mb_put_uint16le(%struct.mbchain* %146, i32 %149)
  %151 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %152 = call i32 @mb_put_uint32le(%struct.mbchain* %151, i32 0)
  %153 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @mb_put_uint16le(%struct.mbchain* %153, i32 %154)
  %156 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %157 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %156, i32 0, i32 9
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %171

160:                                              ; preds = %127
  %161 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %162 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %163 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %162, i32 0, i32 9
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %166 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 8
  %168 = add nsw i32 %167, 1
  %169 = load i32, i32* @MB_MSYSTEM, align 4
  %170 = call i32 @mb_put_mem(%struct.mbchain* %161, i64 %164, i32 %168, i32 %169)
  br label %174

171:                                              ; preds = %127
  %172 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %173 = call i32 @mb_put_uint8(%struct.mbchain* %172, i32 0)
  br label %174

174:                                              ; preds = %171, %160
  br label %175

175:                                              ; preds = %174, %112
  %176 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %177 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %176, i32 0, i32 0
  store i32 10, i32* %177, align 8
  %178 = load %struct.smb_vc*, %struct.smb_vc** %5, align 8
  %179 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %182 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %181, i32 0, i32 3
  store i32 %180, i32* %182, align 8
  %183 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %184 = call i32 @smb_t2_request(%struct.smb_t2rq* %183)
  store i32 %184, i32* %10, align 4
  %185 = load i32, i32* %10, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %175
  %188 = load i32, i32* %10, align 4
  store i32 %188, i32* %2, align 4
  br label %302

189:                                              ; preds = %175
  %190 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %191 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %190, i32 0, i32 2
  store %struct.mdchain* %191, %struct.mdchain** %7, align 8
  %192 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %193 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @SMBFS_RDD_FINDFIRST, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %213

198:                                              ; preds = %189
  %199 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %200 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %201 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %200, i32 0, i32 8
  %202 = call i32 @md_get_uint16(%struct.mdchain* %199, i32* %201)
  store i32 %202, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* %10, align 4
  store i32 %205, i32* %2, align 4
  br label %302

206:                                              ; preds = %198
  %207 = load i32, i32* @SMBFS_RDD_FINDFIRST, align 4
  %208 = xor i32 %207, -1
  %209 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %210 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = and i32 %211, %208
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %206, %189
  %214 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %215 = call i32 @md_get_uint16le(%struct.mdchain* %214, i32* %8)
  store i32 %215, i32* %10, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = load i32, i32* %10, align 4
  store i32 %218, i32* %2, align 4
  br label %302

219:                                              ; preds = %213
  %220 = load i32, i32* %8, align 4
  %221 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %222 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %221, i32 0, i32 5
  store i32 %220, i32* %222, align 4
  %223 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %224 = call i32 @md_get_uint16le(%struct.mdchain* %223, i32* %8)
  store i32 %224, i32* %10, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i32, i32* %10, align 4
  store i32 %227, i32* %2, align 4
  br label %302

228:                                              ; preds = %219
  %229 = load i32, i32* %8, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %239

231:                                              ; preds = %228
  %232 = load i32, i32* @SMBFS_RDD_EOF, align 4
  %233 = load i32, i32* @SMBFS_RDD_NOCLOSE, align 4
  %234 = or i32 %232, %233
  %235 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %236 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = or i32 %237, %234
  store i32 %238, i32* %236, align 8
  br label %239

239:                                              ; preds = %231, %228
  %240 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %241 = call i32 @md_get_uint16le(%struct.mdchain* %240, i32* %8)
  store i32 %241, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %239
  %244 = load i32, i32* %10, align 4
  store i32 %244, i32* %2, align 4
  br label %302

245:                                              ; preds = %239
  %246 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %247 = call i32 @md_get_uint16le(%struct.mdchain* %246, i32* %8)
  store i32 %247, i32* %10, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %245
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %2, align 4
  br label %302

251:                                              ; preds = %245
  %252 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %253 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %251
  %257 = load i32, i32* @SMBFS_RDD_EOF, align 4
  %258 = load i32, i32* @SMBFS_RDD_NOCLOSE, align 4
  %259 = or i32 %257, %258
  %260 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %261 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  %264 = load i32, i32* @ENOENT, align 4
  store i32 %264, i32* %2, align 4
  br label %302

265:                                              ; preds = %251
  %266 = load i32, i32* %8, align 4
  %267 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %268 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %267, i32 0, i32 6
  store i32 %266, i32* %268, align 8
  %269 = load %struct.smb_t2rq*, %struct.smb_t2rq** %4, align 8
  %270 = getelementptr inbounds %struct.smb_t2rq, %struct.smb_t2rq* %269, i32 0, i32 1
  store %struct.mdchain* %270, %struct.mdchain** %7, align 8
  %271 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %272 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %271, i32 0, i32 0
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %272, align 8
  %274 = icmp eq %struct.TYPE_3__* %273, null
  br i1 %274, label %275, label %281

275:                                              ; preds = %265
  %276 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %277 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %278)
  %280 = load i32, i32* @ENOENT, align 4
  store i32 %280, i32* %2, align 4
  br label %302

281:                                              ; preds = %265
  %282 = load %struct.mdchain*, %struct.mdchain** %7, align 8
  %283 = getelementptr inbounds %struct.mdchain, %struct.mdchain* %282, i32 0, i32 0
  %284 = load %struct.TYPE_3__*, %struct.TYPE_3__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %284, i32 0, i32 0
  %286 = load i64, i64* %285, align 8
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %288, label %299

288:                                              ; preds = %281
  %289 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %290 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.mbchain*, %struct.mbchain** %6, align 8
  %293 = getelementptr inbounds %struct.mbchain, %struct.mbchain* %292, i32 0, i32 0
  %294 = load %struct.TYPE_4__*, %struct.TYPE_4__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %291, i32 %296)
  %298 = load i32, i32* @ENOENT, align 4
  store i32 %298, i32* %2, align 4
  br label %302

299:                                              ; preds = %281
  %300 = load %struct.smbfs_fctx*, %struct.smbfs_fctx** %3, align 8
  %301 = getelementptr inbounds %struct.smbfs_fctx, %struct.smbfs_fctx* %300, i32 0, i32 7
  store i64 0, i64* %301, align 8
  store i32 0, i32* %2, align 4
  br label %302

302:                                              ; preds = %299, %288, %275, %256, %249, %243, %226, %217, %204, %187, %125, %110, %66
  %303 = load i32, i32* %2, align 4
  ret i32 %303
}

declare dso_local %struct.smb_vc* @SSTOVC(i32) #1

declare dso_local i32 @smb_t2_done(%struct.smb_t2rq*) #1

declare dso_local i32 @smb_t2_alloc(i32, i32, i32, %struct.smb_t2rq**) #1

declare dso_local i32 @SSTOCP(i32) #1

declare dso_local i32 @mb_init(%struct.mbchain*) #1

declare dso_local i32 @mb_put_uint16le(%struct.mbchain*, i32) #1

declare dso_local i32 @mb_put_uint32le(%struct.mbchain*, i32) #1

declare dso_local i32 @smbfs_fullpath(%struct.mbchain*, %struct.smb_vc*, i32, i32, i32) #1

declare dso_local i32 @mb_put_mem(%struct.mbchain*, i64, i32, i32) #1

declare dso_local i32 @mb_put_uint8(%struct.mbchain*, i32) #1

declare dso_local i32 @smb_t2_request(%struct.smb_t2rq*) #1

declare dso_local i32 @md_get_uint16(%struct.mdchain*, i32*) #1

declare dso_local i32 @md_get_uint16le(%struct.mdchain*, i32*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
