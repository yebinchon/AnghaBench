; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_set_trackpoint_parameters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_set_trackpoint_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.psm_softc*)* @set_trackpoint_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_trackpoint_parameters(%struct.psm_softc* %0) #0 {
  %2 = alloca %struct.psm_softc*, align 8
  store %struct.psm_softc* %0, %struct.psm_softc** %2, align 8
  %3 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %4 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %5 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @trackpoint_command(%struct.psm_softc* %3, i32 129, i32 74, i32 %7)
  %9 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %10 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %11 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trackpoint_command(%struct.psm_softc* %9, i32 129, i32 96, i32 %13)
  %15 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %16 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %17 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @trackpoint_command(%struct.psm_softc* %15, i32 129, i32 77, i32 %19)
  %21 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %22 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %23 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @trackpoint_command(%struct.psm_softc* %21, i32 129, i32 87, i32 %25)
  %27 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %28 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %29 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @trackpoint_command(%struct.psm_softc* %27, i32 129, i32 88, i32 %31)
  %33 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %34 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %35 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @trackpoint_command(%struct.psm_softc* %33, i32 129, i32 89, i32 %37)
  %39 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %40 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %41 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @trackpoint_command(%struct.psm_softc* %39, i32 129, i32 90, i32 %43)
  %45 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %46 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %47 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @trackpoint_command(%struct.psm_softc* %45, i32 129, i32 92, i32 %49)
  %51 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %52 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %53 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @trackpoint_command(%struct.psm_softc* %51, i32 129, i32 93, i32 %55)
  %57 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %58 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %59 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @trackpoint_command(%struct.psm_softc* %57, i32 129, i32 94, i32 %61)
  %63 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %64 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 10
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 1
  br i1 %67, label %68, label %71

68:                                               ; preds = %1
  %69 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %70 = call i32 @trackpoint_command(%struct.psm_softc* %69, i32 71, i32 44, i32 1)
  br label %71

71:                                               ; preds = %68, %1
  %72 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %73 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.psm_softc*, %struct.psm_softc** %2, align 8
  %79 = call i32 @trackpoint_command(%struct.psm_softc* %78, i32 71, i32 45, i32 8)
  br label %80

80:                                               ; preds = %77, %71
  ret void
}

declare dso_local i32 @trackpoint_command(%struct.psm_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
