; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_setwol.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/re/extr_if_re.c_re_setwol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rl_softc = type { i32, i32, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@PCIY_PMG = common dso_local global i32 0, align 4
@RL_FLAG_MACSLEEP = common dso_local global i32 0, align 4
@RL_MACDBG = common dso_local global i32 0, align 4
@RL_GPIO = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@RL_FLAG_8168G_PLUS = common dso_local global i32 0, align 4
@RL_MISC = common dso_local global i32 0, align 4
@RL_FLAG_WOL_MANLINK = common dso_local global i32 0, align 4
@RL_FLAG_WOLRXENB = common dso_local global i32 0, align 4
@RL_COMMAND = common dso_local global i32 0, align 4
@RL_CMD_RX_ENB = common dso_local global i32 0, align 4
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
@RL_FLAG_PHYWAKE_PM = common dso_local global i32 0, align 4
@RL_PMCH = common dso_local global i32 0, align 4
@PCIR_POWER_STATUS = common dso_local global i64 0, align 8
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rl_softc*)* @re_setwol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_setwol(%struct.rl_softc* %0) #0 {
  %2 = alloca %struct.rl_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rl_softc* %0, %struct.rl_softc** %2, align 8
  %7 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %8 = call i32 @RL_LOCK_ASSERT(%struct.rl_softc* %7)
  %9 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PCIY_PMG, align 4
  %13 = call i64 @pci_find_cap(i32 %11, i32 %12, i32* %4)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %265

16:                                               ; preds = %1
  %17 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %18 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %17, i32 0, i32 5
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %3, align 8
  %20 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %21 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RL_FLAG_MACSLEEP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %16
  %27 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %28 = load i32, i32* @RL_MACDBG, align 4
  %29 = call i32 @CSR_READ_1(%struct.rl_softc* %27, i32 %28)
  %30 = and i32 %29, 128
  %31 = icmp eq i32 %30, 128
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %34 = load i32, i32* @RL_GPIO, align 4
  %35 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %36 = load i32, i32* @RL_GPIO, align 4
  %37 = call i32 @CSR_READ_1(%struct.rl_softc* %35, i32 %36)
  %38 = and i32 %37, -2
  %39 = call i32 @CSR_WRITE_1(%struct.rl_softc* %33, i32 %34, i32 %38)
  br label %40

40:                                               ; preds = %32, %26
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %43 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IFCAP_WOL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %88

48:                                               ; preds = %41
  %49 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %50 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @RL_FLAG_8168G_PLUS, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %57 = load i32, i32* @RL_MISC, align 4
  %58 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %59 = load i32, i32* @RL_MISC, align 4
  %60 = call i32 @CSR_READ_4(%struct.rl_softc* %58, i32 %59)
  %61 = and i32 %60, -524289
  %62 = call i32 @CSR_WRITE_4(%struct.rl_softc* %56, i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %55, %48
  %64 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %65 = call i32 @re_set_rxmode(%struct.rl_softc* %64)
  %66 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %67 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @RL_FLAG_WOL_MANLINK, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %74 = call i32 @re_set_linkspeed(%struct.rl_softc* %73)
  br label %75

75:                                               ; preds = %72, %63
  %76 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %77 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @RL_FLAG_WOLRXENB, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %75
  %83 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %84 = load i32, i32* @RL_COMMAND, align 4
  %85 = load i32, i32* @RL_CMD_RX_ENB, align 4
  %86 = call i32 @CSR_WRITE_1(%struct.rl_softc* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %82, %75
  br label %88

88:                                               ; preds = %87, %41
  %89 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %90 = load i32, i32* @RL_EECMD, align 4
  %91 = load i32, i32* @RL_EE_MODE, align 4
  %92 = call i32 @CSR_WRITE_1(%struct.rl_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %94 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %95 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @CSR_READ_1(%struct.rl_softc* %93, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* @RL_CFG1_PME, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %103 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IFCAP_WOL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %88
  %109 = load i32, i32* @RL_CFG1_PME, align 4
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %108, %88
  %113 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %114 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %115 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @CSR_WRITE_1(%struct.rl_softc* %113, i32 %116, i32 %117)
  %119 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %120 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %121 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @CSR_READ_1(%struct.rl_softc* %119, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* @RL_CFG3_WOL_LINK, align 4
  %125 = load i32, i32* @RL_CFG3_WOL_MAGIC, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %6, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %131 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %112
  %137 = load i32, i32* @RL_CFG3_WOL_MAGIC, align 4
  %138 = load i32, i32* %6, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %136, %112
  %141 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %142 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %143 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @CSR_WRITE_1(%struct.rl_softc* %141, i32 %144, i32 %145)
  %147 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %148 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %149 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @CSR_READ_1(%struct.rl_softc* %147, i32 %150)
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* @RL_CFG5_WOL_BCAST, align 4
  %153 = load i32, i32* @RL_CFG5_WOL_MCAST, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @RL_CFG5_WOL_UCAST, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @RL_CFG5_WOL_LANWAKE, align 4
  %158 = or i32 %156, %157
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %6, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %6, align 4
  %162 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %163 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %140
  %169 = load i32, i32* @RL_CFG5_WOL_UCAST, align 4
  %170 = load i32, i32* %6, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %168, %140
  %173 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %174 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* @RL_CFG5_WOL_MCAST, align 4
  %181 = load i32, i32* @RL_CFG5_WOL_BCAST, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* %6, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %179, %172
  %186 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %187 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @IFCAP_WOL, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load i32, i32* @RL_CFG5_WOL_LANWAKE, align 4
  %194 = load i32, i32* %6, align 4
  %195 = or i32 %194, %193
  store i32 %195, i32* %6, align 4
  br label %196

196:                                              ; preds = %192, %185
  %197 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %198 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %199 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @CSR_WRITE_1(%struct.rl_softc* %197, i32 %200, i32 %201)
  %203 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %204 = load i32, i32* @RL_EECMD, align 4
  %205 = load i32, i32* @RL_EEMODE_OFF, align 4
  %206 = call i32 @CSR_WRITE_1(%struct.rl_softc* %203, i32 %204, i32 %205)
  %207 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %208 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @IFCAP_WOL, align 4
  %211 = and i32 %209, %210
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %228

213:                                              ; preds = %196
  %214 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %215 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @RL_FLAG_PHYWAKE_PM, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %228

220:                                              ; preds = %213
  %221 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %222 = load i32, i32* @RL_PMCH, align 4
  %223 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %224 = load i32, i32* @RL_PMCH, align 4
  %225 = call i32 @CSR_READ_1(%struct.rl_softc* %223, i32 %224)
  %226 = and i32 %225, -129
  %227 = call i32 @CSR_WRITE_1(%struct.rl_softc* %221, i32 %222, i32 %226)
  br label %228

228:                                              ; preds = %220, %213, %196
  %229 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %230 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @pci_read_config(i32 %231, i64 %235, i32 2)
  store i32 %236, i32* %5, align 4
  %237 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %238 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %239 = or i32 %237, %238
  %240 = xor i32 %239, -1
  %241 = load i32, i32* %5, align 4
  %242 = and i32 %241, %240
  store i32 %242, i32* %5, align 4
  %243 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %244 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @IFCAP_WOL, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %255

249:                                              ; preds = %228
  %250 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %251 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %252 = or i32 %250, %251
  %253 = load i32, i32* %5, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %5, align 4
  br label %255

255:                                              ; preds = %249, %228
  %256 = load %struct.rl_softc*, %struct.rl_softc** %2, align 8
  %257 = getelementptr inbounds %struct.rl_softc, %struct.rl_softc* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %4, align 4
  %260 = sext i32 %259 to i64
  %261 = load i64, i64* @PCIR_POWER_STATUS, align 8
  %262 = add nsw i64 %260, %261
  %263 = load i32, i32* %5, align 4
  %264 = call i32 @pci_write_config(i32 %258, i64 %262, i32 %263, i32 2)
  br label %265

265:                                              ; preds = %255, %15
  ret void
}

declare dso_local i32 @RL_LOCK_ASSERT(%struct.rl_softc*) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @CSR_READ_1(%struct.rl_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.rl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.rl_softc*, i32) #1

declare dso_local i32 @re_set_rxmode(%struct.rl_softc*) #1

declare dso_local i32 @re_set_linkspeed(%struct.rl_softc*) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
