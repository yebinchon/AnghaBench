; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7621_setup_ssc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pcie.c_mtk_pcie_phy_mt7621_setup_ssc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_pci_softc = type { i32 }

@SYSCTL_SYSCFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_pci_softc*, i32)* @mtk_pcie_phy_mt7621_setup_ssc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_pcie_phy_mt7621_setup_ssc(%struct.mtk_pci_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_pci_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_pci_softc* %0, %struct.mtk_pci_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @SYSCTL_SYSCFG, align 4
  %7 = call i32 @mtk_sysctl_get(i32 %6)
  %8 = ashr i32 %7, 6
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 7
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = add nsw i32 %12, 1024
  %14 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %11, i32 %13, i32 8, i32 1, i32 1)
  %15 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = add nsw i32 %16, 1024
  %18 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %15, i32 %17, i32 9, i32 2, i32 0)
  %19 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 0
  %22 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %19, i32 %21, i32 4, i32 1, i32 1)
  %23 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 256
  %26 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %23, i32 %25, i32 4, i32 1, i32 1)
  %27 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, 0
  %30 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %27, i32 %29, i32 5, i32 1, i32 0)
  %31 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 256
  %34 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %31, i32 %33, i32 5, i32 1, i32 0)
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 5
  br i1 %36, label %37, label %53

37:                                               ; preds = %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp sge i32 %38, 3
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1168
  %44 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %41, i32 %43, i32 6, i32 2, i32 1)
  %45 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1192
  %48 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %45, i32 %47, i32 0, i32 12, i32 26)
  %49 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1192
  %52 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %49, i32 %51, i32 16, i32 12, i32 26)
  br label %99

53:                                               ; preds = %37, %2
  %54 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1168
  %57 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %54, i32 %56, i32 6, i32 2, i32 0)
  %58 = load i32, i32* %5, align 4
  %59 = icmp sge i32 %58, 6
  br i1 %59, label %60, label %89

60:                                               ; preds = %53
  %61 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1212
  %64 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %61, i32 %63, i32 4, i32 2, i32 1)
  %65 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1180
  %68 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %65, i32 %67, i32 0, i32 31, i32 402653184)
  %69 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1188
  %72 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %69, i32 %71, i32 0, i32 16, i32 397)
  %73 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1192
  %76 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %73, i32 %75, i32 0, i32 12, i32 74)
  %77 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1192
  %80 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %77, i32 %79, i32 16, i32 12, i32 74)
  %81 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1192
  %84 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %81, i32 %83, i32 0, i32 12, i32 17)
  %85 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1192
  %88 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %85, i32 %87, i32 16, i32 12, i32 17)
  br label %98

89:                                               ; preds = %53
  %90 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1192
  %93 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %90, i32 %92, i32 0, i32 12, i32 26)
  %94 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1192
  %97 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %94, i32 %96, i32 16, i32 12, i32 26)
  br label %98

98:                                               ; preds = %89, %60
  br label %99

99:                                               ; preds = %98, %40
  %100 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1184
  %103 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %100, i32 %102, i32 5, i32 1, i32 1)
  %104 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1168
  %107 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %104, i32 %106, i32 22, i32 2, i32 2)
  %108 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1168
  %111 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %108, i32 %110, i32 18, i32 4, i32 6)
  %112 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1168
  %115 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %112, i32 %114, i32 12, i32 4, i32 2)
  %116 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %117 = load i32, i32* %4, align 4
  %118 = add nsw i32 %117, 1168
  %119 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %116, i32 %118, i32 8, i32 4, i32 1)
  %120 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1196
  %123 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %120, i32 %122, i32 16, i32 3, i32 0)
  %124 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %125, 1168
  %127 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %124, i32 %126, i32 1, i32 3, i32 2)
  %128 = load i32, i32* %5, align 4
  %129 = icmp sle i32 %128, 5
  br i1 %129, label %130, label %142

130:                                              ; preds = %99
  %131 = load i32, i32* %5, align 4
  %132 = icmp sge i32 %131, 3
  br i1 %132, label %133, label %142

133:                                              ; preds = %130
  %134 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = add nsw i32 %135, 1044
  %137 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %134, i32 %136, i32 6, i32 2, i32 1)
  %138 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1044
  %141 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %138, i32 %140, i32 5, i32 1, i32 1)
  br label %142

142:                                              ; preds = %133, %130, %99
  %143 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %144 = load i32, i32* %4, align 4
  %145 = add nsw i32 %144, 1044
  %146 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %143, i32 %145, i32 28, i32 2, i32 1)
  %147 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %148 = load i32, i32* %4, align 4
  %149 = add nsw i32 %148, 64
  %150 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %147, i32 %149, i32 17, i32 4, i32 7)
  %151 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %152 = load i32, i32* %4, align 4
  %153 = add nsw i32 %152, 64
  %154 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %151, i32 %153, i32 16, i32 1, i32 1)
  %155 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %156 = load i32, i32* %4, align 4
  %157 = add nsw i32 %156, 320
  %158 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %155, i32 %157, i32 17, i32 4, i32 7)
  %159 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %160 = load i32, i32* %4, align 4
  %161 = add nsw i32 %160, 320
  %162 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %159, i32 %161, i32 16, i32 1, i32 1)
  %163 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %164 = load i32, i32* %4, align 4
  %165 = add nsw i32 %164, 0
  %166 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %163, i32 %165, i32 5, i32 1, i32 1)
  %167 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %168 = load i32, i32* %4, align 4
  %169 = add nsw i32 %168, 256
  %170 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %167, i32 %169, i32 5, i32 1, i32 1)
  %171 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %172 = load i32, i32* %4, align 4
  %173 = add nsw i32 %172, 0
  %174 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %171, i32 %173, i32 4, i32 1, i32 0)
  %175 = load %struct.mtk_pci_softc*, %struct.mtk_pci_softc** %3, align 8
  %176 = load i32, i32* %4, align 4
  %177 = add nsw i32 %176, 256
  %178 = call i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc* %175, i32 %177, i32 4, i32 1, i32 0)
  ret void
}

declare dso_local i32 @mtk_sysctl_get(i32) #1

declare dso_local i32 @mtk_pcie_phy_set(%struct.mtk_pci_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
