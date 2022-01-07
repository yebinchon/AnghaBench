; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_dcphy.c_dcphy_service.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_dcphy.c_dcphy_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_softc = type { i32 }
%struct.mii_data = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ifmedia_entry* }
%struct.ifmedia_entry = type { i32 }
%struct.dc_softc = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFM_NONE = common dso_local global i32 0, align 4
@DC_NETCFG = common dso_local global i32 0, align 4
@DC_NETCFG_FULLDUPLEX = common dso_local global i32 0, align 4
@DC_NETCFG_PORTSEL = common dso_local global i32 0, align 4
@DC_NETCFG_PCS = common dso_local global i32 0, align 4
@DC_NETCFG_SCRAMBLER = common dso_local global i32 0, align 4
@DC_NETCFG_SPEEDSEL = common dso_local global i32 0, align 4
@DC_10BTCTRL = common dso_local global i32 0, align 4
@DC_TCTL_AUTONEGENBL = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@DC_SIARESET = common dso_local global i32 0, align 4
@DC_SIA_RESET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DC_10BTSTAT = common dso_local global i32 0, align 4
@DC_TSTAT_LS10 = common dso_local global i32 0, align 4
@DC_TSTAT_LS100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_softc*, %struct.mii_data*, i32)* @dcphy_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcphy_service(%struct.mii_softc* %0, %struct.mii_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_softc*, align 8
  %6 = alloca %struct.mii_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dc_softc*, align 8
  %9 = alloca %struct.ifmedia_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_softc* %0, %struct.mii_softc** %5, align 8
  store %struct.mii_data* %1, %struct.mii_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %13 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %14, align 8
  store %struct.ifmedia_entry* %15, %struct.ifmedia_entry** %9, align 8
  %16 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %17 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.dc_softc* @if_getsoftc(i32 %18)
  store %struct.dc_softc* %19, %struct.dc_softc** %8, align 8
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %196 [
    i32 129, label %21
    i32 130, label %22
    i32 128, label %153
  ]

21:                                               ; preds = %3
  br label %196

22:                                               ; preds = %3
  %23 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %24 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @if_getflags(i32 %25)
  %27 = load i32, i32* @IFF_UP, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %196

31:                                               ; preds = %22
  %32 = load i32, i32* @IFM_NONE, align 4
  %33 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %34 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %36 = load i32, i32* @DC_NETCFG, align 4
  %37 = call i8* @CSR_READ_4(%struct.dc_softc* %35, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %40 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @DC_NETCFG_PCS, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @DC_NETCFG_SCRAMBLER, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @DC_NETCFG_SPEEDSEL, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %11, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %11, align 4
  %51 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %52 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @IFM_SUBTYPE(i32 %53)
  switch i32 %54, label %150 [
    i32 131, label %55
    i32 133, label %58
    i32 132, label %92
  ]

55:                                               ; preds = %31
  %56 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %57 = call i32 @dcphy_auto(%struct.mii_softc* %56)
  br label %152

58:                                               ; preds = %31
  %59 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %60 = call i32 @PHY_RESET(%struct.mii_softc* %59)
  %61 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %62 = load i32, i32* @DC_10BTCTRL, align 4
  %63 = load i32, i32* @DC_TCTL_AUTONEGENBL, align 4
  %64 = call i32 @DC_CLRBIT(%struct.dc_softc* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %66 = load i32, i32* @DC_NETCFG_PCS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DC_NETCFG_SCRAMBLER, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %11, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %11, align 4
  %72 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %73 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IFM_FDX, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %58
  %79 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %11, align 4
  br label %87

82:                                               ; preds = %58
  %83 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %11, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %82, %78
  %88 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %89 = load i32, i32* @DC_NETCFG, align 4
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @CSR_WRITE_4(%struct.dc_softc* %88, i32 %89, i32 %90)
  br label %152

92:                                               ; preds = %31
  %93 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %94 = load i32, i32* @DC_SIARESET, align 4
  %95 = load i32, i32* @DC_SIA_RESET, align 4
  %96 = call i32 @DC_CLRBIT(%struct.dc_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %98 = load i32, i32* @DC_10BTCTRL, align 4
  %99 = call i32 @DC_CLRBIT(%struct.dc_softc* %97, i32 %98, i32 65535)
  %100 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %101 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @IFM_FDX, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %92
  %107 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %108 = load i32, i32* @DC_10BTCTRL, align 4
  %109 = call i32 @DC_SETBIT(%struct.dc_softc* %107, i32 %108, i32 32573)
  br label %114

110:                                              ; preds = %92
  %111 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %112 = load i32, i32* @DC_10BTCTRL, align 4
  %113 = call i32 @DC_SETBIT(%struct.dc_softc* %111, i32 %112, i32 32575)
  br label %114

114:                                              ; preds = %110, %106
  %115 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %116 = load i32, i32* @DC_SIARESET, align 4
  %117 = load i32, i32* @DC_SIA_RESET, align 4
  %118 = call i32 @DC_SETBIT(%struct.dc_softc* %115, i32 %116, i32 %117)
  %119 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %120 = load i32, i32* @DC_10BTCTRL, align 4
  %121 = load i32, i32* @DC_TCTL_AUTONEGENBL, align 4
  %122 = call i32 @DC_CLRBIT(%struct.dc_softc* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @DC_NETCFG_PORTSEL, align 4
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %11, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* @DC_NETCFG_SPEEDSEL, align 4
  %128 = load i32, i32* %11, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %11, align 4
  %130 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %131 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @IFM_FDX, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %114
  %137 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %138 = load i32, i32* %11, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %11, align 4
  br label %145

140:                                              ; preds = %114
  %141 = load i32, i32* @DC_NETCFG_FULLDUPLEX, align 4
  %142 = xor i32 %141, -1
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, %142
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %140, %136
  %146 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %147 = load i32, i32* @DC_NETCFG, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @CSR_WRITE_4(%struct.dc_softc* %146, i32 %147, i32 %148)
  br label %152

150:                                              ; preds = %31
  %151 = load i32, i32* @EINVAL, align 4
  store i32 %151, i32* %4, align 4
  br label %202

152:                                              ; preds = %145, %87, %55
  br label %196

153:                                              ; preds = %3
  %154 = load %struct.mii_data*, %struct.mii_data** %6, align 8
  %155 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @if_getflags(i32 %156)
  %158 = load i32, i32* @IFF_UP, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  store i32 0, i32* %4, align 4
  br label %202

162:                                              ; preds = %153
  %163 = load %struct.ifmedia_entry*, %struct.ifmedia_entry** %9, align 8
  %164 = getelementptr inbounds %struct.ifmedia_entry, %struct.ifmedia_entry* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @IFM_SUBTYPE(i32 %165)
  %167 = icmp ne i32 %166, 131
  br i1 %167, label %168, label %169

168:                                              ; preds = %162
  br label %196

169:                                              ; preds = %162
  %170 = load %struct.dc_softc*, %struct.dc_softc** %8, align 8
  %171 = load i32, i32* @DC_10BTSTAT, align 4
  %172 = call i8* @CSR_READ_4(%struct.dc_softc* %170, i32 %171)
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %10, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @DC_TSTAT_LS10, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %169
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @DC_TSTAT_LS100, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %178, %169
  br label %196

184:                                              ; preds = %178
  %185 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %186 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 4
  %189 = icmp sle i32 %188, 50
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %196

191:                                              ; preds = %184
  %192 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %193 = getelementptr inbounds %struct.mii_softc, %struct.mii_softc* %192, i32 0, i32 0
  store i32 0, i32* %193, align 4
  %194 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %195 = call i32 @dcphy_auto(%struct.mii_softc* %194)
  br label %196

196:                                              ; preds = %3, %191, %190, %183, %168, %152, %30, %21
  %197 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %198 = call i32 @PHY_STATUS(%struct.mii_softc* %197)
  %199 = load %struct.mii_softc*, %struct.mii_softc** %5, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i32 @mii_phy_update(%struct.mii_softc* %199, i32 %200)
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %196, %161, %150
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local %struct.dc_softc* @if_getsoftc(i32) #1

declare dso_local i32 @if_getflags(i32) #1

declare dso_local i8* @CSR_READ_4(%struct.dc_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @dcphy_auto(%struct.mii_softc*) #1

declare dso_local i32 @PHY_RESET(%struct.mii_softc*) #1

declare dso_local i32 @DC_CLRBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @DC_SETBIT(%struct.dc_softc*, i32, i32) #1

declare dso_local i32 @PHY_STATUS(%struct.mii_softc*) #1

declare dso_local i32 @mii_phy_update(%struct.mii_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
