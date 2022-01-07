; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_get_dx_count.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_get_dx_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_htree_count = type { i32 }
%struct.inode = type { i32 }
%struct.ext2fs_direct_2 = type { i32 }
%struct.ext2fs_htree_root_info = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext2fs_htree_count* (%struct.inode*, %struct.ext2fs_direct_2*, i32*)* @ext2_get_dx_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext2fs_htree_count* @ext2_get_dx_count(%struct.inode* %0, %struct.ext2fs_direct_2* %1, i32* %2) #0 {
  %4 = alloca %struct.ext2fs_htree_count*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ext2fs_direct_2*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ext2fs_direct_2*, align 8
  %9 = alloca %struct.ext2fs_htree_root_info*, align 8
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %12 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @EXT2_BLOCK_SIZE(i32 %16)
  %18 = icmp eq i32 %13, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 8, i32* %10, align 4
  br label %59

20:                                               ; preds = %3
  %21 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %22 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %27 = bitcast %struct.ext2fs_direct_2* %26 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 12
  %29 = bitcast i8* %28 to %struct.ext2fs_direct_2*
  store %struct.ext2fs_direct_2* %29, %struct.ext2fs_direct_2** %8, align 8
  %30 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %31 = getelementptr inbounds %struct.ext2fs_direct_2, %struct.ext2fs_direct_2* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @EXT2_BLOCK_SIZE(i32 %35)
  %37 = sub nsw i32 %36, 12
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store %struct.ext2fs_htree_count* null, %struct.ext2fs_htree_count** %4, align 8
  br label %72

40:                                               ; preds = %25
  %41 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %8, align 8
  %42 = bitcast %struct.ext2fs_direct_2* %41 to i8*
  %43 = getelementptr inbounds i8, i8* %42, i64 12
  %44 = bitcast i8* %43 to %struct.ext2fs_htree_root_info*
  store %struct.ext2fs_htree_root_info* %44, %struct.ext2fs_htree_root_info** %9, align 8
  %45 = load %struct.ext2fs_htree_root_info*, %struct.ext2fs_htree_root_info** %9, align 8
  %46 = getelementptr inbounds %struct.ext2fs_htree_root_info, %struct.ext2fs_htree_root_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %40
  %50 = load %struct.ext2fs_htree_root_info*, %struct.ext2fs_htree_root_info** %9, align 8
  %51 = getelementptr inbounds %struct.ext2fs_htree_root_info, %struct.ext2fs_htree_root_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 16
  br i1 %54, label %55, label %56

55:                                               ; preds = %49, %40
  store %struct.ext2fs_htree_count* null, %struct.ext2fs_htree_count** %4, align 8
  br label %72

56:                                               ; preds = %49
  store i32 32, i32* %10, align 4
  br label %58

57:                                               ; preds = %20
  store %struct.ext2fs_htree_count* null, %struct.ext2fs_htree_count** %4, align 8
  br label %72

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58, %19
  %60 = load i32*, i32** %7, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %6, align 8
  %67 = bitcast %struct.ext2fs_direct_2* %66 to i8*
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = bitcast i8* %70 to %struct.ext2fs_htree_count*
  store %struct.ext2fs_htree_count* %71, %struct.ext2fs_htree_count** %4, align 8
  br label %72

72:                                               ; preds = %65, %57, %55, %39
  %73 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %4, align 8
  ret %struct.ext2fs_htree_count* %73
}

declare dso_local i32 @EXT2_BLOCK_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
