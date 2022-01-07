; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_alloc_dirent.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_alloc_dirent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i32 }
%struct.tmpfs_dirent = type { i64, %struct.TYPE_2__, %struct.tmpfs_node* }
%struct.TYPE_2__ = type { i32 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_TMPFSNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_alloc_dirent(%struct.tmpfs_mount* %0, %struct.tmpfs_node* %1, i8* %2, i32 %3, %struct.tmpfs_dirent** %4) #0 {
  %6 = alloca %struct.tmpfs_mount*, align 8
  %7 = alloca %struct.tmpfs_node*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.tmpfs_dirent**, align 8
  %11 = alloca %struct.tmpfs_dirent*, align 8
  store %struct.tmpfs_mount* %0, %struct.tmpfs_mount** %6, align 8
  store %struct.tmpfs_node* %1, %struct.tmpfs_node** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.tmpfs_dirent** %4, %struct.tmpfs_dirent*** %10, align 8
  %12 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %6, align 8
  %13 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @M_WAITOK, align 4
  %16 = call %struct.tmpfs_dirent* @uma_zalloc(i32 %14, i32 %15)
  store %struct.tmpfs_dirent* %16, %struct.tmpfs_dirent** %11, align 8
  %17 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %18 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %11, align 8
  %19 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %18, i32 0, i32 2
  store %struct.tmpfs_node* %17, %struct.tmpfs_node** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @M_TMPFSNAME, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call i32 @malloc(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %11, align 8
  %28 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 8
  %30 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %11, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @tmpfs_dirent_init(%struct.tmpfs_dirent* %30, i8* %31, i32 %32)
  br label %37

34:                                               ; preds = %5
  %35 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %11, align 8
  %36 = getelementptr inbounds %struct.tmpfs_dirent, %struct.tmpfs_dirent* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %22
  %38 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %39 = icmp ne %struct.tmpfs_node* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %37
  %41 = load %struct.tmpfs_node*, %struct.tmpfs_node** %7, align 8
  %42 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.tmpfs_dirent*, %struct.tmpfs_dirent** %11, align 8
  %47 = load %struct.tmpfs_dirent**, %struct.tmpfs_dirent*** %10, align 8
  store %struct.tmpfs_dirent* %46, %struct.tmpfs_dirent** %47, align 8
  ret i32 0
}

declare dso_local %struct.tmpfs_dirent* @uma_zalloc(i32, i32) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @tmpfs_dirent_init(%struct.tmpfs_dirent*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
