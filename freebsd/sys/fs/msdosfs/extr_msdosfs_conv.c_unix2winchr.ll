; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_unix2winchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_unix2winchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8**, i64*, i8**, i64*)*, i32 (i32, i8**, i64*, i8**, i64*, i32)* }
%struct.msdosfsmount = type { i32, i32 }

@MSDOSFSMNT_KICONV = common dso_local global i32 0, align 4
@msdosfs_iconv = common dso_local global %struct.TYPE_2__* null, align 8
@LCASE_BASE = common dso_local global i32 0, align 4
@LCASE_EXT = common dso_local global i32 0, align 4
@KICONV_FROM_LOWER = common dso_local global i32 0, align 4
@u2l = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32**, i64*, i32, %struct.msdosfsmount*)* @unix2winchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unix2winchr(i32** %0, i64* %1, i32 %2, %struct.msdosfsmount* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.msdosfsmount*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32** %0, i32*** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.msdosfsmount* %3, %struct.msdosfsmount** %9, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %99

18:                                               ; preds = %4
  %19 = load %struct.msdosfsmount*, %struct.msdosfsmount** %9, align 8
  %20 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MSDOSFSMNT_KICONV, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %18
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %28, label %74

28:                                               ; preds = %25
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32* %29, i32** %10, align 8
  store i64 2, i64* %13, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @LCASE_BASE, align 4
  %32 = load i32, i32* @LCASE_EXT, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %28
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32 (i32, i8**, i64*, i8**, i64*, i32)*, i32 (i32, i8**, i64*, i8**, i64*, i32)** %38, align 8
  %40 = load %struct.msdosfsmount*, %struct.msdosfsmount** %9, align 8
  %41 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32**, i32*** %6, align 8
  %44 = bitcast i32** %43 to i8**
  %45 = load i64*, i64** %7, align 8
  %46 = bitcast i32** %10 to i8**
  %47 = load i32, i32* @KICONV_FROM_LOWER, align 4
  %48 = call i32 %39(i32 %42, i8** %44, i64* %45, i8** %46, i64* %13, i32 %47)
  br label %61

49:                                               ; preds = %28
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (i32, i8**, i64*, i8**, i64*)*, i32 (i32, i8**, i64*, i8**, i64*)** %51, align 8
  %53 = load %struct.msdosfsmount*, %struct.msdosfsmount** %9, align 8
  %54 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32**, i32*** %6, align 8
  %57 = bitcast i32** %56 to i8**
  %58 = load i64*, i64** %7, align 8
  %59 = bitcast i32** %10 to i8**
  %60 = call i32 %52(i32 %55, i8** %57, i64* %58, i8** %59, i64* %13)
  br label %61

61:                                               ; preds = %49, %36
  %62 = load i64, i64* %13, align 8
  %63 = icmp eq i64 %62, 2
  br i1 %63, label %64, label %65

64:                                               ; preds = %61
  store i64 0, i64* %5, align 8
  br label %99

65:                                               ; preds = %61
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 8
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %68, %70
  %72 = sext i32 %71 to i64
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  store i64 %73, i64* %5, align 8
  br label %99

74:                                               ; preds = %25, %18
  %75 = load i64*, i64** %7, align 8
  %76 = load i64, i64* %75, align 8
  %77 = add i64 %76, -1
  store i64 %77, i64* %75, align 8
  %78 = load i32**, i32*** %6, align 8
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %12, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @LCASE_BASE, align 4
  %85 = load i32, i32* @LCASE_EXT, align 4
  %86 = or i32 %84, %85
  %87 = and i32 %83, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %74
  %90 = load i64*, i64** @u2l, align 8
  %91 = load i64, i64* %12, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %89, %74
  %95 = load i32**, i32*** %6, align 8
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %95, align 8
  %98 = load i64, i64* %12, align 8
  store i64 %98, i64* %5, align 8
  br label %99

99:                                               ; preds = %94, %65, %64, %17
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
