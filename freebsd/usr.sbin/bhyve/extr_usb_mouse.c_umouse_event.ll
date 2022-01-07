; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_usb_mouse.c_umouse_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_usb_mouse.c_umouse_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umouse_softc = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32)* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.bhyvegc_image = type { i32, i32 }

@MOUSE_MAX_X = common dso_local global i32 0, align 4
@MOUSE_MAX_Y = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@UMOUSE_INTR_ENDPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i8*)* @umouse_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umouse_event(i32 %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.umouse_softc*, align 8
  %10 = alloca %struct.bhyvegc_image*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %11 = call %struct.bhyvegc_image* (...) @console_get_image()
  store %struct.bhyvegc_image* %11, %struct.bhyvegc_image** %10, align 8
  %12 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %10, align 8
  %13 = icmp eq %struct.bhyvegc_image* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %116

15:                                               ; preds = %4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.umouse_softc*
  store %struct.umouse_softc* %17, %struct.umouse_softc** %9, align 8
  %18 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %19 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %18, i32 0, i32 3
  %20 = call i32 @pthread_mutex_lock(i32* %19)
  %21 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %22 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  %24 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %25 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %15
  %31 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %32 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, 1
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %30, %15
  %37 = load i32, i32* %5, align 4
  %38 = and i32 %37, 2
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %42 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, 4
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %36
  %47 = load i32, i32* %5, align 4
  %48 = and i32 %47, 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %52 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 2
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %46
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %62 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 1, i32* %63, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i32, i32* %5, align 4
  %66 = and i32 %65, 16
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %70 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i32 -1, i32* %71, align 4
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i32, i32* @MOUSE_MAX_X, align 4
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 %73, %74
  %76 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %10, align 8
  %77 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sdiv i32 %75, %78
  %80 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %81 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  store i32 %79, i32* %82, align 4
  %83 = load i32, i32* @MOUSE_MAX_Y, align 4
  %84 = load i32, i32* %7, align 4
  %85 = mul nsw i32 %83, %84
  %86 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %10, align 8
  %87 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = sdiv i32 %85, %88
  %90 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %91 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  store i32 %89, i32* %92, align 4
  %93 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %94 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %96 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %95, i32 0, i32 3
  %97 = call i32 @pthread_mutex_unlock(i32* %96)
  %98 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %99 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %98, i32 0, i32 1
  %100 = call i32 @pthread_mutex_lock(i32* %99)
  %101 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %102 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %104, align 8
  %106 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %107 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %106, i32 0, i32 2
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* @UE_DIR_IN, align 4
  %110 = load i32, i32* @UMOUSE_INTR_ENDPT, align 4
  %111 = or i32 %109, %110
  %112 = call i32 %105(%struct.TYPE_4__* %108, i32 %111)
  %113 = load %struct.umouse_softc*, %struct.umouse_softc** %9, align 8
  %114 = getelementptr inbounds %struct.umouse_softc, %struct.umouse_softc* %113, i32 0, i32 1
  %115 = call i32 @pthread_mutex_unlock(i32* %114)
  br label %116

116:                                              ; preds = %72, %14
  ret void
}

declare dso_local %struct.bhyvegc_image* @console_get_image(...) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
