; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rl/extr_if_rl.c_rl_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFCAP_WOL = common dso_local global i32 0, align 4
@PCIY_PMG = common dso_local global i32 0, align 4
@RL_EECMD = common dso_local global i32 0, align 4
@RL_EE_MODE = common dso_local global i32 0, align 4
@RL_CFG1_PME = common dso_local global i32 0, align 4
@RL_CFG3_WOL_LINK = common dso_local global i32 0, align 4
@RL_CFG3_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@RL_CFG5_WOL_BCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_MCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_UCAST = common dso_local global i32 0, align 4
@RL_CFG5_WOL_LANWAKE = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@RL_EEMODE_OFF = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @rl_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rl_setwol(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %7 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %8 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %7)
  %9 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 4
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFCAP_WOL, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %184

19:                                               ; preds = %1
  %20 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PCIY_PMG, align 4
  %24 = call i64 @pci_find_cap(i32 %22, i32 %23, i32* %4)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %184

27:                                               ; preds = %19
  %28 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %29 = load i32, i32* @RL_EECMD, align 4
  %30 = load i32, i32* @RL_EE_MODE, align 4
  %31 = call i32 @CSR_WRITE_1(%struct.rl_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %33 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %34 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @CSR_READ_1(%struct.rl_softc* %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @RL_CFG1_PME, align 4
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @IFCAP_WOL, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %27
  %48 = load i32, i32* @RL_CFG1_PME, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %47, %27
  %52 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %53 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %54 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @CSR_WRITE_1(%struct.rl_softc* %52, i32 %55, i32 %56)
  %58 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %59 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %60 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @CSR_READ_1(%struct.rl_softc* %58, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @RL_CFG3_WOL_LINK, align 4
  %64 = load i32, i32* @RL_CFG3_WOL_MAGIC, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %6, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %70 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %51
  %76 = load i32, i32* @RL_CFG3_WOL_MAGIC, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %75, %51
  %80 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %81 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %82 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @CSR_WRITE_1(%struct.rl_softc* %80, i32 %83, i32 %84)
  %86 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %87 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %88 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @CSR_READ_1(%struct.rl_softc* %86, i32 %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @RL_CFG5_WOL_BCAST, align 4
  %92 = load i32, i32* @RL_CFG5_WOL_MCAST, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @RL_CFG5_WOL_UCAST, align 4
  %95 = or i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* @RL_CFG5_WOL_LANWAKE, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %104 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %79
  %110 = load i32, i32* @RL_CFG5_WOL_UCAST, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %109, %79
  %114 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %115 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* @RL_CFG5_WOL_MCAST, align 4
  %122 = load i32, i32* @RL_CFG5_WOL_BCAST, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %120, %113
  %127 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %128 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @IFCAP_WOL, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* @RL_CFG5_WOL_LANWAKE, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %133, %126
  %138 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %139 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %140 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @CSR_WRITE_1(%struct.rl_softc* %138, i32 %141, i32 %142)
  %144 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %145 = load i32, i32* @RL_EECMD, align 4
  %146 = load i32, i32* @RL_EEMODE_OFF, align 4
  %147 = call i32 @CSR_WRITE_1(%struct.rl_softc* %144, i32 %145, i32 %146)
  %148 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %149 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %154 = add nsw i64 %152, %153
  %155 = call i32 @pci_read_config(i32 %150, i64 %154, i32 2)
  store i32 %155, i32* %5, align 4
  %156 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %157 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %5, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %5, align 4
  %162 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IFCAP_WOL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %137
  %169 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %170 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* %5, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %5, align 4
  br label %174

174:                                              ; preds = %168, %137
  %175 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %176 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %4, align 4
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %181 = add nsw i64 %179, %180
  %182 = load i32, i32* %5, align 4
  %183 = call i32 @pci_write_config(i32 %177, i64 %181, i32 %182, i32 2)
  br label %184

184:                                              ; preds = %174, %26, %18
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
