; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_set_palette.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*, i32*, i32*)* @set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_palette(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %11, align 4
  %27 = icmp sgt i32 %26, 256
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = icmp sgt i32 %29, 256
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add nsw i32 %32, %33
  %35 = icmp sgt i32 %34, 256
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %28, %25, %22, %7
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %8, align 4
  br label %93

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %39, 3
  %41 = load i32, i32* @M_DEVBUF, align 4
  %42 = load i32, i32* @M_WAITOK, align 4
  %43 = call i32* @malloc(i32 %40, i32 %41, i32 %42)
  store i32* %43, i32** %16, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i32, i32* %11, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %17, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32* %51, i32** %18, align 8
  %52 = load i32*, i32** %12, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @copyin(i32* %52, i32* %53, i32 %54)
  store i32 %55, i32* %19, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %38
  %59 = load i32*, i32** %13, align 8
  %60 = load i32*, i32** %17, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @copyin(i32* %59, i32* %60, i32 %61)
  store i32 %62, i32* %19, align 4
  br label %63

63:                                               ; preds = %58, %38
  %64 = load i32, i32* %19, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %63
  %67 = load i32*, i32** %14, align 8
  %68 = load i32*, i32** %18, align 8
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @copyin(i32* %67, i32* %68, i32 %69)
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %66, %63
  %72 = load i32, i32* %19, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %82, label %74

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = load i32*, i32** %17, align 8
  %80 = load i32*, i32** %18, align 8
  %81 = call i32 @vga_load_palette2(i32* %75, i32 %76, i32 %77, i32* %78, i32* %79, i32* %80)
  store i32 %81, i32* %19, align 4
  br label %82

82:                                               ; preds = %74, %71
  %83 = load i32*, i32** %16, align 8
  %84 = load i32, i32* @M_DEVBUF, align 4
  %85 = call i32 @free(i32* %83, i32 %84)
  %86 = load i32, i32* %19, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i32, i32* @ENODEV, align 4
  br label %91

90:                                               ; preds = %82
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %91, %36
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @vga_load_palette2(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
