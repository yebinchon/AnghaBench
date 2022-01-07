; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_free_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_dirent = type { %struct.TYPE_2__, %struct.tmpfs_node* }
%struct.TYPE_2__ = type { i32* }
%struct.tmpfs_node = type { i64 }

@M_TMPFSNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmpfs_free_dirent(%struct.tmpfs_mount* %0, %struct.tmpfs_dirent* %1) #0 {
  %3 = alloca %struct.tmpfs_mount*, align 8
  %4 = alloca %struct.tmpfs_dirent*, align 8
  %5 = alloca %struct.tmpfs_node*, align 8
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %3, align 8
  store %struct.tmpfs_dirent* %1, %struct.tmpfs_dirent** %4, align 8
  %6 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %4, align 8
  %7 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %6, i32 0, i32 1
  %8 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  store %struct.tmpfs_node* %8, %struct.tmpfs_node** %5, align 8
  %9 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %10 = icmp ne %struct.tmpfs_node* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %2
  %12 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %13 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @MPASS(i32 %16)
  %18 = load %struct.tmpfs_node*, %struct.tmpfs_node** %5, align 8
  %19 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, -1
  store i64 %21, i64* %19, align 8
  br label %22

22:                                               ; preds = %11, %2
  %23 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %4, align 8
  %24 = call i32 @tmpfs_dirent_duphead(%struct.tmpfs_dirent* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %22
  %27 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %4, align 8
  %28 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %4, align 8
  %34 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* @M_TMPFSNAME, align 4
  %38 = call i32 @free(i32* %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %26, %22
  %40 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %3, align 8
  %41 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %4, align 8
  %44 = call i32 @uma_zfree(i32 %42, %struct.tmpfs_dirent* %43)
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @tmpfs_dirent_duphead(%struct.tmpfs_dirent*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.tmpfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
