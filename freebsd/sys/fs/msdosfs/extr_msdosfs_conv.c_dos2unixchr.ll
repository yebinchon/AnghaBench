; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_dos2unixchr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/msdosfs/extr_msdosfs_conv.c_dos2unixchr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8**, i64*, i8**, i64*)*, i32 (i32, i8**, i64*, i8**, i64*, i32)* }
%struct.msdosfsmount = type { i32, i32 }

@MSDOSFSMNT_KICONV = common dso_local global i32 0, align 4
@msdosfs_iconv = common dso_local global %struct.TYPE_2__* null, align 8
@LCASE_BASE = common dso_local global i32 0, align 4
@LCASE_EXT = common dso_local global i32 0, align 4
@KICONV_LOWER = common dso_local global i32 0, align 4
@dos2unix = common dso_local global i64* null, align 8
@u2l = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*, i64**, i64*, i32, %struct.msdosfsmount*)* @dos2unixchr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @dos2unixchr(i64* %0, i64** %1, i64* %2, i32 %3, %struct.msdosfsmount* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msdosfsmount*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %6, align 8
  store i64** %1, i64*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.msdosfsmount* %4, %struct.msdosfsmount** %10, align 8
  %15 = load i64*, i64** %6, align 8
  store i64* %15, i64** %12, align 8
  %16 = load %struct.msdosfsmount*, %struct.msdosfsmount** %10, align 8
  %17 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MSDOSFSMNT_KICONV, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %73

22:                                               ; preds = %5
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %24 = icmp ne %struct.TYPE_2__* %23, null
  br i1 %24, label %25, label %73

25:                                               ; preds = %22
  store i64 4, i64* %13, align 8
  store i64 4, i64* %14, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @LCASE_BASE, align 4
  %28 = load i32, i32* @LCASE_EXT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %25
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32 (i32, i8**, i64*, i8**, i64*, i32)*, i32 (i32, i8**, i64*, i8**, i64*, i32)** %34, align 8
  %36 = load %struct.msdosfsmount*, %struct.msdosfsmount** %10, align 8
  %37 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i64**, i64*** %7, align 8
  %40 = bitcast i64** %39 to i8**
  %41 = load i64*, i64** %8, align 8
  %42 = bitcast i64** %12 to i8**
  %43 = load i32, i32* @KICONV_LOWER, align 4
  %44 = call i32 %35(i32 %38, i8** %40, i64* %41, i8** %42, i64* %14, i32 %43)
  br label %57

45:                                               ; preds = %25
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msdosfs_iconv, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32 (i32, i8**, i64*, i8**, i64*)*, i32 (i32, i8**, i64*, i8**, i64*)** %47, align 8
  %49 = load %struct.msdosfsmount*, %struct.msdosfsmount** %10, align 8
  %50 = getelementptr inbounds %struct.msdosfsmount, %struct.msdosfsmount* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i64**, i64*** %7, align 8
  %53 = bitcast i64** %52 to i8**
  %54 = load i64*, i64** %8, align 8
  %55 = bitcast i64** %12 to i8**
  %56 = call i32 %48(i32 %51, i8** %53, i64* %54, i8** %55, i64* %14)
  br label %57

57:                                               ; preds = %45, %32
  %58 = load i64, i64* %14, align 8
  %59 = load i64, i64* %13, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %13, align 8
  %61 = load i64, i64* %13, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i64*, i64** %8, align 8
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load i64**, i64*** %7, align 8
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i32 1
  store i64* %69, i64** %67, align 8
  %70 = load i64*, i64** %12, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %12, align 8
  store i64 63, i64* %70, align 8
  br label %72

72:                                               ; preds = %63, %57
  br label %102

73:                                               ; preds = %22, %5
  %74 = load i64*, i64** %8, align 8
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load i64**, i64*** %7, align 8
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %77, align 8
  %80 = load i64, i64* %78, align 8
  store i64 %80, i64* %11, align 8
  %81 = load i64*, i64** @dos2unix, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @LCASE_BASE, align 4
  %87 = load i32, i32* @LCASE_EXT, align 4
  %88 = or i32 %86, %87
  %89 = and i32 %85, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %73
  %92 = load i64*, i64** @u2l, align 8
  %93 = load i64, i64* %11, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %11, align 8
  br label %96

96:                                               ; preds = %91, %73
  %97 = load i64, i64* %11, align 8
  %98 = load i64*, i64** %12, align 8
  %99 = getelementptr inbounds i64, i64* %98, i32 1
  store i64* %99, i64** %12, align 8
  store i64 %97, i64* %98, align 8
  %100 = load i64*, i64** %6, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 1
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %96, %72
  %103 = load i64*, i64** %12, align 8
  store i64 0, i64* %103, align 8
  %104 = load i64*, i64** %6, align 8
  store i64* %104, i64** %12, align 8
  %105 = load i64*, i64** %12, align 8
  ret i64* %105
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
