; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_blank_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_vga_blank_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@TSIDX = common dso_local global i32 0, align 4
@TSREG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @vga_blank_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_blank_display(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 (...) @splhigh()
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %114 [
    i32 132, label %12
    i32 135, label %80
    i32 136, label %84
    i32 133, label %99
    i32 134, label %99
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %79 [
    i32 128, label %14
    i32 129, label %14
    i32 131, label %41
    i32 130, label %52
  ]

14:                                               ; preds = %12, %12
  %15 = load i32, i32* @TSIDX, align 4
  %16 = call i32 @outb(i32 %15, i32 1)
  %17 = load i32, i32* @TSREG, align 4
  %18 = call i32 @inb(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @TSIDX, align 4
  %20 = call i32 @outb(i32 %19, i32 1)
  %21 = load i32, i32* @TSREG, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, 32
  %24 = call i32 @outb(i32 %21, i32 %23)
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @outb(i32 %27, i32 23)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i32 @inb(i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, -129
  %40 = call i32 @outb(i32 %37, i32 %39)
  br label %79

41:                                               ; preds = %12
  %42 = load i32, i32* @TSIDX, align 4
  %43 = call i32 @outb(i32 %42, i32 1)
  %44 = load i32, i32* @TSREG, align 4
  %45 = call i32 @inb(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @TSIDX, align 4
  %47 = call i32 @outb(i32 %46, i32 1)
  %48 = load i32, i32* @TSREG, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, 32
  %51 = call i32 @outb(i32 %48, i32 %50)
  br label %79

52:                                               ; preds = %12
  %53 = load i32, i32* @TSIDX, align 4
  %54 = call i32 @outb(i32 %53, i32 1)
  %55 = load i32, i32* @TSREG, align 4
  %56 = call i32 @inb(i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* @TSIDX, align 4
  %58 = call i32 @outb(i32 %57, i32 1)
  %59 = load i32, i32* @TSREG, align 4
  %60 = load i32, i32* %6, align 4
  %61 = and i32 %60, 223
  %62 = call i32 @outb(i32 %59, i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @outb(i32 %65, i32 23)
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 @inb(i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, 128
  %78 = call i32 @outb(i32 %75, i32 %77)
  br label %79

79:                                               ; preds = %12, %52, %41, %14
  br label %115

80:                                               ; preds = %2
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @splx(i32 %81)
  %83 = load i32, i32* @ENODEV, align 4
  store i32 %83, i32* %3, align 4
  br label %118

84:                                               ; preds = %2
  %85 = load i32, i32* %5, align 4
  switch i32 %85, label %98 [
    i32 128, label %86
    i32 129, label %86
    i32 131, label %86
    i32 130, label %92
  ]

86:                                               ; preds = %84, %84, %84
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 4
  %91 = call i32 @outb(i32 %90, i32 37)
  br label %98

92:                                               ; preds = %84
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 4
  %97 = call i32 @outb(i32 %96, i32 45)
  br label %98

98:                                               ; preds = %84, %92, %86
  br label %115

99:                                               ; preds = %2, %2
  %100 = load i32, i32* %5, align 4
  switch i32 %100, label %113 [
    i32 128, label %101
    i32 129, label %101
    i32 131, label %101
    i32 130, label %107
  ]

101:                                              ; preds = %99, %99, %99
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 4
  %106 = call i32 @outb(i32 %105, i32 33)
  br label %113

107:                                              ; preds = %99
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 4
  %112 = call i32 @outb(i32 %111, i32 41)
  br label %113

113:                                              ; preds = %99, %107, %101
  br label %115

114:                                              ; preds = %2
  br label %115

115:                                              ; preds = %114, %113, %98, %79
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @splx(i32 %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %115, %80
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
