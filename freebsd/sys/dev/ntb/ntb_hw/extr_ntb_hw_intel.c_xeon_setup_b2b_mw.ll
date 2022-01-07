; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_xeon_setup_b2b_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_xeon_setup_b2b_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32, i64, %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info*, i8*, i32 }
%struct.ntb_pci_bar_info = type { i32 }
%struct.ntb_b2b_addr = type { i32, i32, i32, i32, i32 }

@B2B_MW_DISABLED = common dso_local global i64 0, align 8
@NTB_CONFIG_BAR = common dso_local global i32 0, align 4
@NTB_MAX_BARS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid b2b mw bar\00", align 1
@ntb_b2b_mw_share = common dso_local global i64 0, align 8
@XEON_B2B_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"B2B bar size is too small!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@NTB_B2B_BAR_1 = common dso_local global i32 0, align 4
@NTB_B2B_BAR_2 = common dso_local global i32 0, align 4
@NTB_SPLIT_BAR = common dso_local global i32 0, align 4
@NTB_B2B_BAR_3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"invalid bar\00", align 1
@XEON_SBAR0BASE_OFFSET = common dso_local global i32 0, align 4
@XEON_SBAR2XLAT_OFFSET = common dso_local global i32 0, align 4
@XEON_SBAR4XLAT_OFFSET = common dso_local global i32 0, align 4
@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@MSI_INTEL_ADDR_BASE = common dso_local global i32 0, align 4
@XEON_PBAR2LMT_OFFSET = common dso_local global i32 0, align 4
@XEON_PBAR4LMT_OFFSET = common dso_local global i32 0, align 4
@XEON_B2B_XLAT_OFFSETL = common dso_local global i32 0, align 4
@XEON_B2B_XLAT_OFFSETU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*, %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr*)* @xeon_setup_b2b_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xeon_setup_b2b_mw(%struct.ntb_softc* %0, %struct.ntb_b2b_addr* %1, %struct.ntb_b2b_addr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ntb_softc*, align 8
  %6 = alloca %struct.ntb_b2b_addr*, align 8
  %7 = alloca %struct.ntb_b2b_addr*, align 8
  %8 = alloca %struct.ntb_pci_bar_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %5, align 8
  store %struct.ntb_b2b_addr* %1, %struct.ntb_b2b_addr** %6, align 8
  store %struct.ntb_b2b_addr* %2, %struct.ntb_b2b_addr** %7, align 8
  %16 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %17 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @B2B_MW_DISABLED, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  store %struct.ntb_pci_bar_info* null, %struct.ntb_pci_bar_info** %8, align 8
  %22 = load i32, i32* @NTB_CONFIG_BAR, align 4
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 1
  store i32 0, i32* %24, align 8
  br label %77

25:                                               ; preds = %3
  %26 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %27 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %28 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @intel_ntb_mw_to_bar(%struct.ntb_softc* %26, i64 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @NTB_MAX_BARS, align 4
  %36 = icmp ult i32 %34, %35
  br label %37

37:                                               ; preds = %33, %25
  %38 = phi i1 [ false, %25 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @KASSERT(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %41, i32 0, i32 3
  %43 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %43, i64 %45
  store %struct.ntb_pci_bar_info* %46, %struct.ntb_pci_bar_info** %8, align 8
  %47 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %8, align 8
  %48 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  %50 = load i64, i64* @ntb_b2b_mw_share, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %37
  %53 = load i32, i32* %9, align 4
  %54 = ashr i32 %53, 1
  %55 = load i32, i32* @XEON_B2B_MIN_SIZE, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = ashr i32 %58, 1
  %60 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  br label %76

62:                                               ; preds = %52, %37
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @XEON_B2B_MIN_SIZE, align 4
  %65 = icmp sge i32 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %68 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %67, i32 0, i32 1
  store i32 0, i32* %68, align 8
  br label %75

69:                                               ; preds = %62
  %70 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %71 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %70, i32 0, i32 6
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %74 = load i32, i32* @EIO, align 4
  store i32 %74, i32* %4, align 4
  br label %329

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %57
  br label %77

77:                                               ; preds = %76, %21
  %78 = load i32, i32* @NTB_B2B_BAR_1, align 4
  store i32 %78, i32* %12, align 4
  br label %79

79:                                               ; preds = %88, %77
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @NTB_MAX_BARS, align 4
  %82 = icmp ult i32 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %79
  %84 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @xeon_reset_sbar_size(%struct.ntb_softc* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %79

91:                                               ; preds = %79
  store i32 0, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* @NTB_CONFIG_BAR, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %97 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %10, align 4
  br label %142

99:                                               ; preds = %91
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @NTB_B2B_BAR_1, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %105 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %10, align 4
  br label %141

107:                                              ; preds = %99
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %107
  %112 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %113 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %114 = call i64 @HAS_FEATURE(%struct.ntb_softc* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %118 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %10, align 4
  br label %140

120:                                              ; preds = %111, %107
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %126 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  store i32 %127, i32* %10, align 4
  br label %139

128:                                              ; preds = %120
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* @NTB_B2B_BAR_3, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %134 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %10, align 4
  br label %138

136:                                              ; preds = %128
  %137 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %132
  br label %139

139:                                              ; preds = %138, %124
  br label %140

140:                                              ; preds = %139, %116
  br label %141

141:                                              ; preds = %140, %103
  br label %142

142:                                              ; preds = %141, %95
  %143 = load i32, i32* @XEON_SBAR0BASE_OFFSET, align 4
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @intel_ntb_reg_write(i32 8, i32 %143, i32 %144)
  %146 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %147 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %148 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NTB_B2B_BAR_1, align 4
  %151 = load i32, i32* %11, align 4
  %152 = call i32 @xeon_set_sbar_base_and_limit(%struct.ntb_softc* %146, i32 %149, i32 %150, i32 %151)
  %153 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %154 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %155 = call i64 @HAS_FEATURE(%struct.ntb_softc* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %142
  %158 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %159 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %160 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %163 = load i32, i32* %11, align 4
  %164 = call i32 @xeon_set_sbar_base_and_limit(%struct.ntb_softc* %158, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %166 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %167 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @NTB_B2B_BAR_3, align 4
  %170 = load i32, i32* %11, align 4
  %171 = call i32 @xeon_set_sbar_base_and_limit(%struct.ntb_softc* %165, i32 %168, i32 %169, i32 %170)
  br label %180

172:                                              ; preds = %142
  %173 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %174 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %6, align 8
  %175 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %178 = load i32, i32* %11, align 4
  %179 = call i32 @xeon_set_sbar_base_and_limit(%struct.ntb_softc* %173, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %157
  %181 = load i32, i32* @XEON_SBAR2XLAT_OFFSET, align 4
  %182 = call i32 @intel_ntb_reg_write(i32 8, i32 %181, i32 0)
  %183 = load i32, i32* @XEON_SBAR4XLAT_OFFSET, align 4
  %184 = call i32 @intel_ntb_reg_write(i32 8, i32 %183, i32 0)
  %185 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %186 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %187 = call i64 @HAS_FEATURE(%struct.ntb_softc* %185, i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %231

189:                                              ; preds = %180
  %190 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %191 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %192 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @intel_ntb_mw_to_bar(%struct.ntb_softc* %190, i64 %193)
  store i32 %194, i32* %15, align 4
  %195 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %196 = load i32, i32* %15, align 4
  %197 = call i32 @bar_get_xlat_params(%struct.ntb_softc* %195, i32 %196, i32* null, i32* %13, i32* %14)
  %198 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %199 = load i32, i32* %15, align 4
  %200 = call i64 @bar_is_64bit(%struct.ntb_softc* %198, i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %189
  %203 = load i32, i32* %13, align 4
  %204 = load i32, i32* @MSI_INTEL_ADDR_BASE, align 4
  %205 = call i32 @intel_ntb_reg_write(i32 8, i32 %203, i32 %204)
  %206 = load i32, i32* %13, align 4
  %207 = call i8* @intel_ntb_reg_read(i32 8, i32 %206)
  %208 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %209 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %208, i32 0, i32 5
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %14, align 4
  %211 = call i32 @intel_ntb_reg_write(i32 8, i32 %210, i32 0)
  br label %222

212:                                              ; preds = %189
  %213 = load i32, i32* %13, align 4
  %214 = load i32, i32* @MSI_INTEL_ADDR_BASE, align 4
  %215 = call i32 @intel_ntb_reg_write(i32 4, i32 %213, i32 %214)
  %216 = load i32, i32* %13, align 4
  %217 = call i8* @intel_ntb_reg_read(i32 4, i32 %216)
  %218 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %219 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %218, i32 0, i32 5
  store i8* %217, i8** %219, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @intel_ntb_reg_write(i32 4, i32 %220, i32 0)
  br label %222

222:                                              ; preds = %212, %202
  %223 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %224 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %223, i32 0, i32 3
  %225 = load %struct.ntb_pci_bar_info*, %struct.ntb_pci_bar_info** %224, align 8
  %226 = load i32, i32* %15, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds %struct.ntb_pci_bar_info, %struct.ntb_pci_bar_info* %225, i64 %227
  %229 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %230 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %229, i32 0, i32 4
  store %struct.ntb_pci_bar_info* %228, %struct.ntb_pci_bar_info** %230, align 8
  br label %231

231:                                              ; preds = %222, %180
  %232 = load i32, i32* @XEON_SBAR2XLAT_OFFSET, align 4
  %233 = call i8* @intel_ntb_reg_read(i32 8, i32 %232)
  %234 = load i32, i32* @XEON_SBAR4XLAT_OFFSET, align 4
  %235 = call i8* @intel_ntb_reg_read(i32 8, i32 %234)
  %236 = load i32, i32* @XEON_PBAR2LMT_OFFSET, align 4
  %237 = call i32 @intel_ntb_reg_write(i32 8, i32 %236, i32 0)
  %238 = load i32, i32* @XEON_PBAR4LMT_OFFSET, align 4
  %239 = call i32 @intel_ntb_reg_write(i32 8, i32 %238, i32 0)
  %240 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %241 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %242 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @NTB_B2B_BAR_1, align 4
  %245 = call i32 @xeon_set_pbar_xlat(%struct.ntb_softc* %240, i32 %243, i32 %244)
  %246 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %247 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %248 = call i64 @HAS_FEATURE(%struct.ntb_softc* %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %231
  %251 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %252 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %253 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %256 = call i32 @xeon_set_pbar_xlat(%struct.ntb_softc* %251, i32 %254, i32 %255)
  %257 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %258 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %259 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @NTB_B2B_BAR_3, align 4
  %262 = call i32 @xeon_set_pbar_xlat(%struct.ntb_softc* %257, i32 %260, i32 %261)
  br label %270

263:                                              ; preds = %231
  %264 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %265 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %266 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %269 = call i32 @xeon_set_pbar_xlat(%struct.ntb_softc* %264, i32 %267, i32 %268)
  br label %270

270:                                              ; preds = %263, %250
  store i32 0, i32* %10, align 4
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* @NTB_CONFIG_BAR, align 4
  %273 = icmp eq i32 %271, %272
  br i1 %273, label %274, label %278

274:                                              ; preds = %270
  %275 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %276 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  store i32 %277, i32* %10, align 4
  br label %321

278:                                              ; preds = %270
  %279 = load i32, i32* %11, align 4
  %280 = load i32, i32* @NTB_B2B_BAR_1, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %286

282:                                              ; preds = %278
  %283 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %284 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  store i32 %285, i32* %10, align 4
  br label %320

286:                                              ; preds = %278
  %287 = load i32, i32* %11, align 4
  %288 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %289 = icmp eq i32 %287, %288
  br i1 %289, label %290, label %299

290:                                              ; preds = %286
  %291 = load %struct.ntb_softc*, %struct.ntb_softc** %5, align 8
  %292 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %293 = call i64 @HAS_FEATURE(%struct.ntb_softc* %291, i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %299, label %295

295:                                              ; preds = %290
  %296 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %297 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  store i32 %298, i32* %10, align 4
  br label %319

299:                                              ; preds = %290, %286
  %300 = load i32, i32* %11, align 4
  %301 = load i32, i32* @NTB_B2B_BAR_2, align 4
  %302 = icmp eq i32 %300, %301
  br i1 %302, label %303, label %307

303:                                              ; preds = %299
  %304 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %305 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %10, align 4
  br label %318

307:                                              ; preds = %299
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* @NTB_B2B_BAR_3, align 4
  %310 = icmp eq i32 %308, %309
  br i1 %310, label %311, label %315

311:                                              ; preds = %307
  %312 = load %struct.ntb_b2b_addr*, %struct.ntb_b2b_addr** %7, align 8
  %313 = getelementptr inbounds %struct.ntb_b2b_addr, %struct.ntb_b2b_addr* %312, i32 0, i32 4
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %10, align 4
  br label %317

315:                                              ; preds = %307
  %316 = call i32 @KASSERT(i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %317

317:                                              ; preds = %315, %311
  br label %318

318:                                              ; preds = %317, %303
  br label %319

319:                                              ; preds = %318, %295
  br label %320

320:                                              ; preds = %319, %282
  br label %321

321:                                              ; preds = %320, %274
  %322 = load i32, i32* @XEON_B2B_XLAT_OFFSETL, align 4
  %323 = load i32, i32* %10, align 4
  %324 = call i32 @intel_ntb_reg_write(i32 4, i32 %322, i32 %323)
  %325 = load i32, i32* @XEON_B2B_XLAT_OFFSETU, align 4
  %326 = load i32, i32* %10, align 4
  %327 = ashr i32 %326, 32
  %328 = call i32 @intel_ntb_reg_write(i32 4, i32 %325, i32 %327)
  store i32 0, i32* %4, align 4
  br label %329

329:                                              ; preds = %321, %69
  %330 = load i32, i32* %4, align 4
  ret i32 %330
}

declare dso_local i32 @intel_ntb_mw_to_bar(%struct.ntb_softc*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xeon_reset_sbar_size(%struct.ntb_softc*, i32, i32) #1

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @intel_ntb_reg_write(i32, i32, i32) #1

declare dso_local i32 @xeon_set_sbar_base_and_limit(%struct.ntb_softc*, i32, i32, i32) #1

declare dso_local i32 @bar_get_xlat_params(%struct.ntb_softc*, i32, i32*, i32*, i32*) #1

declare dso_local i64 @bar_is_64bit(%struct.ntb_softc*, i32) #1

declare dso_local i8* @intel_ntb_reg_read(i32, i32) #1

declare dso_local i32 @xeon_set_pbar_xlat(%struct.ntb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
