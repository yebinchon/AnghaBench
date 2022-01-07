; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_config_descriptor = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"reset failed (ignored)\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@AXE_FLAG_178 = common dso_local global i32 0, align 4
@AXE_FLAG_772 = common dso_local global i32 0, align 4
@AXE_FLAG_772A = common dso_local global i32 0, align 4
@AXE_FLAG_772B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.axe_softc*)* @axe_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_reset(%struct.axe_softc* %0) #0 {
  %2 = alloca %struct.axe_softc*, align 8
  %3 = alloca %struct.usb_config_descriptor*, align 8
  %4 = alloca i64, align 8
  store %struct.axe_softc* %0, %struct.axe_softc** %2, align 8
  %5 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %6 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32 %8)
  store %struct.usb_config_descriptor* %9, %struct.usb_config_descriptor** %3, align 8
  %10 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %15 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %14, i32 0, i32 2
  %16 = load %struct.usb_config_descriptor*, %struct.usb_config_descriptor** %3, align 8
  %17 = getelementptr inbounds %struct.usb_config_descriptor, %struct.usb_config_descriptor* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @usbd_req_set_config(i32 %13, i32* %15, i32 %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 @DPRINTF(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %26 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %25, i32 0, i32 1
  %27 = load i32, i32* @hz, align 4
  %28 = sdiv i32 %27, 100
  %29 = call i32 @uether_pause(%struct.TYPE_2__* %26, i32 %28)
  %30 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %31 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AXE_FLAG_178, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %24
  %37 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %38 = call i32 @axe_ax88178_init(%struct.axe_softc* %37)
  br label %72

39:                                               ; preds = %24
  %40 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %41 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @AXE_FLAG_772, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %48 = call i32 @axe_ax88772_init(%struct.axe_softc* %47)
  br label %71

49:                                               ; preds = %39
  %50 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %51 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AXE_FLAG_772A, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %58 = call i32 @axe_ax88772a_init(%struct.axe_softc* %57)
  br label %70

59:                                               ; preds = %49
  %60 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %61 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AXE_FLAG_772B, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.axe_softc*, %struct.axe_softc** %2, align 8
  %68 = call i32 @axe_ax88772b_init(%struct.axe_softc* %67)
  br label %69

69:                                               ; preds = %66, %59
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %46
  br label %72

72:                                               ; preds = %71, %36
  ret void
}

declare dso_local %struct.usb_config_descriptor* @usbd_get_config_descriptor(i32) #1

declare dso_local i64 @usbd_req_set_config(i32, i32*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @uether_pause(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @axe_ax88178_init(%struct.axe_softc*) #1

declare dso_local i32 @axe_ax88772_init(%struct.axe_softc*) #1

declare dso_local i32 @axe_ax88772a_init(%struct.axe_softc*) #1

declare dso_local i32 @axe_ax88772b_init(%struct.axe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
