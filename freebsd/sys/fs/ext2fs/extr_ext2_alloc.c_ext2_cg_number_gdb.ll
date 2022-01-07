; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_number_gdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_alloc.c_ext2_cg_number_gdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m_ext2fs = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EXT2F_INCOMPAT_META_BG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext2_cg_number_gdb(%struct.m_ext2fs* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.m_ext2fs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.m_ext2fs* %0, %struct.m_ext2fs** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %9 = getelementptr inbounds %struct.m_ext2fs, %struct.m_ext2fs* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %15 = call i32 @EXT2_DESCS_PER_BLOCK(%struct.m_ext2fs* %14)
  %16 = sdiv i32 %13, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %7, align 8
  %18 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %19 = load i32, i32* @EXT2F_INCOMPAT_META_BG, align 4
  %20 = call i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs* %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22, %2
  %27 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @ext2_cg_number_gdb_nometa(%struct.m_ext2fs* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %22
  %31 = load %struct.m_ext2fs*, %struct.m_ext2fs** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @ext2_cg_number_gdb_meta(%struct.m_ext2fs* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @EXT2_DESCS_PER_BLOCK(%struct.m_ext2fs*) #1

declare dso_local i32 @EXT2_HAS_INCOMPAT_FEATURE(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_cg_number_gdb_nometa(%struct.m_ext2fs*, i32) #1

declare dso_local i32 @ext2_cg_number_gdb_meta(%struct.m_ext2fs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
