; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chmod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chmod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.tmpfs_node = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"chmod\00", align 1
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VADMIN = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@S_ISTXT = common dso_local global i32 0, align 4
@PRIV_VFS_STICKYFILE = common dso_local global i32 0, align 4
@EFTYPE = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@PRIV_VFS_SETGID = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4
@TMPFS_NODE_CHANGED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"chmod2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_chmod(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tmpfs_node*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %14)
  store %struct.tmpfs_node* %15, %struct.tmpfs_node** %11, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MNT_RDONLY, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @EROFS, align 4
  store i32 %25, i32* %5, align 4
  br label %107

26:                                               ; preds = %4
  %27 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %28 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IMMUTABLE, align 4
  %31 = load i32, i32* @APPEND, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @EPERM, align 4
  store i32 %36, i32* %5, align 4
  br label %107

37:                                               ; preds = %26
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = load i32, i32* @VADMIN, align 4
  %40 = load %struct.ucred*, %struct.ucred** %8, align 8
  %41 = load %struct.thread*, %struct.thread** %9, align 8
  %42 = call i32 @VOP_ACCESS(%struct.vnode* %38, i32 %39, %struct.ucred* %40, %struct.thread* %41)
  store i32 %42, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %5, align 4
  br label %107

46:                                               ; preds = %37
  %47 = load %struct.vnode*, %struct.vnode** %6, align 8
  %48 = getelementptr inbounds %struct.vnode, %struct.vnode* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VDIR, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @S_ISTXT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.ucred*, %struct.ucred** %8, align 8
  %59 = load i32, i32* @PRIV_VFS_STICKYFILE, align 4
  %60 = call i32 @priv_check_cred(%struct.ucred* %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* @EFTYPE, align 4
  store i32 %63, i32* %5, align 4
  br label %107

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %52, %46
  %66 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %67 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ucred*, %struct.ucred** %8, align 8
  %70 = call i32 @groupmember(i32 %68, %struct.ucred* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @S_ISGID, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load %struct.ucred*, %struct.ucred** %8, align 8
  %79 = load i32, i32* @PRIV_VFS_SETGID, align 4
  %80 = call i32 @priv_check_cred(%struct.ucred* %78, i32 %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %10, align 4
  store i32 %84, i32* %5, align 4
  br label %107

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %72, %65
  %87 = load i32, i32* @ALLPERMS, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %90 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @ALLPERMS, align 4
  %95 = and i32 %93, %94
  %96 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %97 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  %100 = load i32, i32* @TMPFS_NODE_CHANGED, align 4
  %101 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %102 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.vnode*, %struct.vnode** %6, align 8
  %106 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %86, %83, %62, %44, %35, %24
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @groupmember(i32, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
