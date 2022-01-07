; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_load_palette2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_load_palette2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@V_ADP_PALETTE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PIXMASK = common dso_local global i32 0, align 4
@PALWADR = common dso_local global i32 0, align 4
@V_ADP_DAC8 = common dso_local global i32 0, align 4
@PALDATA = common dso_local global i32 0, align 4
@ATC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*, i32*, i32*)* @vga_load_palette2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_load_palette2(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = load i32, i32* @V_ADP_PALETTE, align 4
  %17 = load i32, i32* @ENODEV, align 4
  %18 = call i32 @prologue(%struct.TYPE_4__* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @PIXMASK, align 4
  %20 = call i32 @outb(i32 %19, i32 255)
  %21 = load i32, i32* @PALWADR, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @outb(i32 %21, i32 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @V_ADP_DAC8, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 2
  store i32 %31, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %64, %6
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %67

36:                                               ; preds = %32
  %37 = load i32, i32* @PALDATA, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %13, align 4
  %44 = ashr i32 %42, %43
  %45 = call i32 @outb(i32 %37, i32 %44)
  %46 = load i32, i32* @PALDATA, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %14, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = ashr i32 %51, %52
  %54 = call i32 @outb(i32 %46, i32 %53)
  %55 = load i32, i32* @PALDATA, align 4
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %14, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %13, align 4
  %62 = ashr i32 %60, %61
  %63 = call i32 @outb(i32 %55, i32 %62)
  br label %64

64:                                               ; preds = %36
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  br label %32

67:                                               ; preds = %32
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 6
  %72 = call i32 @inb(i64 %71)
  %73 = load i32, i32* @ATC, align 4
  %74 = call i32 @outb(i32 %73, i32 32)
  ret i32 0
}

declare dso_local i32 @prologue(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
