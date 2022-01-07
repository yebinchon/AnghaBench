; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_nrssi_slope_11g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_calc_nrssi_slope_11g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.bwi_rf, %struct.bwi_phy, %struct.bwi_softc* }
%struct.bwi_rf = type { i32, i32, i32*, i32 }
%struct.bwi_phy = type { i32, i32 }
%struct.bwi_softc = type { i32 }
%struct.bwi_gains = type { i32, i32, i32 }

@bwi_rf_calc_nrssi_slope_11g.save_rf_regs = internal constant [3 x i32] [i32 122, i32 82, i32 67], align 4
@bwi_rf_calc_nrssi_slope_11g.save_phy_comm_regs = internal constant [4 x i32] [i32 21, i32 90, i32 89, i32 88], align 16
@bwi_rf_calc_nrssi_slope_11g.save_phy3_regs = internal constant [8 x i32] [i32 46, i32 47, i32 2063, i32 2064, i32 2049, i32 96, i32 20, i32 1144], align 16
@BWI_RF_ANTDIV = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@BWI_RF_CHAN_EX = common dso_local global i32 0, align 4
@SAVE_PHY3_MAX = common dso_local global i32 0, align 4
@SAVE_PHY_COMM_MAX = common dso_local global i32 0, align 4
@SAVE_RF_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_rf_calc_nrssi_slope_11g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_rf_calc_nrssi_slope_11g(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.bwi_phy*, align 8
  %5 = alloca %struct.bwi_rf*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca [4 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bwi_gains, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %17 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %16, i32 0, i32 2
  %18 = load %struct.bwi_softc*, %struct.bwi_softc** %17, align 8
  store %struct.bwi_softc* %18, %struct.bwi_softc** %3, align 8
  %19 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %20 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %19, i32 0, i32 1
  store %struct.bwi_phy* %20, %struct.bwi_phy** %4, align 8
  %21 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %22 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %21, i32 0, i32 0
  store %struct.bwi_rf* %22, %struct.bwi_rf** %5, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %24 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sge i32 %25, 9
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %391

28:                                               ; preds = %1
  %29 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %30 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %35 = call i32 @bwi_rf_set_nrssi_ofs_11g(%struct.bwi_mac* %34)
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36
  %38 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %39 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %38, i32 1065, i32 32768)
  %40 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %41 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %40, i32 2050, i32 3)
  %42 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %43 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %44 = call i32 @CSR_READ_2(%struct.bwi_softc* %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %46 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %47 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %45, i32 %46, i32 32768)
  store i32 0, i32* %14, align 4
  br label %48

48:                                               ; preds = %61, %37
  %49 = load i32, i32* %14, align 4
  %50 = icmp slt i32 %49, 3
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_calc_nrssi_slope_11g.save_rf_regs, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RF_READ(%struct.bwi_mac* %52, i32 %56)
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %59
  store i32 %57, i32* %60, align 4
  br label %61

61:                                               ; preds = %51
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %14, align 4
  br label %48

64:                                               ; preds = %48
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %78, %64
  %66 = load i32, i32* %14, align 4
  %67 = icmp slt i32 %66, 4
  br i1 %67, label %68, label %81

68:                                               ; preds = %65
  %69 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* @bwi_rf_calc_nrssi_slope_11g.save_phy_comm_regs, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @PHY_READ(%struct.bwi_mac* %69, i32 %73)
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %76
  store i32 %74, i32* %77, align 4
  br label %78

78:                                               ; preds = %68
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %14, align 4
  br label %65

81:                                               ; preds = %65
  %82 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %83 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %84 = call i32 @CSR_READ_2(%struct.bwi_softc* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %86 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %87 = call i32 @CSR_READ_2(%struct.bwi_softc* %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %89 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %90, 3
  br i1 %91, label %92, label %152

92:                                               ; preds = %81
  store i32 0, i32* %14, align 4
  br label %93

93:                                               ; preds = %106, %92
  %94 = load i32, i32* %14, align 4
  %95 = icmp slt i32 %94, 8
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  %97 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_calc_nrssi_slope_11g.save_phy3_regs, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PHY_READ(%struct.bwi_mac* %97, i32 %101)
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %104
  store i32 %102, i32* %105, align 4
  br label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %93

109:                                              ; preds = %93
  %110 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %111 = call i32 @PHY_WRITE(%struct.bwi_mac* %110, i32 46, i32 0)
  %112 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %113 = call i32 @PHY_WRITE(%struct.bwi_mac* %112, i32 2064, i32 0)
  %114 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %115 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %128, label %118

118:                                              ; preds = %109
  %119 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %120 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 6
  br i1 %122, label %128, label %123

123:                                              ; preds = %118
  %124 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %125 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 7
  br i1 %127, label %128, label %133

128:                                              ; preds = %123, %118, %109
  %129 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %130 = call i32 @PHY_SETBITS(%struct.bwi_mac* %129, i32 1144, i32 256)
  %131 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %132 = call i32 @PHY_SETBITS(%struct.bwi_mac* %131, i32 2064, i32 64)
  br label %147

133:                                              ; preds = %123
  %134 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %135 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %140 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 5
  br i1 %142, label %143, label %146

143:                                              ; preds = %138, %133
  %144 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %145 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %144, i32 2064, i32 64)
  br label %146

146:                                              ; preds = %143, %138
  br label %147

147:                                              ; preds = %146, %128
  %148 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %149 = call i32 @PHY_SETBITS(%struct.bwi_mac* %148, i32 96, i32 64)
  %150 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %151 = call i32 @PHY_SETBITS(%struct.bwi_mac* %150, i32 20, i32 512)
  br label %152

152:                                              ; preds = %147, %81
  %153 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %154 = call i32 @RF_SETBITS(%struct.bwi_mac* %153, i32 122, i32 112)
  %155 = call i32 @bzero(%struct.bwi_gains* %12, i32 12)
  %156 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %12, i32 0, i32 0
  store i32 0, i32* %156, align 4
  %157 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %12, i32 0, i32 1
  store i32 8, i32* %157, align 4
  %158 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %12, i32 0, i32 2
  store i32 0, i32* %158, align 4
  %159 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %160 = call i32 @bwi_set_gains(%struct.bwi_mac* %159, %struct.bwi_gains* %12)
  %161 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %162 = call i32 @RF_CLRBITS(%struct.bwi_mac* %161, i32 122, i32 65288)
  %163 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %164 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp sge i32 %165, 2
  br i1 %166, label %167, label %172

167:                                              ; preds = %152
  %168 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %169 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %168, i32 2065, i32 65487, i32 48)
  %170 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %171 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %170, i32 2066, i32 65487, i32 16)
  br label %172

172:                                              ; preds = %167, %152
  %173 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %174 = call i32 @RF_SETBITS(%struct.bwi_mac* %173, i32 122, i32 128)
  %175 = call i32 @DELAY(i32 20)
  %176 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %177 = call i32 @bwi_nrssi_11g(%struct.bwi_mac* %176)
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 %177, i32* %178, align 4
  %179 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %180 = call i32 @RF_CLRBITS(%struct.bwi_mac* %179, i32 122, i32 65408)
  %181 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %182 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp sge i32 %183, 2
  br i1 %184, label %185, label %188

185:                                              ; preds = %172
  %186 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %187 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %186, i32 3, i32 65439, i32 64)
  br label %188

188:                                              ; preds = %185, %172
  %189 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %190 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %191 = call i32 @CSR_SETBITS_2(%struct.bwi_softc* %189, i32 %190, i32 8192)
  %192 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %193 = call i32 @RF_SETBITS(%struct.bwi_mac* %192, i32 122, i32 15)
  %194 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %195 = call i32 @PHY_WRITE(%struct.bwi_mac* %194, i32 21, i32 62256)
  %196 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %197 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp sge i32 %198, 2
  br i1 %199, label %200, label %205

200:                                              ; preds = %188
  %201 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %202 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %201, i32 2066, i32 65487, i32 32)
  %203 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %204 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %203, i32 2065, i32 65487, i32 32)
  br label %205

205:                                              ; preds = %200, %188
  %206 = call i32 @bzero(%struct.bwi_gains* %12, i32 12)
  %207 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %12, i32 0, i32 0
  store i32 3, i32* %207, align 4
  %208 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %12, i32 0, i32 1
  store i32 0, i32* %208, align 4
  %209 = getelementptr inbounds %struct.bwi_gains, %struct.bwi_gains* %12, i32 0, i32 2
  store i32 1, i32* %209, align 4
  %210 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %211 = call i32 @bwi_set_gains(%struct.bwi_mac* %210, %struct.bwi_gains* %12)
  %212 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %213 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 8
  br i1 %215, label %216, label %219

216:                                              ; preds = %205
  %217 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %218 = call i32 @RF_WRITE(%struct.bwi_mac* %217, i32 67, i32 31)
  br label %224

219:                                              ; preds = %205
  %220 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %221 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %220, i32 82, i32 65295, i32 96)
  %222 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %223 = call i32 @RF_FILT_SETBITS(%struct.bwi_mac* %222, i32 67, i32 65520, i32 9)
  br label %224

224:                                              ; preds = %219, %216
  %225 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %226 = call i32 @PHY_WRITE(%struct.bwi_mac* %225, i32 90, i32 1152)
  %227 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %228 = call i32 @PHY_WRITE(%struct.bwi_mac* %227, i32 89, i32 2064)
  %229 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %230 = call i32 @PHY_WRITE(%struct.bwi_mac* %229, i32 88, i32 13)
  %231 = call i32 @DELAY(i32 20)
  %232 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %233 = call i32 @bwi_nrssi_11g(%struct.bwi_mac* %232)
  %234 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %233, i32* %234, align 4
  %235 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %236, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %224
  %241 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %242 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %241, i32 0, i32 1
  store i32 65536, i32* %242, align 4
  br label %252

243:                                              ; preds = %224
  %244 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %245, %247
  %249 = sdiv i32 4194304, %248
  %250 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %251 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %243, %240
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = icmp sge i32 %254, -4
  br i1 %255, label %256, label %269

256:                                              ; preds = %252
  %257 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %260 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 0
  store i32 %258, i32* %262, align 4
  %263 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %266 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %265, i32 0, i32 2
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  store i32 %264, i32* %268, align 4
  br label %269

269:                                              ; preds = %256, %252
  %270 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %271 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp sge i32 %272, 3
  br i1 %273, label %274, label %293

274:                                              ; preds = %269
  store i32 0, i32* %15, align 4
  br label %275

275:                                              ; preds = %289, %274
  %276 = load i32, i32* %15, align 4
  %277 = icmp slt i32 %276, 4
  br i1 %277, label %278, label %292

278:                                              ; preds = %275
  %279 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_calc_nrssi_slope_11g.save_phy3_regs, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %15, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @PHY_WRITE(%struct.bwi_mac* %279, i32 %283, i32 %287)
  br label %289

289:                                              ; preds = %278
  %290 = load i32, i32* %15, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %15, align 4
  br label %275

292:                                              ; preds = %275
  br label %293

293:                                              ; preds = %292, %269
  %294 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %295 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = icmp sge i32 %296, 2
  br i1 %297, label %298, label %303

298:                                              ; preds = %293
  %299 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %300 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %299, i32 2066, i32 48)
  %301 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %302 = call i32 @PHY_CLRBITS(%struct.bwi_mac* %301, i32 2065, i32 48)
  br label %303

303:                                              ; preds = %298, %293
  store i32 0, i32* %14, align 4
  br label %304

304:                                              ; preds = %318, %303
  %305 = load i32, i32* %14, align 4
  %306 = icmp slt i32 %305, 3
  br i1 %306, label %307, label %321

307:                                              ; preds = %304
  %308 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [3 x i32], [3 x i32]* @bwi_rf_calc_nrssi_slope_11g.save_rf_regs, i64 0, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %14, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %314
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @RF_WRITE(%struct.bwi_mac* %308, i32 %312, i32 %316)
  br label %318

318:                                              ; preds = %307
  %319 = load i32, i32* %14, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %14, align 4
  br label %304

321:                                              ; preds = %304
  %322 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %323 = load i32, i32* @BWI_RF_ANTDIV, align 4
  %324 = load i32, i32* %9, align 4
  %325 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %322, i32 %323, i32 %324)
  %326 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %327 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %328 = load i32, i32* %10, align 4
  %329 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %326, i32 %327, i32 %328)
  %330 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %331 = load i32, i32* @BWI_RF_CHAN_EX, align 4
  %332 = load i32, i32* %11, align 4
  %333 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %330, i32 %331, i32 %332)
  store i32 0, i32* %14, align 4
  br label %334

334:                                              ; preds = %348, %321
  %335 = load i32, i32* %14, align 4
  %336 = icmp slt i32 %335, 4
  br i1 %336, label %337, label %351

337:                                              ; preds = %334
  %338 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %339 = load i32, i32* %14, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [4 x i32], [4 x i32]* @bwi_rf_calc_nrssi_slope_11g.save_phy_comm_regs, i64 0, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %14, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @PHY_WRITE(%struct.bwi_mac* %338, i32 %342, i32 %346)
  br label %348

348:                                              ; preds = %337
  %349 = load i32, i32* %14, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %14, align 4
  br label %334

351:                                              ; preds = %334
  %352 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %353 = load %struct.bwi_rf*, %struct.bwi_rf** %5, align 8
  %354 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @bwi_rf_work_around(%struct.bwi_mac* %352, i32 %355)
  %357 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %358 = call i32 @PHY_SETBITS(%struct.bwi_mac* %357, i32 2050, i32 3)
  %359 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %360 = call i32 @bwi_set_gains(%struct.bwi_mac* %359, %struct.bwi_gains* null)
  %361 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %362 = call i32 @PHY_SETBITS(%struct.bwi_mac* %361, i32 1065, i32 32768)
  %363 = load %struct.bwi_phy*, %struct.bwi_phy** %4, align 8
  %364 = getelementptr inbounds %struct.bwi_phy, %struct.bwi_phy* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = icmp sge i32 %365, 3
  br i1 %366, label %367, label %386

367:                                              ; preds = %351
  br label %368

368:                                              ; preds = %382, %367
  %369 = load i32, i32* %15, align 4
  %370 = icmp slt i32 %369, 8
  br i1 %370, label %371, label %385

371:                                              ; preds = %368
  %372 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %373 = load i32, i32* %15, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds [8 x i32], [8 x i32]* @bwi_rf_calc_nrssi_slope_11g.save_phy3_regs, i64 0, i64 %374
  %376 = load i32, i32* %375, align 4
  %377 = load i32, i32* %15, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @PHY_WRITE(%struct.bwi_mac* %372, i32 %376, i32 %380)
  br label %382

382:                                              ; preds = %371
  %383 = load i32, i32* %15, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %15, align 4
  br label %368

385:                                              ; preds = %368
  br label %386

386:                                              ; preds = %385, %351
  %387 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %388 = call i32 @bwi_rf_init_sw_nrssi_table(%struct.bwi_mac* %387)
  %389 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %390 = call i32 @bwi_rf_set_nrssi_thr_11g(%struct.bwi_mac* %389)
  br label %391

391:                                              ; preds = %386, %27
  ret void
}

declare dso_local i32 @bwi_rf_set_nrssi_ofs_11g(%struct.bwi_mac*) #1

declare dso_local i32 @PHY_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_SETBITS_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @RF_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_READ(%struct.bwi_mac*, i32) #1

declare dso_local i32 @PHY_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_SETBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bzero(%struct.bwi_gains*, i32) #1

declare dso_local i32 @bwi_set_gains(%struct.bwi_mac*, %struct.bwi_gains*) #1

declare dso_local i32 @RF_CLRBITS(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bwi_nrssi_11g(%struct.bwi_mac*) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @RF_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @bwi_rf_work_around(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_rf_init_sw_nrssi_table(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_set_nrssi_thr_11g(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
