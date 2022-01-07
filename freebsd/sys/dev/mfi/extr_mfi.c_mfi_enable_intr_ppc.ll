; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_enable_intr_ppc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_enable_intr_ppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 }

@MFI_FLAGS_1078 = common dso_local global i32 0, align 4
@MFI_ODCR0 = common dso_local global i32 0, align 4
@MFI_OMSK = common dso_local global i32 0, align 4
@MFI_1078_EIM = common dso_local global i32 0, align 4
@MFI_FLAGS_GEN2 = common dso_local global i32 0, align 4
@MFI_GEN2_EIM = common dso_local global i32 0, align 4
@MFI_FLAGS_SKINNY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mfi_softc*)* @mfi_enable_intr_ppc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mfi_enable_intr_ppc(%struct.mfi_softc* %0) #0 {
  %2 = alloca %struct.mfi_softc*, align 8
  store %struct.mfi_softc* %0, %struct.mfi_softc** %2, align 8
  %3 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %4 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @MFI_FLAGS_1078, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %11 = load i32, i32* @MFI_ODCR0, align 4
  %12 = call i32 @MFI_WRITE4(%struct.mfi_softc* %10, i32 %11, i32 -1)
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %14 = load i32, i32* @MFI_OMSK, align 4
  %15 = load i32, i32* @MFI_1078_EIM, align 4
  %16 = xor i32 %15, -1
  %17 = call i32 @MFI_WRITE4(%struct.mfi_softc* %13, i32 %14, i32 %16)
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MFI_FLAGS_GEN2, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %27 = load i32, i32* @MFI_ODCR0, align 4
  %28 = call i32 @MFI_WRITE4(%struct.mfi_softc* %26, i32 %27, i32 -1)
  %29 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %30 = load i32, i32* @MFI_OMSK, align 4
  %31 = load i32, i32* @MFI_GEN2_EIM, align 4
  %32 = xor i32 %31, -1
  %33 = call i32 @MFI_WRITE4(%struct.mfi_softc* %29, i32 %30, i32 %32)
  br label %46

34:                                               ; preds = %18
  %35 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.mfi_softc*, %struct.mfi_softc** %2, align 8
  %43 = load i32, i32* @MFI_OMSK, align 4
  %44 = call i32 @MFI_WRITE4(%struct.mfi_softc* %42, i32 %43, i32 -2)
  br label %45

45:                                               ; preds = %41, %34
  br label %46

46:                                               ; preds = %45, %25
  br label %47

47:                                               ; preds = %46, %9
  ret void
}

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
