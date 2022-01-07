; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_binsearch_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_binsearch_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent_path = type { %struct.ext4_extent_index*, %struct.ext4_extent_header* }
%struct.ext4_extent_index = type { i32 }
%struct.ext4_extent_header = type { i64, i64 }

@.str = private unnamed_addr constant [35 x i8] c"ext4_ext_binsearch_index: bad args\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_extent_path*, i32)* @ext4_ext_binsearch_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_binsearch_index(%struct.ext4_extent_path* %0, i32 %1) #0 {
  %3 = alloca %struct.ext4_extent_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_extent_header*, align 8
  %6 = alloca %struct.ext4_extent_index*, align 8
  %7 = alloca %struct.ext4_extent_index*, align 8
  %8 = alloca %struct.ext4_extent_index*, align 8
  store %struct.ext4_extent_path* %0, %struct.ext4_extent_path** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %10 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %9, i32 0, i32 1
  %11 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %10, align 8
  store %struct.ext4_extent_header* %11, %struct.ext4_extent_header** %5, align 8
  %12 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %13 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %16 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp sle i64 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %21 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br label %24

24:                                               ; preds = %19, %2
  %25 = phi i1 [ false, %2 ], [ %23, %19 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %29 = call %struct.ext4_extent_index* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %28)
  %30 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %29, i64 1
  store %struct.ext4_extent_index* %30, %struct.ext4_extent_index** %7, align 8
  %31 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %32 = call %struct.ext4_extent_index* @EXT_FIRST_INDEX(%struct.ext4_extent_header* %31)
  %33 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %34 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %32, i64 %35
  %37 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %36, i64 -1
  store %struct.ext4_extent_index* %37, %struct.ext4_extent_index** %6, align 8
  br label %38

38:                                               ; preds = %63, %24
  %39 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %7, align 8
  %40 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %6, align 8
  %41 = icmp ule %struct.ext4_extent_index* %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %7, align 8
  %44 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %6, align 8
  %45 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %7, align 8
  %46 = ptrtoint %struct.ext4_extent_index* %44 to i64
  %47 = ptrtoint %struct.ext4_extent_index* %45 to i64
  %48 = sub i64 %46, %47
  %49 = sdiv exact i64 %48, 4
  %50 = sdiv i64 %49, 2
  %51 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %43, i64 %50
  store %struct.ext4_extent_index* %51, %struct.ext4_extent_index** %8, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %8, align 8
  %54 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %8, align 8
  %59 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %58, i64 -1
  store %struct.ext4_extent_index* %59, %struct.ext4_extent_index** %6, align 8
  br label %63

60:                                               ; preds = %42
  %61 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %8, align 8
  %62 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %61, i64 1
  store %struct.ext4_extent_index* %62, %struct.ext4_extent_index** %7, align 8
  br label %63

63:                                               ; preds = %60, %57
  br label %38

64:                                               ; preds = %38
  %65 = load %struct.ext4_extent_index*, %struct.ext4_extent_index** %7, align 8
  %66 = getelementptr inbounds %struct.ext4_extent_index, %struct.ext4_extent_index* %65, i64 -1
  %67 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %68 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %67, i32 0, i32 0
  store %struct.ext4_extent_index* %66, %struct.ext4_extent_index** %68, align 8
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.ext4_extent_index* @EXT_FIRST_INDEX(%struct.ext4_extent_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
