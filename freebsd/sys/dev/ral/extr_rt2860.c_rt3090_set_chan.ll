; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ral/extr_rt2860.c_rt3090_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.rt2860_softc = type { i32*, i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"chan %d not support\00", align 1
@rt2860_rf2850 = common dso_local global %struct.TYPE_4__* null, align 8
@rt3090_freqs = common dso_local global %struct.TYPE_3__* null, align 8
@RT3070_TX1_PD = common dso_local global i32 0, align 4
@RT3070_TX2_PD = common dso_local global i32 0, align 4
@RT3070_RX1_PD = common dso_local global i32 0, align 4
@RT3070_RX2_PD = common dso_local global i32 0, align 4
@RT3070_TUNE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2860_softc*, i32)* @rt3090_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt3090_set_chan(%struct.rt2860_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rt2860_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rt2860_softc* %0, %struct.rt2860_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = icmp sle i32 %12, 14
  br label %14

14:                                               ; preds = %11, %2
  %15 = phi i1 [ false, %2 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %16, i8* %19)
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %31, %14
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt2860_rf2850, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %21

34:                                               ; preds = %21
  %35 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %5, align 4
  %42 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %6, align 4
  %49 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_freqs, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %49, i32 2, i32 %55)
  %57 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %58 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %57, i32 3)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, -16
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_freqs, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %60, %66
  store i32 %67, i32* %7, align 4
  %68 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %68, i32 3, i32 %69)
  %71 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %72 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %71, i32 6)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = and i32 %73, -4
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3090_freqs, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %74, %80
  store i32 %81, i32* %7, align 4
  %82 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %82, i32 6, i32 %83)
  %85 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %86 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %85, i32 12)
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = and i32 %87, -32
  %89 = load i32, i32* %5, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %7, align 4
  %91 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %91, i32 12, i32 %92)
  %94 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %95 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %94, i32 13)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, -32
  %98 = load i32, i32* %6, align 4
  %99 = or i32 %97, %98
  store i32 %99, i32* %7, align 4
  %100 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %100, i32 13, i32 %101)
  %103 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %104 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %103, i32 1)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, -253
  store i32 %106, i32* %7, align 4
  %107 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %108 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp eq i32 %109, 1
  br i1 %110, label %111, label %117

111:                                              ; preds = %34
  %112 = load i32, i32* @RT3070_TX1_PD, align 4
  %113 = load i32, i32* @RT3070_TX2_PD, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* %7, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %7, align 4
  br label %127

117:                                              ; preds = %34
  %118 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %119 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32, i32* @RT3070_TX2_PD, align 4
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %122, %117
  br label %127

127:                                              ; preds = %126, %111
  %128 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %129 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load i32, i32* @RT3070_RX1_PD, align 4
  %134 = load i32, i32* @RT3070_RX2_PD, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %7, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %7, align 4
  br label %148

138:                                              ; preds = %127
  %139 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %140 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 2
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load i32, i32* @RT3070_RX2_PD, align 4
  %145 = load i32, i32* %7, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %7, align 4
  br label %147

147:                                              ; preds = %143, %138
  br label %148

148:                                              ; preds = %147, %132
  %149 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %149, i32 1, i32 %150)
  %152 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %153 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %152, i32 23)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = and i32 %154, -128
  %156 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %157 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %155, %158
  store i32 %159, i32* %7, align 4
  %160 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %161 = load i32, i32* %7, align 4
  %162 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %160, i32 23, i32 %161)
  %163 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %164 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %163, i32 24)
  store i32 %164, i32* %7, align 4
  %165 = load i32, i32* %7, align 4
  %166 = and i32 %165, -64
  %167 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %168 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %167, i32 0, i32 5
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %166, %169
  store i32 %170, i32* %7, align 4
  %171 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %172 = load i32, i32* %7, align 4
  %173 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %171, i32 24, i32 %172)
  %174 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %175 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %174, i32 31)
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %7, align 4
  %177 = and i32 %176, -64
  %178 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %179 = getelementptr inbounds %struct.rt2860_softc, %struct.rt2860_softc* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %177, %180
  store i32 %181, i32* %7, align 4
  %182 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %183 = load i32, i32* %7, align 4
  %184 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %182, i32 31, i32 %183)
  %185 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %186 = call i32 @rt3090_rf_read(%struct.rt2860_softc* %185, i32 7)
  store i32 %186, i32* %7, align 4
  %187 = load %struct.rt2860_softc*, %struct.rt2860_softc** %3, align 8
  %188 = load i32, i32* %7, align 4
  %189 = load i32, i32* @RT3070_TUNE, align 4
  %190 = or i32 %188, %189
  %191 = call i32 @rt3090_rf_write(%struct.rt2860_softc* %187, i32 7, i32 %190)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rt3090_rf_write(%struct.rt2860_softc*, i32, i32) #1

declare dso_local i32 @rt3090_rf_read(%struct.rt2860_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
