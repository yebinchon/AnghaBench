; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_open_args = type { i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i64, i32, i32*, i32 }
%struct.nfsnode = type { i32, i64, i64, %struct.TYPE_2__, i32, %struct.ucred*, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.vattr = type { i64, i32, i32 }

@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@newnfs_directio_enable = common dso_local global i64 0, align 8
@O_DIRECT = common dso_local global i32 0, align 4
@NNONCACHE = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@NWRITEOPENED = common dso_local global i32 0, align 4
@OBJPC_SYNC = common dso_local global i32 0, align 4
@MNT_WAIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @nfs_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_open_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.nfsnode*, align 8
  %6 = alloca %struct.vattr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ucred*, align 8
  %10 = alloca i32*, align 8
  store %struct.vop_open_args* %0, %struct.vop_open_args** %3, align 8
  %11 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %11, i32 0, i32 3
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %4, align 8
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = call %struct.nfsnode* @VTONFS(%struct.vnode* %14)
  store %struct.nfsnode* %15, %struct.nfsnode** %5, align 8
  %16 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VREG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VDIR, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VLNK, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %37, i32* %2, align 4
  br label %391

38:                                               ; preds = %30, %24, %1
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = call i64 @NFS_ISV4(%struct.vnode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.vnode*, %struct.vnode** %4, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %46 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %49 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @nfsrpc_open(%struct.vnode* %43, i32 %44, i32 %47, i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %42
  %55 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %56 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @nfscl_maperr(i32 %57, i32 %58, i32 0, i32 0)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %391

61:                                               ; preds = %42
  br label %62

62:                                               ; preds = %61, %38
  %63 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %64 = call i32 @NFSLOCKNODE(%struct.nfsnode* %63)
  %65 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %66 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @NMODIFIED, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %152

71:                                               ; preds = %62
  %72 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %73 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %72)
  %74 = load %struct.vnode*, %struct.vnode** %4, align 8
  %75 = load i32, i32* @V_SAVE, align 4
  %76 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %77 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ncl_vinvalbuf(%struct.vnode* %74, i32 %75, i32 %78, i32 1)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @EINTR, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %87, label %83

83:                                               ; preds = %71
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @EIO, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %83, %71
  %88 = load %struct.vnode*, %struct.vnode** %4, align 8
  %89 = call i64 @NFS_ISV4(%struct.vnode* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.vnode*, %struct.vnode** %4, align 8
  %93 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %94 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @nfsrpc_close(%struct.vnode* %92, i32 0, i32 %95)
  br label %97

97:                                               ; preds = %91, %87
  %98 = load i32, i32* %7, align 4
  store i32 %98, i32* %2, align 4
  br label %391

99:                                               ; preds = %83
  %100 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %101 = call i32 @NFSLOCKNODE(%struct.nfsnode* %100)
  %102 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %103 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %102, i32 0, i32 7
  store i64 0, i64* %103, align 8
  %104 = load %struct.vnode*, %struct.vnode** %4, align 8
  %105 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %104)
  %106 = load %struct.vnode*, %struct.vnode** %4, align 8
  %107 = getelementptr inbounds %struct.vnode, %struct.vnode* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VDIR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %113 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %112, i32 0, i32 6
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %111, %99
  %115 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %116 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %115)
  %117 = load %struct.vnode*, %struct.vnode** %4, align 8
  %118 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %119 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @VOP_GETATTR(%struct.vnode* %117, %struct.vattr* %6, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* %7, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %136

124:                                              ; preds = %114
  %125 = load %struct.vnode*, %struct.vnode** %4, align 8
  %126 = call i64 @NFS_ISV4(%struct.vnode* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %124
  %129 = load %struct.vnode*, %struct.vnode** %4, align 8
  %130 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %131 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @nfsrpc_close(%struct.vnode* %129, i32 0, i32 %132)
  br label %134

134:                                              ; preds = %128, %124
  %135 = load i32, i32* %7, align 4
  store i32 %135, i32* %2, align 4
  br label %391

136:                                              ; preds = %114
  %137 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %138 = call i32 @NFSLOCKNODE(%struct.nfsnode* %137)
  %139 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %142 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 4
  %143 = load %struct.vnode*, %struct.vnode** %4, align 8
  %144 = call i64 @NFS_ISV4(%struct.vnode* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %136
  %147 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %150 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %149, i32 0, i32 1
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %136
  br label %247

152:                                              ; preds = %62
  %153 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %154 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %153)
  %155 = load %struct.vnode*, %struct.vnode** %4, align 8
  %156 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %157 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @VOP_GETATTR(%struct.vnode* %155, %struct.vattr* %6, i32 %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %174

162:                                              ; preds = %152
  %163 = load %struct.vnode*, %struct.vnode** %4, align 8
  %164 = call i64 @NFS_ISV4(%struct.vnode* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %162
  %167 = load %struct.vnode*, %struct.vnode** %4, align 8
  %168 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %169 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @nfsrpc_close(%struct.vnode* %167, i32 0, i32 %170)
  br label %172

172:                                              ; preds = %166, %162
  %173 = load i32, i32* %7, align 4
  store i32 %173, i32* %2, align 4
  br label %391

174:                                              ; preds = %152
  %175 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %176 = call i32 @NFSLOCKNODE(%struct.nfsnode* %175)
  %177 = load %struct.vnode*, %struct.vnode** %4, align 8
  %178 = call i64 @NFS_ISV4(%struct.vnode* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %174
  %181 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %182 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %183, %185
  br i1 %186, label %193, label %187

187:                                              ; preds = %180, %174
  %188 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %189 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %188, i32 0, i32 4
  %190 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 2
  %191 = call i64 @NFS_TIMESPEC_COMPARE(i32* %189, i32* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %246

193:                                              ; preds = %187, %180
  %194 = load %struct.vnode*, %struct.vnode** %4, align 8
  %195 = getelementptr inbounds %struct.vnode, %struct.vnode* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @VDIR, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %202

199:                                              ; preds = %193
  %200 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %201 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %200, i32 0, i32 6
  store i64 0, i64* %201, align 8
  br label %202

202:                                              ; preds = %199, %193
  %203 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %204 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %203)
  %205 = load %struct.vnode*, %struct.vnode** %4, align 8
  %206 = load i32, i32* @V_SAVE, align 4
  %207 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %208 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @ncl_vinvalbuf(%struct.vnode* %205, i32 %206, i32 %209, i32 1)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = load i32, i32* @EINTR, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %218, label %214

214:                                              ; preds = %202
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* @EIO, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %230

218:                                              ; preds = %214, %202
  %219 = load %struct.vnode*, %struct.vnode** %4, align 8
  %220 = call i64 @NFS_ISV4(%struct.vnode* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load %struct.vnode*, %struct.vnode** %4, align 8
  %224 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %225 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @nfsrpc_close(%struct.vnode* %223, i32 0, i32 %226)
  br label %228

228:                                              ; preds = %222, %218
  %229 = load i32, i32* %7, align 4
  store i32 %229, i32* %2, align 4
  br label %391

230:                                              ; preds = %214
  %231 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %232 = call i32 @NFSLOCKNODE(%struct.nfsnode* %231)
  %233 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %236 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %235, i32 0, i32 4
  store i32 %234, i32* %236, align 4
  %237 = load %struct.vnode*, %struct.vnode** %4, align 8
  %238 = call i64 @NFS_ISV4(%struct.vnode* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %230
  %241 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %244 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %243, i32 0, i32 1
  store i64 %242, i64* %244, align 8
  br label %245

245:                                              ; preds = %240, %230
  br label %246

246:                                              ; preds = %245, %187
  br label %247

247:                                              ; preds = %246, %151
  %248 = load i64, i64* @newnfs_directio_enable, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %302

250:                                              ; preds = %247
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @O_DIRECT, align 4
  %253 = and i32 %251, %252
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %302

255:                                              ; preds = %250
  %256 = load %struct.vnode*, %struct.vnode** %4, align 8
  %257 = getelementptr inbounds %struct.vnode, %struct.vnode* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @VREG, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %302

261:                                              ; preds = %255
  %262 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %263 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp eq i64 %264, 0
  br i1 %265, label %266, label %297

266:                                              ; preds = %261
  %267 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %268 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %267)
  %269 = load %struct.vnode*, %struct.vnode** %4, align 8
  %270 = load i32, i32* @V_SAVE, align 4
  %271 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %272 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @ncl_vinvalbuf(%struct.vnode* %269, i32 %270, i32 %273, i32 1)
  store i32 %274, i32* %7, align 4
  %275 = load i32, i32* %7, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %289

277:                                              ; preds = %266
  %278 = load %struct.vnode*, %struct.vnode** %4, align 8
  %279 = call i64 @NFS_ISV4(%struct.vnode* %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %277
  %282 = load %struct.vnode*, %struct.vnode** %4, align 8
  %283 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %284 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @nfsrpc_close(%struct.vnode* %282, i32 0, i32 %285)
  br label %287

287:                                              ; preds = %281, %277
  %288 = load i32, i32* %7, align 4
  store i32 %288, i32* %2, align 4
  br label %391

289:                                              ; preds = %266
  %290 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %291 = call i32 @NFSLOCKNODE(%struct.nfsnode* %290)
  %292 = load i32, i32* @NNONCACHE, align 4
  %293 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %294 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  br label %297

297:                                              ; preds = %289, %261
  %298 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %299 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %300, 1
  store i64 %301, i64* %299, align 8
  br label %302

302:                                              ; preds = %297, %255, %250, %247
  %303 = load %struct.vnode*, %struct.vnode** %4, align 8
  %304 = getelementptr inbounds %struct.vnode, %struct.vnode* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @VFSTONFS(i32 %305)
  %307 = call i64 @NFSHASPNFS(i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %302
  %310 = load i32, i32* %8, align 4
  %311 = load i32, i32* @FWRITE, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %320

314:                                              ; preds = %309
  %315 = load i32, i32* @NWRITEOPENED, align 4
  %316 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %317 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %315
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %314, %309, %302
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* @FWRITE, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %335

325:                                              ; preds = %320
  %326 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %327 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %326, i32 0, i32 5
  %328 = load %struct.ucred*, %struct.ucred** %327, align 8
  store %struct.ucred* %328, %struct.ucred** %9, align 8
  %329 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %330 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = call %struct.ucred* @crhold(i32 %331)
  %333 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %334 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %333, i32 0, i32 5
  store %struct.ucred* %332, %struct.ucred** %334, align 8
  br label %336

335:                                              ; preds = %320
  store %struct.ucred* null, %struct.ucred** %9, align 8
  br label %336

336:                                              ; preds = %335, %325
  %337 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %338 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %337)
  %339 = load %struct.ucred*, %struct.ucred** %9, align 8
  %340 = icmp ne %struct.ucred* %339, null
  br i1 %340, label %341, label %344

341:                                              ; preds = %336
  %342 = load %struct.ucred*, %struct.ucred** %9, align 8
  %343 = call i32 @crfree(%struct.ucred* %342)
  br label %344

344:                                              ; preds = %341, %336
  %345 = load %struct.vnode*, %struct.vnode** %4, align 8
  %346 = getelementptr inbounds %struct.vattr, %struct.vattr* %6, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %349 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = call i32 @vnode_create_vobject(%struct.vnode* %345, i32 %347, i32 %350)
  %352 = load %struct.vnode*, %struct.vnode** %4, align 8
  %353 = getelementptr inbounds %struct.vnode, %struct.vnode* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 8
  %355 = icmp sle i32 %354, -1
  br i1 %355, label %356, label %390

356:                                              ; preds = %344
  %357 = load %struct.vnode*, %struct.vnode** %4, align 8
  %358 = getelementptr inbounds %struct.vnode, %struct.vnode* %357, i32 0, i32 2
  %359 = load i32*, i32** %358, align 8
  store i32* %359, i32** %10, align 8
  %360 = icmp ne i32* %359, null
  br i1 %360, label %361, label %373

361:                                              ; preds = %356
  %362 = load i32*, i32** %10, align 8
  %363 = call i64 @vm_object_mightbedirty(i32* %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %373

365:                                              ; preds = %361
  %366 = load i32*, i32** %10, align 8
  %367 = call i32 @VM_OBJECT_WLOCK(i32* %366)
  %368 = load i32*, i32** %10, align 8
  %369 = load i32, i32* @OBJPC_SYNC, align 4
  %370 = call i32 @vm_object_page_clean(i32* %368, i32 0, i32 0, i32 %369)
  %371 = load i32*, i32** %10, align 8
  %372 = call i32 @VM_OBJECT_WUNLOCK(i32* %371)
  br label %373

373:                                              ; preds = %365, %361, %356
  %374 = load %struct.vnode*, %struct.vnode** %4, align 8
  %375 = load i32, i32* @MNT_WAIT, align 4
  %376 = load i32, i32* @curthread, align 4
  %377 = call i32 @ncl_flush(%struct.vnode* %374, i32 %375, i32 %376, i32 0, i32 0)
  %378 = load %struct.vnode*, %struct.vnode** %4, align 8
  %379 = call %struct.nfsnode* @VTONFS(%struct.vnode* %378)
  store %struct.nfsnode* %379, %struct.nfsnode** %5, align 8
  %380 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %381 = call i32 @NFSLOCKNODE(%struct.nfsnode* %380)
  %382 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %383 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %382, i32 0, i32 3
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %387 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %386, i32 0, i32 4
  store i32 %385, i32* %387, align 4
  %388 = load %struct.nfsnode*, %struct.nfsnode** %5, align 8
  %389 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %388)
  br label %390

390:                                              ; preds = %373, %344
  store i32 0, i32* %2, align 4
  br label %391

391:                                              ; preds = %390, %287, %228, %172, %134, %97, %54, %36
  %392 = load i32, i32* %2, align 4
  ret i32 %392
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfsrpc_open(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @nfscl_maperr(i32, i32, i32, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @nfsrpc_close(%struct.vnode*, i32, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i64 @NFS_TIMESPEC_COMPARE(i32*, i32*) #1

declare dso_local i64 @NFSHASPNFS(i32) #1

declare dso_local i32 @VFSTONFS(i32) #1

declare dso_local %struct.ucred* @crhold(i32) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @vnode_create_vobject(%struct.vnode*, i32, i32) #1

declare dso_local i64 @vm_object_mightbedirty(i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32*) #1

declare dso_local i32 @vm_object_page_clean(i32*, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32*) #1

declare dso_local i32 @ncl_flush(%struct.vnode*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
