; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_rmdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_vnops.c_ext2_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_rmdir_args = type { %struct.componentname*, %struct.vnode*, %struct.vnode* }
%struct.componentname = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.inode = type { i32, i64, i32, i32 }

@ENOTEMPTY = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@NOUNLINK = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_rmdir_args*)* @ext2_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_rmdir(%struct.vop_rmdir_args* %0) #0 {
  %2 = alloca %struct.vop_rmdir_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.componentname*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.inode*, align 8
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
  %19 = call %struct.inode* @VTOI(%struct.vnode* %18)
  store %struct.inode* %19, %struct.inode** %6, align 8
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = call %struct.inode* @VTOI(%struct.vnode* %20)
  store %struct.inode* %21, %struct.inode** %7, align 8
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = load %struct.inode*, %struct.inode** %7, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.componentname*, %struct.componentname** %5, align 8
  %27 = getelementptr inbounds %struct.componentname, %struct.componentname* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ext2_dirempty(%struct.inode* %22, i32 %25, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %32, i32* %8, align 4
  br label %106

33:                                               ; preds = %1
  %34 = load %struct.inode*, %struct.inode** %7, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @APPEND, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %6, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @NOUNLINK, align 4
  %45 = load i32, i32* @IMMUTABLE, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @APPEND, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %43, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40, %33
  %52 = load i32, i32* @EPERM, align 4
  store i32 %52, i32* %8, align 4
  br label %106

53:                                               ; preds = %40
  %54 = load %struct.vnode*, %struct.vnode** %4, align 8
  %55 = load %struct.componentname*, %struct.componentname** %5, align 8
  %56 = call i32 @ext2_dirremove(%struct.vnode* %54, %struct.componentname* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %106

60:                                               ; preds = %53
  %61 = load %struct.inode*, %struct.inode** %7, align 8
  %62 = call i32 @ext2_dec_nlink(%struct.inode* %61)
  %63 = load i32, i32* @IN_CHANGE, align 4
  %64 = load %struct.inode*, %struct.inode** %7, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.vnode*, %struct.vnode** %4, align 8
  %69 = call i32 @cache_purge(%struct.vnode* %68)
  %70 = load %struct.vnode*, %struct.vnode** %4, align 8
  %71 = call i32 @VOP_UNLOCK(%struct.vnode* %70, i32 0)
  %72 = load %struct.inode*, %struct.inode** %6, align 8
  %73 = getelementptr inbounds %struct.inode, %struct.inode* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.vnode*, %struct.vnode** %3, align 8
  %75 = load i32, i32* @IO_SYNC, align 4
  %76 = load %struct.componentname*, %struct.componentname** %5, align 8
  %77 = getelementptr inbounds %struct.componentname, %struct.componentname* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.componentname*, %struct.componentname** %5, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ext2_truncate(%struct.vnode* %74, i32 0, i32 %75, i32 %78, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.inode*, %struct.inode** %6, align 8
  %84 = call %struct.vnode* @ITOV(%struct.inode* %83)
  %85 = call i32 @cache_purge(%struct.vnode* %84)
  %86 = load %struct.vnode*, %struct.vnode** %4, align 8
  %87 = load i32, i32* @LK_EXCLUSIVE, align 4
  %88 = load i32, i32* @LK_NOWAIT, align 4
  %89 = or i32 %87, %88
  %90 = call i64 @vn_lock(%struct.vnode* %86, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %60
  %93 = load %struct.vnode*, %struct.vnode** %3, align 8
  %94 = call i32 @VOP_UNLOCK(%struct.vnode* %93, i32 0)
  %95 = load %struct.vnode*, %struct.vnode** %4, align 8
  %96 = load i32, i32* @LK_EXCLUSIVE, align 4
  %97 = load i32, i32* @LK_RETRY, align 4
  %98 = or i32 %96, %97
  %99 = call i64 @vn_lock(%struct.vnode* %95, i32 %98)
  %100 = load %struct.vnode*, %struct.vnode** %3, align 8
  %101 = load i32, i32* @LK_EXCLUSIVE, align 4
  %102 = load i32, i32* @LK_RETRY, align 4
  %103 = or i32 %101, %102
  %104 = call i64 @vn_lock(%struct.vnode* %100, i32 %103)
  br label %105

105:                                              ; preds = %92, %60
  br label %106

106:                                              ; preds = %105, %59, %51, %31
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext2_dirempty(%struct.inode*, i32, i32) #1

declare dso_local i32 @ext2_dirremove(%struct.vnode*, %struct.componentname*) #1

declare dso_local i32 @ext2_dec_nlink(%struct.inode*) #1

declare dso_local i32 @cache_purge(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @ext2_truncate(%struct.vnode*, i32, i32, i32, i32) #1

declare dso_local %struct.vnode* @ITOV(%struct.inode*) #1

declare dso_local i64 @vn_lock(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
