; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_synaptics_sysctl_create_softbuttons_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_synaptics_sysctl_create_softbuttons_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"softbuttons_y\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@CTLFLAG_ANYBODY = common dso_local global i32 0, align 4
@SYNAPTICS_SYSCTL_SOFTBUTTONS_Y = common dso_local global i32 0, align 4
@synaptics_sysctl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Vertical size of softbuttons area\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"softbutton2_x\00", align 1
@SYNAPTICS_SYSCTL_SOFTBUTTON2_X = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c"Horisontal position of 2-nd softbutton left edge (0-disable)\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"softbutton3_x\00", align 1
@SYNAPTICS_SYSCTL_SOFTBUTTON3_X = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"Horisontal position of 3-rd softbutton left edge (0-disable)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psm_softc*)* @synaptics_sysctl_create_softbuttons_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synaptics_sysctl_create_softbuttons_tree(%struct.psm_softc* %0) #0 {
  %2 = alloca %struct.psm_softc*, align 8
  store %struct.psm_softc* %0, %struct.psm_softc** %2, align 8
  %3 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %4 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i32 -1700, i32 1700
  %10 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %11 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %14 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %17 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SYSCTL_CHILDREN(i32 %19)
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLTYPE_INT, align 4
  %23 = load i32, i32* @CTLFLAG_RW, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %28 = load i32, i32* @SYNAPTICS_SYSCTL_SOFTBUTTONS_Y, align 4
  %29 = load i32, i32* @synaptics_sysctl, align 4
  %30 = call i32 @SYSCTL_ADD_PROC(i32* %15, i32 %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %26, %struct.psm_softc* %27, i32 %28, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %32 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 3100, i32* %33, align 4
  %34 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %35 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  %37 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %38 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SYSCTL_CHILDREN(i32 %40)
  %42 = load i32, i32* @OID_AUTO, align 4
  %43 = load i32, i32* @CTLTYPE_INT, align 4
  %44 = load i32, i32* @CTLFLAG_RW, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %49 = load i32, i32* @SYNAPTICS_SYSCTL_SOFTBUTTON2_X, align 4
  %50 = load i32, i32* @synaptics_sysctl, align 4
  %51 = call i32 @SYSCTL_ADD_PROC(i32* %36, i32 %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %47, %struct.psm_softc* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %53 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  store i32 3900, i32* %54, align 8
  %55 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %56 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %59 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @SYSCTL_CHILDREN(i32 %61)
  %63 = load i32, i32* @OID_AUTO, align 4
  %64 = load i32, i32* @CTLTYPE_INT, align 4
  %65 = load i32, i32* @CTLFLAG_RW, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CTLFLAG_ANYBODY, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %70 = load i32, i32* @SYNAPTICS_SYSCTL_SOFTBUTTON3_X, align 4
  %71 = load i32, i32* @synaptics_sysctl, align 4
  %72 = call i32 @SYSCTL_ADD_PROC(i32* %57, i32 %62, i32 %63, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %68, %struct.psm_softc* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.psm_softc*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
