; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_check_hwrm_version.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_check_hwrm_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"%hhu.%hhu.%hhu\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"WARNING: HWRM version %s is too old (older than %s)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_check_hwrm_version(%struct.bnxt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca [16 x i8], align 16
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  %5 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %17 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i8* %5, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %15, i32 %20)
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %28 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = icmp sgt i32 %26, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %1
  %34 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %35 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %38 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %43 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %42)
  store i32 0, i32* %2, align 4
  br label %119

44:                                               ; preds = %1
  %45 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %51 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %49, %54
  br i1 %55, label %56, label %117

56:                                               ; preds = %44
  %57 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %58 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %63 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp sgt i32 %61, %66
  br i1 %67, label %68, label %79

68:                                               ; preds = %56
  %69 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %70 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %73 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %78 = call i32 @device_printf(i32 %71, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %76, i8* %77)
  store i32 0, i32* %2, align 4
  br label %119

79:                                               ; preds = %56
  %80 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %81 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %86 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %84, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %79
  %92 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %93 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %98 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sgt i32 %96, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %91
  %104 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %105 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %108 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %107, i32 0, i32 0
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %113 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %111, i8* %112)
  store i32 0, i32* %2, align 4
  br label %119

114:                                              ; preds = %91
  br label %115

115:                                              ; preds = %114, %79
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116, %44
  br label %118

118:                                              ; preds = %117
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %103, %68, %33
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
