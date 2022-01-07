; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dx_csum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_csum.c_ext2_dx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.m_ext2fs* }
%struct.m_ext2fs = type { i32 }
%struct.ext2fs_direct_2 = type { i32 }
%struct.ext2fs_htree_tail = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext2fs_direct_2*, i32, i32, %struct.ext2fs_htree_tail*)* @ext2_dx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_dx_csum(%struct.inode* %0, %struct.ext2fs_direct_2* %1, i32 %2, i32 %3, %struct.ext2fs_htree_tail* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext2fs_direct_2*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext2fs_htree_tail*, align 8
  %11 = alloca %struct.m_ext2fs*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext2fs_direct_2* %1, %struct.ext2fs_direct_2** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.ext2fs_htree_tail* %4, %struct.ext2fs_htree_tail** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 2
  %20 = load %struct.m_ext2fs*, %struct.m_ext2fs** %19, align 8
  store %struct.m_ext2fs* %20, %struct.m_ext2fs** %11, align 8
  %21 = load %struct.ext2fs_direct_2*, %struct.ext2fs_direct_2** %7, align 8
  %22 = bitcast %struct.ext2fs_direct_2* %21 to i8*
  store i8* %22, i8** %12, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 %24, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %13, align 4
  %30 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %10, align 8
  %31 = getelementptr inbounds %struct.ext2fs_htree_tail, %struct.ext2fs_htree_tail* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %15, align 4
  %33 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %10, align 8
  %34 = getelementptr inbounds %struct.ext2fs_htree_tail, %struct.ext2fs_htree_tail* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %14, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %16, align 4
  %41 = load %struct.m_ext2fs*, %struct.m_ext2fs** %11, align 8
  %42 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @calculate_crc32c(i32 %43, i32* %14, i32 4)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = call i32 @calculate_crc32c(i32 %45, i32* %16, i32 4)
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %17, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @calculate_crc32c(i32 %47, i32* %49, i32 %50)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %10, align 8
  %54 = bitcast %struct.ext2fs_htree_tail* %53 to i32*
  %55 = call i32 @calculate_crc32c(i32 %52, i32* %54, i32 4)
  store i32 %55, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = load %struct.ext2fs_htree_tail*, %struct.ext2fs_htree_tail** %10, align 8
  %58 = getelementptr inbounds %struct.ext2fs_htree_tail, %struct.ext2fs_htree_tail* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %17, align 4
  ret i32 %59
}

declare dso_local i32 @calculate_crc32c(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
