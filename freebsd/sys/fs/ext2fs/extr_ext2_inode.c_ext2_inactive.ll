; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_inactive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_inactive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_inactive_args = type { %struct.thread*, %struct.vnode* }
%struct.thread = type { i32 }
%struct.vnode = type { i32 }
%struct.inode = type { i64, i64, i32, i32, i64 }

@NOCRED = common dso_local global i32 0, align 4
@IN_E4EXTENTS = common dso_local global i32 0, align 4
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@IN_ACCESS = common dso_local global i32 0, align 4
@IN_MODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_inactive(%struct.vop_inactive_args* %0) #0 {
  %2 = alloca %struct.vop_inactive_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vop_inactive_args* %0, %struct.vop_inactive_args** %2, align 8
  %8 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %8, i32 0, i32 1
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %3, align 8
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = call %struct.inode* @VTOI(%struct.vnode* %11)
  store %struct.inode* %12, %struct.inode** %4, align 8
  %13 = load %struct.vop_inactive_args*, %struct.vop_inactive_args** %2, align 8
  %14 = getelementptr inbounds %struct.vop_inactive_args, %struct.vop_inactive_args* %13, i32 0, i32 0
  %15 = load %struct.thread*, %struct.thread** %14, align 8
  store %struct.thread* %15, %struct.thread** %5, align 8
  store i32 0, i32* %7, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %79

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %4, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %21
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call i32 @ext2_extattr_free(%struct.inode* %27)
  %29 = load %struct.vnode*, %struct.vnode** %3, align 8
  %30 = load i32, i32* @NOCRED, align 4
  %31 = load %struct.thread*, %struct.thread** %5, align 8
  %32 = call i32 @ext2_truncate(%struct.vnode* %29, i32 0, i32 0, i32 %30, %struct.thread* %31)
  store i32 %32, i32* %7, align 4
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IN_E4EXTENTS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load %struct.inode*, %struct.inode** %4, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.inode*, %struct.inode** %4, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @IN_CHANGE, align 4
  %50 = load i32, i32* @IN_UPDATE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.vnode*, %struct.vnode** %3, align 8
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @ext2_vfree(%struct.vnode* %56, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %42, %21
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @IN_ACCESS, align 4
  %67 = load i32, i32* @IN_CHANGE, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @IN_MODIFIED, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @IN_UPDATE, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %65, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %62
  %76 = load %struct.vnode*, %struct.vnode** %3, align 8
  %77 = call i32 @ext2_update(%struct.vnode* %76, i32 0)
  br label %78

78:                                               ; preds = %75, %62
  br label %79

79:                                               ; preds = %78, %20
  %80 = load %struct.inode*, %struct.inode** %4, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.vnode*, %struct.vnode** %3, align 8
  %86 = call i32 @vrecycle(%struct.vnode* %85)
  br label %87

87:                                               ; preds = %84, %79
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @ext2_extattr_free(%struct.inode*) #1

declare dso_local i32 @ext2_truncate(%struct.vnode*, i32, i32, i32, %struct.thread*) #1

declare dso_local i32 @ext2_vfree(%struct.vnode*, i32, i32) #1

declare dso_local i32 @ext2_update(%struct.vnode*, i32) #1

declare dso_local i32 @vrecycle(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
