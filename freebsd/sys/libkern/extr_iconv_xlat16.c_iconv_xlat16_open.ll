; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat16.c_iconv_xlat16_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat16.c_iconv_xlat16_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_converter_class = type { i32 }
%struct.iconv_cspair = type { i32, i32, i32, i64 }
%struct.iconv_xlat16 = type { %struct.iconv_cspair*, %struct.iconv_xlat16*, %struct.iconv_xlat16*, i32** }
%struct.kobj_class = type { i32 }

@M_ICONV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@KICONV_WCTYPE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iconv_converter_class*, %struct.iconv_cspair*, %struct.iconv_cspair*, i8**)* @iconv_xlat16_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_xlat16_open(%struct.iconv_converter_class* %0, %struct.iconv_cspair* %1, %struct.iconv_cspair* %2, i8** %3) #0 {
  %5 = alloca %struct.iconv_converter_class*, align 8
  %6 = alloca %struct.iconv_cspair*, align 8
  %7 = alloca %struct.iconv_cspair*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.iconv_xlat16*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  store %struct.iconv_converter_class* %0, %struct.iconv_converter_class** %5, align 8
  store %struct.iconv_cspair* %1, %struct.iconv_cspair** %6, align 8
  store %struct.iconv_cspair* %2, %struct.iconv_cspair** %7, align 8
  store i8** %3, i8*** %8, align 8
  %13 = load %struct.iconv_converter_class*, %struct.iconv_converter_class** %5, align 8
  %14 = bitcast %struct.iconv_converter_class* %13 to %struct.kobj_class*
  %15 = load i32, i32* @M_ICONV, align 4
  %16 = load i32, i32* @M_WAITOK, align 4
  %17 = call i64 @kobj_create(%struct.kobj_class* %14, i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to %struct.iconv_xlat16*
  store %struct.iconv_xlat16* %18, %struct.iconv_xlat16** %9, align 8
  %19 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %20 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %25 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i32**
  store i32** %27, i32*** %11, align 8
  store i32 0, i32* %12, align 4
  br label %28

28:                                               ; preds = %55, %4
  %29 = load i32, i32* %12, align 4
  %30 = icmp slt i32 %29, 512
  br i1 %30, label %31, label %58

31:                                               ; preds = %28
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %31
  %36 = load i32*, i32** %10, align 8
  %37 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %38 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %37, i32 0, i32 3
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  store i32* %36, i32** %42, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 128
  store i32* %44, i32** %10, align 8
  br label %52

45:                                               ; preds = %31
  %46 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %47 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %46, i32 0, i32 3
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %35
  %53 = load i32**, i32*** %11, align 8
  %54 = getelementptr inbounds i32*, i32** %53, i32 1
  store i32** %54, i32*** %11, align 8
  br label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %28

58:                                               ; preds = %28
  %59 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %60 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @KICONV_WCTYPE_NAME, align 4
  %63 = call i64 @strcmp(i32 %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %90

65:                                               ; preds = %58
  %66 = load i32, i32* @KICONV_WCTYPE_NAME, align 4
  %67 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %68 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %71 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %70, i32 0, i32 2
  %72 = call i64 @iconv_open(i32 %66, i32 %69, %struct.iconv_xlat16** %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %76 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %75, i32 0, i32 2
  store %struct.iconv_xlat16* null, %struct.iconv_xlat16** %76, align 8
  br label %77

77:                                               ; preds = %74, %65
  %78 = load i32, i32* @KICONV_WCTYPE_NAME, align 4
  %79 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %80 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %83 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %82, i32 0, i32 1
  %84 = call i64 @iconv_open(i32 %78, i32 %81, %struct.iconv_xlat16** %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %77
  %87 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %88 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %87, i32 0, i32 1
  store %struct.iconv_xlat16* null, %struct.iconv_xlat16** %88, align 8
  br label %89

89:                                               ; preds = %86, %77
  br label %96

90:                                               ; preds = %58
  %91 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %92 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %93 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %92, i32 0, i32 1
  store %struct.iconv_xlat16* %91, %struct.iconv_xlat16** %93, align 8
  %94 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %95 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %94, i32 0, i32 2
  store %struct.iconv_xlat16* %91, %struct.iconv_xlat16** %95, align 8
  br label %96

96:                                               ; preds = %90, %89
  %97 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %98 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %99 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %98, i32 0, i32 0
  store %struct.iconv_cspair* %97, %struct.iconv_cspair** %99, align 8
  %100 = load %struct.iconv_cspair*, %struct.iconv_cspair** %6, align 8
  %101 = getelementptr inbounds %struct.iconv_cspair, %struct.iconv_cspair* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  %104 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %9, align 8
  %105 = bitcast %struct.iconv_xlat16* %104 to i8*
  %106 = load i8**, i8*** %8, align 8
  store i8* %105, i8** %106, align 8
  ret i32 0
}

declare dso_local i64 @kobj_create(%struct.kobj_class*, i32, i32) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @iconv_open(i32, i32, %struct.iconv_xlat16**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
