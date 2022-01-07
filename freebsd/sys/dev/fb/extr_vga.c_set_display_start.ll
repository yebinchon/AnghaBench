; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_set_display_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vga.c_set_display_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__, i64, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@KD_VGA = common dso_local global i64 0, align 8
@KD_EGA = common dso_local global i64 0, align 8
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@TSIDX = common dso_local global i64 0, align 8
@TSREG = common dso_local global i64 0, align 8
@ATC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32)* @set_display_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_display_start(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @KD_VGA, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @KD_EGA, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, -8
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %16, %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %25
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %37, %41
  %43 = sdiv i32 8, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sdiv i32 %49, %50
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %10, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %112

56:                                               ; preds = %25
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @KD_VGA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @KD_EGA, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %62, %56
  %69 = load i64, i64* @TSIDX, align 8
  %70 = call i32 @outb(i64 %69, i32 1)
  %71 = load i64, i64* @TSREG, align 8
  %72 = call i32 @inb(i64 %71)
  %73 = and i32 %72, 1
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 9, i32* %10, align 4
  br label %77

76:                                               ; preds = %68
  store i32 8, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %75
  br label %79

78:                                               ; preds = %62
  store i32 8, i32* %10, align 4
  br label %79

79:                                               ; preds = %78, %77
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = sdiv i32 %80, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = mul nsw i32 %85, %88
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sdiv i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = srem i32 %94, %98
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %106

102:                                              ; preds = %79
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %10, align 4
  %105 = srem i32 %103, %104
  store i32 %105, i32* %8, align 4
  br label %111

106:                                              ; preds = %79
  %107 = load i32, i32* %5, align 4
  %108 = add nsw i32 %107, 8
  %109 = load i32, i32* %10, align 4
  %110 = srem i32 %108, %109
  store i32 %110, i32* %8, align 4
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %33
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @outb(i64 %115, i32 12)
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  %121 = load i32, i32* %7, align 4
  %122 = ashr i32 %121, 8
  %123 = call i32 @outb(i64 %120, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @outb(i64 %126, i32 13)
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, 1
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, 255
  %134 = call i32 @outb(i64 %131, i32 %133)
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @KD_VGA, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %146, label %140

140:                                              ; preds = %112
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @KD_EGA, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %140, %112
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 6
  %151 = call i32 @inb(i64 %150)
  %152 = load i64, i64* @ATC, align 8
  %153 = call i32 @outb(i64 %152, i32 51)
  %154 = load i64, i64* @ATC, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @outb(i64 %154, i32 %155)
  %157 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = add nsw i64 %159, 6
  %161 = call i32 @inb(i64 %160)
  %162 = load i64, i64* @ATC, align 8
  %163 = call i32 @outb(i64 %162, i32 32)
  br label %164

164:                                              ; preds = %146, %140
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @outb(i64 %167, i32 8)
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = add nsw i64 %171, 1
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @outb(i64 %172, i32 %173)
  %175 = load i32, i32* %5, align 4
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  %179 = load i32, i32* %6, align 4
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  store i32 %179, i32* %182, align 4
  ret i32 0
}

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
