; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_get_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_get_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i32, i32, i32)* @ext2_extattr_get_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_extattr_get_size(%struct.ext2fs_extattr_entry* %0, %struct.ext2fs_extattr_entry* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ext2fs_extattr_entry*, align 8
  %7 = alloca %struct.ext2fs_extattr_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext2fs_extattr_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.ext2fs_extattr_entry* %0, %struct.ext2fs_extattr_entry** %6, align 8
  store %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %8, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %12, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %12, align 4
  %18 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %19 = icmp eq %struct.ext2fs_extattr_entry* null, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @EXT2_EXTATTR_LEN(i32 %21)
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i64 @EXT2_EXTATTR_SIZE(i32 %27)
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %30, %28
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %20, %5
  %34 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %6, align 8
  %35 = icmp ne %struct.ext2fs_extattr_entry* %34, null
  br i1 %35, label %36, label %78

36:                                               ; preds = %33
  %37 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %6, align 8
  store %struct.ext2fs_extattr_entry* %37, %struct.ext2fs_extattr_entry** %11, align 8
  br label %38

38:                                               ; preds = %74, %36
  %39 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %40 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %77

43:                                               ; preds = %38
  %44 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %45 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %46 = icmp ne %struct.ext2fs_extattr_entry* %44, %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %49 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @EXT2_EXTATTR_LEN(i32 %50)
  %52 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %53 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @EXT2_EXTATTR_SIZE(i32 %54)
  %56 = add nsw i64 %51, %55
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  br label %73

61:                                               ; preds = %43
  %62 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %63 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @EXT2_EXTATTR_LEN(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @EXT2_EXTATTR_SIZE(i32 %66)
  %68 = add nsw i64 %65, %67
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %70, %68
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %61, %47
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %76 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %75)
  store %struct.ext2fs_extattr_entry* %76, %struct.ext2fs_extattr_entry** %11, align 8
  br label %38

77:                                               ; preds = %38
  br label %78

78:                                               ; preds = %77, %33
  %79 = load i32, i32* %12, align 4
  ret i32 %79
}

declare dso_local i64 @EXT2_EXTATTR_LEN(i32) #1

declare dso_local i64 @EXT2_EXTATTR_SIZE(i32) #1

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
