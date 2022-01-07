; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_allocate_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_allocate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_entry = type { i32, i32, i8*, i8*, i64, i32, i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext2fs_extattr_entry* (i8*, i32, i32, i8*, i8*)* @allocate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext2fs_extattr_entry* @allocate_entry(i8* %0, i32 %1, i32 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ext2fs_extattr_entry*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i8* @ext2_extattr_name_to_linux(i32 %14, i8* %15)
  store i8* %16, i8** %11, align 8
  %17 = load i8*, i8** %11, align 8
  %18 = call i32 @strlen(i8* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 40, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @M_TEMP, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = call %struct.ext2fs_extattr_entry* @malloc(i32 %22, i32 %23, i32 %24)
  store %struct.ext2fs_extattr_entry* %25, %struct.ext2fs_extattr_entry** %13, align 8
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %28 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @ext2_extattr_attrnamespace_to_linux(i32 %29, i8* %30)
  %32 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %33 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %36 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %38 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %41 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %44 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  %46 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @memcpy(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %13, align 8
  ret %struct.ext2fs_extattr_entry* %51
}

declare dso_local i8* @ext2_extattr_name_to_linux(i32, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.ext2fs_extattr_entry* @malloc(i32, i32, i32) #1

declare dso_local i32 @ext2_extattr_attrnamespace_to_linux(i32, i8*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
