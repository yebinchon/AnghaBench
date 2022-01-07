; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_trackpoint_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_trackpoint_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psm_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@PSM_ACK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psm_softc*, i32, i32, i32)* @trackpoint_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trackpoint_command(%struct.psm_softc* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.psm_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca i32, align 4
  store %struct.psm_softc* %0, %struct.psm_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 226, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds i32, i32* %13, i64 1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds i32, i32* %15, i64 1
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %20 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %26 = call i32 @synaptics_passthrough_on(%struct.psm_softc* %25)
  br label %27

27:                                               ; preds = %24, %4
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %86, %27
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %31 = call i32 @nitems(i32* %30)
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %89

33:                                               ; preds = %28
  %34 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %35 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 255
  br i1 %44, label %51, label %45

45:                                               ; preds = %39
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 231
  br i1 %50, label %51, label %63

51:                                               ; preds = %45, %39
  %52 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %53 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @send_aux_command(i32 %54, i32 231)
  %56 = load i64, i64* @PSM_ACK, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %60 = call i32 @synaptics_passthrough_off(%struct.psm_softc* %59)
  %61 = load i32, i32* @EIO, align 4
  store i32 %61, i32* %5, align 4
  br label %99

62:                                               ; preds = %51
  br label %63

63:                                               ; preds = %62, %45, %33
  %64 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %65 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @send_aux_command(i32 %66, i32 %70)
  %72 = load i64, i64* @PSM_ACK, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %76 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %82 = call i32 @synaptics_passthrough_off(%struct.psm_softc* %81)
  br label %83

83:                                               ; preds = %80, %74
  %84 = load i32, i32* @EIO, align 4
  store i32 %84, i32* %5, align 4
  br label %99

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %28

89:                                               ; preds = %28
  %90 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %91 = getelementptr inbounds %struct.psm_softc, %struct.psm_softc* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load %struct.psm_softc*, %struct.psm_softc** %6, align 8
  %97 = call i32 @synaptics_passthrough_off(%struct.psm_softc* %96)
  br label %98

98:                                               ; preds = %95, %89
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %98, %83, %58
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

declare dso_local i32 @synaptics_passthrough_on(%struct.psm_softc*) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i64 @send_aux_command(i32, i32) #1

declare dso_local i32 @synaptics_passthrough_off(%struct.psm_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
