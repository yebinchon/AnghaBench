; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_doinitialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_doinitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 (%struct.psm_softc*, i32)* }
%struct.psm_softc = type { i32, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }

@verbose = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"psm%d: strange result for test aux port (%d).\0A\00", align 1
@PSM_CONFIG_IGNPORTERROR = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"psm%d: the aux port is not functioning (%d).\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@PSM_CONFIG_NORESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"psm%d: failed to reset the aux device.\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"psm%d: failed to enable the aux device.\0A\00", align 1
@vendortype = common dso_local global %struct.TYPE_7__* null, align 8
@REINIT = common dso_local global i32 0, align 4
@PSM_NEED_SYNCBITS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [45 x i8] c"psm%d: failed to get status (doinitialize).\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, %struct.TYPE_6__*)* @doinitialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @doinitialize(%struct.psm_softc* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  %9 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %10 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @test_aux_port(i32 %12)
  store i32 %13, i32* %8, align 4
  switch i32 %13, label %27 [
    i32 1, label %14
    i32 2, label %14
    i32 3, label %14
    i32 128, label %14
    i32 0, label %25
    i32 -1, label %26
  ]

14:                                               ; preds = %2, %2, %2, %2
  %15 = load i32, i32* @verbose, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load i32, i32* @LOG_DEBUG, align 4
  %19 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %20 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 (i32, i8*, i32, ...) @log(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %17, %14
  br label %25

25:                                               ; preds = %2, %24
  br label %45

26:                                               ; preds = %2
  br label %27

27:                                               ; preds = %2, %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @recover_from_error(i32 %28)
  %30 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %31 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @PSM_CONFIG_IGNPORTERROR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %45

37:                                               ; preds = %27
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %40 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i8*, i32, ...) @log(i32 %38, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %171

45:                                               ; preds = %36, %25
  %46 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %47 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PSM_CONFIG_NORESET, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %67

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @reset_aux_dev(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %66, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @recover_from_error(i32 %58)
  %60 = load i32, i32* @LOG_ERR, align 4
  %61 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %62 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, i32, ...) @log(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %171

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %52
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @enable_aux_dev(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @disable_aux_dev(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %71, %67
  %76 = load i32, i32* @LOG_ERR, align 4
  %77 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %78 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, i32, ...) @log(i32 %76, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %171

82:                                               ; preds = %71
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @empty_both_buffers(i32 %83, i32 10)
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %116, %82
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vendortype, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  %91 = load i32 (%struct.psm_softc*, i32)*, i32 (%struct.psm_softc*, i32)** %90, align 8
  %92 = icmp ne i32 (%struct.psm_softc*, i32)* %91, null
  br i1 %92, label %93, label %119

93:                                               ; preds = %85
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vendortype, align 8
  %95 = load i32, i32* %8, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %101 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %99, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %93
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vendortype, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i32 (%struct.psm_softc*, i32)*, i32 (%struct.psm_softc*, i32)** %110, align 8
  %112 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %113 = load i32, i32* @REINIT, align 4
  %114 = call i32 %111(%struct.psm_softc* %112, i32 %113)
  br label %115

115:                                              ; preds = %105, %93
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %85

119:                                              ; preds = %85
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %121 = icmp ne %struct.TYPE_6__* %120, null
  br i1 %121, label %122, label %153

122:                                              ; preds = %119
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @set_mouse_sampling_rate(i32 %128, i32 %131)
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %127, %122
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %135
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @set_mouse_resolution(i32 %141, i32 %144)
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %140, %135
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @set_mouse_scaling(i32 %149, i32 1)
  %151 = load i32, i32* %6, align 4
  %152 = call i32 @set_mouse_mode(i32 %151)
  br label %153

153:                                              ; preds = %148, %119
  %154 = load i32, i32* @PSM_NEED_SYNCBITS, align 4
  %155 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %156 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  %159 = load i32, i32* %6, align 4
  %160 = getelementptr inbounds [3 x i32], [3 x i32]* %7, i64 0, i64 0
  %161 = call i32 @get_mouse_status(i32 %159, i32* %160, i32 0, i32 3)
  %162 = icmp slt i32 %161, 3
  br i1 %162, label %163, label %169

163:                                              ; preds = %153
  %164 = load i32, i32* @LOG_DEBUG, align 4
  %165 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %166 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (i32, i8*, i32, ...) @log(i32 %164, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %167)
  br label %169

169:                                              ; preds = %163, %153
  %170 = load i32, i32* @TRUE, align 4
  store i32 %170, i32* %3, align 4
  br label %171

171:                                              ; preds = %169, %75, %57, %37
  %172 = load i32, i32* %3, align 4
  ret i32 %172
}

declare dso_local i32 @test_aux_port(i32) #1

declare dso_local i32 @log(i32, i8*, i32, ...) #1

declare dso_local i32 @recover_from_error(i32) #1

declare dso_local i32 @reset_aux_dev(i32) #1

declare dso_local i32 @enable_aux_dev(i32) #1

declare dso_local i32 @disable_aux_dev(i32) #1

declare dso_local i32 @empty_both_buffers(i32, i32) #1

declare dso_local i32 @set_mouse_sampling_rate(i32, i32) #1

declare dso_local i32 @set_mouse_resolution(i32, i32) #1

declare dso_local i32 @set_mouse_scaling(i32, i32) #1

declare dso_local i32 @set_mouse_mode(i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
