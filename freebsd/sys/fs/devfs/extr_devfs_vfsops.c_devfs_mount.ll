; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vfsops.c_devfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vfsops.c_devfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mount = type { i32, i32, %struct.devfs_mount*, i32* }
%struct.devfs_mount = type { i32, i32, i32, i32, %struct.mount* }
%struct.vnode = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@devfs_unr = common dso_local global i32* null, align 8
@INT_MAX = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@devfs_opts = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ruleset\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"invalid ruleset specification\00", align 1
@EPERM = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@M_DEVFS = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"devfsmount\00", align 1
@MNT_LOCAL = common dso_local global i32 0, align 4
@MNTK_LOOKUP_SHARED = common dso_local global i32 0, align 4
@MNTK_EXTENDED_SHARED = common dso_local global i32 0, align 4
@MNTK_NOMSYNC = common dso_local global i32 0, align 4
@DEVFS_ROOTINO = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@MNT_MULTILABEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @devfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_mount(%struct.mount* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfs_mount*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  %10 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %10, %struct.thread** %7, align 8
  %11 = load i32*, i32** @devfs_unr, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @INT_MAX, align 4
  %15 = call i32* @new_unrhdr(i32 0, i32 %14, i32* null)
  store i32* %15, i32** @devfs_unr, align 8
  br label %16

16:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  %17 = load %struct.mount*, %struct.mount** %3, align 8
  %18 = getelementptr inbounds %struct.mount, %struct.mount* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MNT_ROOTFS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %24, i32* %2, align 4
  br label %220

25:                                               ; preds = %16
  store i32 0, i32* %9, align 4
  %26 = load %struct.thread*, %struct.thread** %7, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @jailed(%struct.TYPE_4__* %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.mount*, %struct.mount** %3, align 8
  %31 = getelementptr inbounds %struct.mount, %struct.mount* %30, i32 0, i32 3
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %92

34:                                               ; preds = %25
  %35 = load %struct.mount*, %struct.mount** %3, align 8
  %36 = getelementptr inbounds %struct.mount, %struct.mount* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* @devfs_opts, align 4
  %39 = call i64 @vfs_filteropt(i32* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %220

43:                                               ; preds = %34
  %44 = load %struct.mount*, %struct.mount** %3, align 8
  %45 = getelementptr inbounds %struct.mount, %struct.mount* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @vfs_flagopt(i32* %46, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %50, i32* %2, align 4
  br label %220

51:                                               ; preds = %43
  %52 = load %struct.mount*, %struct.mount** %3, align 8
  %53 = getelementptr inbounds %struct.mount, %struct.mount* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @vfs_getopt(i32* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* null, i32* null)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load %struct.mount*, %struct.mount** %3, align 8
  %59 = getelementptr inbounds %struct.mount, %struct.mount* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @vfs_scanopt(i32* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %67, 65535
  br i1 %68, label %69, label %73

69:                                               ; preds = %66, %63, %57
  %70 = load %struct.mount*, %struct.mount** %3, align 8
  %71 = call i32 @vfs_mount_error(%struct.mount* %70, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* @EINVAL, align 4
  store i32 %72, i32* %2, align 4
  br label %220

73:                                               ; preds = %66, %51
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %73
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.thread*, %struct.thread** %7, align 8
  %82 = getelementptr inbounds %struct.thread, %struct.thread* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %80, %87
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = load i32, i32* @EPERM, align 4
  store i32 %90, i32* %2, align 4
  br label %220

91:                                               ; preds = %79, %76, %73
  br label %92

92:                                               ; preds = %91, %25
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %92
  %96 = load %struct.thread*, %struct.thread** %7, align 8
  %97 = getelementptr inbounds %struct.thread, %struct.thread* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %95, %92
  %104 = load %struct.mount*, %struct.mount** %3, align 8
  %105 = getelementptr inbounds %struct.mount, %struct.mount* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @MNT_UPDATE, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %133

110:                                              ; preds = %103
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %132

113:                                              ; preds = %110
  %114 = load %struct.mount*, %struct.mount** %3, align 8
  %115 = getelementptr inbounds %struct.mount, %struct.mount* %114, i32 0, i32 2
  %116 = load %struct.devfs_mount*, %struct.devfs_mount** %115, align 8
  store %struct.devfs_mount* %116, %struct.devfs_mount** %5, align 8
  %117 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %118 = icmp ne %struct.devfs_mount* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %113
  %120 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %121 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %120, i32 0, i32 1
  %122 = call i32 @sx_xlock(i32* %121)
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %125 = call i32 @devfs_ruleset_set(i32 %123, %struct.devfs_mount* %124)
  %126 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %127 = call i32 @devfs_ruleset_apply(%struct.devfs_mount* %126)
  %128 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %129 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %128, i32 0, i32 1
  %130 = call i32 @sx_xunlock(i32* %129)
  br label %131

131:                                              ; preds = %119, %113
  br label %132

132:                                              ; preds = %131, %110
  store i32 0, i32* %2, align 4
  br label %220

133:                                              ; preds = %103
  %134 = load i32, i32* @M_DEVFS, align 4
  %135 = load i32, i32* @M_WAITOK, align 4
  %136 = load i32, i32* @M_ZERO, align 4
  %137 = or i32 %135, %136
  %138 = call %struct.devfs_mount* @malloc(i32 24, i32 %134, i32 %137)
  store %struct.devfs_mount* %138, %struct.devfs_mount** %5, align 8
  %139 = load i32*, i32** @devfs_unr, align 8
  %140 = call i32 @alloc_unr(i32* %139)
  %141 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %142 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %144 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %143, i32 0, i32 1
  %145 = call i32 @sx_init(i32* %144, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %147 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.mount*, %struct.mount** %3, align 8
  %149 = call i32 @MNT_ILOCK(%struct.mount* %148)
  %150 = load i32, i32* @MNT_LOCAL, align 4
  %151 = load %struct.mount*, %struct.mount** %3, align 8
  %152 = getelementptr inbounds %struct.mount, %struct.mount* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load i32, i32* @MNTK_LOOKUP_SHARED, align 4
  %156 = load i32, i32* @MNTK_EXTENDED_SHARED, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @MNTK_NOMSYNC, align 4
  %159 = or i32 %157, %158
  %160 = load %struct.mount*, %struct.mount** %3, align 8
  %161 = getelementptr inbounds %struct.mount, %struct.mount* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %159
  store i32 %163, i32* %161, align 4
  %164 = load %struct.mount*, %struct.mount** %3, align 8
  %165 = call i32 @MNT_IUNLOCK(%struct.mount* %164)
  %166 = load %struct.mount*, %struct.mount** %3, align 8
  %167 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %168 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %167, i32 0, i32 4
  store %struct.mount* %166, %struct.mount** %168, align 8
  %169 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %170 = bitcast %struct.devfs_mount* %169 to i8*
  %171 = bitcast i8* %170 to %struct.devfs_mount*
  %172 = load %struct.mount*, %struct.mount** %3, align 8
  %173 = getelementptr inbounds %struct.mount, %struct.mount* %172, i32 0, i32 2
  store %struct.devfs_mount* %171, %struct.devfs_mount** %173, align 8
  %174 = load %struct.mount*, %struct.mount** %3, align 8
  %175 = call i32 @vfs_getnewfsid(%struct.mount* %174)
  %176 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %177 = load i32, i32* @DEVFS_ROOTINO, align 4
  %178 = call i32 @devfs_vmkdir(%struct.devfs_mount* %176, i32* null, i32 0, i32* null, i32 %177)
  %179 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %180 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 4
  %181 = load %struct.mount*, %struct.mount** %3, align 8
  %182 = load i32, i32* @LK_EXCLUSIVE, align 4
  %183 = call i32 @devfs_root(%struct.mount* %181, i32 %182, %struct.vnode** %6)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %133
  %187 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %188 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %187, i32 0, i32 1
  %189 = call i32 @sx_destroy(i32* %188)
  %190 = load i32*, i32** @devfs_unr, align 8
  %191 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %192 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @free_unr(i32* %190, i32 %193)
  %195 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %196 = load i32, i32* @M_DEVFS, align 4
  %197 = call i32 @free(%struct.devfs_mount* %195, i32 %196)
  %198 = load i32, i32* %4, align 4
  store i32 %198, i32* %2, align 4
  br label %220

199:                                              ; preds = %133
  %200 = load i32, i32* %9, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %204 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %203, i32 0, i32 1
  %205 = call i32 @sx_xlock(i32* %204)
  %206 = load i32, i32* %9, align 4
  %207 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %208 = call i32 @devfs_ruleset_set(i32 %206, %struct.devfs_mount* %207)
  %209 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %210 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %209, i32 0, i32 1
  %211 = call i32 @sx_xunlock(i32* %210)
  br label %212

212:                                              ; preds = %202, %199
  %213 = load %struct.vnode*, %struct.vnode** %6, align 8
  %214 = call i32 @VOP_UNLOCK(%struct.vnode* %213, i32 0)
  %215 = load %struct.mount*, %struct.mount** %3, align 8
  %216 = load %struct.vnode*, %struct.vnode** %6, align 8
  %217 = call i32 @vfs_cache_root_set(%struct.mount* %215, %struct.vnode* %216)
  %218 = load %struct.mount*, %struct.mount** %3, align 8
  %219 = call i32 @vfs_mountedfrom(%struct.mount* %218, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %212, %186, %132, %89, %69, %49, %41, %23
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32* @new_unrhdr(i32, i32, i32*) #1

declare dso_local i32 @jailed(%struct.TYPE_4__*) #1

declare dso_local i64 @vfs_filteropt(i32*, i32) #1

declare dso_local i64 @vfs_flagopt(i32*, i8*, i32*, i32) #1

declare dso_local i64 @vfs_getopt(i32*, i8*, i32*, i32*) #1

declare dso_local i32 @vfs_scanopt(i32*, i8*, i8*, i32*) #1

declare dso_local i32 @vfs_mount_error(%struct.mount*, i8*, i8*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @devfs_ruleset_set(i32, %struct.devfs_mount*) #1

declare dso_local i32 @devfs_ruleset_apply(%struct.devfs_mount*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local %struct.devfs_mount* @malloc(i32, i32, i32) #1

declare dso_local i32 @alloc_unr(i32*) #1

declare dso_local i32 @sx_init(i32*, i8*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @vfs_getnewfsid(%struct.mount*) #1

declare dso_local i32 @devfs_vmkdir(%struct.devfs_mount*, i32*, i32, i32*, i32) #1

declare dso_local i32 @devfs_root(%struct.mount*, i32, %struct.vnode**) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @free_unr(i32*, i32) #1

declare dso_local i32 @free(%struct.devfs_mount*, i32) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_cache_root_set(%struct.mount*, %struct.vnode*) #1

declare dso_local i32 @vfs_mountedfrom(%struct.mount*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
