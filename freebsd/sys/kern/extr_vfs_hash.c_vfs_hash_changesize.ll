; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_hash.c_vfs_hash_changesize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_hash.c_vfs_hash_changesize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfs_hash_head = type { i32 }
%struct.vnode = type { i32, i32 }

@M_VFS_HASH = common dso_local global i32 0, align 4
@vfs_hash_mask = common dso_local global i64 0, align 8
@vfs_hash_lock = common dso_local global i32 0, align 4
@vfs_hash_tbl = common dso_local global %struct.vfs_hash_head* null, align 8
@v_hashlist = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_hash_changesize(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vfs_hash_head*, align 8
  %4 = alloca %struct.vfs_hash_head*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @M_VFS_HASH, align 4
  %11 = call %struct.vfs_hash_head* @hashinit(i32 %9, i32 %10, i64* %5)
  store %struct.vfs_hash_head* %11, %struct.vfs_hash_head** %3, align 8
  %12 = load i64, i64* @vfs_hash_mask, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.vfs_hash_head*, %struct.vfs_hash_head** %3, align 8
  %17 = load i32, i32* @M_VFS_HASH, align 4
  %18 = call i32 @free(%struct.vfs_hash_head* %16, i32 %17)
  br label %61

19:                                               ; preds = %1
  %20 = call i32 @rw_wlock(i32* @vfs_hash_lock)
  %21 = load %struct.vfs_hash_head*, %struct.vfs_hash_head** @vfs_hash_tbl, align 8
  store %struct.vfs_hash_head* %21, %struct.vfs_hash_head** %4, align 8
  %22 = load i64, i64* @vfs_hash_mask, align 8
  store i64 %22, i64* %6, align 8
  %23 = load %struct.vfs_hash_head*, %struct.vfs_hash_head** %3, align 8
  store %struct.vfs_hash_head* %23, %struct.vfs_hash_head** @vfs_hash_tbl, align 8
  %24 = load i64, i64* %5, align 8
  store i64 %24, i64* @vfs_hash_mask, align 8
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %53, %19
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = load i64, i64* %6, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %38, %30
  %32 = load %struct.vfs_hash_head*, %struct.vfs_hash_head** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.vfs_hash_head, %struct.vfs_hash_head* %32, i64 %34
  %36 = call %struct.vnode* @LIST_FIRST(%struct.vfs_hash_head* %35)
  store %struct.vnode* %36, %struct.vnode** %7, align 8
  %37 = icmp ne %struct.vnode* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.vnode*, %struct.vnode** %7, align 8
  %40 = load i32, i32* @v_hashlist, align 4
  %41 = call i32 @LIST_REMOVE(%struct.vnode* %39, i32 %40)
  %42 = load %struct.vnode*, %struct.vnode** %7, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.vnode*, %struct.vnode** %7, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vfs_hash_bucket(i32 %44, i32 %47)
  %49 = load %struct.vnode*, %struct.vnode** %7, align 8
  %50 = load i32, i32* @v_hashlist, align 4
  %51 = call i32 @LIST_INSERT_HEAD(i32 %48, %struct.vnode* %49, i32 %50)
  br label %31

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %25

56:                                               ; preds = %25
  %57 = call i32 @rw_wunlock(i32* @vfs_hash_lock)
  %58 = load %struct.vfs_hash_head*, %struct.vfs_hash_head** %4, align 8
  %59 = load i32, i32* @M_VFS_HASH, align 4
  %60 = call i32 @free(%struct.vfs_hash_head* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %15
  ret void
}

declare dso_local %struct.vfs_hash_head* @hashinit(i32, i32, i64*) #1

declare dso_local i32 @free(%struct.vfs_hash_head*, i32) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local %struct.vnode* @LIST_FIRST(%struct.vfs_hash_head*) #1

declare dso_local i32 @LIST_REMOVE(%struct.vnode*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.vnode*, i32) #1

declare dso_local i32 @vfs_hash_bucket(i32, i32) #1

declare dso_local i32 @rw_wunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
