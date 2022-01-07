; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_regwin_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }
%struct.bwi_regwin = type { i32 }

@BWI_STATE_LO = common dso_local global i32 0, align 4
@BWI_STATE_LO_RESET = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@BWI_DBG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s was already disabled\0A\00", align 1
@BWI_STATE_LO_CLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s disable clock timeout\0A\00", align 1
@BWI_STATE_HI = common dso_local global i32 0, align 4
@BWI_STATE_HI_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"%s wait BUSY unset timeout\0A\00", align 1
@BWI_STATE_LO_GATED_CLOCK = common dso_local global i32 0, align 4
@BWI_STATE_LO_FLAGS_MASK = common dso_local global i32 0, align 4
@NRETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_regwin_disable(%struct.bwi_softc* %0, %struct.bwi_regwin* %1, i32 %2) #0 {
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca %struct.bwi_regwin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %4, align 8
  store %struct.bwi_regwin* %1, %struct.bwi_regwin** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %12 = load i32, i32* @BWI_STATE_LO, align 4
  %13 = call i32 @CSR_READ_4(%struct.bwi_softc* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @BWI_STATE_LO_RESET, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %20 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %21 = load i32, i32* @BWI_DBG_INIT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %24 = call i32 @bwi_regwin_name(%struct.bwi_regwin* %23)
  %25 = call i32 @DPRINTF(%struct.bwi_softc* %19, i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %126

26:                                               ; preds = %3
  %27 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %28 = call i32 @bwi_regwin_disable_bits(%struct.bwi_softc* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @BWI_STATE_LO_CLOCK, align 4
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %7, align 4
  %32 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %33 = load i32, i32* @BWI_STATE_LO, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %32, i32 %33, i32 %34)
  store i32 0, i32* %9, align 4
  br label %36

36:                                               ; preds = %50, %26
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %37, 1000
  br i1 %38, label %39, label %53

39:                                               ; preds = %36
  %40 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %41 = load i32, i32* @BWI_STATE_LO, align 4
  %42 = call i32 @CSR_READ_4(%struct.bwi_softc* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %53

48:                                               ; preds = %39
  %49 = call i32 @DELAY(i32 10)
  br label %50

50:                                               ; preds = %48
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %36

53:                                               ; preds = %47, %36
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 1000
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %58 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %61 = call i32 @bwi_regwin_name(%struct.bwi_regwin* %60)
  %62 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %56, %53
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %78, %63
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 1000
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %69 = load i32, i32* @BWI_STATE_HI, align 4
  %70 = call i32 @CSR_READ_4(%struct.bwi_softc* %68, i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @BWI_STATE_HI_BUSY, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %81

76:                                               ; preds = %67
  %77 = call i32 @DELAY(i32 10)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %64

81:                                               ; preds = %75, %64
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 1000
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %86 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bwi_regwin*, %struct.bwi_regwin** %5, align 8
  %89 = call i32 @bwi_regwin_name(%struct.bwi_regwin* %88)
  %90 = call i32 @device_printf(i32 %87, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %84, %81
  %92 = load i32, i32* @BWI_STATE_LO_RESET, align 4
  %93 = load i32, i32* %8, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @BWI_STATE_LO_CLOCK, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @BWI_STATE_LO_GATED_CLOCK, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* @BWI_STATE_LO_FLAGS_MASK, align 4
  %101 = call i32 @__SHIFTIN(i32 %99, i32 %100)
  %102 = or i32 %98, %101
  store i32 %102, i32* %7, align 4
  %103 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %104 = load i32, i32* @BWI_STATE_LO, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %108 = load i32, i32* @BWI_STATE_LO, align 4
  %109 = call i32 @CSR_READ_4(%struct.bwi_softc* %107, i32 %108)
  %110 = call i32 @DELAY(i32 1)
  %111 = load i32, i32* @BWI_STATE_LO_RESET, align 4
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @BWI_STATE_LO_FLAGS_MASK, align 4
  %116 = call i32 @__SHIFTIN(i32 %114, i32 %115)
  %117 = or i32 %113, %116
  store i32 %117, i32* %7, align 4
  %118 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %119 = load i32, i32* @BWI_STATE_LO, align 4
  %120 = load i32, i32* %7, align 4
  %121 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %118, i32 %119, i32 %120)
  %122 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %123 = load i32, i32* @BWI_STATE_LO, align 4
  %124 = call i32 @CSR_READ_4(%struct.bwi_softc* %122, i32 %123)
  %125 = call i32 @DELAY(i32 1)
  br label %126

126:                                              ; preds = %91, %18
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i32) #1

declare dso_local i32 @bwi_regwin_name(%struct.bwi_regwin*) #1

declare dso_local i32 @bwi_regwin_disable_bits(%struct.bwi_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
