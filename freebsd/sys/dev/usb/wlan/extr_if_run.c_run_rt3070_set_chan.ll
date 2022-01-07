; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_set_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt3070_set_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.run_softc = type { i32*, i32*, i32, i32, i32, i32 }

@rt2860_rf2850 = common dso_local global %struct.TYPE_4__* null, align 8
@rt3070_freqs = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*, i64)* @run_rt3070_set_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt3070_set_chan(%struct.run_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.run_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.run_softc* %0, %struct.run_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @rt2860_rf2850, align 8
  %11 = load i32, i32* %8, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %8, align 4
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %24 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %31 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %6, align 4
  %37 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @run_rt3070_rf_write(%struct.run_softc* %37, i32 2, i32 %43)
  %45 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %46 = call i32 @run_rt3070_rf_read(%struct.run_softc* %45, i32 3, i32* %7)
  %47 = load i32, i32* %7, align 4
  %48 = and i32 %47, -16
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %48, %54
  store i32 %55, i32* %7, align 4
  %56 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @run_rt3070_rf_write(%struct.run_softc* %56, i32 3, i32 %57)
  %59 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %60 = call i32 @run_rt3070_rf_read(%struct.run_softc* %59, i32 6, i32* %7)
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, -4
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** @rt3070_freqs, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %62, %68
  store i32 %69, i32* %7, align 4
  %70 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @run_rt3070_rf_write(%struct.run_softc* %70, i32 6, i32 %71)
  %73 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %74 = call i32 @run_rt3070_rf_read(%struct.run_softc* %73, i32 12, i32* %7)
  %75 = load i32, i32* %7, align 4
  %76 = and i32 %75, -32
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %76, %77
  store i32 %78, i32* %7, align 4
  %79 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @run_rt3070_rf_write(%struct.run_softc* %79, i32 12, i32 %80)
  %82 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %83 = call i32 @run_rt3070_rf_read(%struct.run_softc* %82, i32 13, i32* %7)
  %84 = load i32, i32* %7, align 4
  %85 = and i32 %84, -32
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %85, %86
  store i32 %87, i32* %7, align 4
  %88 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @run_rt3070_rf_write(%struct.run_softc* %88, i32 13, i32 %89)
  %91 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %92 = call i32 @run_rt3070_rf_read(%struct.run_softc* %91, i32 1, i32* %7)
  %93 = load i32, i32* %7, align 4
  %94 = and i32 %93, -253
  store i32 %94, i32* %7, align 4
  %95 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %96 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %99, label %102

99:                                               ; preds = %22
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, 160
  store i32 %101, i32* %7, align 4
  br label %111

102:                                              ; preds = %22
  %103 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %104 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 2
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %7, align 4
  %109 = or i32 %108, 128
  store i32 %109, i32* %7, align 4
  br label %110

110:                                              ; preds = %107, %102
  br label %111

111:                                              ; preds = %110, %99
  %112 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %113 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load i32, i32* %7, align 4
  %118 = or i32 %117, 80
  store i32 %118, i32* %7, align 4
  br label %128

119:                                              ; preds = %111
  %120 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %121 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 2
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, 64
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %124, %119
  br label %128

128:                                              ; preds = %127, %116
  %129 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @run_rt3070_rf_write(%struct.run_softc* %129, i32 1, i32 %130)
  %132 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %133 = call i32 @run_rt3070_rf_read(%struct.run_softc* %132, i32 23, i32* %7)
  %134 = load i32, i32* %7, align 4
  %135 = and i32 %134, -128
  %136 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %137 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %135, %138
  store i32 %139, i32* %7, align 4
  %140 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @run_rt3070_rf_write(%struct.run_softc* %140, i32 23, i32 %141)
  %143 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %144 = call i32 @run_rt3070_rf_read(%struct.run_softc* %143, i32 24, i32* %7)
  %145 = load i32, i32* %7, align 4
  %146 = and i32 %145, -64
  %147 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %148 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %146, %149
  store i32 %150, i32* %7, align 4
  %151 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @run_rt3070_rf_write(%struct.run_softc* %151, i32 24, i32 %152)
  %154 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %155 = call i32 @run_rt3070_rf_read(%struct.run_softc* %154, i32 31, i32* %7)
  %156 = load i32, i32* %7, align 4
  %157 = and i32 %156, -64
  %158 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %159 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %158, i32 0, i32 5
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %157, %160
  store i32 %161, i32* %7, align 4
  %162 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @run_rt3070_rf_write(%struct.run_softc* %162, i32 31, i32 %163)
  %165 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %166 = call i32 @run_rt3070_rf_read(%struct.run_softc* %165, i32 7, i32* %7)
  %167 = load %struct.run_softc*, %struct.run_softc** %3, align 8
  %168 = load i32, i32* %7, align 4
  %169 = or i32 %168, 1
  %170 = call i32 @run_rt3070_rf_write(%struct.run_softc* %167, i32 7, i32 %169)
  ret void
}

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
