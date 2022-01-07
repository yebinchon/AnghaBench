; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dx_csum_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dx_csum_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext2fs_direct_2 = type { i32 }
%struct.ext2fs_htree_count = type { i32, i32 }
%struct.ext2fs_htree_tail = type { i64 }
%struct.ext2fs_htree_entry = type { i32 }

@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_dx_csum_verify(%struct.inode* %0, %struct.ext2fs_direct_2* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext2fs_direct_2*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ext2fs_htree_count*, align 8
  %8 = alloca %struct.ext2fs_htree_tail*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %14 = call %struct.ext2fs_htree_count* @ext2_get_dx_count(%struct.inode* %12, %struct.ext2fs_direct_2* %13, i32* %9)
  store %struct.ext2fs_htree_count* %14, %struct.ext2fs_htree_count** %7, align 8
  %15 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %7, align 8
  %16 = icmp eq %struct.ext2fs_htree_count* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

18:                                               ; preds = %2
  %19 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %7, align 8
  %20 = getelementptr inbounds %struct.ext2fs_htree_count, %struct.ext2fs_htree_count* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %7, align 8
  %23 = getelementptr inbounds %struct.ext2fs_htree_count, %struct.ext2fs_htree_count* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %26, %29
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %36, 8
  %38 = icmp ugt i64 %30, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %18
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %3, align 4
  br label %62

41:                                               ; preds = %18
  %42 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %7, align 8
  %43 = bitcast %struct.ext2fs_htree_count* %42 to %struct.ext2fs_htree_entry*
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %43, i64 %45
  %47 = bitcast %struct.ext2fs_htree_entry* %46 to %struct.ext2fs_htree_tail*
  store %struct.ext2fs_htree_tail* %47, %struct.ext2fs_htree_tail** %8, align 8
  %48 = load %struct.inode*, %struct.inode** %4, align 8
  %49 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %8, align 8
  %53 = call i64 @ext2_dx_csum(%struct.inode* %48, %struct.ext2fs_direct_2* %49, i32 %50, i32 %51, %struct.ext2fs_htree_tail* %52)
  store i64 %53, i64* %6, align 8
  %54 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %8, align 8
  %55 = getelementptr inbounds %struct.ext2fs_htree_tail, %struct.ext2fs_htree_tail* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %41
  %60 = load i32, i32* @EIO, align 4
  store i32 %60, i32* %3, align 4
  br label %62

61:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %39, %17
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ext2fs_htree_count* @ext2_get_dx_count(%struct.inode*, %struct.ext2fs_direct_2*, i32*) #1

declare dso_local i64 @ext2_dx_csum(%struct.inode*, %struct.ext2fs_direct_2*, i32, i32, %struct.ext2fs_htree_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
