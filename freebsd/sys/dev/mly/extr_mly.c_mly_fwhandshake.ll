; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_fwhandshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_fwhandshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i64, i64, i32 }

@MLY_HM_STSACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"controller initialisation started\0A\00", align 1
@MLY_MSG_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"drive spinup in progress\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"mirror race recovery failed, one or more drives offline\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"mirror race recovery in progress\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"mirror race recovery on a critical drive\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"FATAL MEMORY PARITY ERROR\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"unknown initialisation code 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mly_softc*)* @mly_fwhandshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mly_fwhandshake(%struct.mly_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mly_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mly_softc* %0, %struct.mly_softc** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @debug_called(i32 1)
  %9 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %10 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @MLY_HM_STSACK, align 4
  %14 = call i32 @MLY_SET_REG(%struct.mly_softc* %9, i32 %12, i32 %13)
  %15 = call i32 @DELAY(i32 1000)
  %16 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %17 = load i32, i32* @MLY_HM_STSACK, align 4
  %18 = call i64 @MLY_IDBR_TRUE(%struct.mly_softc* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

21:                                               ; preds = %1
  %22 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %23 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %79, %21
  %25 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %26 = load i32, i32* @MLY_HM_STSACK, align 4
  %27 = call i64 @MLY_IDBR_TRUE(%struct.mly_softc* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %24
  %30 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %31 = call i64 @MLY_ERROR_VALID(%struct.mly_softc* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %79

33:                                               ; preds = %29
  %34 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %35 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @MLY_GET_REG(%struct.mly_softc* %34, i64 %37)
  %39 = load i32, i32* @MLY_MSG_EMPTY, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  store i32 %41, i32* %4, align 4
  %42 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %43 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @MLY_GET_REG(%struct.mly_softc* %42, i64 %45)
  store i32 %46, i32* %5, align 4
  %47 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %48 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  %52 = call i32 @MLY_GET_REG(%struct.mly_softc* %47, i64 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %74 [
    i32 128, label %54
    i32 129, label %61
    i32 131, label %64
    i32 130, label %67
    i32 132, label %70
  ]

54:                                               ; preds = %33
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %59 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %60

60:                                               ; preds = %57, %54
  br label %78

61:                                               ; preds = %33
  %62 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %63 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %62, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  br label %78

64:                                               ; preds = %33
  %65 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %66 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %65, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %78

67:                                               ; preds = %33
  %68 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %69 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %78

70:                                               ; preds = %33
  %71 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %72 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %71, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %2, align 4
  br label %81

74:                                               ; preds = %33
  %75 = load %struct.mly_softc*, %struct.mly_softc** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 (%struct.mly_softc*, i8*, ...) @mly_printf(%struct.mly_softc* %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %67, %64, %61, %60
  br label %79

79:                                               ; preds = %78, %29
  br label %24

80:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %70, %20
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLY_SET_REG(%struct.mly_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @MLY_IDBR_TRUE(%struct.mly_softc*, i32) #1

declare dso_local i32 @mly_printf(%struct.mly_softc*, i8*, ...) #1

declare dso_local i64 @MLY_ERROR_VALID(%struct.mly_softc*) #1

declare dso_local i32 @MLY_GET_REG(%struct.mly_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
