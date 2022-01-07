; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_gain_ctl_workarounds_rev1_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/dev/bwn/phy_n/extr_if_bwn_phy_n_core.c_bwn_nphy_gain_ctl_workarounds_rev1_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.bwn_phy_n* }
%struct.bwn_phy_n = type { i64, i64 }

@__const.bwn_nphy_gain_ctl_workarounds_rev1_2.rfseq_events = private unnamed_addr constant [3 x i32] [i32 6, i32 8, i32 7], align 4
@__const.bwn_nphy_gain_ctl_workarounds_rev1_2.rfseq_delays = private unnamed_addr constant [3 x i32] [i32 10, i32 30, i32 1], align 4
@BWN_NPHY_C1_CGAINI = common dso_local global i32 0, align 4
@BWN_NPHY_C1_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@BWN_NPHY_C2_CGAINI = common dso_local global i32 0, align 4
@BWN_NPHY_C2_CGAINI_CL2DETECT = common dso_local global i32 0, align 4
@BWN_NPHY_C1_NBCLIPTHRES = common dso_local global i32 0, align 4
@BWN_NPHY_C2_NBCLIPTHRES = common dso_local global i32 0, align 4
@BWN_NPHY_CLIP1_NBDWELL_LEN = common dso_local global i32 0, align 4
@BWN_NPHY_CLIP2_NBDWELL_LEN = common dso_local global i32 0, align 4
@BWN_NPHY_W1CLIP1_DWELL_LEN = common dso_local global i32 0, align 4
@BWN_NPHY_W1CLIP2_DWELL_LEN = common dso_local global i32 0, align 4
@BWN_NPHY_C1_CLIPWBTHRES = common dso_local global i32 0, align 4
@BWN_NPHY_C1_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@BWN_NPHY_C2_CLIPWBTHRES = common dso_local global i32 0, align 4
@BWN_NPHY_C2_CLIPWBTHRES_CLIP2 = common dso_local global i32 0, align 4
@BWN_NPHY_C1_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@BWN_NPHY_C2_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@BWN_NPHY_C1_CCK_CGAINI = common dso_local global i32 0, align 4
@BWN_NPHY_C1_CCK_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@BWN_NPHY_C2_CCK_CGAINI = common dso_local global i32 0, align 4
@BWN_NPHY_C2_CCK_CGAINI_GAINBKOFF = common dso_local global i32 0, align 4
@BWN_NPHY_CCK_SHIFTB_REF = common dso_local global i32 0, align 4
@BWN_BAND_2G = common dso_local global i64 0, align 8
@BWN_NPHY_C1_INITGAIN = common dso_local global i32 0, align 4
@BWN_NPHY_C1_INITGAIN_HPVGA2 = common dso_local global i32 0, align 4
@BWN_NPHY_C1_INITGAIN_HPVGA2_SHIFT = common dso_local global i32 0, align 4
@BWN_NPHY_C2_INITGAIN = common dso_local global i32 0, align 4
@BWN_NPHY_C2_INITGAIN_HPVGA2 = common dso_local global i32 0, align 4
@BWN_NPHY_C2_INITGAIN_HPVGA2_SHIFT = common dso_local global i32 0, align 4
@BWN_NPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@BWN_NPHY_TABLE_DATALO = common dso_local global i32 0, align 4
@BWN_NPHY_OVER_DGAIN1 = common dso_local global i32 0, align 4
@BWN_NPHY_OVER_DGAIN_CCKDGECV = common dso_local global i32 0, align 4
@BWN_NPHY_OVER_DGAIN_CCKDGECV_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_nphy_gain_ctl_workarounds_rev1_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_nphy_gain_ctl_workarounds_rev1_2(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_phy_n*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %12, align 8
  store %struct.bwn_phy_n* %13, %struct.bwn_phy_n** %3, align 8
  %14 = bitcast [3 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([3 x i32]* @__const.bwn_nphy_gain_ctl_workarounds_rev1_2.rfseq_events to i8*), i64 12, i1 false)
  %15 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast ([3 x i32]* @__const.bwn_nphy_gain_ctl_workarounds_rev1_2.rfseq_delays to i8*), i64 12, i1 false)
  %16 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %17 = load i32, i32* @BWN_NPHY_C1_CGAINI, align 4
  %18 = load i32, i32* @BWN_NPHY_C1_CGAINI_CL2DETECT, align 4
  %19 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %16, i32 %17, i32 %18)
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = load i32, i32* @BWN_NPHY_C2_CGAINI, align 4
  %22 = load i32, i32* @BWN_NPHY_C2_CGAINI_CL2DETECT, align 4
  %23 = call i32 @BWN_PHY_SET(%struct.bwn_mac* %20, i32 %21, i32 %22)
  %24 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %25 = load i32, i32* @BWN_NPHY_C1_NBCLIPTHRES, align 4
  %26 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %24, i32 %25, i32 132)
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %28 = load i32, i32* @BWN_NPHY_C2_NBCLIPTHRES, align 4
  %29 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %27, i32 %28, i32 132)
  %30 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %31 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %1
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %35 = load i32, i32* @BWN_NPHY_CLIP1_NBDWELL_LEN, align 4
  %36 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %34, i32 %35, i32 43)
  %37 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %38 = load i32, i32* @BWN_NPHY_CLIP2_NBDWELL_LEN, align 4
  %39 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %37, i32 %38, i32 43)
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = load i32, i32* @BWN_NPHY_W1CLIP1_DWELL_LEN, align 4
  %42 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %40, i32 %41, i32 9)
  %43 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %44 = load i32, i32* @BWN_NPHY_W1CLIP2_DWELL_LEN, align 4
  %45 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %43, i32 %44, i32 9)
  br label %46

46:                                               ; preds = %33, %1
  %47 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %48 = load i32, i32* @BWN_NPHY_C1_CLIPWBTHRES, align 4
  %49 = load i32, i32* @BWN_NPHY_C1_CLIPWBTHRES_CLIP2, align 4
  %50 = xor i32 %49, -1
  %51 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %47, i32 %48, i32 %50, i32 21)
  %52 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %53 = load i32, i32* @BWN_NPHY_C2_CLIPWBTHRES, align 4
  %54 = load i32, i32* @BWN_NPHY_C2_CLIPWBTHRES_CLIP2, align 4
  %55 = xor i32 %54, -1
  %56 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %52, i32 %53, i32 %55, i32 21)
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %58 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %81, label %60

60:                                               ; preds = %46
  %61 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %62 = load i32, i32* @BWN_NPHY_C1_CGAINI, align 4
  %63 = load i32, i32* @BWN_NPHY_C1_CGAINI_GAINBKOFF, align 4
  %64 = xor i32 %63, -1
  %65 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %61, i32 %62, i32 %64, i32 1)
  %66 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %67 = load i32, i32* @BWN_NPHY_C2_CGAINI, align 4
  %68 = load i32, i32* @BWN_NPHY_C2_CGAINI_GAINBKOFF, align 4
  %69 = xor i32 %68, -1
  %70 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %66, i32 %67, i32 %69, i32 1)
  %71 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %72 = load i32, i32* @BWN_NPHY_C1_CCK_CGAINI, align 4
  %73 = load i32, i32* @BWN_NPHY_C1_CCK_CGAINI_GAINBKOFF, align 4
  %74 = xor i32 %73, -1
  %75 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %71, i32 %72, i32 %74, i32 1)
  %76 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %77 = load i32, i32* @BWN_NPHY_C2_CCK_CGAINI, align 4
  %78 = load i32, i32* @BWN_NPHY_C2_CCK_CGAINI_GAINBKOFF, align 4
  %79 = xor i32 %78, -1
  %80 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %76, i32 %77, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %60, %46
  %82 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %83 = load i32, i32* @BWN_NPHY_CCK_SHIFTB_REF, align 4
  %84 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %82, i32 %83, i32 32924)
  %85 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %86 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %81
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %91 = call i64 @bwn_current_band(%struct.bwn_mac* %90)
  %92 = load i64, i64* @BWN_BAND_2G, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %96 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  store i32 4, i32* %6, align 4
  br label %100

99:                                               ; preds = %94, %89
  store i32 5, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %98
  br label %107

101:                                              ; preds = %81
  %102 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %103 = call i64 @bwn_is_40mhz(%struct.bwn_mac* %102)
  %104 = icmp ne i64 %103, 0
  %105 = zext i1 %104 to i64
  %106 = select i1 %104, i32 6, i32 7
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %101, %100
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %109 = load i32, i32* @BWN_NPHY_C1_INITGAIN, align 4
  %110 = load i32, i32* @BWN_NPHY_C1_INITGAIN_HPVGA2, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @BWN_NPHY_C1_INITGAIN_HPVGA2_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %108, i32 %109, i32 %111, i32 %114)
  %116 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %117 = load i32, i32* @BWN_NPHY_C2_INITGAIN, align 4
  %118 = load i32, i32* @BWN_NPHY_C2_INITGAIN_HPVGA2, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %6, align 4
  %121 = load i32, i32* @BWN_NPHY_C2_INITGAIN_HPVGA2_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %116, i32 %117, i32 %119, i32 %122)
  %124 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %125 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %126 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %124, i32 %125, i32 7430)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %137, %107
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %140

130:                                              ; preds = %127
  %131 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %132 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %133 = load i32, i32* %6, align 4
  %134 = shl i32 %133, 8
  %135 = or i32 %134, 124
  %136 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %131, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %130
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  br label %127

140:                                              ; preds = %127
  %141 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %142 = call i32 @bwn_nphy_adjust_lna_gain_table(%struct.bwn_mac* %141)
  %143 = load %struct.bwn_phy_n*, %struct.bwn_phy_n** %3, align 8
  %144 = getelementptr inbounds %struct.bwn_phy_n, %struct.bwn_phy_n* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %195

147:                                              ; preds = %140
  %148 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %149 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %150 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %148, i32 %149, i32 2056)
  %151 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %152 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %153 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %151, i32 %152, i32 0)
  %154 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %155 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %156 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %154, i32 %155, i32 1)
  %157 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %158 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %159 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %157, i32 %158, i32 1)
  %160 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %161 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %162 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %160, i32 %161, i32 1)
  %163 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %164 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %165 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %163, i32 %164, i32 3080)
  %166 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %167 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %168 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %166, i32 %167, i32 0)
  %169 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %170 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %171 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %169, i32 %170, i32 1)
  %172 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %173 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %174 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %172, i32 %173, i32 1)
  %175 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %176 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %177 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %175, i32 %176, i32 1)
  %178 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %179 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %180 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %178, i32 %179, i32 7430)
  store i32 0, i32* %4, align 4
  br label %181

181:                                              ; preds = %191, %147
  %182 = load i32, i32* %4, align 4
  %183 = icmp slt i32 %182, 4
  br i1 %183, label %184, label %194

184:                                              ; preds = %181
  %185 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %186 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %187 = load i32, i32* %6, align 4
  %188 = shl i32 %187, 8
  %189 = or i32 %188, 116
  %190 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %185, i32 %186, i32 %189)
  br label %191

191:                                              ; preds = %184
  %192 = load i32, i32* %4, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %4, align 4
  br label %181

194:                                              ; preds = %181
  br label %195

195:                                              ; preds = %194, %140
  %196 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %197 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %199, 2
  br i1 %200, label %201, label %234

201:                                              ; preds = %195
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %230, %201
  %203 = load i32, i32* %4, align 4
  %204 = icmp slt i32 %203, 4
  br i1 %204, label %205, label %233

205:                                              ; preds = %202
  %206 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %207 = load i32, i32* @BWN_NPHY_TABLE_ADDR, align 4
  %208 = load i32, i32* %4, align 4
  %209 = mul nsw i32 1024, %208
  %210 = add nsw i32 %209, 32
  %211 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %206, i32 %207, i32 %210)
  store i32 0, i32* %5, align 4
  br label %212

212:                                              ; preds = %226, %205
  %213 = load i32, i32* %5, align 4
  %214 = icmp slt i32 %213, 21
  br i1 %214, label %215, label %229

215:                                              ; preds = %212
  %216 = load i32, i32* %5, align 4
  %217 = load i32, i32* %4, align 4
  %218 = icmp slt i32 %217, 2
  %219 = zext i1 %218 to i64
  %220 = select i1 %218, i32 3, i32 1
  %221 = mul nsw i32 %216, %220
  store i32 %221, i32* %7, align 4
  %222 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %223 = load i32, i32* @BWN_NPHY_TABLE_DATALO, align 4
  %224 = load i32, i32* %7, align 4
  %225 = call i32 @BWN_PHY_WRITE(%struct.bwn_mac* %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %215
  %227 = load i32, i32* %5, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %5, align 4
  br label %212

229:                                              ; preds = %212
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %4, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %4, align 4
  br label %202

233:                                              ; preds = %202
  br label %234

234:                                              ; preds = %233, %195
  %235 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %236 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %237 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %238 = call i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac* %235, i32 5, i32* %236, i32* %237, i32 3)
  %239 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %240 = load i32, i32* @BWN_NPHY_OVER_DGAIN1, align 4
  %241 = load i32, i32* @BWN_NPHY_OVER_DGAIN_CCKDGECV, align 4
  %242 = xor i32 %241, -1
  %243 = and i32 %242, 65535
  %244 = load i32, i32* @BWN_NPHY_OVER_DGAIN_CCKDGECV_SHIFT, align 4
  %245 = shl i32 90, %244
  %246 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %239, i32 %240, i32 %243, i32 %245)
  %247 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %248 = call i64 @bwn_current_band(%struct.bwn_mac* %247)
  %249 = load i64, i64* @BWN_BAND_2G, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %234
  %252 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %253 = call i32 @BWN_PHY_N(i32 3165)
  %254 = call i32 @BWN_PHY_SETMASK(%struct.bwn_mac* %252, i32 %253, i32 65408, i32 4)
  br label %255

255:                                              ; preds = %251, %234
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @BWN_PHY_SET(%struct.bwn_mac*, i32, i32) #2

declare dso_local i32 @BWN_PHY_WRITE(%struct.bwn_mac*, i32, i32) #2

declare dso_local i64 @bwn_is_40mhz(%struct.bwn_mac*) #2

declare dso_local i32 @BWN_PHY_SETMASK(%struct.bwn_mac*, i32, i32, i32) #2

declare dso_local i64 @bwn_current_band(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_adjust_lna_gain_table(%struct.bwn_mac*) #2

declare dso_local i32 @bwn_nphy_set_rf_sequence(%struct.bwn_mac*, i32, i32*, i32*, i32) #2

declare dso_local i32 @BWN_PHY_N(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
