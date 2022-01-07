; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_update_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_hda.c_hda_update_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_softc = type { i32, %struct.pci_devinst* }
%struct.pci_devinst = type { i32 }

@HDAC_INTCTL = common dso_local global i32 0, align 4
@HDAC_RIRBSTS = common dso_local global i32 0, align 4
@HDAC_RIRBSTS_RINTFL = common dso_local global i32 0, align 4
@HDAC_RIRBSTS_RIRBOIS = common dso_local global i32 0, align 4
@HDAC_INTSTS_CIS = common dso_local global i32 0, align 4
@HDAC_WAKEEN = common dso_local global i32 0, align 4
@HDAC_STATESTS = common dso_local global i32 0, align 4
@HDA_IOSS_NO = common dso_local global i32 0, align 4
@HDAC_SDSTS = common dso_local global i32 0, align 4
@HDAC_SDSTS_BCIS = common dso_local global i32 0, align 4
@HDAC_INTSTS_GIS = common dso_local global i32 0, align 4
@HDAC_INTSTS = common dso_local global i32 0, align 4
@HDAC_INTCTL_GIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_softc*)* @hda_update_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hda_update_intr(%struct.hda_softc* %0) #0 {
  %2 = alloca %struct.hda_softc*, align 8
  %3 = alloca %struct.pci_devinst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hda_softc* %0, %struct.hda_softc** %2, align 8
  %12 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %13 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %12, i32 0, i32 1
  %14 = load %struct.pci_devinst*, %struct.pci_devinst** %13, align 8
  store %struct.pci_devinst* %14, %struct.pci_devinst** %3, align 8
  %15 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %16 = load i32, i32* @HDAC_INTCTL, align 4
  %17 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %19 = load i32, i32* @HDAC_RIRBSTS, align 4
  %20 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @HDAC_RIRBSTS_RINTFL, align 4
  %23 = load i32, i32* @HDAC_RIRBSTS_RIRBOIS, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @HDAC_INTSTS_CIS, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %33 = load i32, i32* @HDAC_WAKEEN, align 4
  %34 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %36 = load i32, i32* @HDAC_STATESTS, align 4
  %37 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %35, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %31
  %43 = load i32, i32* @HDAC_INTSTS_CIS, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %31
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %69, %46
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @HDA_IOSS_NO, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %72

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @hda_get_offset_stream(i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @HDAC_SDSTS, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @hda_get_reg_by_offset(%struct.hda_softc* %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @HDAC_SDSTS_BCIS, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load i32, i32* %11, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* %5, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %63, %51
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %47

72:                                               ; preds = %47
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* @HDAC_INTSTS_GIS, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %81 = load i32, i32* @HDAC_INTSTS, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @hda_set_reg_by_offset(%struct.hda_softc* %80, i32 %81, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @HDAC_INTCTL_GIE, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %79
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* @HDAC_INTSTS_GIS, align 4
  %91 = xor i32 %90, -1
  %92 = and i32 %89, %91
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %88
  %97 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %98 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %103 = call i32 @pci_lintr_assert(%struct.pci_devinst* %102)
  %104 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %105 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  br label %106

106:                                              ; preds = %101, %96
  br label %118

107:                                              ; preds = %88, %79
  %108 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %109 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %107
  %113 = load %struct.pci_devinst*, %struct.pci_devinst** %3, align 8
  %114 = call i32 @pci_lintr_deassert(%struct.pci_devinst* %113)
  %115 = load %struct.hda_softc*, %struct.hda_softc** %2, align 8
  %116 = getelementptr inbounds %struct.hda_softc, %struct.hda_softc* %115, i32 0, i32 0
  store i32 0, i32* %116, align 8
  br label %117

117:                                              ; preds = %112, %107
  br label %118

118:                                              ; preds = %117, %106
  ret void
}

declare dso_local i32 @hda_get_reg_by_offset(%struct.hda_softc*, i32) #1

declare dso_local i32 @hda_get_offset_stream(i32) #1

declare dso_local i32 @hda_set_reg_by_offset(%struct.hda_softc*, i32, i32) #1

declare dso_local i32 @pci_lintr_assert(%struct.pci_devinst*) #1

declare dso_local i32 @pci_lintr_deassert(%struct.pci_devinst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
