; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_getdotdotdent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_dir_getdotdotdent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.tmpfs_node* }
%struct.uio = type { i64, i64 }
%struct.dirent = type { i32, i8*, i64, i32, i32 }

@TMPFS_DIRCOOKIE_DOTDOT = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tmpfs_mount*, %struct.tmpfs_node*, %struct.uio*)* @tmpfs_dir_getdotdotdent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_dir_getdotdotdent(%struct.tmpfs_mount* %0, %struct.tmpfs_node* %1, %struct.uio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tmpfs_mount*, align 8
  %6 = alloca %struct.tmpfs_node*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.tmpfs_node*, align 8
  %9 = alloca %struct.dirent, align 8
  %10 = alloca i32, align 4
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %5, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %6, align 8
  store %struct.uio* %2, %struct.uio** %7, align 8
  %11 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %12 = call i32 @TMPFS_VALIDATE_DIR(%struct.tmpfs_node* %11)
  %13 = load %struct.uio*, %struct.uio** %7, align 8
  %14 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TMPFS_DIRCOOKIE_DOTDOT, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @MPASS(i32 %18)
  %20 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %21 = call i32 @TMPFS_ASSERT_LOCKED(%struct.tmpfs_node* %20)
  %22 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %23 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.tmpfs_node*, %struct.tmpfs_node** %24, align 8
  store %struct.tmpfs_node* %25, %struct.tmpfs_node** %8, align 8
  %26 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %27 = icmp eq %struct.tmpfs_node* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @ENOENT, align 4
  store i32 %29, i32* %4, align 4
  br label %70

30:                                               ; preds = %3
  %31 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %32 = call i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node* %31)
  %33 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %34 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load %struct.tmpfs_node*, %struct.tmpfs_node** %8, align 8
  %38 = call i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node* %37)
  %39 = load i32, i32* @DT_DIR, align 4
  %40 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 0
  store i32 2, i32* %41, align 8
  %42 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  store i8 46, i8* %44, align 1
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 1
  %46 = load i8*, i8** %45, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8 46, i8* %47, align 1
  %48 = call i64 @GENERIC_DIRSIZ(%struct.dirent* %9)
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 2
  store i64 %48, i64* %49, align 8
  %50 = call i32 @dirent_terminate(%struct.dirent* %9)
  %51 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.uio*, %struct.uio** %7, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %30
  %58 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %58, i32* %10, align 4
  br label %64

59:                                               ; preds = %30
  %60 = getelementptr inbounds %struct.dirent, %struct.dirent* %9, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.uio*, %struct.uio** %7, align 8
  %63 = call i32 @uiomove(%struct.dirent* %9, i64 %61, %struct.uio* %62)
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %59, %57
  %65 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %5, align 8
  %66 = load %struct.tmpfs_node*, %struct.tmpfs_node** %6, align 8
  %67 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %68 = call i32 @tmpfs_set_status(%struct.tmpfs_mount* %65, %struct.tmpfs_node* %66, i32 %67)
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %64, %28
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @TMPFS_VALIDATE_DIR(%struct.tmpfs_node*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @TMPFS_ASSERT_LOCKED(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_NODE_LOCK(%struct.tmpfs_node*) #1

declare dso_local i32 @TMPFS_NODE_UNLOCK(%struct.tmpfs_node*) #1

declare dso_local i64 @GENERIC_DIRSIZ(%struct.dirent*) #1

declare dso_local i32 @dirent_terminate(%struct.dirent*) #1

declare dso_local i32 @uiomove(%struct.dirent*, i64, %struct.uio*) #1

declare dso_local i32 @tmpfs_set_status(%struct.tmpfs_mount*, %struct.tmpfs_node*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
