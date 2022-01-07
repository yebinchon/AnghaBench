; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2mouse.c_ps2mouse_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_ps2mouse.c_ps2mouse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps2mouse_softc = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@PS2M_STS_LEFT_BUTTON = common dso_local global i32 0, align 4
@PS2M_STS_RIGHT_BUTTON = common dso_local global i32 0, align 4
@PS2M_STS_MID_BUTTON = common dso_local global i32 0, align 4
@PS2M_STS_ENABLE_DEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @ps2mouse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps2mouse_event(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ps2mouse_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load i8*, i8** %8, align 8
  %11 = bitcast i8* %10 to %struct.ps2mouse_softc*
  store %struct.ps2mouse_softc* %11, %struct.ps2mouse_softc** %9, align 8
  %12 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %13 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %12, i32 0, i32 3
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  %15 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @movement_update(%struct.ps2mouse_softc* %15, i32 %16, i32 %17)
  %19 = load i32, i32* @PS2M_STS_LEFT_BUTTON, align 4
  %20 = load i32, i32* @PS2M_STS_RIGHT_BUTTON, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PS2M_STS_MID_BUTTON, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %26 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load i32, i32* %5, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %4
  %33 = load i32, i32* @PS2M_STS_LEFT_BUTTON, align 4
  %34 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %35 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %4
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 2
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @PS2M_STS_MID_BUTTON, align 4
  %44 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %45 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %38
  %49 = load i32, i32* %5, align 4
  %50 = and i32 %49, 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %48
  %53 = load i32, i32* @PS2M_STS_RIGHT_BUTTON, align 4
  %54 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %55 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %52, %48
  %59 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %60 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PS2M_STS_ENABLE_DEV, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %58
  %66 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %67 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %72 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %71, i32 0, i32 3
  %73 = call i32 @pthread_mutex_unlock(i32* %72)
  br label %90

74:                                               ; preds = %65
  %75 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %76 = call i32 @movement_get(%struct.ps2mouse_softc* %75)
  %77 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %78 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %77, i32 0, i32 3
  %79 = call i32 @pthread_mutex_unlock(i32* %78)
  %80 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %81 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %74
  %86 = load %struct.ps2mouse_softc*, %struct.ps2mouse_softc** %9, align 8
  %87 = getelementptr inbounds %struct.ps2mouse_softc, %struct.ps2mouse_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @atkbdc_event(i32 %88, i32 0)
  br label %90

90:                                               ; preds = %70, %85, %74
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @movement_update(%struct.ps2mouse_softc*, i32, i32) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @movement_get(%struct.ps2mouse_softc*) #1

declare dso_local i32 @atkbdc_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
