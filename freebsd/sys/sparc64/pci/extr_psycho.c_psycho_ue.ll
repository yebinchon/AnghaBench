; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_ue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psycho_softc = type { i32, i32 }

@PSR_UE_AFA = common dso_local global i32 0, align 4
@PSR_UE_AFS = common dso_local global i32 0, align 4
@UEAFSR_P_DTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"%s: uncorrectable DMA error AFAR %#lx AFSR %#lx\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @psycho_ue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psycho_ue(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.psycho_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.psycho_softc*
  store %struct.psycho_softc* %7, %struct.psycho_softc** %3, align 8
  %8 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %9 = load i32, i32* @PSR_UE_AFA, align 4
  %10 = call i32 @PSYCHO_READ8(%struct.psycho_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %12 = load i32, i32* @PSR_UE_AFS, align 4
  %13 = call i32 @PSYCHO_READ8(%struct.psycho_softc* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @UEAFSR_P_DTE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %20 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @iommu_decode_fault(i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.psycho_softc*, %struct.psycho_softc** %3, align 8
  %26 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_get_nameunit(i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @panic(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %32
}

declare dso_local i32 @PSYCHO_READ8(%struct.psycho_softc*, i32) #1

declare dso_local i32 @iommu_decode_fault(i32, i32) #1

declare dso_local i32 @panic(i8*, i32, i32, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
