; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_truncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_inode.c_ext2_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.inode = type { i64, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"ext2_truncate\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VLNK = common dso_local global i64 0, align 8
@IN_CHANGE = common dso_local global i32 0, align 4
@IN_UPDATE = common dso_local global i32 0, align 4
@IN_E4EXTENTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_truncate(%struct.vnode* %0, i64 %1, i32 %2, %struct.ucred* %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  %14 = load %struct.vnode*, %struct.vnode** %7, align 8
  %15 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %14, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %16 = load i64, i64* %8, align 8
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %6, align 4
  br label %97

20:                                               ; preds = %5
  %21 = load %struct.vnode*, %struct.vnode** %7, align 8
  %22 = call %struct.inode* @VTOI(%struct.vnode* %21)
  store %struct.inode* %22, %struct.inode** %12, align 8
  %23 = load %struct.vnode*, %struct.vnode** %7, align 8
  %24 = getelementptr inbounds %struct.vnode, %struct.vnode* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @VLNK, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %20
  %29 = load %struct.inode*, %struct.inode** %12, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.vnode*, %struct.vnode** %7, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %31, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %28
  %39 = load %struct.inode*, %struct.inode** %12, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 2
  %41 = bitcast i32* %40 to i8*
  %42 = load %struct.inode*, %struct.inode** %12, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = call i32 @bzero(i8* %41, i32 %45)
  %47 = load %struct.inode*, %struct.inode** %12, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @IN_CHANGE, align 4
  %50 = load i32, i32* @IN_UPDATE, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.inode*, %struct.inode** %12, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.vnode*, %struct.vnode** %7, align 8
  %57 = call i32 @ext2_update(%struct.vnode* %56, i32 1)
  store i32 %57, i32* %6, align 4
  br label %97

58:                                               ; preds = %28, %20
  %59 = load %struct.inode*, %struct.inode** %12, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %58
  %65 = load i32, i32* @IN_CHANGE, align 4
  %66 = load i32, i32* @IN_UPDATE, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.inode*, %struct.inode** %12, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  %72 = load %struct.vnode*, %struct.vnode** %7, align 8
  %73 = call i32 @ext2_update(%struct.vnode* %72, i32 0)
  store i32 %73, i32* %6, align 4
  br label %97

74:                                               ; preds = %58
  %75 = load %struct.inode*, %struct.inode** %12, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IN_E4EXTENTS, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %74
  %82 = load %struct.vnode*, %struct.vnode** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.ucred*, %struct.ucred** %10, align 8
  %86 = load %struct.thread*, %struct.thread** %11, align 8
  %87 = call i32 @ext2_ext_truncate(%struct.vnode* %82, i64 %83, i32 %84, %struct.ucred* %85, %struct.thread* %86)
  store i32 %87, i32* %13, align 4
  br label %95

88:                                               ; preds = %74
  %89 = load %struct.vnode*, %struct.vnode** %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.ucred*, %struct.ucred** %10, align 8
  %93 = load %struct.thread*, %struct.thread** %11, align 8
  %94 = call i32 @ext2_ind_truncate(%struct.vnode* %89, i64 %90, i32 %91, %struct.ucred* %92, %struct.thread* %93)
  store i32 %94, i32* %13, align 4
  br label %95

95:                                               ; preds = %88, %81
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %6, align 4
  br label %97

97:                                               ; preds = %95, %64, %38, %18
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.inode* @VTOI(%struct.vnode*) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @ext2_update(%struct.vnode*, i32) #1

declare dso_local i32 @ext2_ext_truncate(%struct.vnode*, i64, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @ext2_ind_truncate(%struct.vnode*, i64, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
