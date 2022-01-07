; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvgarndr.c_draw_txtcharcursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvgarndr.c_draw_txtcharcursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32, i32, i64 }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i32, i32 }

@CONS_CHAR_CURSOR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, i32, i32, i32)* @draw_txtcharcursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @draw_txtcharcursor(%struct.TYPE_7__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %11, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CONS_CHAR_CURSOR, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %140

25:                                               ; preds = %5
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %28, 14
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %12, align 8
  store i32 8, i32* %13, align 4
  br label %48

34:                                               ; preds = %25
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %37, 16
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  store i8* %42, i8** %12, align 8
  store i32 16, i32* %13, align 4
  br label %47

43:                                               ; preds = %34
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  store i8* %46, i8** %12, align 8
  store i32 14, i32* %13, align 4
  br label %47

47:                                               ; preds = %43, %39
  br label %48

48:                                               ; preds = %47, %30
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %158

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @TRUE, align 4
  %62 = call i32 @vga_flipattr(i32 %60, i32 %61)
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i8*, i8** %12, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %13, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %64, i64 %68
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %13, align 4
  %75 = mul nsw i32 %73, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %70, i64 %76
  %78 = load i32, i32* %13, align 4
  %79 = call i32 @bcopy(i8* %69, i8* %77, i32 %78)
  %80 = load i8*, i8** %12, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %13, align 4
  %85 = mul nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8, i8* %80, i64 %86
  store i8* %87, i8** %12, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 %88, %92
  %94 = sext i32 %93 to i64
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = sub nsw i64 %94, %98
  %100 = call i32 @imax(i64 %99, i32 0)
  store i32 %100, i32* %14, align 4
  br label %101

101:                                              ; preds = %119, %63
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %103, %107
  %109 = icmp slt i32 %102, %108
  br i1 %109, label %110, label %122

110:                                              ; preds = %101
  %111 = load i8*, i8** %12, align 8
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = xor i32 %116, 255
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %114, align 1
  br label %119

119:                                              ; preds = %110
  %120 = load i32, i32* %14, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %14, align 4
  br label %101

122:                                              ; preds = %101
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i8*, i8** %12, align 8
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @vidd_load_font(i32 %125, i32 0, i32 %126, i32 8, i8* %127, i32 %130, i32 1)
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @sc_vtb_putc(i32* %133, i32 %134, i32 %137, i32 %138)
  br label %158

140:                                              ; preds = %5
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %140
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @vga_flipattr(i32 %144, i32 %145)
  store i32 %146, i32* %9, align 4
  br label %147

147:                                              ; preds = %143, %140
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @TRUE, align 4
  %151 = call i32 @vga_cursorattr_adj(%struct.TYPE_7__* %148, i32 %149, i32 %150)
  store i32 %151, i32* %9, align 4
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @sc_vtb_putc(i32* %153, i32 %154, i32 %155, i32 %156)
  br label %158

158:                                              ; preds = %55, %147, %122
  ret void
}

declare dso_local i32 @vga_flipattr(i32, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @imax(i64, i32) #1

declare dso_local i32 @vidd_load_font(i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @sc_vtb_putc(i32*, i32, i32, i32) #1

declare dso_local i32 @vga_cursorattr_adj(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
