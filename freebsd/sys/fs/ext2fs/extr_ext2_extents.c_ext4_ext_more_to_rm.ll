; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_more_to_rm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_more_to_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent_path = type { i64, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [41 x i8] c"ext4_ext_more_to_rm: bad index from path\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext4_extent_path*)* @ext4_ext_more_to_rm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_ext_more_to_rm(%struct.ext4_extent_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_extent_path*, align 8
  store %struct.ext4_extent_path* %0, %struct.ext4_extent_path** %3, align 8
  %4 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %5 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %4, i32 0, i32 2
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @KASSERT(i32 %8, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %11 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %14 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32* @EXT_FIRST_INDEX(%struct.TYPE_2__* %15)
  %17 = icmp ult i32* %12, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %21 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %26 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @EXT_FIRST_INDEX(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
