; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_check_clear_intr_ppc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_check_clear_intr_ppc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 }

@MFI_OSTS = common dso_local global i32 0, align 4
@MFI_FLAGS_1078 = common dso_local global i32 0, align 4
@MFI_1078_RM = common dso_local global i32 0, align 4
@MFI_FLAGS_GEN2 = common dso_local global i32 0, align 4
@MFI_GEN2_RM = common dso_local global i32 0, align 4
@MFI_FLAGS_SKINNY = common dso_local global i32 0, align 4
@MFI_SKINNY_RM = common dso_local global i32 0, align 4
@MFI_ODCR0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mfi_softc*)* @mfi_check_clear_intr_ppc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mfi_check_clear_intr_ppc(%struct.mfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  %5 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %6 = load i32, i32* @MFI_OSTS, align 4
  %7 = call i32 @MFI_READ4(%struct.mfi_softc* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MFI_FLAGS_1078, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MFI_1078_RM, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14
  store i32 1, i32* %2, align 4
  br label %69

20:                                               ; preds = %14
  br label %51

21:                                               ; preds = %1
  %22 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MFI_FLAGS_GEN2, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @MFI_GEN2_RM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  store i32 1, i32* %2, align 4
  br label %69

34:                                               ; preds = %28
  br label %50

35:                                               ; preds = %21
  %36 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @MFI_SKINNY_RM, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %69

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %35
  br label %50

50:                                               ; preds = %49, %34
  br label %51

51:                                               ; preds = %50, %20
  %52 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %60 = load i32, i32* @MFI_OSTS, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @MFI_WRITE4(%struct.mfi_softc* %59, i32 %60, i32 %61)
  br label %68

63:                                               ; preds = %51
  %64 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %65 = load i32, i32* @MFI_ODCR0, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @MFI_WRITE4(%struct.mfi_softc* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %47, %33, %19
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @MFI_READ4(%struct.mfi_softc*, i32) #1

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
