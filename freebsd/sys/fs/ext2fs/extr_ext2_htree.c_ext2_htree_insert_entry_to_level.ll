; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_insert_entry_to_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_htree.c_ext2_htree_insert_entry_to_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_htree_lookup_level = type { i64, %struct.ext2fs_htree_entry* }
%struct.ext2fs_htree_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext2fs_htree_lookup_level*, i32, i32)* @ext2_htree_insert_entry_to_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_htree_insert_entry_to_level(%struct.ext2fs_htree_lookup_level* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ext2fs_htree_lookup_level*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2fs_htree_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.ext2fs_htree_lookup_level* %0, %struct.ext2fs_htree_lookup_level** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %4, align 8
  %10 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %9, i32 0, i32 1
  %11 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %10, align 8
  %12 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %11, i64 1
  store %struct.ext2fs_htree_entry* %12, %struct.ext2fs_htree_entry** %7, align 8
  %13 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %4, align 8
  %14 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ext2_htree_get_count(i64 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %7, align 8
  %18 = getelementptr inbounds %struct.ext2fs_htree_entry, %struct.ext2fs_htree_entry* %17, i64 1
  %19 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %7, align 8
  %20 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %4, align 8
  %21 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %7, align 8
  %28 = bitcast %struct.ext2fs_htree_entry* %27 to i8*
  %29 = ptrtoint i8* %26 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = trunc i64 %31 to i32
  %33 = call i32 @memmove(%struct.ext2fs_htree_entry* %18, %struct.ext2fs_htree_entry* %19, i32 %32)
  %34 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %7, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @ext2_htree_set_block(%struct.ext2fs_htree_entry* %34, i32 %35)
  %37 = load %struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry** %7, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ext2_htree_set_hash(%struct.ext2fs_htree_entry* %37, i32 %38)
  %40 = load %struct.ext2fs_htree_lookup_level*, %struct.ext2fs_htree_lookup_level** %4, align 8
  %41 = getelementptr inbounds %struct.ext2fs_htree_lookup_level, %struct.ext2fs_htree_lookup_level* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  %45 = call i32 @ext2_htree_set_count(i64 %42, i32 %44)
  ret void
}

declare dso_local i32 @ext2_htree_get_count(i64) #1

declare dso_local i32 @memmove(%struct.ext2fs_htree_entry*, %struct.ext2fs_htree_entry*, i32) #1

declare dso_local i32 @ext2_htree_set_block(%struct.ext2fs_htree_entry*, i32) #1

declare dso_local i32 @ext2_htree_set_hash(%struct.ext2fs_htree_entry*, i32) #1

declare dso_local i32 @ext2_htree_set_count(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
