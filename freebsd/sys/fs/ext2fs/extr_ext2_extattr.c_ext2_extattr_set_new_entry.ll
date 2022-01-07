; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_set_new_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_set_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_entry = type { i32, i32, i32, i64, i32 }
%struct.uio = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext2fs_extattr_entry* (i8*, %struct.ext2fs_extattr_entry*, i8*, i32, i8*, %struct.uio*)* @ext2_extattr_set_new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext2fs_extattr_entry* @ext2_extattr_set_new_entry(i8* %0, %struct.ext2fs_extattr_entry* %1, i8* %2, i32 %3, i8* %4, %struct.uio* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ext2fs_extattr_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.uio*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext2fs_extattr_entry*, align 8
  %17 = alloca %struct.ext2fs_extattr_entry*, align 8
  store i8* %0, i8** %7, align 8
  store %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.uio* %5, %struct.uio** %12, align 8
  %18 = load i8*, i8** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = ptrtoint i8* %18 to i64
  %21 = ptrtoint i8* %19 to i64
  %22 = sub i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %15, align 4
  %24 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  store %struct.ext2fs_extattr_entry* %24, %struct.ext2fs_extattr_entry** %16, align 8
  br label %25

25:                                               ; preds = %45, %6
  %26 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %27 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %48

30:                                               ; preds = %25
  %31 = load i32, i32* %15, align 4
  %32 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %33 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp sgt i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %38 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %43 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %15, align 4
  br label %45

45:                                               ; preds = %41, %36, %30
  %46 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %47 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %46)
  store %struct.ext2fs_extattr_entry* %47, %struct.ext2fs_extattr_entry** %16, align 8
  br label %25

48:                                               ; preds = %25
  %49 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %50 = bitcast %struct.ext2fs_extattr_entry* %49 to i8*
  %51 = getelementptr inbounds i8, i8* %50, i64 4
  store i8* %51, i8** %14, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @strlen(i8* %52)
  store i32 %53, i32* %13, align 4
  %54 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  store %struct.ext2fs_extattr_entry* %54, %struct.ext2fs_extattr_entry** %16, align 8
  br label %55

55:                                               ; preds = %84, %48
  %56 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %57 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %56)
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %60, label %87

60:                                               ; preds = %55
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %63 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %84, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %70 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %68, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %67
  %75 = load i8*, i8** %9, align 8
  %76 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %77 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = call i64 @memcmp(i8* %75, i32 %78, i32 %79)
  %81 = icmp sle i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %87

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83, %67, %60
  %85 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %86 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %85)
  store %struct.ext2fs_extattr_entry* %86, %struct.ext2fs_extattr_entry** %16, align 8
  br label %55

87:                                               ; preds = %82, %55
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.uio*, %struct.uio** %12, align 8
  %91 = getelementptr inbounds %struct.uio, %struct.uio* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.ext2fs_extattr_entry* @allocate_entry(i8* %88, i32 %89, i32 0, i32 %92, i32 0)
  store %struct.ext2fs_extattr_entry* %93, %struct.ext2fs_extattr_entry** %17, align 8
  %94 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %95 = bitcast %struct.ext2fs_extattr_entry* %94 to i8*
  %96 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %97 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @EXT2_EXTATTR_LEN(i32 %98)
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %95, i64 %100
  %102 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %103 = load i8*, i8** %14, align 8
  %104 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %105 = bitcast %struct.ext2fs_extattr_entry* %104 to i8*
  %106 = ptrtoint i8* %103 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @memmove(i8* %101, %struct.ext2fs_extattr_entry* %102, i32 %109)
  %111 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  %112 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %113 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %114 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @EXT2_EXTATTR_LEN(i32 %115)
  %117 = call i32 @memcpy(%struct.ext2fs_extattr_entry* %111, %struct.ext2fs_extattr_entry* %112, i32 %116)
  %118 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %119 = call i32 @free_entry(%struct.ext2fs_extattr_entry* %118)
  %120 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %16, align 8
  store %struct.ext2fs_extattr_entry* %120, %struct.ext2fs_extattr_entry** %17, align 8
  %121 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %122 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %87
  %126 = load i32, i32* %15, align 4
  %127 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %128 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %127, i32 0, i32 3
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @EXT2_EXTATTR_SIZE(i64 %129)
  %131 = sub nsw i32 %126, %130
  %132 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %133 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %125, %87
  %135 = load i8*, i8** %7, align 8
  %136 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %137 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %135, i64 %139
  %141 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  %142 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.uio*, %struct.uio** %12, align 8
  %145 = call i32 @uiomove(i8* %140, i64 %143, %struct.uio* %144)
  %146 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %17, align 8
  ret %struct.ext2fs_extattr_entry* %146
}

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local %struct.ext2fs_extattr_entry* @allocate_entry(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @memmove(i8*, %struct.ext2fs_extattr_entry*, i32) #1

declare dso_local i32 @EXT2_EXTATTR_LEN(i32) #1

declare dso_local i32 @memcpy(%struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i32) #1

declare dso_local i32 @free_entry(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @EXT2_EXTATTR_SIZE(i64) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
