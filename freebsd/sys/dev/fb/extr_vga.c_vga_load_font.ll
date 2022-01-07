; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_load_font.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_load_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@PARAM_BUFSIZE = common dso_local global i32 0, align 4
@V_ADP_FONT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FONT_BUF = common dso_local global i64 0, align 8
@KD_VGA = common dso_local global i64 0, align 8
@TSIDX = common dso_local global i32 0, align 4
@TSREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32*, i32, i32)* @vga_load_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_load_font(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* @PARAM_BUFSIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %26 = load i32, i32* @V_ADP_FONT, align 4
  %27 = load i32, i32* @ENODEV, align 4
  %28 = call i32 @prologue(%struct.TYPE_6__* %25, i32 %26, i32 %27)
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 14
  br i1 %30, label %31, label %32

31:                                               ; preds = %7
  store i32 8, i32* %11, align 4
  br label %43

32:                                               ; preds = %7
  %33 = load i32, i32* %11, align 4
  %34 = icmp sge i32 %33, 32
  br i1 %34, label %35, label %36

35:                                               ; preds = %32
  store i32 32, i32* %11, align 4
  br label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %11, align 4
  %38 = icmp sge i32 %37, 16
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 16, i32* %11, align 4
  br label %41

40:                                               ; preds = %36
  store i32 14, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %39
  br label %42

42:                                               ; preds = %41, %35
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %10, align 4
  %48 = icmp sge i32 %47, 8
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %12, align 4
  %51 = icmp ne i32 %50, 8
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %46, %43
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %108

54:                                               ; preds = %49
  %55 = load i64, i64* @FONT_BUF, align 8
  %56 = load i32, i32* %10, align 4
  %57 = mul nsw i32 16384, %56
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %55, %58
  store i64 %59, i64* %18, align 8
  %60 = load i32, i32* %10, align 4
  %61 = icmp sgt i32 %60, 3
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i64, i64* %18, align 8
  %64 = sub nsw i64 %63, 57344
  store i64 %64, i64* %18, align 8
  br label %65

65:                                               ; preds = %62, %54
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %67 = call i32 @set_font_mode(%struct.TYPE_6__* %66, i32* %24)
  %68 = load i32, i32* %11, align 4
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load i32*, i32** %13, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i32, i32* %14, align 4
  %74 = mul nsw i32 %73, 32
  %75 = sext i32 %74 to i64
  %76 = add i64 %72, %75
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %15, align 4
  %79 = mul nsw i32 %77, %78
  %80 = call i32 @bcopy_toio(i32* %71, i64 %76, i32 %79)
  br label %105

81:                                               ; preds = %65
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %19, align 4
  br label %83

83:                                               ; preds = %99, %81
  %84 = load i32, i32* %15, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %104

86:                                               ; preds = %83
  %87 = load i32*, i32** %13, align 8
  %88 = load i64, i64* %18, align 8
  %89 = load i32, i32* %19, align 4
  %90 = mul nsw i32 %89, 32
  %91 = sext i32 %90 to i64
  %92 = add i64 %88, %91
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @bcopy_toio(i32* %87, i64 %92, i32 %93)
  %95 = load i32, i32* %11, align 4
  %96 = load i32*, i32** %13, align 8
  %97 = sext i32 %95 to i64
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32* %98, i32** %13, align 8
  br label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %19, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %19, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %15, align 4
  br label %83

104:                                              ; preds = %83
  br label %105

105:                                              ; preds = %104, %70
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %107 = call i32 @set_normal_mode(%struct.TYPE_6__* %106, i32* %24)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %20, align 4
  br label %108

108:                                              ; preds = %105, %52
  %109 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @prologue(%struct.TYPE_6__*, i32, i32) #2

declare dso_local i32 @set_font_mode(%struct.TYPE_6__*, i32*) #2

declare dso_local i32 @bcopy_toio(i32*, i64, i32) #2

declare dso_local i32 @set_normal_mode(%struct.TYPE_6__*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
