; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_drop_refs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_drop_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent_path = type { i32, i32* }

@M_EXT2EXTENTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_extent_path*)* @ext4_ext_drop_refs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_drop_refs(%struct.ext4_extent_path* %0) #0 {
  %2 = alloca %struct.ext4_extent_path*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ext4_extent_path* %0, %struct.ext4_extent_path** %2, align 8
  %5 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %2, align 8
  %6 = icmp ne %struct.ext4_extent_path* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %2, align 8
  %10 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %30, %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %2, align 8
  %18 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %2, align 8
  %23 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @M_EXT2EXTENTS, align 4
  %26 = call i32 @free(i32* %24, i32 %25)
  %27 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %2, align 8
  %28 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %21, %16
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  %33 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %2, align 8
  %34 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %33, i32 1
  store %struct.ext4_extent_path* %34, %struct.ext4_extent_path** %2, align 8
  br label %12

35:                                               ; preds = %7, %12
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
