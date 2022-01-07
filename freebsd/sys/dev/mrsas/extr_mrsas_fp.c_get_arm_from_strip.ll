; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_get_arm_from_strip.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas_fp.c_get_arm_from_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, i64, i64* }
%struct.TYPE_18__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_17__ = type { i64 }

@MAX_QUAD_DEPTH = common dso_local global i64 0, align 8
@MRSAS_PRL11 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"AVAGO PRL11: get_arm_from_strip: for ld=0x%x strip=0x%lx arm is  0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"AVAGO Debug: - get_arm_from_strip: returns invalid arm for ld=%x strip=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mrsas_softc*, i64, i64, %struct.TYPE_18__*)* @get_arm_from_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_arm_from_strip(%struct.mrsas_softc* %0, i64 %1, i64 %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.mrsas_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %19 = call %struct.TYPE_17__* @MR_LdRaidGet(i64 %17, %struct.TYPE_18__* %18)
  store %struct.TYPE_17__* %19, %struct.TYPE_17__** %10, align 8
  %20 = load %struct.mrsas_softc*, %struct.mrsas_softc** %6, align 8
  %21 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  store %struct.TYPE_16__* %22, %struct.TYPE_16__** %12, align 8
  store i64 0, i64* %13, align 8
  br label %23

23:                                               ; preds = %114, %4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* @MAX_QUAD_DEPTH, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %117

27:                                               ; preds = %23
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i64 %33
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %11, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %117

40:                                               ; preds = %27
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %114

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i64 @mega_mod64(i64 %52, i64 %55)
  store i64 %56, i64* %14, align 8
  store i64 0, i64* %15, align 8
  store i64 0, i64* %16, align 8
  br label %57

57:                                               ; preds = %99, %47
  %58 = load i64, i64* %15, align 8
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ult i64 %58, %61
  br i1 %62, label %63, label %102

63:                                               ; preds = %57
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = load i64, i64* %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %13, align 8
  %78 = add i64 %77, 1
  %79 = icmp uge i64 %76, %78
  br i1 %79, label %80, label %98

80:                                               ; preds = %63
  %81 = load i64, i64* %14, align 8
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %82, i32 0, i32 3
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %15, align 8
  %86 = getelementptr inbounds i64, i64* %84, i64 %85
  %87 = load i64, i64* %86, align 8
  %88 = icmp uge i64 %81, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = load i64, i64* %15, align 8
  %94 = getelementptr inbounds i64, i64* %92, i64 %93
  %95 = load i64, i64* %94, align 8
  store i64 %95, i64* %16, align 8
  br label %97

96:                                               ; preds = %80
  br label %102

97:                                               ; preds = %89
  br label %98

98:                                               ; preds = %97, %63
  br label %99

99:                                               ; preds = %98
  %100 = load i64, i64* %15, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %15, align 8
  br label %57

102:                                              ; preds = %96, %57
  %103 = load %struct.mrsas_softc*, %struct.mrsas_softc** %6, align 8
  %104 = load i32, i32* @MRSAS_PRL11, align 4
  %105 = load i64, i64* %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* %14, align 8
  %108 = load i64, i64* %16, align 8
  %109 = sub i64 %107, %108
  %110 = call i32 (%struct.mrsas_softc*, i32, i8*, i64, i64, ...) @mrsas_dprint(%struct.mrsas_softc* %103, i32 %104, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i64 %105, i64 %106, i64 %109)
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %16, align 8
  %113 = sub i64 %111, %112
  store i64 %113, i64* %5, align 8
  br label %123

114:                                              ; preds = %46
  %115 = load i64, i64* %13, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %13, align 8
  br label %23

117:                                              ; preds = %39, %23
  %118 = load %struct.mrsas_softc*, %struct.mrsas_softc** %6, align 8
  %119 = load i32, i32* @MRSAS_PRL11, align 4
  %120 = load i64, i64* %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = call i32 (%struct.mrsas_softc*, i32, i8*, i64, i64, ...) @mrsas_dprint(%struct.mrsas_softc* %118, i32 %119, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %120, i64 %121)
  store i64 -1, i64* %5, align 8
  br label %123

123:                                              ; preds = %117, %102
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local %struct.TYPE_17__* @MR_LdRaidGet(i64, %struct.TYPE_18__*) #1

declare dso_local i64 @mega_mod64(i64, i64) #1

declare dso_local i32 @mrsas_dprint(%struct.mrsas_softc*, i32, i8*, i64, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
