; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt2870_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt2870_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfprog = type { i64, i32, i32, i32, i32 }
%struct.run_softc = type { i32, i32, i32*, i32*, i32 }

@rt2860_rf2850 = common dso_local global %struct.rfprog* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i64)* @run_rt2870_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt2870_set_chan(%struct.run_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rfprog*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.rfprog*, %struct.rfprog** @rt2860_rf2850, align 8
  store %struct.rfprog* %12, %struct.rfprog** %5, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %23, %2
  %14 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %15 = load i32, i32* %11, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %14, i64 %16
  %18 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %11, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %11, align 4
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %27, i64 %29
  %31 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  %33 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %34 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %38, 16384
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %37, %26
  %41 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %42 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, 131136
  store i32 %47, i32* %6, align 4
  br label %57

48:                                               ; preds = %40
  %49 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %50 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, 64
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %45
  %58 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %59 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %66 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %10, align 4
  %72 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %72, i64 %74
  %76 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, -15873
  store i32 %78, i32* %7, align 4
  %79 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %79, i64 %81
  %83 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, -2066369
  %86 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %87 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 8
  %89 = shl i32 %88, 15
  %90 = or i32 %85, %89
  store i32 %90, i32* %8, align 4
  %91 = load i64, i64* %4, align 8
  %92 = icmp sgt i64 %91, 14
  br i1 %92, label %93, label %140

93:                                               ; preds = %57
  %94 = load i32, i32* %9, align 4
  %95 = icmp sge i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load i32, i32* %9, align 4
  %98 = icmp sgt i32 %97, 15
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %102

100:                                              ; preds = %96
  %101 = load i32, i32* %9, align 4
  br label %102

102:                                              ; preds = %100, %99
  %103 = phi i32 [ 15, %99 ], [ %101, %100 ]
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 10
  %106 = or i32 %105, 512
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  br label %116

109:                                              ; preds = %93
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 7
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = shl i32 %112, 10
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %109, %102
  %117 = load i32, i32* %10, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = icmp sgt i32 %120, 15
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %125

123:                                              ; preds = %119
  %124 = load i32, i32* %10, align 4
  br label %125

125:                                              ; preds = %123, %122
  %126 = phi i32 [ 15, %122 ], [ %124, %123 ]
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = shl i32 %127, 7
  %129 = or i32 %128, 64
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %139

132:                                              ; preds = %116
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 7
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %10, align 4
  %136 = shl i32 %135, 7
  %137 = load i32, i32* %8, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %132, %125
  br label %149

140:                                              ; preds = %57
  %141 = load i32, i32* %9, align 4
  %142 = shl i32 %141, 9
  %143 = load i32, i32* %7, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %10, align 4
  %146 = shl i32 %145, 6
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %140, %139
  %150 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %151 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %152 = load i32, i32* %11, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %151, i64 %153
  %155 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @run_rt2870_rf_write(%struct.run_softc* %150, i32 %156)
  %158 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @run_rt2870_rf_write(%struct.run_softc* %158, i32 %159)
  %161 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %162 = load i32, i32* %7, align 4
  %163 = and i32 %162, -5
  %164 = call i32 @run_rt2870_rf_write(%struct.run_softc* %161, i32 %163)
  %165 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @run_rt2870_rf_write(%struct.run_softc* %165, i32 %166)
  %168 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %169 = call i32 @run_delay(%struct.run_softc* %168, i32 10)
  %170 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %171 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %172 = load i32, i32* %11, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %171, i64 %173
  %175 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @run_rt2870_rf_write(%struct.run_softc* %170, i32 %176)
  %178 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @run_rt2870_rf_write(%struct.run_softc* %178, i32 %179)
  %181 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, 4
  %184 = call i32 @run_rt2870_rf_write(%struct.run_softc* %181, i32 %183)
  %185 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %186 = load i32, i32* %8, align 4
  %187 = call i32 @run_rt2870_rf_write(%struct.run_softc* %185, i32 %186)
  %188 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %189 = call i32 @run_delay(%struct.run_softc* %188, i32 10)
  %190 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %191 = load %struct.rfprog*, %struct.rfprog** %5, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %191, i64 %193
  %195 = getelementptr inbounds %struct.rfprog, %struct.rfprog* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @run_rt2870_rf_write(%struct.run_softc* %190, i32 %196)
  %198 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @run_rt2870_rf_write(%struct.run_softc* %198, i32 %199)
  %201 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %202 = load i32, i32* %7, align 4
  %203 = and i32 %202, -5
  %204 = call i32 @run_rt2870_rf_write(%struct.run_softc* %201, i32 %203)
  %205 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %206 = load i32, i32* %8, align 4
  %207 = call i32 @run_rt2870_rf_write(%struct.run_softc* %205, i32 %206)
  ret void
}

declare dso_local i32 @run_rt2870_rf_write(%struct.run_softc*, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
