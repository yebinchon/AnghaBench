; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_asyncio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_asyncio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32, i32, i32, i8* }
%struct.ucred = type { i32 }
%struct.buf = type { i64, i32, %struct.TYPE_6__*, %struct.ucred*, %struct.ucred* }
%struct.TYPE_6__ = type { i64 }
%struct.thread = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@BIO_WRITE = common dso_local global i64 0, align 8
@B_NEEDCOMMIT = common dso_local global i32 0, align 4
@ncl_numasync = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@NFSMNT_RDIRPLUS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFSMNT_INT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ncl_iodwant = common dso_local global i64* null, align 8
@NFSIOD_AVAILABLE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@ASYNCIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ncl_asyncio: waking iod %d for mount %p\0A\00", align 1
@NFSIOD_NOT_AVAILABLE = common dso_local global i64 0, align 8
@ncl_iodmount = common dso_local global %struct.nfsmount** null, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"ncl_asyncio: %d iods are already processing mount %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"ncl_asyncio: waiting for mount %p queue to drain\0A\00", align 1
@ncl_iod_mutex = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"nfsaio\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [64 x i8] c"ncl_asyncio: no iods after mount %p queue was drained, looping\0A\00", align 1
@BIO_READ = common dso_local global i64 0, align 8
@NOCRED = common dso_local global %struct.ucred* null, align 8
@B_REMFREE = common dso_local global i32 0, align 4
@b_freelist = common dso_local global i32 0, align 4
@B_DIRECT = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"ncl_asyncio: no iods available, i/o is synchronous\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_asyncio(%struct.nfsmount* %0, %struct.buf* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsmount*, align 8
  %7 = alloca %struct.buf*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %6, align 8
  store %struct.buf* %1, %struct.buf** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = call i32 (...) @NFSLOCKIOD()
  %17 = load %struct.buf*, %struct.buf** %7, align 8
  %18 = getelementptr inbounds %struct.buf, %struct.buf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @BIO_WRITE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load %struct.buf*, %struct.buf** %7, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @B_NEEDCOMMIT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %31 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @ncl_numasync, align 4
  %34 = sdiv i32 %33, 2
  %35 = icmp sgt i32 %32, %34
  br i1 %35, label %51, label %36

36:                                               ; preds = %29, %22, %4
  %37 = load %struct.buf*, %struct.buf** %7, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VDIR, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %36
  %45 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %46 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @NFSMNT_RDIRPLUS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44, %29
  %52 = call i32 (...) @NFSUNLOCKIOD()
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %5, align 4
  br label %298

54:                                               ; preds = %44, %36
  br label %55

55:                                               ; preds = %186, %180, %54
  %56 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %57 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @NFSMNT_INT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* @PCATCH, align 4
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %62, %55
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %66

66:                                               ; preds = %82, %64
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @ncl_numasync, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i64*, i64** @ncl_iodwant, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NFSIOD_AVAILABLE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i8*, i8** @TRUE, align 8
  %80 = ptrtoint i8* %79 to i32
  store i32 %80, i32* %11, align 4
  br label %85

81:                                               ; preds = %70
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %66

85:                                               ; preds = %78, %66
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %85
  %89 = call i32 (...) @ncl_nfsiodnew()
  br label %115

90:                                               ; preds = %85
  %91 = load i32, i32* @ASYNCIO, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %94 = bitcast %struct.nfsmount* %93 to i8*
  %95 = call i32 @NFS_DPF(i32 %91, i8* %94)
  %96 = load i64, i64* @NFSIOD_NOT_AVAILABLE, align 8
  %97 = load i64*, i64** @ncl_iodwant, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  store i64 %96, i64* %100, align 8
  %101 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %102 = load %struct.nfsmount**, %struct.nfsmount*** @ncl_iodmount, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.nfsmount*, %struct.nfsmount** %102, i64 %104
  store %struct.nfsmount* %101, %struct.nfsmount** %105, align 8
  %106 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %107 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load i64*, i64** @ncl_iodwant, align 8
  %111 = load i32, i32* %10, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = call i32 @wakeup(i64* %113)
  br label %115

115:                                              ; preds = %90, %88
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %134, label %118

118:                                              ; preds = %115
  %119 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %120 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load i32, i32* @ASYNCIO, align 4
  %125 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %126 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %129 = bitcast %struct.nfsmount* %128 to i8*
  %130 = call i32 @NFS_DPF(i32 %124, i8* %129)
  %131 = load i8*, i8** @TRUE, align 8
  %132 = ptrtoint i8* %131 to i32
  store i32 %132, i32* %11, align 4
  br label %133

133:                                              ; preds = %123, %118
  br label %134

134:                                              ; preds = %133, %115
  %135 = load i32, i32* %11, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %293

137:                                              ; preds = %134
  br label %138

138:                                              ; preds = %137
  %139 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %140 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ncl_numasync, align 4
  %143 = mul nsw i32 2, %142
  %144 = icmp sge i32 %141, %143
  br i1 %144, label %145, label %181

145:                                              ; preds = %138
  %146 = load i32, i32* @ASYNCIO, align 4
  %147 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %148 = bitcast %struct.nfsmount* %147 to i8*
  %149 = call i32 @NFS_DPF(i32 %146, i8* %148)
  %150 = load i8*, i8** @TRUE, align 8
  %151 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %152 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.thread*, %struct.thread** %9, align 8
  %154 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %155 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %154, i32 0, i32 3
  %156 = load i32, i32* %12, align 4
  %157 = load i32, i32* @PRIBIO, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @newnfs_msleep(%struct.thread* %153, i32* %155, i32* @ncl_iod_mutex, i32 %158, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %159)
  store i32 %160, i32* %14, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %145
  %164 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %165 = load %struct.thread*, %struct.thread** %9, align 8
  %166 = call i32 @newnfs_sigintr(%struct.nfsmount* %164, %struct.thread* %165)
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = call i32 (...) @NFSUNLOCKIOD()
  %171 = load i32, i32* %15, align 4
  store i32 %171, i32* %5, align 4
  br label %298

172:                                              ; preds = %163
  %173 = load i32, i32* %12, align 4
  %174 = load i32, i32* @PCATCH, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %172
  store i32 0, i32* %12, align 4
  %177 = load i32, i32* @hz, align 4
  %178 = mul nsw i32 2, %177
  store i32 %178, i32* %13, align 4
  br label %179

179:                                              ; preds = %176, %172
  br label %180

180:                                              ; preds = %179, %145
  br label %55

181:                                              ; preds = %138
  %182 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %183 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %191

186:                                              ; preds = %181
  %187 = load i32, i32* @ASYNCIO, align 4
  %188 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %189 = bitcast %struct.nfsmount* %188 to i8*
  %190 = call i32 @NFS_DPF(i32 %187, i8* %189)
  br label %55

191:                                              ; preds = %181
  %192 = load %struct.buf*, %struct.buf** %7, align 8
  %193 = getelementptr inbounds %struct.buf, %struct.buf* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @BIO_READ, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %214

197:                                              ; preds = %191
  %198 = load %struct.buf*, %struct.buf** %7, align 8
  %199 = getelementptr inbounds %struct.buf, %struct.buf* %198, i32 0, i32 4
  %200 = load %struct.ucred*, %struct.ucred** %199, align 8
  %201 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %202 = icmp eq %struct.ucred* %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = load %struct.ucred*, %struct.ucred** %8, align 8
  %205 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %206 = icmp ne %struct.ucred* %204, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %203
  %208 = load %struct.ucred*, %struct.ucred** %8, align 8
  %209 = call i8* @crhold(%struct.ucred* %208)
  %210 = bitcast i8* %209 to %struct.ucred*
  %211 = load %struct.buf*, %struct.buf** %7, align 8
  %212 = getelementptr inbounds %struct.buf, %struct.buf* %211, i32 0, i32 4
  store %struct.ucred* %210, %struct.ucred** %212, align 8
  br label %213

213:                                              ; preds = %207, %203, %197
  br label %231

214:                                              ; preds = %191
  %215 = load %struct.buf*, %struct.buf** %7, align 8
  %216 = getelementptr inbounds %struct.buf, %struct.buf* %215, i32 0, i32 3
  %217 = load %struct.ucred*, %struct.ucred** %216, align 8
  %218 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %219 = icmp eq %struct.ucred* %217, %218
  br i1 %219, label %220, label %230

220:                                              ; preds = %214
  %221 = load %struct.ucred*, %struct.ucred** %8, align 8
  %222 = load %struct.ucred*, %struct.ucred** @NOCRED, align 8
  %223 = icmp ne %struct.ucred* %221, %222
  br i1 %223, label %224, label %230

224:                                              ; preds = %220
  %225 = load %struct.ucred*, %struct.ucred** %8, align 8
  %226 = call i8* @crhold(%struct.ucred* %225)
  %227 = bitcast i8* %226 to %struct.ucred*
  %228 = load %struct.buf*, %struct.buf** %7, align 8
  %229 = getelementptr inbounds %struct.buf, %struct.buf* %228, i32 0, i32 3
  store %struct.ucred* %227, %struct.ucred** %229, align 8
  br label %230

230:                                              ; preds = %224, %220, %214
  br label %231

231:                                              ; preds = %230, %213
  %232 = load %struct.buf*, %struct.buf** %7, align 8
  %233 = getelementptr inbounds %struct.buf, %struct.buf* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @B_REMFREE, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %231
  %239 = load %struct.buf*, %struct.buf** %7, align 8
  %240 = call i32 @bremfreef(%struct.buf* %239)
  br label %241

241:                                              ; preds = %238, %231
  %242 = load %struct.buf*, %struct.buf** %7, align 8
  %243 = call i32 @BUF_KERNPROC(%struct.buf* %242)
  %244 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %245 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %244, i32 0, i32 3
  %246 = load %struct.buf*, %struct.buf** %7, align 8
  %247 = load i32, i32* @b_freelist, align 4
  %248 = call i32 @TAILQ_INSERT_TAIL(i32* %245, %struct.buf* %246, i32 %247)
  %249 = load %struct.nfsmount*, %struct.nfsmount** %6, align 8
  %250 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %250, align 8
  %253 = load %struct.buf*, %struct.buf** %7, align 8
  %254 = getelementptr inbounds %struct.buf, %struct.buf* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @B_DIRECT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %291

259:                                              ; preds = %241
  %260 = load %struct.buf*, %struct.buf** %7, align 8
  %261 = getelementptr inbounds %struct.buf, %struct.buf* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @BIO_WRITE, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %291

265:                                              ; preds = %259
  %266 = load %struct.buf*, %struct.buf** %7, align 8
  %267 = getelementptr inbounds %struct.buf, %struct.buf* %266, i32 0, i32 2
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = call %struct.TYPE_5__* @VTONFS(%struct.TYPE_6__* %268)
  %270 = call i32 @NFSLOCKNODE(%struct.TYPE_5__* %269)
  %271 = load i32, i32* @NMODIFIED, align 4
  %272 = load %struct.buf*, %struct.buf** %7, align 8
  %273 = getelementptr inbounds %struct.buf, %struct.buf* %272, i32 0, i32 2
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = call %struct.TYPE_5__* @VTONFS(%struct.TYPE_6__* %274)
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %271
  store i32 %278, i32* %276, align 4
  %279 = load %struct.buf*, %struct.buf** %7, align 8
  %280 = getelementptr inbounds %struct.buf, %struct.buf* %279, i32 0, i32 2
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %280, align 8
  %282 = call %struct.TYPE_5__* @VTONFS(%struct.TYPE_6__* %281)
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %283, align 4
  %286 = load %struct.buf*, %struct.buf** %7, align 8
  %287 = getelementptr inbounds %struct.buf, %struct.buf* %286, i32 0, i32 2
  %288 = load %struct.TYPE_6__*, %struct.TYPE_6__** %287, align 8
  %289 = call %struct.TYPE_5__* @VTONFS(%struct.TYPE_6__* %288)
  %290 = call i32 @NFSUNLOCKNODE(%struct.TYPE_5__* %289)
  br label %291

291:                                              ; preds = %265, %259, %241
  %292 = call i32 (...) @NFSUNLOCKIOD()
  store i32 0, i32* %5, align 4
  br label %298

293:                                              ; preds = %134
  %294 = call i32 (...) @NFSUNLOCKIOD()
  %295 = load i32, i32* @ASYNCIO, align 4
  %296 = call i32 @NFS_DPF(i32 %295, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %297 = load i32, i32* @EIO, align 4
  store i32 %297, i32* %5, align 4
  br label %298

298:                                              ; preds = %293, %291, %169, %51
  %299 = load i32, i32* %5, align 4
  ret i32 %299
}

declare dso_local i32 @NFSLOCKIOD(...) #1

declare dso_local i32 @NFSUNLOCKIOD(...) #1

declare dso_local i32 @ncl_nfsiodnew(...) #1

declare dso_local i32 @NFS_DPF(i32, i8*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @newnfs_msleep(%struct.thread*, i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @newnfs_sigintr(%struct.nfsmount*, %struct.thread*) #1

declare dso_local i8* @crhold(%struct.ucred*) #1

declare dso_local i32 @bremfreef(%struct.buf*) #1

declare dso_local i32 @BUF_KERNPROC(%struct.buf*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.buf*, i32) #1

declare dso_local i32 @NFSLOCKNODE(%struct.TYPE_5__*) #1

declare dso_local %struct.TYPE_5__* @VTONFS(%struct.TYPE_6__*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
