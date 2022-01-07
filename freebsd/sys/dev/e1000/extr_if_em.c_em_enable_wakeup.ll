; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_enable_wakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_enable_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64 }

@PCIY_PMG = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@E1000_WUFC_MAG = common dso_local global i32 0, align 4
@IFCAP_WOL_UCAST = common dso_local global i32 0, align 4
@E1000_WUFC_EX = common dso_local global i32 0, align 4
@IFCAP_WOL_MCAST = common dso_local global i32 0, align 4
@E1000_WUFC_MC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIN2 = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIN3 = common dso_local global i32 0, align 4
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP3_DATA = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@e1000_pchlan = common dso_local global i64 0, align 8
@e1000_ich9lan = common dso_local global i64 0, align 8
@e1000_ich10lan = common dso_local global i64 0, align 8
@E1000_WUC = common dso_local global i32 0, align 4
@E1000_WUC_PME_EN = common dso_local global i32 0, align 4
@E1000_WUFC = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@PCIR_POWER_STATUS = common dso_local global i32 0, align 4
@PCIM_PSTAT_PME = common dso_local global i32 0, align 4
@PCIM_PSTAT_PMEENABLE = common dso_local global i32 0, align 4
@IFCAP_WOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_enable_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_enable_wakeup(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call %struct.adapter* @iflib_get_softc(i32 %12)
  store %struct.adapter* %13, %struct.adapter** %3, align 8
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @iflib_get_dev(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @iflib_get_ifp(i32 %16)
  store i32 %17, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @PCIY_PMG, align 4
  %20 = call i64 @pci_find_cap(i32 %18, i32 %19, i32* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %240

23:                                               ; preds = %1
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @if_getcapenable(i32 %24)
  %26 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @E1000_WUFC_MAG, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @if_getcapenable(i32 %37)
  %39 = load i32, i32* @IFCAP_WOL_UCAST, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load i32, i32* @E1000_WUFC_EX, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.adapter*, %struct.adapter** %3, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @if_getcapenable(i32 %50)
  %52 = load i32, i32* @IFCAP_WOL_MCAST, align 4
  %53 = and i32 %51, %52
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load i32, i32* @E1000_WUFC_MC, align 4
  %57 = xor i32 %56, -1
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = and i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %75

62:                                               ; preds = %49
  %63 = load %struct.adapter*, %struct.adapter** %3, align 8
  %64 = getelementptr inbounds %struct.adapter, %struct.adapter* %63, i32 0, i32 1
  %65 = load i32, i32* @E1000_RCTL, align 4
  %66 = call i32 @E1000_READ_REG(%struct.TYPE_9__* %64, i32 %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* @E1000_RCTL_MPE, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  %70 = load %struct.adapter*, %struct.adapter** %3, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 1
  %72 = load i32, i32* @E1000_RCTL, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @E1000_WRITE_REG(%struct.TYPE_9__* %71, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %62, %55
  %76 = load %struct.adapter*, %struct.adapter** %3, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @E1000_WUFC_EX, align 4
  %80 = load i32, i32* @E1000_WUFC_MAG, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @E1000_WUFC_MC, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %78, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %75
  br label %207

87:                                               ; preds = %75
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 1
  %90 = load i32, i32* @E1000_CTRL, align 4
  %91 = call i32 @E1000_READ_REG(%struct.TYPE_9__* %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @E1000_CTRL_SWDPIN2, align 4
  %93 = load i32, i32* @E1000_CTRL_SWDPIN3, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %8, align 4
  %97 = load %struct.adapter*, %struct.adapter** %3, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 1
  %99 = load i32, i32* @E1000_CTRL, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @E1000_WRITE_REG(%struct.TYPE_9__* %98, i32 %99, i32 %100)
  %102 = load %struct.adapter*, %struct.adapter** %3, align 8
  %103 = getelementptr inbounds %struct.adapter, %struct.adapter* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @e1000_media_type_fiber, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %117, label %109

109:                                              ; preds = %87
  %110 = load %struct.adapter*, %struct.adapter** %3, align 8
  %111 = getelementptr inbounds %struct.adapter, %struct.adapter* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %109, %87
  %118 = load %struct.adapter*, %struct.adapter** %3, align 8
  %119 = getelementptr inbounds %struct.adapter, %struct.adapter* %118, i32 0, i32 1
  %120 = load i32, i32* @E1000_CTRL_EXT, align 4
  %121 = call i32 @E1000_READ_REG(%struct.TYPE_9__* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* @E1000_CTRL_EXT_SDP3_DATA, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %9, align 4
  %125 = load %struct.adapter*, %struct.adapter** %3, align 8
  %126 = getelementptr inbounds %struct.adapter, %struct.adapter* %125, i32 0, i32 1
  %127 = load i32, i32* @E1000_CTRL_EXT, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @E1000_WRITE_REG(%struct.TYPE_9__* %126, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %117, %109
  %131 = load %struct.adapter*, %struct.adapter** %3, align 8
  %132 = getelementptr inbounds %struct.adapter, %struct.adapter* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @e1000_ich8lan, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %162, label %138

138:                                              ; preds = %130
  %139 = load %struct.adapter*, %struct.adapter** %3, align 8
  %140 = getelementptr inbounds %struct.adapter, %struct.adapter* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @e1000_pchlan, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %162, label %146

146:                                              ; preds = %138
  %147 = load %struct.adapter*, %struct.adapter** %3, align 8
  %148 = getelementptr inbounds %struct.adapter, %struct.adapter* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @e1000_ich9lan, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %162, label %154

154:                                              ; preds = %146
  %155 = load %struct.adapter*, %struct.adapter** %3, align 8
  %156 = getelementptr inbounds %struct.adapter, %struct.adapter* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @e1000_ich10lan, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %154, %146, %138, %130
  %163 = load %struct.adapter*, %struct.adapter** %3, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 1
  %165 = call i32 @e1000_suspend_workarounds_ich8lan(%struct.TYPE_9__* %164)
  br label %166

166:                                              ; preds = %162, %154
  %167 = load %struct.adapter*, %struct.adapter** %3, align 8
  %168 = getelementptr inbounds %struct.adapter, %struct.adapter* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @e1000_pchlan, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %166
  %175 = load %struct.adapter*, %struct.adapter** %3, align 8
  %176 = call i32 @em_enable_phy_wakeup(%struct.adapter* %175)
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %6, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %207

180:                                              ; preds = %174
  br label %194

181:                                              ; preds = %166
  %182 = load %struct.adapter*, %struct.adapter** %3, align 8
  %183 = getelementptr inbounds %struct.adapter, %struct.adapter* %182, i32 0, i32 1
  %184 = load i32, i32* @E1000_WUC, align 4
  %185 = load i32, i32* @E1000_WUC_PME_EN, align 4
  %186 = call i32 @E1000_WRITE_REG(%struct.TYPE_9__* %183, i32 %184, i32 %185)
  %187 = load %struct.adapter*, %struct.adapter** %3, align 8
  %188 = getelementptr inbounds %struct.adapter, %struct.adapter* %187, i32 0, i32 1
  %189 = load i32, i32* @E1000_WUFC, align 4
  %190 = load %struct.adapter*, %struct.adapter** %3, align 8
  %191 = getelementptr inbounds %struct.adapter, %struct.adapter* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @E1000_WRITE_REG(%struct.TYPE_9__* %188, i32 %189, i32 %192)
  br label %194

194:                                              ; preds = %181, %180
  %195 = load %struct.adapter*, %struct.adapter** %3, align 8
  %196 = getelementptr inbounds %struct.adapter, %struct.adapter* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @e1000_phy_igp_3, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %194
  %203 = load %struct.adapter*, %struct.adapter** %3, align 8
  %204 = getelementptr inbounds %struct.adapter, %struct.adapter* %203, i32 0, i32 1
  %205 = call i32 @e1000_igp3_phy_powerdown_workaround_ich8lan(%struct.TYPE_9__* %204)
  br label %206

206:                                              ; preds = %202, %194
  br label %207

207:                                              ; preds = %206, %179, %86
  %208 = load i32, i32* %4, align 4
  %209 = load i32, i32* %7, align 4
  %210 = load i32, i32* @PCIR_POWER_STATUS, align 4
  %211 = add nsw i32 %209, %210
  %212 = call i32 @pci_read_config(i32 %208, i32 %211, i32 2)
  store i32 %212, i32* %11, align 4
  %213 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %214 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %215 = or i32 %213, %214
  %216 = xor i32 %215, -1
  %217 = load i32, i32* %11, align 4
  %218 = and i32 %217, %216
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %6, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %207
  %222 = load i32, i32* %5, align 4
  %223 = call i32 @if_getcapenable(i32 %222)
  %224 = load i32, i32* @IFCAP_WOL, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %221
  %228 = load i32, i32* @PCIM_PSTAT_PME, align 4
  %229 = load i32, i32* @PCIM_PSTAT_PMEENABLE, align 4
  %230 = or i32 %228, %229
  %231 = load i32, i32* %11, align 4
  %232 = or i32 %231, %230
  store i32 %232, i32* %11, align 4
  br label %233

233:                                              ; preds = %227, %221, %207
  %234 = load i32, i32* %4, align 4
  %235 = load i32, i32* %7, align 4
  %236 = load i32, i32* @PCIR_POWER_STATUS, align 4
  %237 = add nsw i32 %235, %236
  %238 = load i32, i32* %11, align 4
  %239 = call i32 @pci_write_config(i32 %234, i32 %237, i32 %238, i32 2)
  br label %240

240:                                              ; preds = %233, %22
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @iflib_get_ifp(i32) #1

declare dso_local i64 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i32 @if_getcapenable(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @e1000_suspend_workarounds_ich8lan(%struct.TYPE_9__*) #1

declare dso_local i32 @em_enable_phy_wakeup(%struct.adapter*) #1

declare dso_local i32 @e1000_igp3_phy_powerdown_workaround_ich8lan(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
