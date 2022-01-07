; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_shuffle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mountroot.c_vfs_mountroot_shuffle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mount* }
%struct.mount = type { %struct.vnode*, %struct.TYPE_3__, i32 }
%struct.vnode = type { i64, %struct.mount*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.thread = type { i32 }
%struct.nameidata = type { %struct.vnode* }

@mnt_list = common dso_local global i32 0, align 4
@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"vfs_mountroot_shuffle: Cannot find root vnode\00", align 1
@VI_MOUNT = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@rootvnode = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"/.mount\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"/mnt\00", align 1
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@V_SAVE = common dso_local global i32 0, align 4
@MNAMELEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"mountroot: unable to remount previous root under /.mount or /mnt (error %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@.str.5 = private unnamed_addr constant [58 x i8] c"mountroot: unable to remount devfs under /dev (error %d)\0A\00", align 1
@AT_FDCWD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"/dev/dev\00", align 1
@FD_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [49 x i8] c"mountroot: unable to unlink /dev/dev (error %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.mount*)* @vfs_mountroot_shuffle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_mountroot_shuffle(%struct.thread* %0, %struct.mount* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.nameidata, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.mount* %1, %struct.mount** %4, align 8
  %13 = load %struct.mount*, %struct.mount** %4, align 8
  %14 = load i32, i32* @mnt_list, align 4
  %15 = call %struct.mount* @TAILQ_NEXT(%struct.mount* %13, i32 %14)
  store %struct.mount* %15, %struct.mount** %7, align 8
  %16 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %17 = call %struct.mount* @TAILQ_FIRST(i32* @mountlist)
  store %struct.mount* %17, %struct.mount** %6, align 8
  %18 = load %struct.mount*, %struct.mount** %4, align 8
  %19 = load i32, i32* @mnt_list, align 4
  %20 = call i32 @TAILQ_REMOVE(i32* @mountlist, %struct.mount* %18, i32 %19)
  %21 = load %struct.mount*, %struct.mount** %6, align 8
  %22 = load %struct.mount*, %struct.mount** %4, align 8
  %23 = icmp ne %struct.mount* %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load %struct.mount*, %struct.mount** %7, align 8
  %26 = load i32, i32* @mnt_list, align 4
  %27 = call i32 @TAILQ_REMOVE(i32* @mountlist, %struct.mount* %25, i32 %26)
  %28 = load %struct.mount*, %struct.mount** %7, align 8
  %29 = load i32, i32* @mnt_list, align 4
  %30 = call i32 @TAILQ_INSERT_HEAD(i32* @mountlist, %struct.mount* %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %2
  %32 = load %struct.mount*, %struct.mount** %4, align 8
  %33 = load i32, i32* @mnt_list, align 4
  %34 = call i32 @TAILQ_INSERT_TAIL(i32* @mountlist, %struct.mount* %32, i32 %33)
  %35 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %36 = load %struct.mount*, %struct.mount** %6, align 8
  %37 = call i32 @cache_purgevfs(%struct.mount* %36, i32 1)
  %38 = load %struct.mount*, %struct.mount** %6, align 8
  %39 = load %struct.mount*, %struct.mount** %4, align 8
  %40 = icmp ne %struct.mount* %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load %struct.mount*, %struct.mount** %4, align 8
  %43 = call i32 @cache_purgevfs(%struct.mount* %42, i32 1)
  br label %44

44:                                               ; preds = %41, %31
  %45 = load %struct.mount*, %struct.mount** %6, align 8
  %46 = load i32, i32* @LK_EXCLUSIVE, align 4
  %47 = call i64 @VFS_ROOT(%struct.mount* %45, i32 %46, %struct.vnode** %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  %52 = load %struct.vnode*, %struct.vnode** %9, align 8
  %53 = call i32 @VI_LOCK(%struct.vnode* %52)
  %54 = load i32, i32* @VI_MOUNT, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.vnode*, %struct.vnode** %9, align 8
  %57 = getelementptr inbounds %struct.vnode, %struct.vnode* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.vnode*, %struct.vnode** %9, align 8
  %61 = call i32 @VI_UNLOCK(%struct.vnode* %60)
  %62 = load %struct.vnode*, %struct.vnode** %9, align 8
  %63 = getelementptr inbounds %struct.vnode, %struct.vnode* %62, i32 0, i32 1
  store %struct.mount* null, %struct.mount** %63, align 8
  %64 = load i32, i32* @MNT_ROOTFS, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.mount*, %struct.mount** %6, align 8
  %67 = getelementptr inbounds %struct.mount, %struct.mount* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.mount*, %struct.mount** %6, align 8
  %71 = getelementptr inbounds %struct.mount, %struct.mount* %70, i32 0, i32 0
  store %struct.vnode* null, %struct.vnode** %71, align 8
  %72 = load %struct.vnode*, %struct.vnode** %9, align 8
  %73 = call i32 @vput(%struct.vnode* %72)
  %74 = load %struct.mount*, %struct.mount** %7, align 8
  %75 = getelementptr inbounds %struct.mount, %struct.mount* %74, i32 0, i32 0
  store %struct.vnode* null, %struct.vnode** %75, align 8
  %76 = call i32 (...) @set_rootvnode()
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rootvnode, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.mount*, %struct.mount** %78, align 8
  %80 = call i32 @cache_purgevfs(%struct.mount* %79, i32 1)
  %81 = load %struct.mount*, %struct.mount** %6, align 8
  %82 = load %struct.mount*, %struct.mount** %4, align 8
  %83 = icmp ne %struct.mount* %81, %82
  br i1 %83, label %84, label %164

84:                                               ; preds = %51
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %11, align 8
  %85 = load i32, i32* @LOOKUP, align 4
  %86 = load i32, i32* @FOLLOW, align 4
  %87 = load i32, i32* @LOCKLEAF, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @UIO_SYSSPACE, align 4
  %90 = load i8*, i8** %11, align 8
  %91 = load %struct.thread*, %struct.thread** %3, align 8
  %92 = call i32 @NDINIT(%struct.nameidata* %5, i32 %85, i32 %88, i32 %89, i8* %90, %struct.thread* %91)
  %93 = call i32 @namei(%struct.nameidata* %5)
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %12, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %84
  %97 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %98 = call i32 @NDFREE(%struct.nameidata* %5, i32 %97)
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  %99 = load i32, i32* @LOOKUP, align 4
  %100 = load i32, i32* @FOLLOW, align 4
  %101 = load i32, i32* @LOCKLEAF, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @UIO_SYSSPACE, align 4
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.thread*, %struct.thread** %3, align 8
  %106 = call i32 @NDINIT(%struct.nameidata* %5, i32 %99, i32 %102, i32 %103, i8* %104, %struct.thread* %105)
  %107 = call i32 @namei(%struct.nameidata* %5)
  store i32 %107, i32* %12, align 4
  br label %108

108:                                              ; preds = %96, %84
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %155, label %111

111:                                              ; preds = %108
  %112 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %113 = load %struct.vnode*, %struct.vnode** %112, align 8
  store %struct.vnode* %113, %struct.vnode** %8, align 8
  %114 = load %struct.vnode*, %struct.vnode** %8, align 8
  %115 = getelementptr inbounds %struct.vnode, %struct.vnode* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @VDIR, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %111
  br label %122

120:                                              ; preds = %111
  %121 = load i32, i32* @ENOTDIR, align 4
  br label %122

122:                                              ; preds = %120, %119
  %123 = phi i32 [ 0, %119 ], [ %121, %120 ]
  store i32 %123, i32* %12, align 4
  %124 = load i32, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load %struct.vnode*, %struct.vnode** %8, align 8
  %128 = load i32, i32* @V_SAVE, align 4
  %129 = call i32 @vinvalbuf(%struct.vnode* %127, i32 %128, i32 0, i32 0)
  store i32 %129, i32* %12, align 4
  br label %130

130:                                              ; preds = %126, %122
  %131 = load i32, i32* %12, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %151, label %133

133:                                              ; preds = %130
  %134 = load %struct.vnode*, %struct.vnode** %8, align 8
  %135 = call i32 @cache_purge(%struct.vnode* %134)
  %136 = load %struct.vnode*, %struct.vnode** %8, align 8
  %137 = load %struct.mount*, %struct.mount** %6, align 8
  %138 = getelementptr inbounds %struct.mount, %struct.mount* %137, i32 0, i32 0
  store %struct.vnode* %136, %struct.vnode** %138, align 8
  %139 = load %struct.mount*, %struct.mount** %6, align 8
  %140 = load %struct.vnode*, %struct.vnode** %8, align 8
  %141 = getelementptr inbounds %struct.vnode, %struct.vnode* %140, i32 0, i32 1
  store %struct.mount* %139, %struct.mount** %141, align 8
  %142 = load %struct.mount*, %struct.mount** %6, align 8
  %143 = getelementptr inbounds %struct.mount, %struct.mount* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i8*, i8** %11, align 8
  %147 = load i32, i32* @MNAMELEN, align 4
  %148 = call i32 @strlcpy(i32 %145, i8* %146, i32 %147)
  %149 = load %struct.vnode*, %struct.vnode** %8, align 8
  %150 = call i32 @VOP_UNLOCK(%struct.vnode* %149, i32 0)
  br label %154

151:                                              ; preds = %130
  %152 = load %struct.vnode*, %struct.vnode** %8, align 8
  %153 = call i32 @vput(%struct.vnode* %152)
  br label %154

154:                                              ; preds = %151, %133
  br label %155

155:                                              ; preds = %154, %108
  %156 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %157 = call i32 @NDFREE(%struct.nameidata* %5, i32 %156)
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* %12, align 4
  %162 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0), i32 %161)
  br label %163

163:                                              ; preds = %160, %155
  br label %164

164:                                              ; preds = %163, %51
  %165 = load i32, i32* @LOOKUP, align 4
  %166 = load i32, i32* @FOLLOW, align 4
  %167 = load i32, i32* @LOCKLEAF, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @UIO_SYSSPACE, align 4
  %170 = load %struct.thread*, %struct.thread** %3, align 8
  %171 = call i32 @NDINIT(%struct.nameidata* %5, i32 %165, i32 %168, i32 %169, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.thread* %170)
  %172 = call i32 @namei(%struct.nameidata* %5)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %223, label %175

175:                                              ; preds = %164
  %176 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %5, i32 0, i32 0
  %177 = load %struct.vnode*, %struct.vnode** %176, align 8
  store %struct.vnode* %177, %struct.vnode** %8, align 8
  %178 = load %struct.vnode*, %struct.vnode** %8, align 8
  %179 = getelementptr inbounds %struct.vnode, %struct.vnode* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @VDIR, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %175
  br label %186

184:                                              ; preds = %175
  %185 = load i32, i32* @ENOTDIR, align 4
  br label %186

186:                                              ; preds = %184, %183
  %187 = phi i32 [ 0, %183 ], [ %185, %184 ]
  store i32 %187, i32* %12, align 4
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %186
  %191 = load %struct.vnode*, %struct.vnode** %8, align 8
  %192 = load i32, i32* @V_SAVE, align 4
  %193 = call i32 @vinvalbuf(%struct.vnode* %191, i32 %192, i32 0, i32 0)
  store i32 %193, i32* %12, align 4
  br label %194

194:                                              ; preds = %190, %186
  %195 = load i32, i32* %12, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %219, label %197

197:                                              ; preds = %194
  %198 = load %struct.mount*, %struct.mount** %4, align 8
  %199 = getelementptr inbounds %struct.mount, %struct.mount* %198, i32 0, i32 0
  %200 = load %struct.vnode*, %struct.vnode** %199, align 8
  store %struct.vnode* %200, %struct.vnode** %10, align 8
  %201 = load %struct.vnode*, %struct.vnode** %10, align 8
  %202 = icmp ne %struct.vnode* %201, null
  br i1 %202, label %203, label %210

203:                                              ; preds = %197
  %204 = load %struct.vnode*, %struct.vnode** %10, align 8
  %205 = call i32 @cache_purge(%struct.vnode* %204)
  %206 = load %struct.vnode*, %struct.vnode** %10, align 8
  %207 = getelementptr inbounds %struct.vnode, %struct.vnode* %206, i32 0, i32 1
  store %struct.mount* null, %struct.mount** %207, align 8
  %208 = load %struct.vnode*, %struct.vnode** %10, align 8
  %209 = call i32 @vrele(%struct.vnode* %208)
  br label %210

210:                                              ; preds = %203, %197
  %211 = load %struct.vnode*, %struct.vnode** %8, align 8
  %212 = load %struct.mount*, %struct.mount** %4, align 8
  %213 = getelementptr inbounds %struct.mount, %struct.mount* %212, i32 0, i32 0
  store %struct.vnode* %211, %struct.vnode** %213, align 8
  %214 = load %struct.mount*, %struct.mount** %4, align 8
  %215 = load %struct.vnode*, %struct.vnode** %8, align 8
  %216 = getelementptr inbounds %struct.vnode, %struct.vnode* %215, i32 0, i32 1
  store %struct.mount* %214, %struct.mount** %216, align 8
  %217 = load %struct.vnode*, %struct.vnode** %8, align 8
  %218 = call i32 @VOP_UNLOCK(%struct.vnode* %217, i32 0)
  br label %222

219:                                              ; preds = %194
  %220 = load %struct.vnode*, %struct.vnode** %8, align 8
  %221 = call i32 @vput(%struct.vnode* %220)
  br label %222

222:                                              ; preds = %219, %210
  br label %223

223:                                              ; preds = %222, %164
  %224 = load i32, i32* %12, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32, i32* %12, align 4
  %228 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %227)
  br label %229

229:                                              ; preds = %226, %223
  %230 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %231 = call i32 @NDFREE(%struct.nameidata* %5, i32 %230)
  %232 = load %struct.mount*, %struct.mount** %6, align 8
  %233 = load %struct.mount*, %struct.mount** %4, align 8
  %234 = icmp eq %struct.mount* %232, %233
  br i1 %234, label %235, label %249

235:                                              ; preds = %229
  %236 = load %struct.mount*, %struct.mount** %4, align 8
  %237 = call i32 @vfs_unbusy(%struct.mount* %236)
  %238 = load %struct.thread*, %struct.thread** %3, align 8
  %239 = load i32, i32* @AT_FDCWD, align 4
  %240 = load i32, i32* @FD_NONE, align 4
  %241 = load i32, i32* @UIO_SYSSPACE, align 4
  %242 = call i32 @kern_funlinkat(%struct.thread* %238, i32 %239, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %240, i32 %241, i32 0, i32 0)
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* %12, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %235
  %246 = load i32, i32* %12, align 4
  %247 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %246)
  br label %248

248:                                              ; preds = %245, %235
  br label %249

249:                                              ; preds = %248, %229
  ret void
}

declare dso_local %struct.mount* @TAILQ_NEXT(%struct.mount*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.mount* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mount*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.mount*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mount*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cache_purgevfs(%struct.mount*, i32) #1

declare dso_local i64 @VFS_ROOT(%struct.mount*, i32, %struct.vnode**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @set_rootvnode(...) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i8*, %struct.thread*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #1

declare dso_local i32 @vinvalbuf(%struct.vnode*, i32, i32, i32) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @kern_funlinkat(%struct.thread*, i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
