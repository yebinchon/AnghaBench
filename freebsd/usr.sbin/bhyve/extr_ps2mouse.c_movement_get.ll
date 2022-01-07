; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2mouse.c_movement_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2mouse.c_movement_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2mouse_softc = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PS2M_DATA_AONE = common dso_local global i32 0, align 4
@PS2M_DATA_LEFT_BUTTON = common dso_local global i32 0, align 4
@PS2M_DATA_RIGHT_BUTTON = common dso_local global i32 0, align 4
@PS2M_DATA_MID_BUTTON = common dso_local global i32 0, align 4
@PS2M_DATA_X_OFLOW = common dso_local global i32 0, align 4
@PS2M_DATA_X_SIGN = common dso_local global i32 0, align 4
@PS2M_DATA_Y_OFLOW = common dso_local global i32 0, align 4
@PS2M_DATA_Y_SIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ps2mouse_softc*)* @movement_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @movement_get(%struct.ps2mouse_softc* %0) #0 {
  %2 = alloca %struct.ps2mouse_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ps2mouse_softc* %0, %struct.ps2mouse_softc** %2, align 8
  %6 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %6, i32 0, i32 4
  %8 = call i32 @pthread_mutex_isowned_np(i32* %7)
  %9 = call i32 @assert(i32 %8)
  %10 = load i32, i32* @PS2M_DATA_AONE, align 4
  store i32 %10, i32* %3, align 4
  %11 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %12 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PS2M_DATA_LEFT_BUTTON, align 4
  %15 = load i32, i32* @PS2M_DATA_RIGHT_BUTTON, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PS2M_DATA_MID_BUTTON, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %13, %18
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %23 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %1
  %27 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 255
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @PS2M_DATA_X_OFLOW, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  store i32 255, i32* %4, align 4
  br label %39

35:                                               ; preds = %26
  %36 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %37 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %35, %31
  br label %57

40:                                               ; preds = %1
  %41 = load i32, i32* @PS2M_DATA_X_SIGN, align 4
  %42 = load i32, i32* %3, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %45 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, -255
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load i32, i32* @PS2M_DATA_X_OFLOW, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  store i32 255, i32* %4, align 4
  br label %56

52:                                               ; preds = %40
  %53 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %54 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %39
  %58 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %57
  %65 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %66 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp sgt i32 %67, 255
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* @PS2M_DATA_Y_OFLOW, align 4
  %71 = load i32, i32* %3, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %3, align 4
  store i32 255, i32* %5, align 4
  br label %77

73:                                               ; preds = %64
  %74 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %75 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %69
  br label %95

78:                                               ; preds = %57
  %79 = load i32, i32* @PS2M_DATA_Y_SIGN, align 4
  %80 = load i32, i32* %3, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %3, align 4
  %82 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %83 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, -255
  br i1 %85, label %86, label %90

86:                                               ; preds = %78
  %87 = load i32, i32* @PS2M_DATA_Y_OFLOW, align 4
  %88 = load i32, i32* %3, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %3, align 4
  store i32 255, i32* %5, align 4
  br label %94

90:                                               ; preds = %78
  %91 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %86
  br label %95

95:                                               ; preds = %94, %77
  %96 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %97 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %96, i32 0, i32 2
  store i32 0, i32* %97, align 4
  %98 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %99 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 3
  %107 = icmp slt i32 %101, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %95
  %109 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %110 = load i32, i32* %3, align 4
  %111 = call i32 @fifo_put(%struct.ps2mouse_softc* %109, i32 %110)
  %112 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %113 = load i32, i32* %4, align 4
  %114 = call i32 @fifo_put(%struct.ps2mouse_softc* %112, i32 %113)
  %115 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %2, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @fifo_put(%struct.ps2mouse_softc* %115, i32 %116)
  br label %118

118:                                              ; preds = %108, %95
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pthread_mutex_isowned_np(i32*) #1

declare dso_local i32 @fifo_put(%struct.ps2mouse_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
