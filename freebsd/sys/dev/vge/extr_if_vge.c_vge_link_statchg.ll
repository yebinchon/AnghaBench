; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_link_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_link_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }

@VGE_PHYSTS0 = common dso_local global i32 0, align 4
@VGE_PHYSTS_RESETSTS = common dso_local global i32 0, align 4
@VGE_PHYSTS_LINK = common dso_local global i32 0, align 4
@VGE_FLAG_LINK = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@VGE_CRC2 = common dso_local global i32 0, align 4
@VGE_CR2_FDX_TXFLOWCTL_ENABLE = common dso_local global i32 0, align 4
@VGE_CR2_FDX_RXFLOWCTL_ENABLE = common dso_local global i32 0, align 4
@VGE_PHYSTS_FDX = common dso_local global i32 0, align 4
@VGE_PHYSTS_TXFLOWCAP = common dso_local global i32 0, align 4
@VGE_CRS2 = common dso_local global i32 0, align 4
@VGE_PHYSTS_RXFLOWCAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vge_link_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_link_statchg(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vge_softc*
  store %struct.vge_softc* %7, %struct.vge_softc** %3, align 8
  %8 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %8, i32 0, i32 0
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  %11 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %12 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %11)
  %13 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %14 = load i32, i32* @VGE_PHYSTS0, align 4
  %15 = call i32 @CSR_READ_1(%struct.vge_softc* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @VGE_PHYSTS_RESETSTS, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %89

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @VGE_PHYSTS_LINK, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %20
  %26 = load i32, i32* @VGE_FLAG_LINK, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %29 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %33 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %32, i32 0, i32 0
  %34 = load %struct.ifnet*, %struct.ifnet** %33, align 8
  %35 = load i32, i32* @LINK_STATE_DOWN, align 4
  %36 = call i32 @if_link_state_change(%struct.ifnet* %34, i32 %35)
  br label %88

37:                                               ; preds = %20
  %38 = load i32, i32* @VGE_FLAG_LINK, align 4
  %39 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %40 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %43, i32 0, i32 0
  %45 = load %struct.ifnet*, %struct.ifnet** %44, align 8
  %46 = load i32, i32* @LINK_STATE_UP, align 4
  %47 = call i32 @if_link_state_change(%struct.ifnet* %45, i32 %46)
  %48 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %49 = load i32, i32* @VGE_CRC2, align 4
  %50 = load i32, i32* @VGE_CR2_FDX_TXFLOWCTL_ENABLE, align 4
  %51 = load i32, i32* @VGE_CR2_FDX_RXFLOWCTL_ENABLE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @CSR_WRITE_1(%struct.vge_softc* %48, i32 %49, i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @VGE_PHYSTS_FDX, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %79

58:                                               ; preds = %37
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @VGE_PHYSTS_TXFLOWCAP, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %65 = load i32, i32* @VGE_CRS2, align 4
  %66 = load i32, i32* @VGE_CR2_FDX_TXFLOWCTL_ENABLE, align 4
  %67 = call i32 @CSR_WRITE_1(%struct.vge_softc* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @VGE_PHYSTS_RXFLOWCAP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %75 = load i32, i32* @VGE_CRS2, align 4
  %76 = load i32, i32* @VGE_CR2_FDX_RXFLOWCTL_ENABLE, align 4
  %77 = call i32 @CSR_WRITE_1(%struct.vge_softc* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78, %37
  %80 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %81 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %80, i32 0, i32 0
  %82 = call i32 @IFQ_DRV_IS_EMPTY(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %79
  %85 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %86 = call i32 @vge_start_locked(%struct.ifnet* %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %25
  br label %89

89:                                               ; preds = %88, %1
  %90 = load %struct.vge_softc*, %struct.vge_softc** %3, align 8
  %91 = call i32 @vge_miipoll_start(%struct.vge_softc* %90)
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i32 @if_link_state_change(%struct.ifnet*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @vge_start_locked(%struct.ifnet*) #1

declare dso_local i32 @vge_miipoll_start(%struct.vge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
