; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_chsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.tmpfs_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"chsize\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@IMMUTABLE = common dso_local global i32 0, align 4
@APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"chsize2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_chsize(%struct.vnode* %0, i32 %1, %struct.ucred* %2, %struct.thread* %3) #0 {
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
  %13 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.vnode*, %struct.vnode** %6, align 8
  %15 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %14)
  store %struct.tmpfs_node* %15, %struct.tmpfs_node** %11, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %34 [
    i32 130, label %19
    i32 128, label %21
    i32 132, label %33
    i32 131, label %33
    i32 129, label %33
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* @EISDIR, align 4
  store i32 %20, i32* %5, align 4
  br label %54

21:                                               ; preds = %4
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = getelementptr inbounds %struct.vnode, %struct.vnode* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MNT_RDONLY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* @EROFS, align 4
  store i32 %31, i32* %5, align 4
  br label %54

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %54

34:                                               ; preds = %4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %35, i32* %5, align 4
  br label %54

36:                                               ; preds = %32
  %37 = load %struct.tmpfs_node*, %struct.tmpfs_node** %11, align 8
  %38 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IMMUTABLE, align 4
  %41 = load i32, i32* @APPEND, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @EPERM, align 4
  store i32 %46, i32* %5, align 4
  br label %54

47:                                               ; preds = %36
  %48 = load %struct.vnode*, %struct.vnode** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @tmpfs_truncate(%struct.vnode* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.vnode*, %struct.vnode** %6, align 8
  %52 = call i32 @ASSERT_VOP_ELOCKED(%struct.vnode* %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %45, %34, %33, %30, %19
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.vnode*, i8*) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @tmpfs_truncate(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
