; ModuleID = '/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat16.c_iconv_xlat16_tolower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/libkern/extr_iconv_xlat16.c_iconv_xlat16_tolower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iconv_xlat16 = type { i32** }

@XLAT16_HAS_LOWER_CASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @iconv_xlat16_tolower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iconv_xlat16_tolower(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iconv_xlat16*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.iconv_xlat16*
  store %struct.iconv_xlat16* %11, %struct.iconv_xlat16** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 256
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 8
  %17 = call i32 @C2I1(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  %19 = shl i32 %18, 8
  %20 = call i32 @C2I2(i32 %19)
  store i32 %20, i32* %8, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 65536
  br i1 %23, label %24, label %29

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @C2I1(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @C2I2(i32 %27)
  store i32 %28, i32* %8, align 4
  br label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %3, align 4
  br label %80

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %6, align 8
  %34 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %33, i32 0, i32 0
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %78

41:                                               ; preds = %32
  %42 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %6, align 8
  %43 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XLAT16_HAS_LOWER_CASE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %41
  %57 = load %struct.iconv_xlat16*, %struct.iconv_xlat16** %6, align 8
  %58 = getelementptr inbounds %struct.iconv_xlat16, %struct.iconv_xlat16* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 65535
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 255
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i32, i32* %9, align 4
  %74 = ashr i32 %73, 8
  %75 = and i32 %74, 255
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %56
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %80

78:                                               ; preds = %41, %32
  %79 = load i32, i32* %5, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %76, %29
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @C2I1(i32) #1

declare dso_local i32 @C2I2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
