; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_vnops.c_devfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { %struct.TYPE_3__*, i32, i32, %struct.vnode* }
%struct.TYPE_3__ = type { %struct.proc* }
%struct.proc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.vnode = type { i64, %struct.devfs_dirent* }
%struct.devfs_dirent = type { i64, i32, i32, i32, %struct.devfs_dirent* }

@VDIR = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @devfs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.devfs_dirent*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %8 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %9 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %8, i32 0, i32 3
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 1
  %13 = load %struct.devfs_dirent*, %struct.devfs_dirent** %12, align 8
  store %struct.devfs_dirent* %13, %struct.devfs_dirent** %5, align 8
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VDIR, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %21 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %20, i32 0, i32 4
  %22 = load %struct.devfs_dirent*, %struct.devfs_dirent** %21, align 8
  store %struct.devfs_dirent* %22, %struct.devfs_dirent** %5, align 8
  br label %23

23:                                               ; preds = %19, %1
  %24 = load %struct.vnode*, %struct.vnode** %4, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %28 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %31 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %34 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %37 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %40 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @vaccess(i64 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32* null)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %85

46:                                               ; preds = %23
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @EACCES, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %85

52:                                               ; preds = %46
  %53 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %54 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.proc*, %struct.proc** %56, align 8
  store %struct.proc* %57, %struct.proc** %6, align 8
  %58 = load %struct.proc*, %struct.proc** %6, align 8
  %59 = call i32 @PROC_LOCK(%struct.proc* %58)
  %60 = load %struct.proc*, %struct.proc** %6, align 8
  %61 = getelementptr inbounds %struct.proc, %struct.proc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @P_CONTROLT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %52
  %67 = load %struct.proc*, %struct.proc** %6, align 8
  %68 = call i32 @PROC_UNLOCK(%struct.proc* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %85

70:                                               ; preds = %52
  %71 = load %struct.proc*, %struct.proc** %6, align 8
  %72 = getelementptr inbounds %struct.proc, %struct.proc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.devfs_dirent*, %struct.devfs_dirent** %5, align 8
  %77 = getelementptr inbounds %struct.devfs_dirent, %struct.devfs_dirent* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %70
  %82 = load %struct.proc*, %struct.proc** %6, align 8
  %83 = call i32 @PROC_UNLOCK(%struct.proc* %82)
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %81, %66, %50, %45
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @vaccess(i64, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
