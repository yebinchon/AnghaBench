; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5390_rf_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_run.c_run_rt5390_rf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.run_softc = type { i32, i32, i32, i32 }

@RT5390_RESCAL = common dso_local global i32 0, align 4
@rt5592_def_rf = common dso_local global %struct.TYPE_5__* null, align 8
@rt5392_def_rf = common dso_local global %struct.TYPE_5__* null, align 8
@rt5390_def_rf = common dso_local global %struct.TYPE_5__* null, align 8
@RT3070_OPT_14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.run_softc*)* @run_rt5390_rf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_rt5390_rf_init(%struct.run_softc* %0) #0 {
  %2 = alloca %struct.run_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.run_softc* %0, %struct.run_softc** %2, align 8
  %6 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %7 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 21392
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %12 = call i32 @run_rt3070_rf_read(%struct.run_softc* %11, i32 2, i32* %4)
  %13 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @RT5390_RESCAL, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @run_rt3070_rf_write(%struct.run_softc* %13, i32 2, i32 %16)
  %18 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %19 = call i32 @run_delay(%struct.run_softc* %18, i32 10)
  %20 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @RT5390_RESCAL, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 %21, %23
  %25 = call i32 @run_rt3070_rf_write(%struct.run_softc* %20, i32 2, i32 %24)
  br label %32

26:                                               ; preds = %1
  %27 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %28 = load i32, i32* @RT5390_RESCAL, align 4
  %29 = call i32 @run_rt3070_rf_write(%struct.run_softc* %27, i32 2, i32 %28)
  %30 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %31 = call i32 @run_delay(%struct.run_softc* %30, i32 10)
  br label %32

32:                                               ; preds = %26, %10
  %33 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %34 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 21906
  br i1 %36, label %37, label %62

37:                                               ; preds = %32
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5592_def_rf, align 8
  %41 = call i64 @nitems(%struct.TYPE_5__* %40)
  %42 = icmp ult i64 %39, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5592_def_rf, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5592_def_rf, align 8
  %51 = load i64, i64* %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @run_rt3070_rf_write(%struct.run_softc* %44, i32 %49, i32 %54)
  br label %56

56:                                               ; preds = %43
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %5, align 8
  br label %38

59:                                               ; preds = %38
  %60 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %61 = call i32 @run_adjust_freq_offset(%struct.run_softc* %60)
  br label %150

62:                                               ; preds = %32
  %63 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %64 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 21394
  br i1 %66, label %67, label %108

67:                                               ; preds = %62
  store i64 0, i64* %5, align 8
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5392_def_rf, align 8
  %71 = call i64 @nitems(%struct.TYPE_5__* %70)
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %68
  %74 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5392_def_rf, align 8
  %76 = load i64, i64* %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5392_def_rf, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @run_rt3070_rf_write(%struct.run_softc* %74, i32 %79, i32 %84)
  br label %86

86:                                               ; preds = %73
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %68

89:                                               ; preds = %68
  %90 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %91 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp sge i32 %92, 547
  br i1 %93, label %94, label %107

94:                                               ; preds = %89
  %95 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %96 = call i32 @run_rt3070_rf_write(%struct.run_softc* %95, i32 23, i32 15)
  %97 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %98 = call i32 @run_rt3070_rf_write(%struct.run_softc* %97, i32 24, i32 62)
  %99 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %100 = call i32 @run_rt3070_rf_write(%struct.run_softc* %99, i32 51, i32 50)
  %101 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %102 = call i32 @run_rt3070_rf_write(%struct.run_softc* %101, i32 53, i32 34)
  %103 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %104 = call i32 @run_rt3070_rf_write(%struct.run_softc* %103, i32 56, i32 193)
  %105 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %106 = call i32 @run_rt3070_rf_write(%struct.run_softc* %105, i32 59, i32 15)
  br label %107

107:                                              ; preds = %94, %89
  br label %149

108:                                              ; preds = %62
  store i64 0, i64* %5, align 8
  br label %109

109:                                              ; preds = %127, %108
  %110 = load i64, i64* %5, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5390_def_rf, align 8
  %112 = call i64 @nitems(%struct.TYPE_5__* %111)
  %113 = icmp ult i64 %110, %112
  br i1 %113, label %114, label %130

114:                                              ; preds = %109
  %115 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5390_def_rf, align 8
  %117 = load i64, i64* %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @rt5390_def_rf, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @run_rt3070_rf_write(%struct.run_softc* %115, i32 %120, i32 %125)
  br label %127

127:                                              ; preds = %114
  %128 = load i64, i64* %5, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %5, align 8
  br label %109

130:                                              ; preds = %109
  %131 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %132 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 1282
  br i1 %134, label %135, label %148

135:                                              ; preds = %130
  %136 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %137 = call i32 @run_rt3070_rf_write(%struct.run_softc* %136, i32 6, i32 224)
  %138 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %139 = call i32 @run_rt3070_rf_write(%struct.run_softc* %138, i32 25, i32 128)
  %140 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %141 = call i32 @run_rt3070_rf_write(%struct.run_softc* %140, i32 46, i32 115)
  %142 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %143 = call i32 @run_rt3070_rf_write(%struct.run_softc* %142, i32 53, i32 0)
  %144 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %145 = call i32 @run_rt3070_rf_write(%struct.run_softc* %144, i32 56, i32 66)
  %146 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %147 = call i32 @run_rt3070_rf_write(%struct.run_softc* %146, i32 61, i32 209)
  br label %148

148:                                              ; preds = %135, %130
  br label %149

149:                                              ; preds = %148, %107
  br label %150

150:                                              ; preds = %149, %59
  %151 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %152 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %151, i32 0, i32 2
  store i32 31, i32* %152, align 4
  %153 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %154 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 21906
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 0, i32 47
  %159 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %160 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  %161 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %162 = getelementptr inbounds %struct.run_softc, %struct.run_softc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %163, 529
  br i1 %164, label %165, label %168

165:                                              ; preds = %150
  %166 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %167 = call i32 @run_rt3070_rf_write(%struct.run_softc* %166, i32 27, i32 3)
  br label %168

168:                                              ; preds = %165, %150
  %169 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %170 = load i32, i32* @RT3070_OPT_14, align 4
  %171 = call i32 @run_read(%struct.run_softc* %169, i32 %170, i32* %3)
  %172 = load %struct.run_softc*, %struct.run_softc** %2, align 8
  %173 = load i32, i32* @RT3070_OPT_14, align 4
  %174 = load i32, i32* %3, align 4
  %175 = or i32 %174, 1
  %176 = call i32 @run_write(%struct.run_softc* %172, i32 %173, i32 %175)
  ret void
}

declare dso_local i32 @run_rt3070_rf_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_rt3070_rf_write(%struct.run_softc*, i32, i32) #1

declare dso_local i32 @run_delay(%struct.run_softc*, i32) #1

declare dso_local i64 @nitems(%struct.TYPE_5__*) #1

declare dso_local i32 @run_adjust_freq_offset(%struct.run_softc*) #1

declare dso_local i32 @run_read(%struct.run_softc*, i32, i32*) #1

declare dso_local i32 @run_write(%struct.run_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
