; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_lock.c_nfs_dolock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nfs/extr_nfs_lock.c_nfs_dolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, %struct.proc* }
%struct.proc = type { %struct.TYPE_10__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_10__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.vop_advlock_args = type { i32, i64, %struct.flock*, %struct.vnode* }
%struct.flock = type { i64, i64, i32, i64, i32, i64 }
%struct.vnode = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.flock, %struct.TYPE_8__, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.nfsmount = type { i32 (%struct.vnode*, i32, i32*, i32*, i32*, i32*, i32*)* }
%struct.timeval = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@.str = private unnamed_addr constant [11 x i8] c"nfs_dolock\00", align 1
@SEEK_END = common dso_local global i64 0, align 8
@SEEK_CUR = common dso_local global i64 0, align 8
@SEEK_SET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@LOCKD_MSG_VERSION = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@M_NLMINFO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@F_WAIT = common dso_local global i32 0, align 4
@F_GETLK = common dso_local global i64 0, align 8
@F_UNLCK = common dso_local global i64 0, align 8
@PUSER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lockd\00", align 1
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_dolock(%struct.vop_advlock_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_advlock_args*, align 8
  %4 = alloca %struct.TYPE_9__, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.flock*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca %struct.timeval, align 4
  store %struct.vop_advlock_args* %0, %struct.vop_advlock_args** %3, align 8
  %12 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %12, %struct.thread** %5, align 8
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %9, align 8
  %16 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %16, i32 0, i32 3
  %18 = load %struct.vnode*, %struct.vnode** %17, align 8
  store %struct.vnode* %18, %struct.vnode** %6, align 8
  %19 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %19, i32 0, i32 2
  %21 = load %struct.flock*, %struct.flock** %20, align 8
  store %struct.flock* %21, %struct.flock** %8, align 8
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.nfsmount* @VFSTONFS(i32 %24)
  store %struct.nfsmount* %25, %struct.nfsmount** %10, align 8
  %26 = load %struct.vnode*, %struct.vnode** %6, align 8
  %27 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 0
  %30 = load i32 (%struct.vnode*, i32, i32*, i32*, i32*, i32*, i32*)*, i32 (%struct.vnode*, i32, i32*, i32*, i32*, i32*, i32*)** %29, align 8
  %31 = load %struct.vnode*, %struct.vnode** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 9
  %33 = load i32, i32* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 7
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 6
  %37 = call i32 %30(%struct.vnode* %31, i32 %33, i32* %34, i32* %35, i32* %36, i32* null, i32* null)
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = call i32 @VOP_UNLOCK(%struct.vnode* %38, i32 0)
  %40 = load %struct.flock*, %struct.flock** %8, align 8
  %41 = getelementptr inbounds %struct.flock, %struct.flock* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SEEK_END, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %105

45:                                               ; preds = %1
  %46 = load %struct.flock*, %struct.flock** %8, align 8
  %47 = getelementptr inbounds %struct.flock, %struct.flock* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SEEK_CUR, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load %struct.flock*, %struct.flock** %8, align 8
  %53 = getelementptr inbounds %struct.flock, %struct.flock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SEEK_SET, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %82, label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.flock*, %struct.flock** %8, align 8
  %59 = getelementptr inbounds %struct.flock, %struct.flock* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %82, label %62

62:                                               ; preds = %57
  %63 = load %struct.flock*, %struct.flock** %8, align 8
  %64 = getelementptr inbounds %struct.flock, %struct.flock* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %62
  %68 = load %struct.flock*, %struct.flock** %8, align 8
  %69 = getelementptr inbounds %struct.flock, %struct.flock* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.flock*, %struct.flock** %8, align 8
  %74 = getelementptr inbounds %struct.flock, %struct.flock* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.flock*, %struct.flock** %8, align 8
  %77 = getelementptr inbounds %struct.flock, %struct.flock* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %75, %79
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72, %67, %57, %51
  %83 = load i32, i32* @EINVAL, align 4
  store i32 %83, i32* %2, align 4
  br label %250

84:                                               ; preds = %72, %62
  %85 = load %struct.flock*, %struct.flock** %8, align 8
  %86 = getelementptr inbounds %struct.flock, %struct.flock* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %84
  %90 = load %struct.flock*, %struct.flock** %8, align 8
  %91 = getelementptr inbounds %struct.flock, %struct.flock* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = sub nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* @OFF_MAX, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.flock*, %struct.flock** %8, align 8
  %98 = getelementptr inbounds %struct.flock, %struct.flock* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = icmp sgt i64 %94, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = load i32, i32* @EOVERFLOW, align 4
  store i32 %103, i32* %2, align 4
  br label %250

104:                                              ; preds = %89, %84
  br label %105

105:                                              ; preds = %104, %1
  %106 = load i32, i32* @LOCKD_MSG_VERSION, align 4
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 5
  store i32 %106, i32* %107, align 8
  %108 = load %struct.proc*, %struct.proc** %9, align 8
  %109 = getelementptr inbounds %struct.proc, %struct.proc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = call i32 @mtx_lock(i32* @Giant)
  %114 = load %struct.proc*, %struct.proc** %9, align 8
  %115 = getelementptr inbounds %struct.proc, %struct.proc* %114, i32 0, i32 0
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %115, align 8
  %117 = icmp eq %struct.TYPE_10__* %116, null
  br i1 %117, label %118, label %141

118:                                              ; preds = %105
  %119 = load i32, i32* @M_NLMINFO, align 4
  %120 = load i32, i32* @M_WAITOK, align 4
  %121 = load i32, i32* @M_ZERO, align 4
  %122 = or i32 %120, %121
  %123 = call %struct.TYPE_10__* @malloc(i32 4, i32 %119, i32 %122)
  %124 = load %struct.proc*, %struct.proc** %9, align 8
  %125 = getelementptr inbounds %struct.proc, %struct.proc* %124, i32 0, i32 0
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %125, align 8
  %126 = load %struct.proc*, %struct.proc** %9, align 8
  %127 = getelementptr inbounds %struct.proc, %struct.proc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.proc*, %struct.proc** %9, align 8
  %132 = getelementptr inbounds %struct.proc, %struct.proc* %131, i32 0, i32 0
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  store i32 %130, i32* %134, align 8
  %135 = call i32 @getboottime(%struct.timeval* %11)
  %136 = load %struct.proc*, %struct.proc** %9, align 8
  %137 = getelementptr inbounds %struct.proc, %struct.proc* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 4
  %140 = call i32 @timevaladd(i32* %139, %struct.timeval* %11)
  br label %141

141:                                              ; preds = %118, %105
  %142 = load %struct.proc*, %struct.proc** %9, align 8
  %143 = getelementptr inbounds %struct.proc, %struct.proc* %142, i32 0, i32 0
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 8
  %149 = load %struct.proc*, %struct.proc** %9, align 8
  %150 = getelementptr inbounds %struct.proc, %struct.proc* %149, i32 0, i32 0
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 3
  %158 = load %struct.flock*, %struct.flock** %8, align 8
  %159 = bitcast %struct.flock* %157 to i8*
  %160 = bitcast %struct.flock* %158 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 %160, i64 48, i1 false)
  %161 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %162 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @F_WAIT, align 4
  %165 = and i32 %163, %164
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 0
  store i32 %165, i32* %166, align 8
  %167 = load %struct.vop_advlock_args*, %struct.vop_advlock_args** %3, align 8
  %168 = getelementptr inbounds %struct.vop_advlock_args, %struct.vop_advlock_args* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @F_GETLK, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i32
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  store i32 %172, i32* %173, align 4
  %174 = load %struct.thread*, %struct.thread** %5, align 8
  %175 = getelementptr inbounds %struct.thread, %struct.thread* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 2
  %178 = call i32 @cru2x(i32 %176, i32* %177)
  br label %179

179:                                              ; preds = %205, %141
  %180 = call i32 @nfslock_send(%struct.TYPE_9__* %4)
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* %7, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %247

184:                                              ; preds = %179
  %185 = load %struct.flock*, %struct.flock** %8, align 8
  %186 = getelementptr inbounds %struct.flock, %struct.flock* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @F_UNLCK, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %247

191:                                              ; preds = %184
  %192 = load %struct.proc*, %struct.proc** %9, align 8
  %193 = getelementptr inbounds %struct.proc, %struct.proc* %192, i32 0, i32 0
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = load i32, i32* @PUSER, align 4
  %196 = load i32, i32* @hz, align 4
  %197 = mul nsw i32 20, %196
  %198 = call i32 @tsleep(%struct.TYPE_10__* %194, i32 %195, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  store i32 %198, i32* %7, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %191
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @EWOULDBLOCK, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %201
  br label %179

206:                                              ; preds = %201
  br label %246

207:                                              ; preds = %191
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %4, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %240

211:                                              ; preds = %207
  %212 = load %struct.proc*, %struct.proc** %9, align 8
  %213 = getelementptr inbounds %struct.proc, %struct.proc* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %240

218:                                              ; preds = %211
  %219 = load %struct.proc*, %struct.proc** %9, align 8
  %220 = getelementptr inbounds %struct.proc, %struct.proc* %219, i32 0, i32 0
  %221 = load %struct.TYPE_10__*, %struct.TYPE_10__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %235

225:                                              ; preds = %218
  %226 = load %struct.flock*, %struct.flock** %8, align 8
  %227 = getelementptr inbounds %struct.flock, %struct.flock* %226, i32 0, i32 5
  store i64 0, i64* %227, align 8
  %228 = load %struct.proc*, %struct.proc** %9, align 8
  %229 = getelementptr inbounds %struct.proc, %struct.proc* %228, i32 0, i32 0
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.flock*, %struct.flock** %8, align 8
  %234 = getelementptr inbounds %struct.flock, %struct.flock* %233, i32 0, i32 4
  store i32 %232, i32* %234, align 8
  br label %239

235:                                              ; preds = %218
  %236 = load i64, i64* @F_UNLCK, align 8
  %237 = load %struct.flock*, %struct.flock** %8, align 8
  %238 = getelementptr inbounds %struct.flock, %struct.flock* %237, i32 0, i32 3
  store i64 %236, i64* %238, align 8
  br label %239

239:                                              ; preds = %235, %225
  br label %240

240:                                              ; preds = %239, %211, %207
  %241 = load %struct.proc*, %struct.proc** %9, align 8
  %242 = getelementptr inbounds %struct.proc, %struct.proc* %241, i32 0, i32 0
  %243 = load %struct.TYPE_10__*, %struct.TYPE_10__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  store i32 %245, i32* %7, align 4
  br label %246

246:                                              ; preds = %240, %206
  br label %247

247:                                              ; preds = %246, %190, %183
  %248 = call i32 @mtx_unlock(i32* @Giant)
  %249 = load i32, i32* %7, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %247, %102, %82
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.TYPE_10__* @malloc(i32, i32, i32) #1

declare dso_local i32 @getboottime(%struct.timeval*) #1

declare dso_local i32 @timevaladd(i32*, %struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cru2x(i32, i32*) #1

declare dso_local i32 @nfslock_send(%struct.TYPE_9__*) #1

declare dso_local i32 @tsleep(%struct.TYPE_10__*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
