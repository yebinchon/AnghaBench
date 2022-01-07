; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_copy_bitmap_portion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/hw/vga/extr_vt_vga.c_vga_copy_bitmap_portion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @vga_copy_bitmap_portion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_copy_bitmap_portion(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32* %1, i32** %16, align 8
  store i32* %2, i32** %17, align 8
  store i32* %3, i32** %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %35 = load i32, i32* %19, align 4
  %36 = add i32 %35, 7
  %37 = udiv i32 %36, 8
  store i32 %37, i32* %30, align 4
  store i32 0, i32* %29, align 4
  br label %38

38:                                               ; preds = %160, %14
  %39 = load i32, i32* %29, align 4
  %40 = load i32, i32* %25, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %163

42:                                               ; preds = %38
  %43 = load i32*, i32** %17, align 8
  %44 = load i32, i32* %23, align 4
  %45 = load i32, i32* %29, align 4
  %46 = add i32 %44, %45
  %47 = load i32, i32* %30, align 4
  %48 = mul i32 %46, %47
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %43, i64 %49
  %51 = load i32, i32* %30, align 4
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* %22, align 4
  %54 = load i32, i32* %21, align 4
  %55 = call i32 @vga_compute_shifted_pattern(i32* %50, i32 %51, i32 %52, i32 %53, i32 %54, i32* %31, i32* %32)
  %56 = load i32*, i32** %18, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %42
  %59 = load i32, i32* %32, align 4
  store i32 %59, i32* %33, align 4
  br label %77

60:                                               ; preds = %42
  %61 = load i32*, i32** %18, align 8
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %29, align 4
  %64 = add i32 %62, %63
  %65 = load i32, i32* %30, align 4
  %66 = mul i32 %64, %65
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %30, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i32, i32* %22, align 4
  %72 = load i32, i32* %21, align 4
  %73 = call i32 @vga_compute_shifted_pattern(i32* %68, i32 %69, i32 %70, i32 %71, i32 %72, i32* %33, i32* null)
  %74 = load i32, i32* %32, align 4
  %75 = load i32, i32* %33, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %33, align 4
  br label %77

77:                                               ; preds = %60, %58
  %78 = load i32, i32* %33, align 4
  %79 = load i32, i32* %31, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %31, align 4
  %81 = load i32, i32* %28, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load i32, i32* %33, align 4
  %85 = xor i32 %84, -1
  %86 = load i32*, i32** %15, align 8
  %87 = load i32, i32* %24, align 4
  %88 = load i32, i32* %29, align 4
  %89 = add i32 %87, %88
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %86, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %85
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %83, %77
  %95 = load i32, i32* %31, align 4
  %96 = load i32*, i32** %15, align 8
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* %29, align 4
  %99 = add i32 %97, %98
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %95
  store i32 %103, i32* %101, align 4
  %104 = load i32*, i32** %16, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %107

106:                                              ; preds = %94
  br label %160

107:                                              ; preds = %94
  %108 = load i32, i32* %28, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %107
  store i32 0, i32* %34, align 4
  br label %111

111:                                              ; preds = %128, %110
  %112 = load i32, i32* %34, align 4
  %113 = icmp slt i32 %112, 16
  br i1 %113, label %114, label %131

114:                                              ; preds = %111
  %115 = load i32, i32* %33, align 4
  %116 = xor i32 %115, -1
  %117 = load i32*, i32** %16, align 8
  %118 = load i32, i32* %24, align 4
  %119 = load i32, i32* %29, align 4
  %120 = add i32 %118, %119
  %121 = mul i32 %120, 16
  %122 = load i32, i32* %34, align 4
  %123 = add i32 %121, %122
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %117, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, %116
  store i32 %127, i32* %125, align 4
  br label %128

128:                                              ; preds = %114
  %129 = load i32, i32* %34, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %34, align 4
  br label %111

131:                                              ; preds = %111
  br label %132

132:                                              ; preds = %131, %107
  %133 = load i32, i32* %31, align 4
  %134 = load i32*, i32** %16, align 8
  %135 = load i32, i32* %24, align 4
  %136 = load i32, i32* %29, align 4
  %137 = add i32 %135, %136
  %138 = mul i32 %137, 16
  %139 = load i32, i32* %26, align 4
  %140 = add i32 %138, %139
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %134, i64 %141
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %133
  store i32 %144, i32* %142, align 4
  %145 = load i32, i32* %31, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %33, align 4
  %148 = and i32 %146, %147
  %149 = load i32*, i32** %16, align 8
  %150 = load i32, i32* %24, align 4
  %151 = load i32, i32* %29, align 4
  %152 = add i32 %150, %151
  %153 = mul i32 %152, 16
  %154 = load i32, i32* %27, align 4
  %155 = add i32 %153, %154
  %156 = zext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %149, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %148
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %132, %106
  %161 = load i32, i32* %29, align 4
  %162 = add i32 %161, 1
  store i32 %162, i32* %29, align 4
  br label %38

163:                                              ; preds = %38
  ret void
}

declare dso_local i32 @vga_compute_shifted_pattern(i32*, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
