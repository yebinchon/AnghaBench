; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_set_exist_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_set_exist_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_entry = type { i32, i64 }
%struct.uio = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i8*, %struct.uio*)* @ext2_extattr_set_exist_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_extattr_set_exist_entry(i8* %0, %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry* %2, i8* %3, %struct.uio* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ext2fs_extattr_entry*, align 8
  %8 = alloca %struct.ext2fs_extattr_entry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry** %7, align 8
  store %struct.ext2fs_extattr_entry* %2, %struct.ext2fs_extattr_entry** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.uio* %4, %struct.uio** %10, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %7, align 8
  %14 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = call i32 @ext2_extattr_delete_value(i8* %12, %struct.ext2fs_extattr_entry* %13, %struct.ext2fs_extattr_entry* %14, i8* %15)
  store i32 %16, i32* %11, align 4
  %17 = load %struct.uio*, %struct.uio** %10, align 8
  %18 = getelementptr inbounds %struct.uio, %struct.uio* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %21 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %23 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load i32, i32* %11, align 4
  %28 = load %struct.uio*, %struct.uio** %10, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @EXT2_EXTATTR_SIZE(i64 %30)
  %32 = sub nsw i32 %27, %31
  %33 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %34 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %38

35:                                               ; preds = %5
  %36 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %37 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %26
  %39 = load i8*, i8** %6, align 8
  %40 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %41 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  %45 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %8, align 8
  %46 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.uio*, %struct.uio** %10, align 8
  %49 = call i32 @uiomove(i8* %44, i64 %47, %struct.uio* %48)
  ret void
}

declare dso_local i32 @ext2_extattr_delete_value(i8*, %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry*, i8*) #1

declare dso_local i32 @EXT2_EXTATTR_SIZE(i64) #1

declare dso_local i32 @uiomove(i8*, i64, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
