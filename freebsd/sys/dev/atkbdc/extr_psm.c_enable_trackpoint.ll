; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_trackpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_enable_trackpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@PSM_ACK = common dso_local global i64 0, align 8
@PROBE = common dso_local global i32 0, align 4
@trackpoint_support = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32)* @enable_trackpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_trackpoint(%struct.psm_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.psm_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %9 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %6, align 4
  %11 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %12 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %18 = call i32 @synaptics_passthrough_on(%struct.psm_softc* %17)
  br label %19

19:                                               ; preds = %16, %2
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @send_aux_command(i32 %20, i32 225)
  %22 = load i64, i64* @PSM_ACK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @read_aux_data(i32 %25)
  %27 = icmp ne i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %19
  br label %81

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @read_aux_data(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 1
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %81

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @PROBE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %42 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @trackpoint_support, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  br label %81

47:                                               ; preds = %43
  %48 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %49 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %55 = call i32 @synaptics_passthrough_off(%struct.psm_softc* %54)
  br label %56

56:                                               ; preds = %53, %47
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @PROBE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %56
  %61 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %62 = call i32 @trackpoint_sysctl_create_tree(%struct.psm_softc* %61)
  %63 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %64 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %71 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %74 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 3, i32* %75, align 4
  br label %76

76:                                               ; preds = %68, %60
  br label %77

77:                                               ; preds = %76, %56
  %78 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %79 = call i32 @set_trackpoint_parameters(%struct.psm_softc* %78)
  %80 = load i32, i32* @TRUE, align 4
  store i32 %80, i32* %3, align 4
  br label %92

81:                                               ; preds = %46, %34, %28
  %82 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %83 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %81
  %88 = load %struct.psm_softc*, %struct.psm_softc** %4, align 8
  %89 = call i32 @synaptics_passthrough_off(%struct.psm_softc* %88)
  br label %90

90:                                               ; preds = %87, %81
  %91 = load i32, i32* @FALSE, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %77
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @synaptics_passthrough_on(%struct.psm_softc*) #1

declare dso_local i64 @send_aux_command(i32, i32) #1

declare dso_local i32 @read_aux_data(i32) #1

declare dso_local i32 @synaptics_passthrough_off(%struct.psm_softc*) #1

declare dso_local i32 @trackpoint_sysctl_create_tree(%struct.psm_softc*) #1

declare dso_local i32 @set_trackpoint_parameters(%struct.psm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
