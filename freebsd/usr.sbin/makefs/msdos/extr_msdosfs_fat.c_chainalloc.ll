; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_chainalloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/msdos/extr_msdosfs_fat.c_chainalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msdosfsmount = type { i32, i64, i64 }

@MSDOSFSMNT_RONLY = common dso_local global i32 0, align 4
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
  %18 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @MSDOSFSMNT_RONLY, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %15, align 8
  %26 = load i64, i64* %10, align 8
  store i64 %26, i64* %16, align 8
  br label %27

27:                                               ; preds = %31, %6
  %28 = load i64, i64* %16, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %16, align 8
  %30 = icmp sgt i64 %28, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %33 = load i64, i64* %15, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %15, align 8
  %35 = trunc i64 %33 to i32
  %36 = call i32 @usemap_alloc(%struct.msdosfsmount* %32, i32 %35)
  br label %27

37:                                               ; preds = %27
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %42 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %44 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %47 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp sgt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %37
  %51 = load i64, i64* @CLUST_FIRST, align 8
  %52 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %53 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %52, i32 0, i32 1
  store i64 %51, i64* %53, align 8
  br label %54

54:                                               ; preds = %50, %37
  %55 = load i32, i32* @MSDOSFS_FSIMOD, align 4
  %56 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %57 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @fatchain(%struct.msdosfsmount* %60, i64 %61, i64 %62, i64 %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %54
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %16, align 8
  br label %70

70:                                               ; preds = %74, %67
  %71 = load i64, i64* %16, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, i64* %16, align 8
  %73 = icmp sgt i64 %71, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %70
  %75 = load %struct.msdosfsmount*, %struct.msdosfsmount** %8, align 8
  %76 = load i64, i64* %15, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %15, align 8
  %78 = trunc i64 %76 to i32
  %79 = call i32 @usemap_free(%struct.msdosfsmount* %75, i32 %78)
  br label %70

80:                                               ; preds = %70
  %81 = load i32, i32* %14, align 4
  store i32 %81, i32* %7, align 4
  br label %95

82:                                               ; preds = %54
  %83 = load i64*, i64** %12, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %9, align 8
  %87 = load i64*, i64** %12, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i64*, i64** %13, align 8
  %90 = icmp ne i64* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i64, i64* %10, align 8
  %93 = load i64*, i64** %13, align 8
  store i64 %92, i64* %93, align 8
  br label %94

94:                                               ; preds = %91, %88
  store i32 0, i32* %7, align 4
  br label %95

95:                                               ; preds = %94, %80
  %96 = load i32, i32* %7, align 4
  ret i32 %96
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @usemap_alloc(%struct.msdosfsmount*, i32) #1

declare dso_local i32 @fatchain(%struct.msdosfsmount*, i64, i64, i64) #1

declare dso_local i32 @usemap_free(%struct.msdosfsmount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
