; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_hash_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_hash_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_header = type { i32 }
%struct.ext2fs_extattr_entry = type { i8*, i32, i64, i32, i32, i32 }

@EXT2_EXTATTR_NAME_HASH_SHIFT = common dso_local global i32 0, align 4
@EXT2_EXTATTR_ROUND = common dso_local global i32 0, align 4
@EXT2_EXTATTR_PAD_BITS = common dso_local global i32 0, align 4
@EXT2_EXTATTR_VALUE_HASH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_entry*)* @ext2_extattr_hash_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_extattr_hash_entry(%struct.ext2fs_extattr_header* %0, %struct.ext2fs_extattr_entry* %1) #0 {
  %3 = alloca %struct.ext2fs_extattr_header*, align 8
  %4 = alloca %struct.ext2fs_extattr_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.ext2fs_extattr_header* %0, %struct.ext2fs_extattr_header** %3, align 8
  store %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %10 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %34, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %15 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @EXT2_EXTATTR_NAME_HASH_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @EXT2_EXTATTR_NAME_HASH_SHIFT, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 32, %24
  %26 = trunc i64 %25 to i32
  %27 = ashr i32 %22, %26
  %28 = xor i32 %21, %27
  %29 = load i8*, i8** %6, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %6, align 8
  %31 = load i8, i8* %29, align 1
  %32 = sext i8 %31 to i32
  %33 = xor i32 %28, %32
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %18
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %12

37:                                               ; preds = %12
  %38 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %39 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %44 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %85

47:                                               ; preds = %42
  %48 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %3, align 8
  %49 = bitcast %struct.ext2fs_extattr_header* %48 to i8*
  %50 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %51 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %49, i64 %53
  %55 = bitcast i8* %54 to i32*
  store i32* %55, i32** %8, align 8
  %56 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %57 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @EXT2_EXTATTR_ROUND, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @EXT2_EXTATTR_PAD_BITS, align 4
  %62 = ashr i32 %60, %61
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %81, %47
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @EXT2_EXTATTR_VALUE_HASH_SHIFT, align 4
  %69 = shl i32 %67, %68
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @EXT2_EXTATTR_VALUE_HASH_SHIFT, align 4
  %72 = sext i32 %71 to i64
  %73 = sub i64 32, %72
  %74 = trunc i64 %73 to i32
  %75 = ashr i32 %70, %74
  %76 = xor i32 %69, %75
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %8, align 8
  %79 = load i32, i32* %77, align 4
  %80 = xor i32 %76, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %7, align 4
  br label %63

84:                                               ; preds = %63
  br label %85

85:                                               ; preds = %84, %42, %37
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %88 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
