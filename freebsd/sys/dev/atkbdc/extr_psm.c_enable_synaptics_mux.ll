; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_synaptics_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_synaptics_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@KBDC_AUX_MUX_NUM_PORTS = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"aux_mux: ping port %d\0A\00", align 1
@verbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"Active Multiplexing PS/2 controller v%d.%d with %d active port(s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"aux_mux: probe port %d\0A\00", align 1
@PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_synaptics_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_synaptics_mux(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %13 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @FALSE, align 4
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @enable_aux_mux(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* %3, align 4
  br label %108

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %49, %22
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @KBDC_AUX_MUX_NUM_PORTS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i32, i32* @LOG_DEBUG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @VLOG(i32 3, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @set_active_aux_mux_port(i32 %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @enable_aux_dev(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %48

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @disable_aux_dev(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = shl i32 1, %44
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %41, %37, %27
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %23

52:                                               ; preds = %23
  %53 = load i32, i32* @verbose, align 4
  %54 = icmp sge i32 %53, 2
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = ashr i32 %56, 4
  %58 = and i32 %57, 15
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 15
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %10, align 4
  %65 = icmp sge i32 %64, 2
  br i1 %65, label %66, label %104

66:                                               ; preds = %63
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %100, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @KBDC_AUX_MUX_NUM_PORTS, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %67
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* %7, align 4
  %74 = shl i32 1, %73
  %75 = and i32 %72, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %100

78:                                               ; preds = %71
  %79 = load i32, i32* @LOG_DEBUG, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @VLOG(i32 3, i32 %80)
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @set_active_aux_mux_port(i32 %82, i32 %83)
  %85 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @enable_synaptics(%struct.psm_softc* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @PROBE, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %97 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %90
  br label %103

99:                                               ; preds = %78
  br label %100

100:                                              ; preds = %99, %77
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %67

103:                                              ; preds = %98, %67
  br label %104

104:                                              ; preds = %103, %63
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @disable_aux_mux(i32 %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %104, %20
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @enable_aux_mux(i32) #1

declare dso_local i32 @VLOG(i32, i32) #1

declare dso_local i32 @set_active_aux_mux_port(i32, i32) #1

declare dso_local i64 @enable_aux_dev(i32) #1

declare dso_local i64 @disable_aux_dev(i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @enable_synaptics(%struct.psm_softc*, i32) #1

declare dso_local i32 @disable_aux_mux(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
