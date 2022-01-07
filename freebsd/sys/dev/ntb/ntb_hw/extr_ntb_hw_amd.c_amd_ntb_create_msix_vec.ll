; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_create_msix_vec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_create_msix_vec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.amd_ntb_softc* }

@M_AMD_NTB = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amd_ntb_softc*, i32)* @amd_ntb_create_msix_vec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_create_msix_vec(%struct.amd_ntb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.amd_ntb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.amd_ntb_softc* %0, %struct.amd_ntb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 16
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @M_AMD_NTB, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.TYPE_2__* @malloc(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %16 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %15, i32 0, i32 0
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %16, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %38, %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %41

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 8
  %30 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %31 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %3, align 8
  %32 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store %struct.amd_ntb_softc* %30, %struct.amd_ntb_softc** %37, align 8
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %17

41:                                               ; preds = %17
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
