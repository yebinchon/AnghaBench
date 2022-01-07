; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_can_extents_be_merged.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_can_extents_be_merged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent = type { i64, i64 }

@EXT4_MAX_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_extent*, %struct.ext4_extent*)* @ext4_can_extents_be_merged to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_can_extents_be_merged(%struct.ext4_extent* %0, %struct.ext4_extent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ext4_extent*, align 8
  %5 = alloca %struct.ext4_extent*, align 8
  store %struct.ext4_extent* %0, %struct.ext4_extent** %4, align 8
  store %struct.ext4_extent* %1, %struct.ext4_extent** %5, align 8
  %6 = load %struct.ext4_extent*, %struct.ext4_extent** %4, align 8
  %7 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.ext4_extent*, %struct.ext4_extent** %4, align 8
  %10 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %8, %11
  %13 = load %struct.ext4_extent*, %struct.ext4_extent** %5, align 8
  %14 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.ext4_extent*, %struct.ext4_extent** %4, align 8
  %20 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ext4_extent*, %struct.ext4_extent** %5, align 8
  %23 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %21, %24
  %26 = load i64, i64* @EXT4_MAX_LEN, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %41

29:                                               ; preds = %18
  %30 = load %struct.ext4_extent*, %struct.ext4_extent** %4, align 8
  %31 = call i64 @ext4_ext_extent_pblock(%struct.ext4_extent* %30)
  %32 = load %struct.ext4_extent*, %struct.ext4_extent** %4, align 8
  %33 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %31, %34
  %36 = load %struct.ext4_extent*, %struct.ext4_extent** %5, align 8
  %37 = call i64 @ext4_ext_extent_pblock(%struct.ext4_extent* %36)
  %38 = icmp eq i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  store i32 1, i32* %3, align 4
  br label %41

40:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %39, %28, %17
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @ext4_ext_extent_pblock(%struct.ext4_extent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
