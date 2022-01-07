; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_set_border8.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ofw/extr_ofw_syscons.c_ofwfb_set_border8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofwfb_softc = type { i32, i32, i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @ofwfb_set_border8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofwfb_set_border8(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofwfb_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32*, i32** %3, align 8
  %11 = bitcast i32* %10 to %struct.ofwfb_softc*
  store %struct.ofwfb_softc* %11, %struct.ofwfb_softc** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ofwfb_background(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %15 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %47, %2
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %37, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load i32, i32* %9, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  br label %37

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %25

40:                                               ; preds = %25
  %41 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32* %46, i32** %8, align 8
  br label %47

47:                                               ; preds = %40
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %18

50:                                               ; preds = %18
  %51 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %52 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i32*
  %55 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sub nsw i32 %57, %60
  %62 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %63 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = mul nsw i32 %61, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %54, i64 %66
  store i32* %67, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %97, %50
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %71 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %87, %74
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %78 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = load i32, i32* %9, align 4
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %82, i32* %86, align 4
  br label %87

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %7, align 4
  br label %75

90:                                               ; preds = %75
  %91 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %92 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %8, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32* %96, i32** %8, align 8
  br label %97

97:                                               ; preds = %90
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %6, align 4
  br label %68

100:                                              ; preds = %68
  %101 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %102 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %106 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %109 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = mul nsw i32 %107, %110
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %104, i64 %112
  store i32* %113, i32** %8, align 8
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %164, %100
  %115 = load i32, i32* %6, align 4
  %116 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %117 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %120 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = mul nsw i32 2, %121
  %123 = sub nsw i32 %118, %122
  %124 = icmp slt i32 %115, %123
  br i1 %124, label %125, label %167

125:                                              ; preds = %114
  store i32 0, i32* %7, align 4
  br label %126

126:                                              ; preds = %154, %125
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %129 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %157

132:                                              ; preds = %126
  %133 = load i32, i32* %9, align 4
  %134 = load i32*, i32** %8, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %133, i32* %137, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %144 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %142, i64 %146
  %148 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %149 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 8
  %151 = sext i32 %150 to i64
  %152 = sub i64 0, %151
  %153 = getelementptr inbounds i32, i32* %147, i64 %152
  store i32 %138, i32* %153, align 4
  br label %154

154:                                              ; preds = %132
  %155 = load i32, i32* %7, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %7, align 4
  br label %126

157:                                              ; preds = %126
  %158 = load %struct.ofwfb_softc*, %struct.ofwfb_softc** %5, align 8
  %159 = getelementptr inbounds %struct.ofwfb_softc, %struct.ofwfb_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32*, i32** %8, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %8, align 8
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %6, align 4
  br label %114

167:                                              ; preds = %114
  ret i32 0
}

declare dso_local i32 @ofwfb_background(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
