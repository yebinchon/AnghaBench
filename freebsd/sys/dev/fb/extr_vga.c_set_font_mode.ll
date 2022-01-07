; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_set_font_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_set_font_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32 }

@KD_VGA = common dso_local global i64 0, align 8
@TSIDX = common dso_local global i64 0, align 8
@TSREG = common dso_local global i64 0, align 8
@GDCIDX = common dso_local global i64 0, align 8
@GDCREG = common dso_local global i64 0, align 8
@ATC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32*)* @set_font_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_font_mode(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @splhigh()
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KD_VGA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  %14 = load i64, i64* @TSIDX, align 8
  %15 = call i32 @outb(i64 %14, i32 2)
  %16 = load i64, i64* @TSREG, align 8
  %17 = call i32 @inb(i64 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %17, i32* %19, align 4
  %20 = load i64, i64* @TSIDX, align 8
  %21 = call i32 @outb(i64 %20, i32 4)
  %22 = load i64, i64* @TSREG, align 8
  %23 = call i32 @inb(i64 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 %23, i32* %25, align 4
  %26 = load i64, i64* @GDCIDX, align 8
  %27 = call i32 @outb(i64 %26, i32 4)
  %28 = load i64, i64* @GDCREG, align 8
  %29 = call i32 @inb(i64 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* @GDCIDX, align 8
  %33 = call i32 @outb(i64 %32, i32 5)
  %34 = load i64, i64* @GDCREG, align 8
  %35 = call i32 @inb(i64 %34)
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 3
  store i32 %35, i32* %37, align 4
  %38 = load i64, i64* @GDCIDX, align 8
  %39 = call i32 @outb(i64 %38, i32 6)
  %40 = load i64, i64* @GDCREG, align 8
  %41 = call i32 @inb(i64 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 6
  %48 = call i32 @inb(i64 %47)
  %49 = load i64, i64* @ATC, align 8
  %50 = call i32 @outb(i64 %49, i32 16)
  %51 = load i64, i64* @ATC, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @inb(i64 %52)
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 5
  store i32 %53, i32* %55, align 4
  br label %91

56:                                               ; preds = %2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32* @get_mode_param(i32 %59)
  store i32* %60, i32** %5, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 6
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %4, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 59
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  store i32 %73, i32* %75, align 4
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 60
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %4, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %5, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 61
  %83 = load i32, i32* %82, align 4
  %84 = load i32*, i32** %4, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  store i32 %83, i32* %85, align 4
  %86 = load i32*, i32** %5, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 51
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %56, %13
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 6
  %96 = call i32 @inb(i64 %95)
  %97 = load i64, i64* @ATC, align 8
  %98 = call i32 @outb(i64 %97, i32 16)
  %99 = load i64, i64* @ATC, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 5
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, -2
  %104 = call i32 @outb(i64 %99, i32 %103)
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = add nsw i64 %107, 6
  %109 = call i32 @inb(i64 %108)
  %110 = load i64, i64* @ATC, align 8
  %111 = call i32 @outb(i64 %110, i32 32)
  %112 = load i64, i64* @TSIDX, align 8
  %113 = call i32 @outw(i64 %112, i32 1026)
  %114 = load i64, i64* @TSIDX, align 8
  %115 = call i32 @outw(i64 %114, i32 1796)
  %116 = load i64, i64* @GDCIDX, align 8
  %117 = call i32 @outw(i64 %116, i32 516)
  %118 = load i64, i64* @GDCIDX, align 8
  %119 = call i32 @outw(i64 %118, i32 5)
  %120 = load i64, i64* @GDCIDX, align 8
  %121 = call i32 @outw(i64 %120, i32 1030)
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @splx(i32 %122)
  ret void
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32* @get_mode_param(i32) #1

declare dso_local i32 @outw(i64, i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
