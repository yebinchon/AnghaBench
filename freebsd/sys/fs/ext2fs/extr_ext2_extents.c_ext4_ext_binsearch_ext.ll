; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_binsearch_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/ext2fs/extr_ext2_extents.c_ext4_ext_binsearch_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_extent_path = type { %struct.ext4_extent*, %struct.ext4_extent_header* }
%struct.ext4_extent = type { i32 }
%struct.ext4_extent_header = type { i64, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ext4_ext_binsearch_ext: bad args\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ext4_extent_path*, i32)* @ext4_ext_binsearch_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_ext_binsearch_ext(%struct.ext4_extent_path* %0, i32 %1) #0 {
  %3 = alloca %struct.ext4_extent_path*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext4_extent_header*, align 8
  %6 = alloca %struct.ext4_extent*, align 8
  %7 = alloca %struct.ext4_extent*, align 8
  %8 = alloca %struct.ext4_extent*, align 8
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
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %22 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %68

26:                                               ; preds = %2
  %27 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %28 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %27)
  %29 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %28, i64 1
  store %struct.ext4_extent* %29, %struct.ext4_extent** %7, align 8
  %30 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %31 = call %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header* %30)
  %32 = load %struct.ext4_extent_header*, %struct.ext4_extent_header** %5, align 8
  %33 = getelementptr inbounds %struct.ext4_extent_header, %struct.ext4_extent_header* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %31, i64 %34
  %36 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %35, i64 -1
  store %struct.ext4_extent* %36, %struct.ext4_extent** %6, align 8
  br label %37

37:                                               ; preds = %62, %26
  %38 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %39 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %40 = icmp ule %struct.ext4_extent* %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %43 = load %struct.ext4_extent*, %struct.ext4_extent** %6, align 8
  %44 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %45 = ptrtoint %struct.ext4_extent* %43 to i64
  %46 = ptrtoint %struct.ext4_extent* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = sdiv i64 %48, 2
  %50 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %42, i64 %49
  store %struct.ext4_extent* %50, %struct.ext4_extent** %8, align 8
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %53 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %41
  %57 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %58 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %57, i64 -1
  store %struct.ext4_extent* %58, %struct.ext4_extent** %6, align 8
  br label %62

59:                                               ; preds = %41
  %60 = load %struct.ext4_extent*, %struct.ext4_extent** %8, align 8
  %61 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %60, i64 1
  store %struct.ext4_extent* %61, %struct.ext4_extent** %7, align 8
  br label %62

62:                                               ; preds = %59, %56
  br label %37

63:                                               ; preds = %37
  %64 = load %struct.ext4_extent*, %struct.ext4_extent** %7, align 8
  %65 = getelementptr inbounds %struct.ext4_extent, %struct.ext4_extent* %64, i64 -1
  %66 = load %struct.ext4_extent_path*, %struct.ext4_extent_path** %3, align 8
  %67 = getelementptr inbounds %struct.ext4_extent_path, %struct.ext4_extent_path* %66, i32 0, i32 0
  store %struct.ext4_extent* %65, %struct.ext4_extent** %67, align 8
  br label %68

68:                                               ; preds = %63, %25
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.ext4_extent* @EXT_FIRST_EXTENT(%struct.ext4_extent_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
