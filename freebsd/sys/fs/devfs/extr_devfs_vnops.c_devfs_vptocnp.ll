; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_vptocnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_vptocnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vptocnp_args = type { i8*, i32*, %struct.vnode**, %struct.vnode* }
%struct.vnode = type { i64, %struct.devfs_dirent*, i32 }
%struct.devfs_dirent = type { %struct.vnode*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.devfs_mount = type { i32, %struct.devfs_dirent* }

@VCHR = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devfs_de_interlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vptocnp_args*)* @devfs_vptocnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_vptocnp(%struct.vop_vptocnp_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_vptocnp_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode**, align 8
  %6 = alloca %struct.devfs_mount*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.devfs_dirent*, align 8
  %10 = alloca %struct.devfs_dirent*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vop_vptocnp_args* %0, %struct.vop_vptocnp_args** %3, align 8
  %13 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %13, i32 0, i32 3
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %16, i32 0, i32 2
  %18 = load %struct.vnode**, %struct.vnode*** %17, align 8
  store %struct.vnode** %18, %struct.vnode*** %5, align 8
  %19 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %7, align 8
  %22 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %8, align 8
  %25 = load %struct.vnode*, %struct.vnode** %4, align 8
  %26 = getelementptr inbounds %struct.vnode, %struct.vnode* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.devfs_mount* @VFSTODEVFS(i32 %27)
  store %struct.devfs_mount* %28, %struct.devfs_mount** %6, align 8
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = call i32 @devfs_populate_vp(%struct.vnode* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %2, align 4
  br label %145

35:                                               ; preds = %1
  %36 = load %struct.vnode*, %struct.vnode** %4, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VCHR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @VDIR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOENT, align 4
  store i32 %48, i32* %12, align 4
  br label %140

49:                                               ; preds = %41, %35
  %50 = load %struct.vnode*, %struct.vnode** %4, align 8
  %51 = getelementptr inbounds %struct.vnode, %struct.vnode* %50, i32 0, i32 1
  %52 = load %struct.devfs_dirent*, %struct.devfs_dirent** %51, align 8
  store %struct.devfs_dirent* %52, %struct.devfs_dirent** %9, align 8
  %53 = load %struct.vnode*, %struct.vnode** %4, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VDIR, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %49
  %59 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %60 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %61 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %60, i32 0, i32 1
  %62 = load %struct.devfs_dirent*, %struct.devfs_dirent** %61, align 8
  %63 = icmp eq %struct.devfs_dirent* %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.vnode*, %struct.vnode** %4, align 8
  %66 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %65, %struct.vnode** %66, align 8
  %67 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %68 = load %struct.vnode*, %struct.vnode** %67, align 8
  %69 = call i32 @vref(%struct.vnode* %68)
  br label %140

70:                                               ; preds = %58, %49
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %11, align 4
  %73 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %74 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = sub nsw i64 %79, %77
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %70
  %85 = load i32, i32* @ENOMEM, align 4
  store i32 %85, i32* %12, align 4
  br label %140

86:                                               ; preds = %70
  %87 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %88 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %97 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %96, i32 0, i32 1
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @bcopy(i32 %91, i8* %95, i64 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  %104 = load %struct.devfs_dirent*, %struct.devfs_dirent** %9, align 8
  %105 = call %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent* %104)
  store %struct.devfs_dirent* %105, %struct.devfs_dirent** %10, align 8
  %106 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %107 = icmp eq %struct.devfs_dirent* %106, null
  br i1 %107, label %108, label %110

108:                                              ; preds = %86
  %109 = load i32, i32* @ENOENT, align 4
  store i32 %109, i32* %12, align 4
  br label %140

110:                                              ; preds = %86
  %111 = call i32 @mtx_lock(i32* @devfs_de_interlock)
  %112 = load %struct.devfs_dirent*, %struct.devfs_dirent** %10, align 8
  %113 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %112, i32 0, i32 0
  %114 = load %struct.vnode*, %struct.vnode** %113, align 8
  %115 = load %struct.vnode**, %struct.vnode*** %5, align 8
  store %struct.vnode* %114, %struct.vnode** %115, align 8
  %116 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %117 = load %struct.vnode*, %struct.vnode** %116, align 8
  %118 = icmp ne %struct.vnode* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %110
  %120 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %121 = load %struct.vnode*, %struct.vnode** %120, align 8
  %122 = call i32 @VI_LOCK(%struct.vnode* %121)
  %123 = call i32 @mtx_unlock(i32* @devfs_de_interlock)
  %124 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %125 = load %struct.vnode*, %struct.vnode** %124, align 8
  %126 = call i32 @vholdl(%struct.vnode* %125)
  %127 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %128 = load %struct.vnode*, %struct.vnode** %127, align 8
  %129 = call i32 @VI_UNLOCK(%struct.vnode* %128)
  %130 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %131 = load %struct.vnode*, %struct.vnode** %130, align 8
  %132 = call i32 @vref(%struct.vnode* %131)
  %133 = load %struct.vnode**, %struct.vnode*** %5, align 8
  %134 = load %struct.vnode*, %struct.vnode** %133, align 8
  %135 = call i32 @vdrop(%struct.vnode* %134)
  br label %139

136:                                              ; preds = %110
  %137 = call i32 @mtx_unlock(i32* @devfs_de_interlock)
  %138 = load i32, i32* @ENOENT, align 4
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %136, %119
  br label %140

140:                                              ; preds = %139, %108, %84, %64, %47
  %141 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %142 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %141, i32 0, i32 0
  %143 = call i32 @sx_xunlock(i32* %142)
  %144 = load i32, i32* %12, align 4
  store i32 %144, i32* %2, align 4
  br label %145

145:                                              ; preds = %140, %33
  %146 = load i32, i32* %2, align 4
  ret i32 %146
}

declare dso_local %struct.devfs_mount* @VFSTODEVFS(i32) #1

declare dso_local i32 @devfs_populate_vp(%struct.vnode*) #1

declare dso_local i32 @vref(%struct.vnode*) #1

declare dso_local i32 @bcopy(i32, i8*, i64) #1

declare dso_local %struct.devfs_dirent* @devfs_parent_dirent(%struct.devfs_dirent*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vholdl(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
