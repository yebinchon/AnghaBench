; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_doio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_doio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, i32 }
%struct.buf = type { i64, i64, i8*, i32, i32, i64, i64, i32, i64, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.smbmount = type { i32 }
%struct.smbnode = type { i64, i32 }
%struct.uio = type { i32, i64, i32, i32, %struct.thread*, i32, %struct.iovec* }
%struct.iovec = type { i64, i8* }
%struct.smb_cred = type { i32 }

@M_SMBFSDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i32 0, align 4
@DEV_BSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"smbfs_doio:  type %x unexpected\0A\00", align 1
@BIO_ERROR = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@B_NEEDCOMMIT = common dso_local global i32 0, align 4
@B_INVAL = common dso_local global i32 0, align 4
@B_NOCACHE = common dso_local global i32 0, align 4
@B_ASYNC = common dso_local global i32 0, align 4
@B_EINTR = common dso_local global i32 0, align 4
@B_PAGING = common dso_local global i32 0, align 4
@B_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_doio(%struct.vnode* %0, %struct.buf* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.smbmount*, align 8
  %11 = alloca %struct.smbnode*, align 8
  %12 = alloca %struct.uio*, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca %struct.smb_cred*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.buf* %1, %struct.buf** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %18 = load %struct.vnode*, %struct.vnode** %6, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.smbmount* @VFSTOSMBFS(i32 %20)
  store %struct.smbmount* %21, %struct.smbmount** %10, align 8
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = call %struct.smbnode* @VTOSMB(%struct.vnode* %22)
  store %struct.smbnode* %23, %struct.smbnode** %11, align 8
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* @M_SMBFSDATA, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call %struct.uio* @malloc(i32 48, i32 %24, i32 %25)
  store %struct.uio* %26, %struct.uio** %12, align 8
  %27 = load %struct.uio*, %struct.uio** %12, align 8
  %28 = getelementptr inbounds %struct.uio, %struct.uio* %27, i32 0, i32 6
  store %struct.iovec* %13, %struct.iovec** %28, align 8
  %29 = load %struct.uio*, %struct.uio** %12, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load i32, i32* @UIO_SYSSPACE, align 4
  %32 = load %struct.uio*, %struct.uio** %12, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 8
  %34 = load %struct.thread*, %struct.thread** %9, align 8
  %35 = load %struct.uio*, %struct.uio** %12, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %35, i32 0, i32 4
  store %struct.thread* %34, %struct.thread** %36, align 8
  %37 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %37, %struct.smb_cred** %14, align 8
  %38 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %39 = load %struct.thread*, %struct.thread** %9, align 8
  %40 = load %struct.ucred*, %struct.ucred** %8, align 8
  %41 = call i32 @smb_makescred(%struct.smb_cred* %38, %struct.thread* %39, %struct.ucred* %40)
  %42 = load %struct.buf*, %struct.buf** %7, align 8
  %43 = getelementptr inbounds %struct.buf, %struct.buf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @BIO_READ, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %132

47:                                               ; preds = %4
  %48 = load %struct.buf*, %struct.buf** %7, align 8
  %49 = getelementptr inbounds %struct.buf, %struct.buf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.uio*, %struct.uio** %12, align 8
  %52 = getelementptr inbounds %struct.uio, %struct.uio* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  %53 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i64 %50, i64* %53, align 8
  %54 = load %struct.buf*, %struct.buf** %7, align 8
  %55 = getelementptr inbounds %struct.buf, %struct.buf* %54, i32 0, i32 2
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i8* %56, i8** %57, align 8
  %58 = load i32, i32* @UIO_READ, align 4
  %59 = load %struct.uio*, %struct.uio** %12, align 8
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.vnode*, %struct.vnode** %6, align 8
  %62 = getelementptr inbounds %struct.vnode, %struct.vnode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %114 [
    i32 128, label %64
  ]

64:                                               ; preds = %47
  %65 = load %struct.buf*, %struct.buf** %7, align 8
  %66 = getelementptr inbounds %struct.buf, %struct.buf* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @DEV_BSIZE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = load %struct.uio*, %struct.uio** %12, align 8
  %71 = getelementptr inbounds %struct.uio, %struct.uio* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.smbmount*, %struct.smbmount** %10, align 8
  %73 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %76 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.uio*, %struct.uio** %12, align 8
  %79 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %80 = call i32 @smb_read(i32 %74, i32 %77, %struct.uio* %78, %struct.smb_cred* %79)
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %64
  br label %119

84:                                               ; preds = %64
  %85 = load %struct.uio*, %struct.uio** %12, align 8
  %86 = getelementptr inbounds %struct.uio, %struct.uio* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %84
  %90 = load %struct.uio*, %struct.uio** %12, align 8
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %16, align 4
  %94 = load %struct.buf*, %struct.buf** %7, align 8
  %95 = getelementptr inbounds %struct.buf, %struct.buf* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = sub nsw i64 %96, %98
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %89
  %104 = load %struct.buf*, %struct.buf** %7, align 8
  %105 = getelementptr inbounds %struct.buf, %struct.buf* %104, i32 0, i32 2
  %106 = load i8*, i8** %105, align 8
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @bzero(i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %103, %89
  br label %113

113:                                              ; preds = %112, %84
  br label %119

114:                                              ; preds = %47
  %115 = load %struct.vnode*, %struct.vnode** %6, align 8
  %116 = getelementptr inbounds %struct.vnode, %struct.vnode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %114, %113, %83
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = load %struct.buf*, %struct.buf** %7, align 8
  %125 = getelementptr inbounds %struct.buf, %struct.buf* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @BIO_ERROR, align 4
  %127 = load %struct.buf*, %struct.buf** %7, align 8
  %128 = getelementptr inbounds %struct.buf, %struct.buf* %127, i32 0, i32 9
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %126
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %122, %119
  br label %305

132:                                              ; preds = %4
  %133 = load %struct.buf*, %struct.buf** %7, align 8
  %134 = getelementptr inbounds %struct.buf, %struct.buf* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @DEV_BSIZE, align 4
  %137 = mul nsw i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = load %struct.buf*, %struct.buf** %7, align 8
  %140 = getelementptr inbounds %struct.buf, %struct.buf* %139, i32 0, i32 5
  %141 = load i64, i64* %140, align 8
  %142 = add nsw i64 %138, %141
  %143 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %144 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp sgt i64 %142, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %132
  %148 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %149 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.buf*, %struct.buf** %7, align 8
  %152 = getelementptr inbounds %struct.buf, %struct.buf* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @DEV_BSIZE, align 4
  %155 = mul nsw i32 %153, %154
  %156 = sext i32 %155 to i64
  %157 = sub nsw i64 %150, %156
  %158 = load %struct.buf*, %struct.buf** %7, align 8
  %159 = getelementptr inbounds %struct.buf, %struct.buf* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %147, %132
  %161 = load %struct.buf*, %struct.buf** %7, align 8
  %162 = getelementptr inbounds %struct.buf, %struct.buf* %161, i32 0, i32 5
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.buf*, %struct.buf** %7, align 8
  %165 = getelementptr inbounds %struct.buf, %struct.buf* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %163, %166
  br i1 %167, label %168, label %294

168:                                              ; preds = %160
  %169 = load %struct.buf*, %struct.buf** %7, align 8
  %170 = getelementptr inbounds %struct.buf, %struct.buf* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.buf*, %struct.buf** %7, align 8
  %173 = getelementptr inbounds %struct.buf, %struct.buf* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = sub nsw i64 %171, %174
  %176 = load %struct.uio*, %struct.uio** %12, align 8
  %177 = getelementptr inbounds %struct.uio, %struct.uio* %176, i32 0, i32 1
  store i64 %175, i64* %177, align 8
  %178 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  store i64 %175, i64* %178, align 8
  %179 = load %struct.buf*, %struct.buf** %7, align 8
  %180 = getelementptr inbounds %struct.buf, %struct.buf* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @DEV_BSIZE, align 4
  %183 = mul nsw i32 %181, %182
  %184 = sext i32 %183 to i64
  %185 = load %struct.buf*, %struct.buf** %7, align 8
  %186 = getelementptr inbounds %struct.buf, %struct.buf* %185, i32 0, i32 6
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = trunc i64 %188 to i32
  %190 = load %struct.uio*, %struct.uio** %12, align 8
  %191 = getelementptr inbounds %struct.uio, %struct.uio* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  %192 = load %struct.buf*, %struct.buf** %7, align 8
  %193 = getelementptr inbounds %struct.buf, %struct.buf* %192, i32 0, i32 2
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.buf*, %struct.buf** %7, align 8
  %196 = getelementptr inbounds %struct.buf, %struct.buf* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i8, i8* %194, i64 %197
  %199 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  store i8* %198, i8** %199, align 8
  %200 = load i32, i32* @UIO_WRITE, align 4
  %201 = load %struct.uio*, %struct.uio** %12, align 8
  %202 = getelementptr inbounds %struct.uio, %struct.uio* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 4
  %203 = load %struct.smbmount*, %struct.smbmount** %10, align 8
  %204 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %207 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.uio*, %struct.uio** %12, align 8
  %210 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %211 = call i32 @smb_write(i32 %205, i32 %208, %struct.uio* %209, %struct.smb_cred* %210)
  store i32 %211, i32* %15, align 4
  %212 = load i32, i32* %15, align 4
  %213 = load i32, i32* @EINTR, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %225, label %215

215:                                              ; preds = %168
  %216 = load i32, i32* %15, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %276, label %218

218:                                              ; preds = %215
  %219 = load %struct.buf*, %struct.buf** %7, align 8
  %220 = getelementptr inbounds %struct.buf, %struct.buf* %219, i32 0, i32 7
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @B_NEEDCOMMIT, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %276

225:                                              ; preds = %218, %168
  %226 = load i32, i32* @B_INVAL, align 4
  %227 = load i32, i32* @B_NOCACHE, align 4
  %228 = or i32 %226, %227
  %229 = xor i32 %228, -1
  %230 = load %struct.buf*, %struct.buf** %7, align 8
  %231 = getelementptr inbounds %struct.buf, %struct.buf* %230, i32 0, i32 7
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.buf*, %struct.buf** %7, align 8
  %235 = getelementptr inbounds %struct.buf, %struct.buf* %234, i32 0, i32 7
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @B_ASYNC, align 4
  %238 = and i32 %236, %237
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %225
  %241 = load i32, i32* @B_EINTR, align 4
  %242 = load %struct.buf*, %struct.buf** %7, align 8
  %243 = getelementptr inbounds %struct.buf, %struct.buf* %242, i32 0, i32 7
  %244 = load i32, i32* %243, align 8
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 8
  br label %246

246:                                              ; preds = %240, %225
  %247 = load %struct.buf*, %struct.buf** %7, align 8
  %248 = getelementptr inbounds %struct.buf, %struct.buf* %247, i32 0, i32 7
  %249 = load i32, i32* %248, align 8
  %250 = load i32, i32* @B_PAGING, align 4
  %251 = and i32 %249, %250
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %262

253:                                              ; preds = %246
  %254 = load %struct.buf*, %struct.buf** %7, align 8
  %255 = call i32 @bdirty(%struct.buf* %254)
  %256 = load i32, i32* @B_DONE, align 4
  %257 = xor i32 %256, -1
  %258 = load %struct.buf*, %struct.buf** %7, align 8
  %259 = getelementptr inbounds %struct.buf, %struct.buf* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 8
  %261 = and i32 %260, %257
  store i32 %261, i32* %259, align 8
  br label %262

262:                                              ; preds = %253, %246
  %263 = load %struct.buf*, %struct.buf** %7, align 8
  %264 = getelementptr inbounds %struct.buf, %struct.buf* %263, i32 0, i32 7
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @B_ASYNC, align 4
  %267 = and i32 %265, %266
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %275

269:                                              ; preds = %262
  %270 = load i32, i32* @B_EINTR, align 4
  %271 = load %struct.buf*, %struct.buf** %7, align 8
  %272 = getelementptr inbounds %struct.buf, %struct.buf* %271, i32 0, i32 7
  %273 = load i32, i32* %272, align 8
  %274 = or i32 %273, %270
  store i32 %274, i32* %272, align 8
  br label %275

275:                                              ; preds = %269, %262
  br label %293

276:                                              ; preds = %218, %215
  %277 = load i32, i32* %15, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %288

279:                                              ; preds = %276
  %280 = load i32, i32* @BIO_ERROR, align 4
  %281 = load %struct.buf*, %struct.buf** %7, align 8
  %282 = getelementptr inbounds %struct.buf, %struct.buf* %281, i32 0, i32 9
  %283 = load i32, i32* %282, align 8
  %284 = or i32 %283, %280
  store i32 %284, i32* %282, align 8
  %285 = load i32, i32* %15, align 4
  %286 = load %struct.buf*, %struct.buf** %7, align 8
  %287 = getelementptr inbounds %struct.buf, %struct.buf* %286, i32 0, i32 4
  store i32 %285, i32* %287, align 4
  br label %288

288:                                              ; preds = %279, %276
  %289 = load %struct.buf*, %struct.buf** %7, align 8
  %290 = getelementptr inbounds %struct.buf, %struct.buf* %289, i32 0, i32 5
  store i64 0, i64* %290, align 8
  %291 = load %struct.buf*, %struct.buf** %7, align 8
  %292 = getelementptr inbounds %struct.buf, %struct.buf* %291, i32 0, i32 6
  store i64 0, i64* %292, align 8
  br label %293

293:                                              ; preds = %288, %275
  br label %304

294:                                              ; preds = %160
  %295 = load %struct.buf*, %struct.buf** %7, align 8
  %296 = getelementptr inbounds %struct.buf, %struct.buf* %295, i32 0, i32 8
  store i64 0, i64* %296, align 8
  %297 = load %struct.buf*, %struct.buf** %7, align 8
  %298 = call i32 @bufdone(%struct.buf* %297)
  %299 = load %struct.uio*, %struct.uio** %12, align 8
  %300 = load i32, i32* @M_SMBFSDATA, align 4
  %301 = call i32 @free(%struct.uio* %299, i32 %300)
  %302 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %303 = call i32 @smbfs_free_scred(%struct.smb_cred* %302)
  store i32 0, i32* %5, align 4
  br label %319

304:                                              ; preds = %293
  br label %305

305:                                              ; preds = %304, %131
  %306 = load %struct.uio*, %struct.uio** %12, align 8
  %307 = getelementptr inbounds %struct.uio, %struct.uio* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = load %struct.buf*, %struct.buf** %7, align 8
  %310 = getelementptr inbounds %struct.buf, %struct.buf* %309, i32 0, i32 8
  store i64 %308, i64* %310, align 8
  %311 = load %struct.buf*, %struct.buf** %7, align 8
  %312 = call i32 @bufdone(%struct.buf* %311)
  %313 = load %struct.uio*, %struct.uio** %12, align 8
  %314 = load i32, i32* @M_SMBFSDATA, align 4
  %315 = call i32 @free(%struct.uio* %313, i32 %314)
  %316 = load %struct.smb_cred*, %struct.smb_cred** %14, align 8
  %317 = call i32 @smbfs_free_scred(%struct.smb_cred* %316)
  %318 = load i32, i32* %15, align 4
  store i32 %318, i32* %5, align 4
  br label %319

319:                                              ; preds = %305, %294
  %320 = load i32, i32* %5, align 4
  ret i32 %320
}

declare dso_local %struct.smbmount* @VFSTOSMBFS(i32) #1

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local %struct.uio* @malloc(i32, i32, i32) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @smb_read(i32, i32, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @smb_write(i32, i32, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @bdirty(%struct.buf*) #1

declare dso_local i32 @bufdone(%struct.buf*) #1

declare dso_local i32 @free(%struct.uio*, i32) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
