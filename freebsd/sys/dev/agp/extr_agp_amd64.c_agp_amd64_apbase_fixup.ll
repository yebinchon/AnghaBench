; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_apbase_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_amd64.c_agp_amd64_apbase_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_amd64_softc = type { i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AGP_AMD64_APBASE_MASK = common dso_local global i32 0, align 4
@AGP_AMD64_APBASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @agp_amd64_apbase_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agp_amd64_apbase_fixup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.agp_amd64_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.agp_amd64_softc* @device_get_softc(i32 %6)
  store %struct.agp_amd64_softc* %7, %struct.agp_amd64_softc** %3, align 8
  %8 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %9 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @rman_get_start(i32 %11)
  %13 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %14 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %16 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = ashr i32 %17, 25
  %19 = load i32, i32* @AGP_AMD64_APBASE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %24 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %41

27:                                               ; preds = %21
  %28 = load %struct.agp_amd64_softc*, %struct.agp_amd64_softc** %3, align 8
  %29 = getelementptr inbounds %struct.agp_amd64_softc, %struct.agp_amd64_softc* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AGP_AMD64_APBASE, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @pci_cfgregwrite(i32 0, i32 %34, i32 3, i32 %35, i32 %36, i32 4)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %21

41:                                               ; preds = %21
  ret void
}

declare dso_local %struct.agp_amd64_softc* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local i32 @pci_cfgregwrite(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
