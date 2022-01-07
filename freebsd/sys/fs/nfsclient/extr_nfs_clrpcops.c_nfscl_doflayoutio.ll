; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_doflayoutio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clrpcops.c_nfscl_doflayoutio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio = type { i64 }
%struct.nfscldevinfo = type { i32 }
%struct.nfscllayout = type { i32 }
%struct.nfsclflayout = type { i32, i32, i32, i32, %struct.nfsfh** }
%struct.nfsfh = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsnode = type { i32, %struct.nfsfh* }
%struct.nfsclds = type { i32 }

@NFSFLAYUTIL_DENSE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFSFLAYUTIL_COMMIT_THRU_MDS = common dso_local global i32 0, align 4
@NDSCOMMIT = common dso_local global i32 0, align 4
@NFSV4OPEN_ACCESSREAD = common dso_local global i32 0, align 4
@NFSLY_WRITTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.uio*, i32*, i32*, i32*, i32*, i32, %struct.nfscldevinfo*, %struct.nfscllayout*, %struct.nfsclflayout*, i32, i32, i32, %struct.ucred*, i32*)* @nfscl_doflayoutio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfscl_doflayoutio(i32 %0, %struct.uio* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6, %struct.nfscldevinfo* %7, %struct.nfscllayout* %8, %struct.nfsclflayout* %9, i32 %10, i32 %11, i32 %12, %struct.ucred* %13, i32* %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.uio*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.nfscldevinfo*, align 8
  %25 = alloca %struct.nfscllayout*, align 8
  %26 = alloca %struct.nfsclflayout*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.ucred*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca %struct.nfsnode*, align 8
  %42 = alloca %struct.nfsfh*, align 8
  %43 = alloca %struct.nfsclds**, align 8
  store i32 %0, i32* %17, align 4
  store %struct.uio* %1, %struct.uio** %18, align 8
  store i32* %2, i32** %19, align 8
  store i32* %3, i32** %20, align 8
  store i32* %4, i32** %21, align 8
  store i32* %5, i32** %22, align 8
  store i32 %6, i32* %23, align 4
  store %struct.nfscldevinfo* %7, %struct.nfscldevinfo** %24, align 8
  store %struct.nfscllayout* %8, %struct.nfscllayout** %25, align 8
  store %struct.nfsclflayout* %9, %struct.nfsclflayout** %26, align 8
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store %struct.ucred* %13, %struct.ucred** %30, align 8
  store i32* %14, i32** %31, align 8
  %44 = load i32, i32* %17, align 4
  %45 = call %struct.nfsnode* @VTONFS(i32 %44)
  store %struct.nfsnode* %45, %struct.nfsnode** %41, align 8
  %46 = load i32, i32* %27, align 4
  %47 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %48 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %46, %49
  store i32 %50, i32* %33, align 4
  %51 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %52 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = ashr i32 %53, 6
  %55 = and i32 %54, 67108863
  store i32 %55, i32* %34, align 4
  %56 = load i32, i32* %33, align 4
  %57 = load i32, i32* %34, align 4
  %58 = sdiv i32 %56, %57
  %59 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %60 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %58, %61
  %63 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %24, align 8
  %64 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %62, %65
  store i32 %66, i32* %40, align 4
  %67 = load i32, i32* %34, align 4
  %68 = load i32, i32* %33, align 4
  %69 = load i32, i32* %34, align 4
  %70 = srem i32 %68, %69
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %35, align 4
  store i32 0, i32* %38, align 4
  br label %72

72:                                               ; preds = %291, %15
  %73 = load i32, i32* %28, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %38, align 4
  %77 = icmp eq i32 %76, 0
  br label %78

78:                                               ; preds = %75, %72
  %79 = phi i1 [ false, %72 ], [ %77, %75 ]
  br i1 %79, label %80, label %292

80:                                               ; preds = %78
  %81 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %24, align 8
  %82 = load i32, i32* %40, align 4
  %83 = call i32 @nfsfldi_stripeindex(%struct.nfscldevinfo* %81, i32 %82)
  store i32 %83, i32* %39, align 4
  %84 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %24, align 8
  %85 = load i32, i32* %39, align 4
  %86 = call %struct.nfsclds** @nfsfldi_addr(%struct.nfscldevinfo* %84, i32 %85)
  store %struct.nfsclds** %86, %struct.nfsclds*** %43, align 8
  %87 = load i32, i32* %28, align 4
  %88 = load i32, i32* %35, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %80
  %91 = load i32, i32* %29, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* %35, align 4
  store i32 %94, i32* %36, align 4
  br label %97

95:                                               ; preds = %90, %80
  %96 = load i32, i32* %28, align 4
  store i32 %96, i32* %36, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %99 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @NFSFLAYUTIL_DENSE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %97
  %105 = load i32, i32* %40, align 4
  %106 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %107 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = icmp sge i32 %105, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* @EIO, align 4
  store i32 %111, i32* %16, align 4
  br label %294

112:                                              ; preds = %104
  %113 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %114 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %113, i32 0, i32 4
  %115 = load %struct.nfsfh**, %struct.nfsfh*** %114, align 8
  %116 = load i32, i32* %40, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.nfsfh*, %struct.nfsfh** %115, i64 %117
  %119 = load %struct.nfsfh*, %struct.nfsfh** %118, align 8
  store %struct.nfsfh* %119, %struct.nfsfh** %42, align 8
  %120 = load i32, i32* %33, align 4
  %121 = load i32, i32* %34, align 4
  %122 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %24, align 8
  %123 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 %121, %124
  %126 = sdiv i32 %120, %125
  %127 = load i32, i32* %34, align 4
  %128 = mul nsw i32 %126, %127
  %129 = load i32, i32* %33, align 4
  %130 = load i32, i32* %34, align 4
  %131 = srem i32 %129, %130
  %132 = add nsw i32 %128, %131
  store i32 %132, i32* %32, align 4
  br label %172

133:                                              ; preds = %97
  %134 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %135 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 1
  br i1 %137, label %138, label %154

138:                                              ; preds = %133
  %139 = load i32, i32* %39, align 4
  %140 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %141 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = icmp sge i32 %139, %142
  br i1 %143, label %144, label %146

144:                                              ; preds = %138
  %145 = load i32, i32* @EIO, align 4
  store i32 %145, i32* %16, align 4
  br label %294

146:                                              ; preds = %138
  %147 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %148 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %147, i32 0, i32 4
  %149 = load %struct.nfsfh**, %struct.nfsfh*** %148, align 8
  %150 = load i32, i32* %39, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.nfsfh*, %struct.nfsfh** %149, i64 %151
  %153 = load %struct.nfsfh*, %struct.nfsfh** %152, align 8
  store %struct.nfsfh* %153, %struct.nfsfh** %42, align 8
  br label %170

154:                                              ; preds = %133
  %155 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %156 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %161 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %160, i32 0, i32 4
  %162 = load %struct.nfsfh**, %struct.nfsfh*** %161, align 8
  %163 = getelementptr inbounds %struct.nfsfh*, %struct.nfsfh** %162, i64 0
  %164 = load %struct.nfsfh*, %struct.nfsfh** %163, align 8
  store %struct.nfsfh* %164, %struct.nfsfh** %42, align 8
  br label %169

165:                                              ; preds = %154
  %166 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %167 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %166, i32 0, i32 1
  %168 = load %struct.nfsfh*, %struct.nfsfh** %167, align 8
  store %struct.nfsfh* %168, %struct.nfsfh** %42, align 8
  br label %169

169:                                              ; preds = %165, %159
  br label %170

170:                                              ; preds = %169, %146
  %171 = load i32, i32* %27, align 4
  store i32 %171, i32* %32, align 4
  br label %172

172:                                              ; preds = %170, %112
  %173 = load %struct.nfsclflayout*, %struct.nfsclflayout** %26, align 8
  %174 = getelementptr inbounds %struct.nfsclflayout, %struct.nfsclflayout* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @NFSFLAYUTIL_COMMIT_THRU_MDS, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  store i32 1, i32* %37, align 4
  %180 = load i32, i32* %29, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %179
  %183 = load i32, i32* @EIO, align 4
  store i32 %183, i32* %38, align 4
  br label %184

184:                                              ; preds = %182, %179
  br label %195

185:                                              ; preds = %172
  store i32 0, i32* %37, align 4
  %186 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %187 = call i32 @NFSLOCKNODE(%struct.nfsnode* %186)
  %188 = load i32, i32* @NDSCOMMIT, align 4
  %189 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %190 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 8
  %193 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %194 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %193)
  br label %195

195:                                              ; preds = %185, %184
  %196 = load i32, i32* %29, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %230

198:                                              ; preds = %195
  %199 = load i32, i32* %38, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %211

201:                                              ; preds = %198
  %202 = load i32, i32* %17, align 4
  %203 = load i32, i32* %32, align 4
  %204 = load i32, i32* %36, align 4
  %205 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %206 = load %struct.nfsclds*, %struct.nfsclds** %205, align 8
  %207 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %208 = load %struct.ucred*, %struct.ucred** %30, align 8
  %209 = load i32*, i32** %31, align 8
  %210 = call i32 @nfsrpc_commitds(i32 %202, i32 %203, i32 %204, %struct.nfsclds* %206, %struct.nfsfh* %207, i32 0, i32 0, %struct.ucred* %208, i32* %209)
  store i32 %210, i32* %38, align 4
  br label %211

211:                                              ; preds = %201, %198
  %212 = load i32, i32* %38, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load i32*, i32** %21, align 8
  store i32 1, i32* %215, align 4
  %216 = load %struct.uio*, %struct.uio** %18, align 8
  %217 = getelementptr inbounds %struct.uio, %struct.uio* %216, i32 0, i32 0
  store i64 0, i64* %217, align 8
  br label %229

218:                                              ; preds = %211
  %219 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %220 = call i32 @NFSLOCKNODE(%struct.nfsnode* %219)
  %221 = load i32, i32* @NDSCOMMIT, align 4
  %222 = xor i32 %221, -1
  %223 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %224 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = and i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.nfsnode*, %struct.nfsnode** %41, align 8
  %228 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %227)
  br label %229

229:                                              ; preds = %218, %214
  br label %274

230:                                              ; preds = %195
  %231 = load i32, i32* %23, align 4
  %232 = load i32, i32* @NFSV4OPEN_ACCESSREAD, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %247

234:                                              ; preds = %230
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.uio*, %struct.uio** %18, align 8
  %237 = load i32*, i32** %22, align 8
  %238 = load i32*, i32** %21, align 8
  %239 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %240 = load %struct.nfsclds*, %struct.nfsclds** %239, align 8
  %241 = load i32, i32* %32, align 4
  %242 = load i32, i32* %36, align 4
  %243 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %244 = load %struct.ucred*, %struct.ucred** %30, align 8
  %245 = load i32*, i32** %31, align 8
  %246 = call i32 @nfsrpc_readds(i32 %235, %struct.uio* %236, i32* %237, i32* %238, %struct.nfsclds* %240, i32 %241, i32 %242, %struct.nfsfh* %243, i32 0, i32 0, i32 0, %struct.ucred* %244, i32* %245)
  store i32 %246, i32* %38, align 4
  br label %273

247:                                              ; preds = %230
  %248 = load i32, i32* %17, align 4
  %249 = load %struct.uio*, %struct.uio** %18, align 8
  %250 = load i32*, i32** %19, align 8
  %251 = load i32*, i32** %20, align 8
  %252 = load i32*, i32** %22, align 8
  %253 = load %struct.nfsclds**, %struct.nfsclds*** %43, align 8
  %254 = load %struct.nfsclds*, %struct.nfsclds** %253, align 8
  %255 = load i32, i32* %32, align 4
  %256 = load i32, i32* %36, align 4
  %257 = load %struct.nfsfh*, %struct.nfsfh** %42, align 8
  %258 = load i32, i32* %37, align 4
  %259 = load %struct.ucred*, %struct.ucred** %30, align 8
  %260 = load i32*, i32** %31, align 8
  %261 = call i32 @nfsrpc_writeds(i32 %248, %struct.uio* %249, i32* %250, i32* %251, i32* %252, %struct.nfsclds* %254, i32 %255, i32 %256, %struct.nfsfh* %257, i32 %258, i32 0, i32 0, i32 0, %struct.ucred* %259, i32* %260)
  store i32 %261, i32* %38, align 4
  %262 = load i32, i32* %38, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %247
  %265 = call i32 (...) @NFSLOCKCLSTATE()
  %266 = load i32, i32* @NFSLY_WRITTEN, align 4
  %267 = load %struct.nfscllayout*, %struct.nfscllayout** %25, align 8
  %268 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = or i32 %269, %266
  store i32 %270, i32* %268, align 4
  %271 = call i32 (...) @NFSUNLOCKCLSTATE()
  br label %272

272:                                              ; preds = %264, %247
  br label %273

273:                                              ; preds = %272, %234
  br label %274

274:                                              ; preds = %273, %229
  %275 = load i32, i32* %38, align 4
  %276 = icmp eq i32 %275, 0
  br i1 %276, label %277, label %291

277:                                              ; preds = %274
  %278 = load i32, i32* %34, align 4
  store i32 %278, i32* %35, align 4
  %279 = load i32, i32* %40, align 4
  %280 = add nsw i32 %279, 1
  %281 = load %struct.nfscldevinfo*, %struct.nfscldevinfo** %24, align 8
  %282 = getelementptr inbounds %struct.nfscldevinfo, %struct.nfscldevinfo* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = srem i32 %280, %283
  store i32 %284, i32* %40, align 4
  %285 = load i32, i32* %36, align 4
  %286 = load i32, i32* %28, align 4
  %287 = sub nsw i32 %286, %285
  store i32 %287, i32* %28, align 4
  %288 = load i32, i32* %36, align 4
  %289 = load i32, i32* %27, align 4
  %290 = add nsw i32 %289, %288
  store i32 %290, i32* %27, align 4
  br label %291

291:                                              ; preds = %277, %274
  br label %72

292:                                              ; preds = %78
  %293 = load i32, i32* %38, align 4
  store i32 %293, i32* %16, align 4
  br label %294

294:                                              ; preds = %292, %144, %110
  %295 = load i32, i32* %16, align 4
  ret i32 %295
}

declare dso_local %struct.nfsnode* @VTONFS(i32) #1

declare dso_local i32 @nfsfldi_stripeindex(%struct.nfscldevinfo*, i32) #1

declare dso_local %struct.nfsclds** @nfsfldi_addr(%struct.nfscldevinfo*, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @nfsrpc_commitds(i32, i32, i32, %struct.nfsclds*, %struct.nfsfh*, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrpc_readds(i32, %struct.uio*, i32*, i32*, %struct.nfsclds*, i32, i32, %struct.nfsfh*, i32, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @nfsrpc_writeds(i32, %struct.uio*, i32*, i32*, i32*, %struct.nfsclds*, i32, i32, %struct.nfsfh*, i32, i32, i32, i32, %struct.ucred*, i32*) #1

declare dso_local i32 @NFSLOCKCLSTATE(...) #1

declare dso_local i32 @NFSUNLOCKCLSTATE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
