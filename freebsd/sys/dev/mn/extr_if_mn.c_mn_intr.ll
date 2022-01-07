; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_mn_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i8*, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"%s: I stat=%08x lstat=%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%s*: RIQB:\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" [%d]=%08x\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"%s*: TIQB:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mn_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mn_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.mn_softc*
  store %struct.mn_softc* %10, %struct.mn_softc** %3, align 8
  %11 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %4, align 4
  %16 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = and i32 %21, -49665
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 512
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, 2
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %31
  %40 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %41 = call i32 @f54_intr(%struct.mn_softc* %40)
  br label %42

42:                                               ; preds = %39, %35
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %101, %42
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 64
  br i1 %45, label %46, label %104

46:                                               ; preds = %43
  %47 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %48 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %100

56:                                               ; preds = %46
  %57 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %58 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  %63 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @mn_rx_intr(%struct.mn_softc* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, -32
  %68 = icmp eq i32 %67, 805308416
  br i1 %68, label %73, label %69

69:                                               ; preds = %56
  %70 = load i32, i32* %6, align 4
  %71 = and i32 %70, -32
  %72 = icmp eq i32 %71, 805309184
  br i1 %72, label %73, label %74

73:                                               ; preds = %69, %56
  br label %101

74:                                               ; preds = %69
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, -805307393
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = and i32 %77, -32
  %79 = icmp eq i32 %78, 2304
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %101

81:                                               ; preds = %74
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, -32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %81
  br label %101

86:                                               ; preds = %81
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %91 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %96)
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %94, %46
  br label %101

101:                                              ; preds = %100, %85, %80, %73
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %43

104:                                              ; preds = %43
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %104
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %158, %109
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 64
  br i1 %112, label %113, label %161

113:                                              ; preds = %110
  %114 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %115 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %114, i32 0, i32 2
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %157

123:                                              ; preds = %113
  %124 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %125 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 0, i32* %129, align 4
  %130 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %131 = load i32, i32* %6, align 4
  %132 = call i32 @mn_tx_intr(%struct.mn_softc* %130, i32 %131)
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, -32
  %135 = icmp eq i32 %134, 536872960
  br i1 %135, label %136, label %137

136:                                              ; preds = %123
  br label %158

137:                                              ; preds = %123
  %138 = load i32, i32* %6, align 4
  %139 = and i32 %138, -536870913
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %143, label %142

142:                                              ; preds = %137
  br label %158

143:                                              ; preds = %137
  %144 = load i32, i32* %8, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %143
  %147 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %148 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %149)
  br label %151

151:                                              ; preds = %146, %143
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* %6, align 4
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %152, i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %151, %113
  br label %158

158:                                              ; preds = %157, %142, %136
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %110

161:                                              ; preds = %110
  %162 = load i32, i32* %8, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %161
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.mn_softc*, %struct.mn_softc** %3, align 8
  %169 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %168, i32 0, i32 3
  %170 = load %struct.TYPE_2__*, %struct.TYPE_2__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store i32 %167, i32* %171, align 4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @f54_intr(%struct.mn_softc*) #1

declare dso_local i32 @mn_rx_intr(%struct.mn_softc*, i32) #1

declare dso_local i32 @mn_tx_intr(%struct.mn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
