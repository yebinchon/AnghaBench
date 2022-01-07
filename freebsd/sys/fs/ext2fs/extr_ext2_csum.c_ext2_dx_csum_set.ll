; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dx_csum_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dx_csum_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ext2fs_direct_2 = type { i32 }
%struct.ext2fs_htree_count = type { i32, i32 }
%struct.ext2fs_htree_tail = type { i32 }
%struct.ext2fs_htree_entry = type { i32 }

@EXT2F_ROCOMPAT_METADATA_CKSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_dx_csum_set(%struct.inode* %0, %struct.ext2fs_direct_2* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.ext2fs_direct_2*, align 8
  %5 = alloca %struct.m_ext2fs*, align 8
  %6 = alloca %struct.ext2fs_htree_count*, align 8
  %7 = alloca %struct.ext2fs_htree_tail*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load %struct.m_ext2fs*, %struct.m_ext2fs** %12, align 8
  store %struct.m_ext2fs* %13, %struct.m_ext2fs** %5, align 8
  %14 = load %struct.m_ext2fs*, %struct.m_ext2fs** %5, align 8
  %15 = load i32, i32* @EXT2F_ROCOMPAT_METADATA_CKSUM, align 4
  %16 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.inode*, %struct.inode** %3, align 8
  %21 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %4, align 8
  %22 = call %struct.ext2fs_htree_count* @ext2_get_dx_count(%struct.inode* %20, %struct.ext2fs_direct_2* %21, i32* %8)
  store %struct.ext2fs_htree_count* %22, %struct.ext2fs_htree_count** %6, align 8
  %23 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %6, align 8
  %24 = icmp eq %struct.ext2fs_htree_count* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %63

26:                                               ; preds = %19
  %27 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %6, align 8
  %28 = getelementptr inbounds %struct.ext2fs_htree_count, %struct.ext2fs_htree_count* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %6, align 8
  %31 = getelementptr inbounds %struct.ext2fs_htree_count, %struct.ext2fs_htree_count* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = add i64 %34, %37
  %39 = load %struct.inode*, %struct.inode** %3, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %40, align 8
  %42 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = sub i64 %44, 4
  %46 = icmp ugt i64 %38, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  br label %63

48:                                               ; preds = %26
  %49 = load %struct.ext2fs_htree_count*, %struct.ext2fs_htree_count** %6, align 8
  %50 = bitcast %struct.ext2fs_htree_count* %49 to %struct.ext2fs_htree_entry*
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %50, i64 %52
  %54 = bitcast %struct.ext2fs_htree_entry* %53 to %struct.ext2fs_htree_tail*
  store %struct.ext2fs_htree_tail* %54, %struct.ext2fs_htree_tail** %7, align 8
  %55 = load %struct.inode*, %struct.inode** %3, align 8
  %56 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %4, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %7, align 8
  %60 = call i32 @ext2_dx_csum(%struct.inode* %55, %struct.ext2fs_direct_2* %56, i32 %57, i32 %58, %struct.ext2fs_htree_tail* %59)
  %61 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %7, align 8
  %62 = getelementptr inbounds %struct.ext2fs_htree_tail, %struct.ext2fs_htree_tail* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %48, %47, %25, %18
  ret void
}

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local %struct.ext2fs_htree_count* @ext2_get_dx_count(%struct.inode*, %struct.ext2fs_direct_2*, i32*) #1

declare dso_local i32 @ext2_dx_csum(%struct.inode*, %struct.ext2fs_direct_2*, i32, i32, %struct.ext2fs_htree_tail*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
