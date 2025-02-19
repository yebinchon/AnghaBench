; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_set_tags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_set_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.ahd_devinfo = type { i32, i32, i32 }

@AC_TRANSFER_NEG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahd_set_tags(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i32 %2) #0 {
  %4 = alloca %struct.ahd_softc*, align 8
  %5 = alloca %struct.ahd_devinfo*, align 8
  %6 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %4, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %8 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @ahd_platform_set_tags(%struct.ahd_softc* %7, %struct.ahd_devinfo* %8, i32 %9)
  %11 = load %struct.ahd_softc*, %struct.ahd_softc** %4, align 8
  %12 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %13 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %16 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %5, align 8
  %19 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @AC_TRANSFER_NEG, align 4
  %22 = call i32 @ahd_send_async(%struct.ahd_softc* %11, i32 %14, i32 %17, i32 %20, i32 %21, i32* %6)
  ret void
}

declare dso_local i32 @ahd_platform_set_tags(%struct.ahd_softc*, %struct.ahd_devinfo*, i32) #1

declare dso_local i32 @ahd_send_async(%struct.ahd_softc*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
