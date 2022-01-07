; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_hv_phy_workarounds_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_hv_phy_workarounds_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.4*, i32, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.e1000_hw.4 = type opaque
%struct.TYPE_4__ = type { i64 }

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"e1000_hv_phy_workarounds_ich8lan\00", align 1
@e1000_pchlan = common dso_local global i64 0, align 8
@e1000_phy_82577 = common dso_local global i64 0, align 8
@e1000_phy_82578 = common dso_local global i64 0, align 8
@HV_KMRN_FIFO_CTRLSTA = common dso_local global i32 0, align 4
@PHY_CONTROL = common dso_local global i32 0, align 4
@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BM_PORT_GEN_CFG = common dso_local global i32 0, align 4
@I82577_MSE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_hv_phy_workarounds_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_hv_phy_workarounds_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %6, i64* %4, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_pchlan, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %15, i64* %2, align 8
  br label %218

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_phy_82577, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = call i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw* %24)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %4, align 8
  store i64 %29, i64* %2, align 8
  br label %218

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %16
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @e1000_phy_82577, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %31
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %63, label %44

44:                                               ; preds = %38
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %63, label %50

50:                                               ; preds = %44, %31
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @e1000_phy_82578, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %92

57:                                               ; preds = %50
  %58 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %59 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %92

63:                                               ; preds = %57, %44, %38
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 4
  %68 = load i64 (%struct.e1000_hw.4*, i32, i32)*, i64 (%struct.e1000_hw.4*, i32, i32)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.4*
  %71 = call i32 @PHY_REG(i32 769, i32 25)
  %72 = call i64 %68(%struct.e1000_hw.4* %70, i32 %71, i32 17457)
  store i64 %72, i64* %4, align 8
  %73 = load i64, i64* %4, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %63
  %76 = load i64, i64* %4, align 8
  store i64 %76, i64* %2, align 8
  br label %218

77:                                               ; preds = %63
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i64 (%struct.e1000_hw.4*, i32, i32)*, i64 (%struct.e1000_hw.4*, i32, i32)** %81, align 8
  %83 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %84 = bitcast %struct.e1000_hw* %83 to %struct.e1000_hw.4*
  %85 = load i32, i32* @HV_KMRN_FIFO_CTRLSTA, align 4
  %86 = call i64 %82(%struct.e1000_hw.4* %84, i32 %85, i32 41476)
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %77
  %90 = load i64, i64* %4, align 8
  store i64 %90, i64* %2, align 8
  br label %218

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91, %57, %50
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @e1000_phy_82578, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %123

99:                                               ; preds = %92
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %103, 2
  br i1 %104, label %105, label %122

105:                                              ; preds = %99
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = call i32 @e1000_phy_sw_reset_generic(%struct.e1000_hw* %106)
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 4
  %112 = load i64 (%struct.e1000_hw.4*, i32, i32)*, i64 (%struct.e1000_hw.4*, i32, i32)** %111, align 8
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %114 = bitcast %struct.e1000_hw* %113 to %struct.e1000_hw.4*
  %115 = load i32, i32* @PHY_CONTROL, align 4
  %116 = call i64 %112(%struct.e1000_hw.4* %114, i32 %115, i32 12608)
  store i64 %116, i64* %4, align 8
  %117 = load i64, i64* %4, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %105
  %120 = load i64, i64* %4, align 8
  store i64 %120, i64* %2, align 8
  br label %218

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121, %99
  br label %123

123:                                              ; preds = %122, %92
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 3
  %128 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %127, align 8
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %130 = bitcast %struct.e1000_hw* %129 to %struct.e1000_hw.3*
  %131 = call i64 %128(%struct.e1000_hw.3* %130)
  store i64 %131, i64* %4, align 8
  %132 = load i64, i64* %4, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i64, i64* %4, align 8
  store i64 %135, i64* %2, align 8
  br label %218

136:                                              ; preds = %123
  %137 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %138 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 2
  store i32 1, i32* %139, align 4
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %141 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %142 = call i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw* %140, i32 %141, i32 0)
  store i64 %142, i64* %4, align 8
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  %147 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %146, align 8
  %148 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %149 = bitcast %struct.e1000_hw* %148 to %struct.e1000_hw.0*
  %150 = call i32 %147(%struct.e1000_hw.0* %149)
  %151 = load i64, i64* %4, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %136
  %154 = load i64, i64* %4, align 8
  store i64 %154, i64* %2, align 8
  br label %218

155:                                              ; preds = %136
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = load i32, i32* @TRUE, align 4
  %158 = call i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw* %156, i32 %157)
  store i64 %158, i64* %4, align 8
  %159 = load i64, i64* %4, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %155
  %162 = load i64, i64* %4, align 8
  store i64 %162, i64* %2, align 8
  br label %218

163:                                              ; preds = %155
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 3
  %168 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %167, align 8
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %170 = bitcast %struct.e1000_hw* %169 to %struct.e1000_hw.3*
  %171 = call i64 %168(%struct.e1000_hw.3* %170)
  store i64 %171, i64* %4, align 8
  %172 = load i64, i64* %4, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %163
  %175 = load i64, i64* %4, align 8
  store i64 %175, i64* %2, align 8
  br label %218

176:                                              ; preds = %163
  %177 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %178 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 2
  %181 = load i64 (%struct.e1000_hw.2*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32, i32*)** %180, align 8
  %182 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %183 = bitcast %struct.e1000_hw* %182 to %struct.e1000_hw.2*
  %184 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %185 = call i64 %181(%struct.e1000_hw.2* %183, i32 %184, i32* %5)
  store i64 %185, i64* %4, align 8
  %186 = load i64, i64* %4, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %176
  br label %208

189:                                              ; preds = %176
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 3
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  %194 = load i64 (%struct.e1000_hw.1*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32)** %193, align 8
  %195 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %196 = bitcast %struct.e1000_hw* %195 to %struct.e1000_hw.1*
  %197 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %198 = load i32, i32* %5, align 4
  %199 = and i32 %198, 255
  %200 = call i64 %194(%struct.e1000_hw.1* %196, i32 %197, i32 %199)
  store i64 %200, i64* %4, align 8
  %201 = load i64, i64* %4, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %189
  br label %208

204:                                              ; preds = %189
  %205 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %206 = load i32, i32* @I82577_MSE_THRESHOLD, align 4
  %207 = call i64 @e1000_write_emi_reg_locked(%struct.e1000_hw* %205, i32 %206, i32 52)
  store i64 %207, i64* %4, align 8
  br label %208

208:                                              ; preds = %204, %203, %188
  %209 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %210 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 3
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %212, align 8
  %214 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %215 = bitcast %struct.e1000_hw* %214 to %struct.e1000_hw.0*
  %216 = call i32 %213(%struct.e1000_hw.0* %215)
  %217 = load i64, i64* %4, align 8
  store i64 %217, i64* %2, align 8
  br label %218

218:                                              ; preds = %208, %174, %161, %153, %134, %119, %89, %75, %28, %14
  %219 = load i64, i64* %2, align 8
  ret i64 %219
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_set_mdio_slow_mode_hv(%struct.e1000_hw*) #1

declare dso_local i32 @PHY_REG(i32, i32) #1

declare dso_local i32 @e1000_phy_sw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i64 @e1000_write_phy_reg_mdic(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_k1_gig_workaround_hv(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_write_emi_reg_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
