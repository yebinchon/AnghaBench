; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_vnops.c_msdosfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rmdir_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32 }
%struct.vnode = type { i32 }
%struct.denode = type { i32 }

@DE_RENAME = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rmdir_args*)* @msdosfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msdosfs_rmdir(%struct.vop_rmdir_args* %0) #0 {
  %2 = alloca %struct.vop_rmdir_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.denode*, align 8
  %7 = alloca %struct.denode*, align 8
  %8 = alloca i32, align 4
  store %struct.vop_rmdir_args* %0, %struct.vop_rmdir_args** %2, align 8
  %9 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %10 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %9, i32 0, i32 2
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %3, align 8
  %12 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %13 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %12, i32 0, i32 1
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vop_rmdir_args*, %struct.vop_rmdir_args** %2, align 8
  %16 = getelementptr inbounds %struct.vop_rmdir_args, %struct.vop_rmdir_args* %15, i32 0, i32 0
  %17 = load %struct.componentname*, %struct.componentname** %16, align 8
  store %struct.componentname* %17, %struct.componentname** %5, align 8
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = call %struct.denode* @VTODE(%struct.vnode* %18)
  store %struct.denode* %19, %struct.denode** %6, align 8
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = call %struct.denode* @VTODE(%struct.vnode* %20)
  store %struct.denode* %21, %struct.denode** %7, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.denode*, %struct.denode** %6, align 8
  %23 = call i32 @dosdirempty(%struct.denode* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.denode*, %struct.denode** %6, align 8
  %27 = getelementptr inbounds %struct.denode, %struct.denode* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DE_RENAME, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25, %1
  %33 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %33, i32* %8, align 4
  br label %52

34:                                               ; preds = %25
  %35 = load %struct.denode*, %struct.denode** %7, align 8
  %36 = load %struct.denode*, %struct.denode** %6, align 8
  %37 = call i32 @removede(%struct.denode* %35, %struct.denode* %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %52

41:                                               ; preds = %34
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = call i32 @cache_purge(%struct.vnode* %42)
  %44 = load %struct.denode*, %struct.denode** %6, align 8
  %45 = load i32, i32* @IO_SYNC, align 4
  %46 = load %struct.componentname*, %struct.componentname** %5, align 8
  %47 = getelementptr inbounds %struct.componentname, %struct.componentname* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @detrunc(%struct.denode* %44, i32 0, i32 %45, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = load %struct.vnode*, %struct.vnode** %3, align 8
  %51 = call i32 @cache_purge(%struct.vnode* %50)
  br label %52

52:                                               ; preds = %41, %40, %32
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local %struct.denode* @VTODE(%struct.vnode*) #1

declare dso_local i32 @dosdirempty(%struct.denode*) #1

declare dso_local i32 @removede(%struct.denode*, %struct.denode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @detrunc(%struct.denode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
