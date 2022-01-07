; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_get_palette.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_get_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32*, i32*, i32*, i32*)* @get_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_palette(i32* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
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
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %11, align 4
  %26 = icmp sgt i32 %25, 256
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 256
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %11, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sgt i32 %33, 256
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %27, %24, %21, %7
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %8, align 4
  br label %91

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  %39 = mul nsw i32 %38, 3
  %40 = load i32, i32* @M_DEVBUF, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = call i32* @malloc(i32 %39, i32 %40, i32 %41)
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32* %46, i32** %17, align 8
  %47 = load i32*, i32** %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %18, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = load i32*, i32** %18, align 8
  %57 = call i64 @vga_save_palette2(i32* %51, i32 %52, i32 %53, i32* %54, i32* %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %37
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* @M_DEVBUF, align 4
  %62 = call i32 @free(i32* %60, i32 %61)
  %63 = load i32, i32* @ENODEV, align 4
  store i32 %63, i32* %8, align 4
  br label %91

64:                                               ; preds = %37
  %65 = load i32*, i32** %16, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @copyout(i32* %65, i32* %66, i32 %67)
  %69 = load i32*, i32** %17, align 8
  %70 = load i32*, i32** %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @copyout(i32* %69, i32* %70, i32 %71)
  %73 = load i32*, i32** %18, align 8
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @copyout(i32* %73, i32* %74, i32 %75)
  %77 = load i32*, i32** %15, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %64
  %80 = load i32*, i32** %16, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @bzero(i32* %80, i32 %81)
  %83 = load i32*, i32** %16, align 8
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @copyout(i32* %83, i32* %84, i32 %85)
  br label %87

87:                                               ; preds = %79, %64
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* @M_DEVBUF, align 4
  %90 = call i32 @free(i32* %88, i32 %89)
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %59, %35
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i64 @vga_save_palette2(i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @copyout(i32*, i32*, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
