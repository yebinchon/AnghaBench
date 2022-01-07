; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_delete_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_delete_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_entry = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i8*)* @ext2_extattr_delete_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_extattr_delete_value(i8* %0, %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ext2fs_extattr_entry*, align 8
  %8 = alloca %struct.ext2fs_extattr_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext2fs_extattr_entry*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry** %7, align 8
  store %struct.ext2fs_extattr_entry* %2, %struct.ext2fs_extattr_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %10, align 4
  %18 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  store %struct.ext2fs_extattr_entry* %18, %struct.ext2fs_extattr_entry** %11, align 8
  br label %19

19:                                               ; preds = %39, %4
  %20 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %21 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %27 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sgt i32 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %24
  %31 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %32 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %37 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %10, align 4
  br label %39

39:                                               ; preds = %35, %30, %24
  %40 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %41 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %40)
  store %struct.ext2fs_extattr_entry* %41, %struct.ext2fs_extattr_entry** %11, align 8
  br label %19

42:                                               ; preds = %19
  %43 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %44 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %5, align 4
  br label %109

49:                                               ; preds = %42
  %50 = load i8*, i8** %6, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %55 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @EXT2_EXTATTR_SIZE(i64 %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %53, i64 %58
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %65 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sub nsw i32 %66, %67
  %69 = call i32 @memmove(i8* %59, i8* %63, i32 %68)
  %70 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  store %struct.ext2fs_extattr_entry* %70, %struct.ext2fs_extattr_entry** %11, align 8
  br label %71

71:                                               ; preds = %98, %49
  %72 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %73 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %72)
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  br i1 %75, label %76, label %101

76:                                               ; preds = %71
  %77 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %78 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %76
  %82 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %83 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %86 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %91 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @EXT2_EXTATTR_SIZE(i64 %92)
  %94 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %95 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %98

98:                                               ; preds = %89, %81, %76
  %99 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %11, align 8
  %100 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %99)
  store %struct.ext2fs_extattr_entry* %100, %struct.ext2fs_extattr_entry** %11, align 8
  br label %71

101:                                              ; preds = %71
  %102 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %103 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @EXT2_EXTATTR_SIZE(i64 %104)
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %101, %47
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @EXT2_EXTATTR_SIZE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
