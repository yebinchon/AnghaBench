; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scgfbrndr.c_gfb_draw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scgfbrndr.c_gfb_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32, i32, i32)* @gfb_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfb_draw(%struct.TYPE_13__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %13, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = icmp sgt i32 %21, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %31, %32
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %37, %41
  %43 = sub nsw i32 %33, %42
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %44, %48
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @vidd_copy(%struct.TYPE_12__* %51, i32 %52, i32 0, i32 %53)
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 2
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @sc_vtb_pointer(i32* %58, i32 %59)
  %61 = inttoptr i64 %60 to i32*
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @vidd_puts(%struct.TYPE_12__* %55, i32 %56, i32* %61, i32 %62)
  br label %108

64:                                               ; preds = %4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %97

67:                                               ; preds = %64
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %93, %67
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %11, align 4
  %72 = icmp sgt i32 %70, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @sc_vtb_getc(i32* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @sc_vtb_geta(i32* %79, i32 %80)
  %82 = ashr i32 %81, 8
  store i32 %82, i32* %10, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = ashr i32 %86, 4
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 15
  %90 = shl i32 %89, 4
  %91 = or i32 %87, %90
  %92 = call i32 @vidd_putc(%struct.TYPE_12__* %83, i32 %84, i32 %85, i32 %91)
  br label %93

93:                                               ; preds = %73
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %69

96:                                               ; preds = %69
  br label %107

97:                                               ; preds = %64
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 2
  %102 = load i32, i32* %6, align 4
  %103 = call i64 @sc_vtb_pointer(i32* %101, i32 %102)
  %104 = inttoptr i64 %103 to i32*
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @vidd_puts(%struct.TYPE_12__* %98, i32 %99, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %97, %96
  br label %108

108:                                              ; preds = %107, %30
  ret void
}

declare dso_local i32 @vidd_copy(%struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @vidd_puts(%struct.TYPE_12__*, i32, i32*, i32) #1

declare dso_local i64 @sc_vtb_pointer(i32*, i32) #1

declare dso_local i32 @sc_vtb_getc(i32*, i32) #1

declare dso_local i32 @sc_vtb_geta(i32*, i32) #1

declare dso_local i32 @vidd_putc(%struct.TYPE_12__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
