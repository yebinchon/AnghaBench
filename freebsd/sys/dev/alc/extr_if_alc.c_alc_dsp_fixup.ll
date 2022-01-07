; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_dsp_fixup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/alc/extr_if_alc.c_alc_dsp_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_softc = type { i32, i32 }

@ALC_FLAG_AR816X_FAMILY = common dso_local global i32 0, align 4
@AR816X_REV_C0 = common dso_local global i64 0, align 8
@ALC_FLAG_LINK = common dso_local global i32 0, align 4
@MII_EXT_PCS = common dso_local global i32 0, align 4
@MII_EXT_CLDCTL6 = common dso_local global i32 0, align 4
@EXT_CLDCTL6_CAB_LEN_SHIFT = common dso_local global i32 0, align 4
@EXT_CLDCTL6_CAB_LEN_MASK = common dso_local global i32 0, align 4
@MII_DBG_AGC = common dso_local global i32 0, align 4
@DBG_AGC_2_VGA_SHIFT = common dso_local global i32 0, align 4
@DBG_AGC_2_VGA_MASK = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@EXT_CLDCTL6_CAB_LEN_SHORT1G = common dso_local global i32 0, align 4
@DBG_AGC_LONG1G_LIMT = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@DBG_AGC_LONG100M_LIMT = common dso_local global i32 0, align 4
@MII_DBG_AZ_ANADECT = common dso_local global i32 0, align 4
@DBG_AZ_ANADECT_LONG = common dso_local global i32 0, align 4
@MII_EXT_ANEG = common dso_local global i32 0, align 4
@MII_EXT_ANEG_AFE = common dso_local global i32 0, align 4
@ANEG_AFEE_10BT_100M_TH = common dso_local global i32 0, align 4
@DBG_AZ_ANADECT_DEFAULT = common dso_local global i32 0, align 4
@ALC_FLAG_LINK_WAR = common dso_local global i32 0, align 4
@AR816X_REV_B0 = common dso_local global i64 0, align 8
@MII_DBG_MSE20DB = common dso_local global i32 0, align 4
@DBG_MSE20DB_TH_MASK = common dso_local global i32 0, align 4
@DBG_MSE20DB_TH_HI = common dso_local global i32 0, align 4
@DBG_MSE20DB_TH_SHIFT = common dso_local global i32 0, align 4
@MII_DBG_MSE16DB = common dso_local global i32 0, align 4
@DBG_MSE16DB_UP = common dso_local global i32 0, align 4
@DBG_MSE16DB_DOWN = common dso_local global i32 0, align 4
@DBG_MSE20DB_TH_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alc_softc*, i32)* @alc_dsp_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_dsp_fixup(%struct.alc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.alc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.alc_softc* %0, %struct.alc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ALC_FLAG_AR816X_FAMILY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %202

15:                                               ; preds = %2
  %16 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @AR816X_REV(i32 %18)
  %20 = load i64, i64* @AR816X_REV_C0, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %202

23:                                               ; preds = %15
  %24 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @ALC_FLAG_LINK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %153

30:                                               ; preds = %23
  %31 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %32 = load i32, i32* @MII_EXT_PCS, align 4
  %33 = load i32, i32* @MII_EXT_CLDCTL6, align 4
  %34 = call i32 @alc_miiext_readreg(%struct.alc_softc* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EXT_CLDCTL6_CAB_LEN_SHIFT, align 4
  %37 = ashr i32 %35, %36
  %38 = load i32, i32* @EXT_CLDCTL6_CAB_LEN_MASK, align 4
  %39 = and i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %41 = load i32, i32* @MII_DBG_AGC, align 4
  %42 = call i32 @alc_miidbg_readreg(%struct.alc_softc* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @DBG_AGC_2_VGA_SHIFT, align 4
  %45 = ashr i32 %43, %44
  %46 = load i32, i32* @DBG_AGC_2_VGA_MASK, align 4
  %47 = and i32 %45, %46
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @IFM_1000_T, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %30
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @EXT_CLDCTL6_CAB_LEN_SHORT1G, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @DBG_AGC_LONG1G_LIMT, align 4
  %58 = icmp sgt i32 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %55, %51, %30
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @IFM_100_TX, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @DBG_AGC_LONG100M_LIMT, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* @DBG_AGC_LONG1G_LIMT, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67, %55
  %72 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %73 = load i32, i32* @MII_DBG_AZ_ANADECT, align 4
  %74 = load i32, i32* @DBG_AZ_ANADECT_LONG, align 4
  %75 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %77 = load i32, i32* @MII_EXT_ANEG, align 4
  %78 = load i32, i32* @MII_EXT_ANEG_AFE, align 4
  %79 = call i32 @alc_miiext_readreg(%struct.alc_softc* %76, i32 %77, i32 %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @ANEG_AFEE_10BT_100M_TH, align 4
  %81 = load i32, i32* %7, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %7, align 4
  %83 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %84 = load i32, i32* @MII_EXT_ANEG, align 4
  %85 = load i32, i32* @MII_EXT_ANEG_AFE, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @alc_miiext_writereg(%struct.alc_softc* %83, i32 %84, i32 %85, i32 %86)
  br label %106

88:                                               ; preds = %67, %63, %59
  %89 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %90 = load i32, i32* @MII_DBG_AZ_ANADECT, align 4
  %91 = load i32, i32* @DBG_AZ_ANADECT_DEFAULT, align 4
  %92 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %94 = load i32, i32* @MII_EXT_ANEG, align 4
  %95 = load i32, i32* @MII_EXT_ANEG_AFE, align 4
  %96 = call i32 @alc_miiext_readreg(%struct.alc_softc* %93, i32 %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @ANEG_AFEE_10BT_100M_TH, align 4
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %7, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %102 = load i32, i32* @MII_EXT_ANEG, align 4
  %103 = load i32, i32* @MII_EXT_ANEG_AFE, align 4
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @alc_miiext_writereg(%struct.alc_softc* %101, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %88, %71
  %107 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %108 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @ALC_FLAG_LINK_WAR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %152

113:                                              ; preds = %106
  %114 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %115 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @AR816X_REV(i32 %116)
  %118 = load i64, i64* @AR816X_REV_B0, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %152

120:                                              ; preds = %113
  %121 = load i32, i32* %4, align 4
  %122 = load i32, i32* @IFM_1000_T, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %120
  %125 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %126 = load i32, i32* @MII_DBG_MSE20DB, align 4
  %127 = call i32 @alc_miidbg_readreg(%struct.alc_softc* %125, i32 %126)
  store i32 %127, i32* %7, align 4
  %128 = load i32, i32* @DBG_MSE20DB_TH_MASK, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %7, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* @DBG_MSE20DB_TH_HI, align 4
  %133 = load i32, i32* @DBG_MSE20DB_TH_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %7, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %7, align 4
  %137 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %138 = load i32, i32* @MII_DBG_MSE20DB, align 4
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %137, i32 %138, i32 %139)
  br label %151

141:                                              ; preds = %120
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @IFM_100_TX, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %147 = load i32, i32* @MII_DBG_MSE16DB, align 4
  %148 = load i32, i32* @DBG_MSE16DB_UP, align 4
  %149 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %146, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %145, %141
  br label %151

151:                                              ; preds = %150, %124
  br label %152

152:                                              ; preds = %151, %113, %106
  br label %202

153:                                              ; preds = %23
  %154 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %155 = load i32, i32* @MII_EXT_ANEG, align 4
  %156 = load i32, i32* @MII_EXT_ANEG_AFE, align 4
  %157 = call i32 @alc_miiext_readreg(%struct.alc_softc* %154, i32 %155, i32 %156)
  store i32 %157, i32* %7, align 4
  %158 = load i32, i32* @ANEG_AFEE_10BT_100M_TH, align 4
  %159 = xor i32 %158, -1
  %160 = load i32, i32* %7, align 4
  %161 = and i32 %160, %159
  store i32 %161, i32* %7, align 4
  %162 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %163 = load i32, i32* @MII_EXT_ANEG, align 4
  %164 = load i32, i32* @MII_EXT_ANEG_AFE, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @alc_miiext_writereg(%struct.alc_softc* %162, i32 %163, i32 %164, i32 %165)
  %167 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %168 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @ALC_FLAG_LINK_WAR, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %201

173:                                              ; preds = %153
  %174 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %175 = getelementptr inbounds %struct.alc_softc, %struct.alc_softc* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @AR816X_REV(i32 %176)
  %178 = load i64, i64* @AR816X_REV_B0, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %173
  %181 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %182 = load i32, i32* @MII_DBG_MSE16DB, align 4
  %183 = load i32, i32* @DBG_MSE16DB_DOWN, align 4
  %184 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %181, i32 %182, i32 %183)
  %185 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %186 = load i32, i32* @MII_DBG_MSE20DB, align 4
  %187 = call i32 @alc_miidbg_readreg(%struct.alc_softc* %185, i32 %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* @DBG_MSE20DB_TH_MASK, align 4
  %189 = xor i32 %188, -1
  %190 = load i32, i32* %7, align 4
  %191 = and i32 %190, %189
  store i32 %191, i32* %7, align 4
  %192 = load i32, i32* @DBG_MSE20DB_TH_DEFAULT, align 4
  %193 = load i32, i32* @DBG_MSE20DB_TH_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* %7, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %7, align 4
  %197 = load %struct.alc_softc*, %struct.alc_softc** %3, align 8
  %198 = load i32, i32* @MII_DBG_MSE20DB, align 4
  %199 = load i32, i32* %7, align 4
  %200 = call i32 @alc_miidbg_writereg(%struct.alc_softc* %197, i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %180, %173, %153
  br label %202

202:                                              ; preds = %14, %22, %201, %152
  ret void
}

declare dso_local i64 @AR816X_REV(i32) #1

declare dso_local i32 @alc_miiext_readreg(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @alc_miidbg_readreg(%struct.alc_softc*, i32) #1

declare dso_local i32 @alc_miidbg_writereg(%struct.alc_softc*, i32, i32) #1

declare dso_local i32 @alc_miiext_writereg(%struct.alc_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
