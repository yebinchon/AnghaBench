; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_statfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvfsops.c_nfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { %struct.TYPE_4__*, %struct.statfs }
%struct.TYPE_4__ = type { i32 }
%struct.statfs = type { i32*, i32, i32, i32 }
%struct.vnode = type { i32 }
%struct.nfsmount = type { i32, i32, i32, i32 }
%struct.nfsvattr = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32 }
%struct.nfsfsinfo = type { i32 }
%struct.nfsstatfs = type { i32 }
%struct.nfsnode = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MBF_NOWAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"statfs=%d\0A\00", align 1
@VDIR = common dso_local global i32 0, align 4
@NFS_FABLKSIZE = common dso_local global i32 0, align 4
@NFSMNT_NFSV4 = common dso_local global i32 0, align 4
@MNAMELEN = common dso_local global i32 0, align 4
@MFSNAMELEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.statfs*)* @nfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_statfs(%struct.mount* %0, %struct.statfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.statfs*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca %struct.nfsvattr, align 8
  %10 = alloca %struct.nfsfsinfo, align 4
  %11 = alloca %struct.nfsstatfs, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsnode*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.statfs* %1, %struct.statfs** %5, align 8
  %17 = load %struct.mount*, %struct.mount** %4, align 8
  %18 = call %struct.nfsmount* @VFSTONFS(%struct.mount* %17)
  store %struct.nfsmount* %18, %struct.nfsmount** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %19, %struct.thread** %7, align 8
  %20 = load %struct.mount*, %struct.mount** %4, align 8
  %21 = load i32, i32* @MBF_NOWAIT, align 4
  %22 = call i32 @vfs_busy(%struct.mount* %20, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %3, align 4
  br label %213

27:                                               ; preds = %2
  %28 = load %struct.mount*, %struct.mount** %4, align 8
  %29 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %30 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %33 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LK_EXCLUSIVE, align 4
  %36 = call i32 @ncl_nget(%struct.mount* %28, i32 %31, i32 %34, %struct.nfsnode** %16, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %27
  %40 = load %struct.mount*, %struct.mount** %4, align 8
  %41 = call i32 @vfs_unbusy(%struct.mount* %40)
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %3, align 4
  br label %213

43:                                               ; preds = %27
  %44 = load %struct.nfsnode*, %struct.nfsnode** %16, align 8
  %45 = call %struct.vnode* @NFSTOV(%struct.nfsnode* %44)
  store %struct.vnode* %45, %struct.vnode** %6, align 8
  %46 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %47 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %46, i32 0, i32 1
  %48 = call i32 @mtx_lock(i32* %47)
  %49 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %50 = call i64 @NFSHASNFSV3(%struct.nfsmount* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %43
  %53 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %54 = call i32 @NFSHASGOTFSINFO(%struct.nfsmount* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %52
  %57 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %58 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %57, i32 0, i32 1
  %59 = call i32 @mtx_unlock(i32* %58)
  %60 = load %struct.vnode*, %struct.vnode** %6, align 8
  %61 = load %struct.thread*, %struct.thread** %7, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.thread*, %struct.thread** %7, align 8
  %65 = call i32 @nfsrpc_fsinfo(%struct.vnode* %60, %struct.nfsfsinfo* %10, i32 %63, %struct.thread* %64, %struct.nfsvattr* %9, i32* %13, i32* null)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %68, %56
  br label %74

70:                                               ; preds = %52, %43
  %71 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %72 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %71, i32 0, i32 1
  %73 = call i32 @mtx_unlock(i32* %72)
  br label %74

74:                                               ; preds = %70, %69
  %75 = load i32, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load %struct.vnode*, %struct.vnode** %6, align 8
  %79 = load %struct.thread*, %struct.thread** %7, align 8
  %80 = getelementptr inbounds %struct.thread, %struct.thread* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.thread*, %struct.thread** %7, align 8
  %83 = call i32 @nfsrpc_statfs(%struct.vnode* %78, %struct.nfsstatfs* %11, %struct.nfsfsinfo* %10, i32 %81, %struct.thread* %82, %struct.nfsvattr* %9, i32* %13, i32* null)
  store i32 %83, i32* %12, align 4
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32, i32* %12, align 4
  %89 = call i32 @NFSCL_DEBUG(i32 2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %13, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %132

93:                                               ; preds = %90
  %94 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %95 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %96 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %99 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.thread*, %struct.thread** %7, align 8
  %102 = getelementptr inbounds %struct.thread, %struct.thread* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.thread*, %struct.thread** %7, align 8
  %105 = call i32 @nfsrpc_getattrnovp(%struct.nfsmount* %94, i32 %97, i32 %100, i32 1, i32 %103, %struct.thread* %104, %struct.nfsvattr* %9, i32* null, i32* null)
  store i32 %105, i32* %15, align 4
  %106 = load i32, i32* %15, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %93
  %109 = ptrtoint %struct.nfsvattr* %9 to i32
  %110 = call i32 @NFSBZERO(i32 %109, i32 48)
  %111 = load i32, i32* @VDIR, align 4
  %112 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i32 511, i32* %115, align 8
  %116 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  store i32 100, i32* %117, align 4
  %118 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 7
  store i64 0, i64* %119, align 8
  %120 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 6
  store i64 0, i64* %121, align 8
  %122 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i32 2, i32* %123, align 8
  %124 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  %126 = load i32, i32* @NFS_FABLKSIZE, align 4
  %127 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 4
  %129 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %9, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 4
  store i32 524288, i32* %130, align 8
  br label %131

131:                                              ; preds = %108, %93
  br label %132

132:                                              ; preds = %131, %90
  %133 = call i32 @nfscl_loadattrcache(%struct.vnode** %6, %struct.nfsvattr* %9, i32* null, i32* null, i32 0, i32 1)
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %198, label %136

136:                                              ; preds = %132
  %137 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %138 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %137, i32 0, i32 1
  %139 = call i32 @mtx_lock(i32* %138)
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %149, label %142

142:                                              ; preds = %136
  %143 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %144 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NFSMNT_NFSV4, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142, %136
  %150 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %151 = call i32 @nfscl_loadfsinfo(%struct.nfsmount* %150, %struct.nfsfsinfo* %10)
  br label %152

152:                                              ; preds = %149, %142
  %153 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %154 = load %struct.statfs*, %struct.statfs** %5, align 8
  %155 = call i32 @nfscl_loadsbinfo(%struct.nfsmount* %153, %struct.nfsstatfs* %11, %struct.statfs* %154)
  %156 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %157 = call i32 @newnfs_iosize(%struct.nfsmount* %156)
  %158 = load %struct.statfs*, %struct.statfs** %5, align 8
  %159 = getelementptr inbounds %struct.statfs, %struct.statfs* %158, i32 0, i32 3
  store i32 %157, i32* %159, align 8
  %160 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %161 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %160, i32 0, i32 1
  %162 = call i32 @mtx_unlock(i32* %161)
  %163 = load %struct.statfs*, %struct.statfs** %5, align 8
  %164 = load %struct.mount*, %struct.mount** %4, align 8
  %165 = getelementptr inbounds %struct.mount, %struct.mount* %164, i32 0, i32 1
  %166 = icmp ne %struct.statfs* %163, %165
  br i1 %166, label %167, label %186

167:                                              ; preds = %152
  %168 = load %struct.mount*, %struct.mount** %4, align 8
  %169 = getelementptr inbounds %struct.mount, %struct.mount* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.statfs, %struct.statfs* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.statfs*, %struct.statfs** %5, align 8
  %173 = getelementptr inbounds %struct.statfs, %struct.statfs* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @MNAMELEN, align 4
  %176 = call i32 @bcopy(i32 %171, i32 %174, i32 %175)
  %177 = load %struct.mount*, %struct.mount** %4, align 8
  %178 = getelementptr inbounds %struct.mount, %struct.mount* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.statfs, %struct.statfs* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.statfs*, %struct.statfs** %5, align 8
  %182 = getelementptr inbounds %struct.statfs, %struct.statfs* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @MNAMELEN, align 4
  %185 = call i32 @bcopy(i32 %180, i32 %183, i32 %184)
  br label %186

186:                                              ; preds = %167, %152
  %187 = load %struct.statfs*, %struct.statfs** %5, align 8
  %188 = getelementptr inbounds %struct.statfs, %struct.statfs* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load %struct.mount*, %struct.mount** %4, align 8
  %192 = getelementptr inbounds %struct.mount, %struct.mount* %191, i32 0, i32 0
  %193 = load %struct.TYPE_4__*, %struct.TYPE_4__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MFSNAMELEN, align 4
  %197 = call i32 @strncpy(i32* %190, i32 %195, i32 %196)
  br label %207

198:                                              ; preds = %132
  %199 = load %struct.vnode*, %struct.vnode** %6, align 8
  %200 = call i64 @NFS_ISV4(%struct.vnode* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %206

202:                                              ; preds = %198
  %203 = load %struct.thread*, %struct.thread** %7, align 8
  %204 = load i32, i32* %12, align 4
  %205 = call i32 @nfscl_maperr(%struct.thread* %203, i32 %204, i64 0, i64 0)
  store i32 %205, i32* %12, align 4
  br label %206

206:                                              ; preds = %202, %198
  br label %207

207:                                              ; preds = %206, %186
  %208 = load %struct.vnode*, %struct.vnode** %6, align 8
  %209 = call i32 @vput(%struct.vnode* %208)
  %210 = load %struct.mount*, %struct.mount** %4, align 8
  %211 = call i32 @vfs_unbusy(%struct.mount* %210)
  %212 = load i32, i32* %12, align 4
  store i32 %212, i32* %3, align 4
  br label %213

213:                                              ; preds = %207, %39, %25
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local %struct.nfsmount* @VFSTONFS(%struct.mount*) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @ncl_nget(%struct.mount*, i32, i32, %struct.nfsnode**, i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local %struct.vnode* @NFSTOV(%struct.nfsnode*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @NFSHASNFSV3(%struct.nfsmount*) #1

declare dso_local i32 @NFSHASGOTFSINFO(%struct.nfsmount*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @nfsrpc_fsinfo(%struct.vnode*, %struct.nfsfsinfo*, i32, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @nfsrpc_statfs(%struct.vnode*, %struct.nfsstatfs*, %struct.nfsfsinfo*, i32, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

declare dso_local i32 @nfsrpc_getattrnovp(%struct.nfsmount*, i32, i32, i32, i32, %struct.thread*, %struct.nfsvattr*, i32*, i32*) #1

declare dso_local i32 @NFSBZERO(i32, i32) #1

declare dso_local i32 @nfscl_loadattrcache(%struct.vnode**, %struct.nfsvattr*, i32*, i32*, i32, i32) #1

declare dso_local i32 @nfscl_loadfsinfo(%struct.nfsmount*, %struct.nfsfsinfo*) #1

declare dso_local i32 @nfscl_loadsbinfo(%struct.nfsmount*, %struct.nfsstatfs*, %struct.statfs*) #1

declare dso_local i32 @newnfs_iosize(%struct.nfsmount*) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @strncpy(i32*, i32, i32) #1

declare dso_local i64 @NFS_ISV4(%struct.vnode*) #1

declare dso_local i32 @nfscl_maperr(%struct.thread*, i32, i64, i64) #1

declare dso_local i32 @vput(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
