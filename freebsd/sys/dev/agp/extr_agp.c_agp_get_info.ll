; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_get_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_info = type { i32, i32, i32, i32, i32 }
%struct.agp_softc = type { i32, i32, i32* }

@AGP_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @agp_get_info(i32 %0, %struct.agp_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.agp_info*, align 8
  %5 = alloca %struct.agp_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.agp_info* %1, %struct.agp_info** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.agp_softc* @device_get_softc(i32 %6)
  store %struct.agp_softc* %7, %struct.agp_softc** %5, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @agp_find_caps(i32 %9)
  %11 = load i64, i64* @AGP_STATUS, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @pci_read_config(i32 %8, i64 %12, i32 4)
  %14 = load %struct.agp_info*, %struct.agp_info** %4, align 8
  %15 = getelementptr inbounds %struct.agp_info, %struct.agp_info* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.agp_softc*, %struct.agp_softc** %5, align 8
  %17 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %2
  %21 = load %struct.agp_softc*, %struct.agp_softc** %5, align 8
  %22 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @rman_get_start(i32* %23)
  %25 = load %struct.agp_info*, %struct.agp_info** %4, align 8
  %26 = getelementptr inbounds %struct.agp_info, %struct.agp_info* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.agp_info*, %struct.agp_info** %4, align 8
  %29 = getelementptr inbounds %struct.agp_info, %struct.agp_info* %28, i32 0, i32 3
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @AGP_GET_APERTURE(i32 %31)
  %33 = load %struct.agp_info*, %struct.agp_info** %4, align 8
  %34 = getelementptr inbounds %struct.agp_info, %struct.agp_info* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.agp_softc*, %struct.agp_softc** %5, align 8
  %36 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.agp_info*, %struct.agp_info** %4, align 8
  %39 = getelementptr inbounds %struct.agp_info, %struct.agp_info* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.agp_softc*, %struct.agp_softc** %5, align 8
  %41 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.agp_info*, %struct.agp_info** %4, align 8
  %44 = getelementptr inbounds %struct.agp_info, %struct.agp_info* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @agp_find_caps(i32) #1

declare dso_local i32 @rman_get_start(i32*) #1

declare dso_local i32 @AGP_GET_APERTURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
