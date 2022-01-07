; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_rehash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extattr.c_ext2_extattr_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2fs_extattr_header = type { i32 }
%struct.ext2fs_extattr_entry = type { i32 }

@EXT2_EXTATTR_BLOCK_HASH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_entry*)* @ext2_extattr_rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_extattr_rehash(%struct.ext2fs_extattr_header* %0, %struct.ext2fs_extattr_entry* %1) #0 {
  %3 = alloca %struct.ext2fs_extattr_header*, align 8
  %4 = alloca %struct.ext2fs_extattr_entry*, align 8
  %5 = alloca %struct.ext2fs_extattr_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.ext2fs_extattr_header* %0, %struct.ext2fs_extattr_header** %3, align 8
  store %struct.ext2fs_extattr_entry* %1, %struct.ext2fs_extattr_entry** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %3, align 8
  %8 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %4, align 8
  %9 = call i32 @ext2_extattr_hash_entry(%struct.ext2fs_extattr_header* %7, %struct.ext2fs_extattr_entry* %8)
  %10 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %3, align 8
  %11 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %10, i64 1
  %12 = call %struct.ext2fs_extattr_entry* @EXT2_ENTRY(%struct.ext2fs_extattr_header* %11)
  store %struct.ext2fs_extattr_entry* %12, %struct.ext2fs_extattr_entry** %5, align 8
  br label %13

13:                                               ; preds = %24, %2
  %14 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %5, align 8
  %15 = call i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %41

18:                                               ; preds = %13
  %19 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  br label %41

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @EXT2_EXTATTR_BLOCK_HASH_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EXT2_EXTATTR_BLOCK_HASH_SHIFT, align 4
  %30 = sext i32 %29 to i64
  %31 = sub i64 32, %30
  %32 = trunc i64 %31 to i32
  %33 = ashr i32 %28, %32
  %34 = xor i32 %27, %33
  %35 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ext2fs_extattr_entry, %struct.ext2fs_extattr_entry* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %34, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ext2fs_extattr_entry*, %struct.ext2fs_extattr_entry** %5, align 8
  %40 = call %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry* %39)
  store %struct.ext2fs_extattr_entry* %40, %struct.ext2fs_extattr_entry** %5, align 8
  br label %13

41:                                               ; preds = %23, %13
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_header** %3, align 8
  %44 = getelementptr inbounds %struct.ext2fs_extattr_header, %struct.ext2fs_extattr_header* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @ext2_extattr_hash_entry(%struct.ext2fs_extattr_header*, %struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_ENTRY(%struct.ext2fs_extattr_header*) #1

declare dso_local i32 @EXT2_IS_LAST_ENTRY(%struct.ext2fs_extattr_entry*) #1

declare dso_local %struct.ext2fs_extattr_entry* @EXT2_EXTATTR_NEXT(%struct.ext2fs_extattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
