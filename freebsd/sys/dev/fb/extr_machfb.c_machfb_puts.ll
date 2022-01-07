; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_puts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_puts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.machfb_softc = type { i32, i32 }

@MACHFB_BLANK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32*, i32)* @machfb_puts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_puts(%struct.TYPE_6__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.machfb_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = bitcast %struct.TYPE_6__* %20 to %struct.machfb_softc*
  store %struct.machfb_softc* %21, %struct.machfb_softc** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %161, %4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %164

26:                                               ; preds = %22
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 255
  store i32 %32, i32* %17, align 4
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 65280
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %26
  %43 = load i32, i32* %17, align 4
  %44 = icmp eq i32 %43, 32
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %17, align 4
  %47 = icmp eq i32 %46, 219
  br i1 %47, label %51, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %17, align 4
  %50 = icmp eq i32 %49, 255
  br i1 %50, label %51, label %133

51:                                               ; preds = %48, %45, %42, %26
  %52 = load i32, i32* %16, align 4
  %53 = load i32, i32* %17, align 4
  %54 = icmp eq i32 %53, 219
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 0, i32 4
  %57 = ashr i32 %52, %56
  %58 = and i32 %57, 15
  store i32 %58, i32* %19, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %59, %60
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = srem i32 %61, %65
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = mul nsw i32 %66, %70
  %72 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %73 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %11, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sdiv i32 %78, %82
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %83, %87
  %89 = load %struct.machfb_softc*, %struct.machfb_softc** %9, align 8
  %90 = getelementptr inbounds %struct.machfb_softc, %struct.machfb_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %88, %91
  store i32 %92, i32* %15, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %51
  %96 = load i32, i32* %19, align 4
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* %15, align 4
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %132

101:                                              ; preds = %51
  %102 = load i32, i32* %18, align 4
  %103 = load i32, i32* %19, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %106, %107
  br i1 %108, label %109, label %128

109:                                              ; preds = %105, %101
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %10, align 4
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %114, %118
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @machfb_fill_rect to i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32, ...)*)(%struct.TYPE_6__* %110, i32 %111, i32 %112, i32 %113, i32 %119, i32 %123)
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %13, align 4
  store i32 %126, i32* %12, align 4
  %127 = load i32, i32* %15, align 4
  store i32 %127, i32* %14, align 4
  store i32 1, i32* %10, align 4
  br label %131

128:                                              ; preds = %105
  %129 = load i32, i32* %10, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %10, align 4
  br label %131

131:                                              ; preds = %128, %109
  br label %132

132:                                              ; preds = %131, %95
  br label %160

133:                                              ; preds = %48
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %152

136:                                              ; preds = %133
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %12, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* %10, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = mul nsw i32 %141, %145
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = call i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @machfb_fill_rect to i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32, ...)*)(%struct.TYPE_6__* %137, i32 %138, i32 %139, i32 %140, i32 %146, i32 %150)
  store i32 0, i32* %10, align 4
  br label %152

152:                                              ; preds = %136, %133
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %154 = load i32, i32* %6, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %154, %155
  %157 = load i32, i32* %17, align 4
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @vidd_putc(%struct.TYPE_6__* %153, i32 %156, i32 %157, i32 %158)
  br label %160

160:                                              ; preds = %152, %132
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  br label %22

164:                                              ; preds = %22
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %183

167:                                              ; preds = %164
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %169 = load i32, i32* %18, align 4
  %170 = load i32, i32* %12, align 4
  %171 = load i32, i32* %14, align 4
  %172 = load i32, i32* %10, align 4
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = mul nsw i32 %172, %176
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32, ...) bitcast (i32 (...)* @machfb_fill_rect to i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32, ...)*)(%struct.TYPE_6__* %168, i32 %169, i32 %170, i32 %171, i32 %177, i32 %181)
  br label %183

183:                                              ; preds = %167, %164
  ret i32 0
}

declare dso_local i32 @machfb_fill_rect(...) #1

declare dso_local i32 @vidd_putc(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
