; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat.c_iconv_xlat_conv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat.c_iconv_xlat_conv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_xlat = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*, i8**, i64*, i32, i32)* @iconv_xlat_conv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_xlat_conv(i8* %0, i8** %1, i64* %2, i8** %3, i64* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.iconv_xlat*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i8** %1, i8*** %10, align 8
  store i64* %2, i64** %11, align 8
  store i8** %3, i8*** %12, align 8
  store i64* %4, i64** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.iconv_xlat*
  store %struct.iconv_xlat* %22, %struct.iconv_xlat** %16, align 8
  %23 = load i8**, i8*** %10, align 8
  %24 = icmp eq i8** %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %7
  %26 = load i8**, i8*** %10, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %36, label %29

29:                                               ; preds = %25
  %30 = load i8**, i8*** %12, align 8
  %31 = icmp eq i8** %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i8**, i8*** %12, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %29, %25, %7
  store i32 0, i32* %8, align 4
  br label %94

37:                                               ; preds = %32
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 -1, i32* %8, align 4
  br label %94

41:                                               ; preds = %37
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  br label %51

45:                                               ; preds = %41
  %46 = load i64*, i64** %11, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %13, align 8
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @min(i64 %47, i64 %49)
  store i32 %50, i32* %19, align 4
  store i32 %50, i32* %20, align 4
  br label %51

51:                                               ; preds = %45, %44
  %52 = load i8**, i8*** %10, align 8
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %17, align 8
  %54 = load i8**, i8*** %12, align 8
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %18, align 8
  br label %56

56:                                               ; preds = %60, %51
  %57 = load i32, i32* %20, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %20, align 4
  %59 = icmp ne i32 %57, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load %struct.iconv_xlat*, %struct.iconv_xlat** %16, align 8
  %62 = getelementptr inbounds %struct.iconv_xlat, %struct.iconv_xlat* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i8*, i8** %17, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %17, align 8
  %66 = load i8, i8* %64, align 1
  %67 = sext i8 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = trunc i32 %69 to i8
  %71 = load i8*, i8** %18, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %18, align 8
  store i8 %70, i8* %71, align 1
  br label %56

73:                                               ; preds = %56
  %74 = load i32, i32* %19, align 4
  %75 = load i8**, i8*** %10, align 8
  %76 = load i8*, i8** %75, align 8
  %77 = sext i32 %74 to i64
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8* %78, i8** %75, align 8
  %79 = load i32, i32* %19, align 4
  %80 = load i8**, i8*** %12, align 8
  %81 = load i8*, i8** %80, align 8
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %80, align 8
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64*, i64** %11, align 8
  %87 = load i64, i64* %86, align 8
  %88 = sub i64 %87, %85
  store i64 %88, i64* %86, align 8
  %89 = load i32, i32* %19, align 4
  %90 = sext i32 %89 to i64
  %91 = load i64*, i64** %13, align 8
  %92 = load i64, i64* %91, align 8
  %93 = sub i64 %92, %90
  store i64 %93, i64* %91, align 8
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %73, %40, %36
  %95 = load i32, i32* %8, align 4
  ret i32 %95
}

declare dso_local i32 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
