; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_chainalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_fat.c_chainalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i64, i64 }

@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"chainalloc on ro msdosfs mount\00", align 1
@CLUST_FIRST = common dso_local global i64 0, align 8
@MSDOSFS_FSIMOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msdosfsmount*, i64, i64, i64, i64*, i64*)* @chainalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chainalloc(%struct.msdosfsmount* %0, i64 %1, i64 %2, i64 %3, i64* %4, i64* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.msdosfsmount*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.msdosfsmount* %0, %struct.msdosfsmount** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i64* %5, i64** %13, align 8
  %17 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %18 = call i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount* %17)
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %20 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %27 = load i64, i64* %9, align 8
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %10, align 8
  store i64 %28, i64* %16, align 8
  br label %29

29:                                               ; preds = %33, %6
  %30 = load i64, i64* %16, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* %16, align 8
  %32 = icmp sgt i64 %30, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %35 = load i64, i64* %15, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %15, align 8
  %37 = trunc i64 %35 to i32
  %38 = call i32 @usemap_alloc(%struct.msdosfsmount* %34, i32 %37)
  br label %29

39:                                               ; preds = %29
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %44 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %46 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %49 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp sgt i64 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %39
  %53 = load i64, i64* @CLUST_FIRST, align 8
  %54 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %55 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %39
  %57 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %58 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %59 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  %62 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load i64, i64* %11, align 8
  %66 = call i32 @fatchain(%struct.msdosfsmount* %62, i64 %63, i64 %64, i64 %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %84

69:                                               ; preds = %56
  %70 = load i64, i64* %9, align 8
  store i64 %70, i64* %15, align 8
  %71 = load i64, i64* %10, align 8
  store i64 %71, i64* %16, align 8
  br label %72

72:                                               ; preds = %76, %69
  %73 = load i64, i64* %16, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %16, align 8
  %75 = icmp sgt i64 %73, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %78 = load i64, i64* %15, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %15, align 8
  %80 = trunc i64 %78 to i32
  %81 = call i32 @usemap_free(%struct.msdosfsmount* %77, i32 %80)
  br label %72

82:                                               ; preds = %72
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %7, align 4
  br label %97

84:                                               ; preds = %56
  %85 = load i64*, i64** %12, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %9, align 8
  %89 = load i64*, i64** %12, align 8
  store i64 %88, i64* %89, align 8
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i64*, i64** %13, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i64, i64* %10, align 8
  %95 = load i64*, i64** %13, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %90
  store i32 0, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i32 @MSDOSFS_ASSERT_MP_LOCKED(%struct.msdosfsmount*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @usemap_alloc(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fatchain(%struct.msdosfsmount*, i64, i64, i64) #1

declare dso_local i32 @usemap_free(%struct.msdosfsmount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
