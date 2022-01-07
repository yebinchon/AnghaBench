; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_getdiagstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_getdiagstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 (%struct.ath_hal*, i32)*, i32 (%struct.ath_hal*, i32, i32*, i32, i32)* }
%struct.TYPE_6__ = type { i32, i32, i32*, i32 }

@AH_TRUE = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath_hal_getdiagstate(%struct.ath_hal* %0, i32 %1, i8* %2, i32 %3, i8** %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ath_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %106 [
    i32 130, label %15
    i32 132, label %23
    i32 128, label %33
    i32 133, label %40
    i32 135, label %50
    i32 137, label %70
    i32 136, label %98
  ]

15:                                               ; preds = %6
  %16 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %17 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %16)
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = bitcast i32* %18 to i8*
  %20 = load i8**, i8*** %12, align 8
  store i8* %19, i8** %20, align 8
  %21 = load i32*, i32** %13, align 8
  store i32 4, i32* %21, align 4
  %22 = load i32, i32* @AH_TRUE, align 4
  store i32 %22, i32* %7, align 4
  br label %108

23:                                               ; preds = %6
  %24 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = load i8**, i8*** %12, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ath_hal_getregdump(%struct.ath_hal* %24, i8* %25, i8* %27, i32 %29)
  %31 = load i32*, i32** %13, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* @AH_TRUE, align 4
  store i32 %32, i32* %7, align 4
  br label %108

33:                                               ; preds = %6
  %34 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @ath_hal_setregs(%struct.ath_hal* %34, i8* %35, i32 %36)
  %38 = load i32*, i32** %13, align 8
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* @AH_TRUE, align 4
  store i32 %39, i32* %7, align 4
  br label %108

40:                                               ; preds = %6
  %41 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %42 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %41)
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = bitcast i32* %45 to i8*
  %47 = load i8**, i8*** %12, align 8
  store i8* %46, i8** %47, align 8
  %48 = load i32*, i32** %13, align 8
  store i32 8, i32* %48, align 4
  %49 = load i32, i32* @AH_TRUE, align 4
  store i32 %49, i32* %7, align 4
  br label %108

50:                                               ; preds = %6
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 4
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @AH_FALSE, align 4
  store i32 %55, i32* %7, align 4
  br label %108

56:                                               ; preds = %50
  %57 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %58 = load i8*, i8** %10, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i32, i32* %59, align 4
  %61 = load i8**, i8*** %12, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @ath_hal_eepromRead(%struct.ath_hal* %57, i32 %60, i8* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %56
  %66 = load i32, i32* @AH_FALSE, align 4
  store i32 %66, i32* %7, align 4
  br label %108

67:                                               ; preds = %56
  %68 = load i32*, i32** %13, align 8
  store i32 4, i32* %68, align 4
  %69 = load i32, i32* @AH_TRUE, align 4
  store i32 %69, i32* %7, align 4
  br label %108

70:                                               ; preds = %6
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = load i32*, i32** %13, align 8
  store i32 4, i32* %74, align 4
  %75 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %76 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i8**, i8*** %12, align 8
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to i32*
  store i32 %78, i32* %81, align 4
  br label %96

82:                                               ; preds = %70
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp eq i64 %84, 4
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i8*, i8** %10, align 8
  %88 = bitcast i8* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %91 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 8
  br label %95

93:                                               ; preds = %82
  %94 = load i32, i32* @AH_FALSE, align 4
  store i32 %94, i32* %7, align 4
  br label %108

95:                                               ; preds = %86
  br label %96

96:                                               ; preds = %95, %73
  %97 = load i32, i32* @AH_TRUE, align 4
  store i32 %97, i32* %7, align 4
  br label %108

98:                                               ; preds = %6
  %99 = load %struct.ath_hal*, %struct.ath_hal** %8, align 8
  %100 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = bitcast i32* %101 to i8*
  %103 = load i8**, i8*** %12, align 8
  store i8* %102, i8** %103, align 8
  %104 = load i32*, i32** %13, align 8
  store i32 4, i32* %104, align 4
  %105 = load i32, i32* @AH_TRUE, align 4
  store i32 %105, i32* %7, align 4
  br label %108

106:                                              ; preds = %6
  %107 = load i32, i32* @AH_FALSE, align 4
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %106, %98, %96, %93, %67, %65, %54, %40, %33, %23, %15
  %109 = load i32, i32* %7, align 4
  ret i32 %109
}

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_getregdump(%struct.ath_hal*, i8*, i8*, i32) #1

declare dso_local i32 @ath_hal_setregs(%struct.ath_hal*, i8*, i32) #1

declare dso_local i32 @ath_hal_eepromRead(%struct.ath_hal*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
