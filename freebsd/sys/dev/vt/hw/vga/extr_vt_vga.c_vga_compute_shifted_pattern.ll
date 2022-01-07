; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_compute_shifted_pattern.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_compute_shifted_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32*, i32*)* @vga_compute_shifted_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_compute_shifted_pattern(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* %10, align 4
  %17 = udiv i32 %16, 8
  store i32 %17, i32* %15, align 4
  %18 = load i32*, i32** %14, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %7
  %21 = load i32, i32* %11, align 4
  %22 = sub i32 8, %21
  %23 = ashr i32 255, %22
  %24 = load i32, i32* %11, align 4
  %25 = sub i32 8, %24
  %26 = load i32, i32* %12, align 4
  %27 = sub i32 %25, %26
  %28 = shl i32 %23, %27
  %29 = load i32*, i32** %14, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %7
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %32, %33
  %35 = sub i32 %34, 1
  %36 = udiv i32 %35, 8
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %30
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* %15, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %13, align 8
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp uge i32 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %38
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = urem i32 %50, 8
  %52 = sub i32 %49, %51
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %53, align 4
  %55 = lshr i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %64

56:                                               ; preds = %38
  %57 = load i32, i32* %10, align 4
  %58 = urem i32 %57, 8
  %59 = load i32, i32* %12, align 4
  %60 = sub i32 %58, %59
  %61 = load i32*, i32** %13, align 8
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, %60
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %56, %48
  br label %121

65:                                               ; preds = %30
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %10, align 4
  %68 = urem i32 %67, 8
  %69 = icmp uge i32 %66, %68
  br i1 %69, label %70, label %95

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %15, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %12, align 4
  %77 = sub i32 8, %76
  %78 = load i32, i32* %10, align 4
  %79 = urem i32 %78, 8
  %80 = sub i32 %77, %79
  %81 = shl i32 %75, %80
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %15, align 4
  %84 = add i32 %83, 1
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %10, align 4
  %90 = urem i32 %89, 8
  %91 = sub i32 %88, %90
  %92 = lshr i32 %87, %91
  %93 = or i32 %81, %92
  %94 = load i32*, i32** %13, align 8
  store i32 %93, i32* %94, align 4
  br label %120

95:                                               ; preds = %65
  %96 = load i32*, i32** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %10, align 4
  %102 = urem i32 %101, 8
  %103 = load i32, i32* %12, align 4
  %104 = sub i32 %102, %103
  %105 = shl i32 %100, %104
  %106 = load i32*, i32** %8, align 8
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, 1
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %10, align 4
  %113 = urem i32 %112, 8
  %114 = sub i32 8, %113
  %115 = load i32, i32* %12, align 4
  %116 = sub i32 %114, %115
  %117 = lshr i32 %111, %116
  %118 = or i32 %105, %117
  %119 = load i32*, i32** %13, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %95, %70
  br label %121

121:                                              ; preds = %120, %64
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
