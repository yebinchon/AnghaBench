; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_scbram_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_pci.c_ahc_scbram_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32 }

@AHC_MULTI_FUNC = common dso_local global i32 0, align 4
@SCBBADDR = common dso_local global i32 0, align 4
@AHC_LSCBS_ENABLED = common dso_local global i32 0, align 4
@DEVCONFIG = common dso_local global i32 0, align 4
@AHC_ULTRA2 = common dso_local global i32 0, align 4
@DSCOMMAND0 = common dso_local global i32 0, align 4
@INTSCBRAMSEL = common dso_local global i32 0, align 4
@USCBSIZE32 = common dso_local global i32 0, align 4
@EXTSCBTIME = common dso_local global i32 0, align 4
@SCBRAMSEL = common dso_local global i32 0, align 4
@SCBSIZE32 = common dso_local global i32 0, align 4
@EXTSCBPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, i32, i32, i32, i32)* @ahc_scbram_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_scbram_config(%struct.ahc_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ahc_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %14 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AHC_MULTI_FUNC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %5
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %21 = load i32, i32* @SCBBADDR, align 4
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %23 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @aic_get_pci_function(i32 %24)
  %26 = call i32 @ahc_outb(%struct.ahc_softc* %20, i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %19, %5
  %28 = load i32, i32* @AHC_LSCBS_ENABLED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %31 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load i32, i32* @AHC_LSCBS_ENABLED, align 4
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %27
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DEVCONFIG, align 4
  %47 = call i32 @aic_pci_read_config(i32 %45, i32 %46, i32 4)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %49 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AHC_ULTRA2, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %86

54:                                               ; preds = %42
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %56 = load i32, i32* @DSCOMMAND0, align 4
  %57 = call i32 @ahc_inb(%struct.ahc_softc* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  %61 = load i32, i32* @INTSCBRAMSEL, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %12, align 4
  br label %69

65:                                               ; preds = %54
  %66 = load i32, i32* @INTSCBRAMSEL, align 4
  %67 = load i32, i32* %12, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %65, %60
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = load i32, i32* @USCBSIZE32, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %12, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %12, align 4
  br label %81

77:                                               ; preds = %69
  %78 = load i32, i32* @USCBSIZE32, align 4
  %79 = load i32, i32* %12, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %83 = load i32, i32* @DSCOMMAND0, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @ahc_outb(%struct.ahc_softc* %82, i32 %83, i32 %84)
  br label %123

86:                                               ; preds = %42
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32, i32* @EXTSCBTIME, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %98

94:                                               ; preds = %86
  %95 = load i32, i32* @EXTSCBTIME, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %94, %89
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* @SCBRAMSEL, align 4
  %103 = xor i32 %102, -1
  %104 = load i32, i32* %11, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @SCBRAMSEL, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %110
  %114 = load i32, i32* @SCBSIZE32, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %11, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %11, align 4
  br label %122

118:                                              ; preds = %110
  %119 = load i32, i32* @SCBSIZE32, align 4
  %120 = load i32, i32* %11, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %118, %113
  br label %123

123:                                              ; preds = %122, %81
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32, i32* @EXTSCBPEN, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  br label %135

130:                                              ; preds = %123
  %131 = load i32, i32* @EXTSCBPEN, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %11, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %11, align 4
  br label %135

135:                                              ; preds = %130, %126
  %136 = load %struct.ahc_softc*, %struct.ahc_softc** %6, align 8
  %137 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DEVCONFIG, align 4
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @aic_pci_write_config(i32 %138, i32 %139, i32 %140, i32 4)
  ret void
}

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @aic_get_pci_function(i32) #1

declare dso_local i32 @aic_pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @aic_pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
