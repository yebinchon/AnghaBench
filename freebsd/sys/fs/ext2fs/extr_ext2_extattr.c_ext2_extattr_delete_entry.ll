; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_delete_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i8*)* @ext2_extattr_delete_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_extattr_delete_entry(i8* %0, %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ext2fs_extattr_entry*, align 8
  %7 = alloca %struct.ext2fs_extattr_entry*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ext2fs_extattr_entry*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry** %6, align 8
  store %struct.ext2fs_extattr_entry* %2, %struct.ext2fs_extattr_entry** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %6, align 8
  %13 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call i32 @ext2_extattr_delete_value(i8* %11, %struct.ext2fs_extattr_entry* %12, %struct.ext2fs_extattr_entry* %13, i8* %14)
  %16 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %6, align 8
  store %struct.ext2fs_extattr_entry* %16, %struct.ext2fs_extattr_entry** %10, align 8
  br label %17

17:                                               ; preds = %22, %4
  %18 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %10, align 8
  %19 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %10, align 8
  %24 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %23)
  store %struct.ext2fs_extattr_entry* %24, %struct.ext2fs_extattr_entry** %10, align 8
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %10, align 8
  %27 = bitcast %struct.ext2fs_extattr_entry* %26 to i8*
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  store i8* %28, i8** %9, align 8
  %29 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %30 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %31 = bitcast %struct.ext2fs_extattr_entry* %30 to i8*
  %32 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %33 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @EXT2_EXTATTR_LEN(i32 %34)
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i8, i8* %31, i64 %36
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %40 = bitcast %struct.ext2fs_extattr_entry* %39 to i8*
  %41 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %42 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @EXT2_EXTATTR_LEN(i32 %43)
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %40, i64 %45
  %47 = ptrtoint i8* %38 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 @memmove(%struct.ext2fs_extattr_entry* %29, i8* %37, i32 %50)
  ret void
}

declare dso_local i32 @ext2_extattr_delete_value(i8*, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i8*) #1

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

declare dso_local i32 @memmove(%struct.ext2fs_extattr_entry*, i8*, i32) #1

declare dso_local i32 @EXT2_EXTATTR_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
