; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axge.c_axge_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axge_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AXGE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@AXGE_ACCESS_MAC = common dso_local global i32 0, align 4
@AXGE_PLSR = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@MSR_FD = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@MSR_TFC = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@MSR_RFC = common dso_local global i32 0, align 4
@MSR_RE = common dso_local global i32 0, align 4
@MSR_GM = common dso_local global i32 0, align 4
@MSR_EN_125MHZ = common dso_local global i32 0, align 4
@PLSR_USB_SS = common dso_local global i32 0, align 4
@axge_bulk_size = common dso_local global i32* null, align 8
@PLSR_USB_HS = common dso_local global i32 0, align 4
@MSR_PS = common dso_local global i32 0, align 4
@AXGE_RX_BULKIN_QCTRL = common dso_local global i32 0, align 4
@AXGE_MSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @axge_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axge_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.axge_softc* @device_get_softc(i32 %10)
  store %struct.axge_softc* %11, %struct.axge_softc** %3, align 8
  %12 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %13 = call %struct.mii_data* @GET_MII(%struct.axge_softc* %12)
  store %struct.mii_data* %13, %struct.mii_data** %4, align 8
  %14 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %15 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %14, i32 0, i32 2
  %16 = call i32 @mtx_owned(i32* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %21 = call i32 @AXGE_LOCK(%struct.axge_softc* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %23, i32 0, i32 1
  %25 = call %struct.ifnet* @uether_getifp(i32* %24)
  store %struct.ifnet* %25, %struct.ifnet** %5, align 8
  %26 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %27 = icmp eq %struct.mii_data* %26, null
  br i1 %27, label %38, label %28

28:                                               ; preds = %22
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = icmp eq %struct.ifnet* %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %28
  %32 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %33 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31, %28, %22
  br label %195

39:                                               ; preds = %31
  %40 = load i32, i32* @AXGE_FLAG_LINK, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %43 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %47 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IFM_ACTIVE, align 4
  %50 = load i32, i32* @IFM_AVALID, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = load i32, i32* @IFM_ACTIVE, align 4
  %54 = load i32, i32* @IFM_AVALID, align 4
  %55 = or i32 %53, %54
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %39
  %58 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %59 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IFM_SUBTYPE(i32 %60)
  switch i32 %61, label %68 [
    i32 128, label %62
    i32 129, label %62
    i32 130, label %62
  ]

62:                                               ; preds = %57, %57, %57
  %63 = load i32, i32* @AXGE_FLAG_LINK, align 4
  %64 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %65 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %69

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %62
  br label %70

70:                                               ; preds = %69, %39
  %71 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %72 = getelementptr inbounds %struct.axge_softc, %struct.axge_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AXGE_FLAG_LINK, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %195

78:                                               ; preds = %70
  %79 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %80 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %81 = load i32, i32* @AXGE_PLSR, align 4
  %82 = call i32 @axge_read_cmd_1(%struct.axge_softc* %79, i32 %80, i32 %81)
  store i32 %82, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %83 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %84 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @IFM_OPTIONS(i32 %85)
  %87 = load i32, i32* @IFM_FDX, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %118

90:                                               ; preds = %78
  %91 = load i32, i32* @MSR_FD, align 4
  %92 = load i32, i32* %8, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %95 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @IFM_OPTIONS(i32 %96)
  %98 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %90
  %102 = load i32, i32* @MSR_TFC, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %90
  %106 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %107 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @IFM_OPTIONS(i32 %108)
  %110 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %105
  %114 = load i32, i32* @MSR_RFC, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %113, %105
  br label %118

118:                                              ; preds = %117, %78
  %119 = load i32, i32* @MSR_RE, align 4
  %120 = load i32, i32* %8, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %123 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @IFM_SUBTYPE(i32 %124)
  switch i32 %125, label %184 [
    i32 130, label %126
    i32 129, label %158
    i32 128, label %179
  ]

126:                                              ; preds = %118
  %127 = load i32, i32* @MSR_GM, align 4
  %128 = load i32, i32* @MSR_EN_125MHZ, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %8, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @PLSR_USB_SS, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %126
  %137 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %138 = load i32*, i32** @axge_bulk_size, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = call i32 @memcpy(i32* %137, i32* %139, i32 5)
  br label %157

141:                                              ; preds = %126
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @PLSR_USB_HS, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %141
  %147 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %148 = load i32*, i32** @axge_bulk_size, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = call i32 @memcpy(i32* %147, i32* %149, i32 5)
  br label %156

151:                                              ; preds = %141
  %152 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %153 = load i32*, i32** @axge_bulk_size, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = call i32 @memcpy(i32* %152, i32* %154, i32 5)
  br label %156

156:                                              ; preds = %151, %146
  br label %157

157:                                              ; preds = %156, %136
  br label %184

158:                                              ; preds = %118
  %159 = load i32, i32* @MSR_PS, align 4
  %160 = load i32, i32* %8, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %8, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @PLSR_USB_SS, align 4
  %164 = load i32, i32* @PLSR_USB_HS, align 4
  %165 = or i32 %163, %164
  %166 = and i32 %162, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %158
  %169 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %170 = load i32*, i32** @axge_bulk_size, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 2
  %172 = call i32 @memcpy(i32* %169, i32* %171, i32 5)
  br label %178

173:                                              ; preds = %158
  %174 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %175 = load i32*, i32** @axge_bulk_size, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 3
  %177 = call i32 @memcpy(i32* %174, i32* %176, i32 5)
  br label %178

178:                                              ; preds = %173, %168
  br label %184

179:                                              ; preds = %118
  %180 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %181 = load i32*, i32** @axge_bulk_size, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 3
  %183 = call i32 @memcpy(i32* %180, i32* %182, i32 5)
  br label %184

184:                                              ; preds = %118, %179, %178, %157
  %185 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %186 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %187 = load i32, i32* @AXGE_RX_BULKIN_QCTRL, align 4
  %188 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %189 = call i32 @axge_write_mem(%struct.axge_softc* %185, i32 %186, i32 5, i32 %187, i32* %188, i32 5)
  %190 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %191 = load i32, i32* @AXGE_ACCESS_MAC, align 4
  %192 = load i32, i32* @AXGE_MSR, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @axge_write_cmd_2(%struct.axge_softc* %190, i32 %191, i32 2, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %184, %77, %38
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load %struct.axge_softc*, %struct.axge_softc** %3, align 8
  %200 = call i32 @AXGE_UNLOCK(%struct.axge_softc* %199)
  br label %201

201:                                              ; preds = %198, %195
  ret void
}

declare dso_local %struct.axge_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.axge_softc*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AXGE_LOCK(%struct.axge_softc*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @axge_read_cmd_1(%struct.axge_softc*, i32, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @axge_write_mem(%struct.axge_softc*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @axge_write_cmd_2(%struct.axge_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @AXGE_UNLOCK(%struct.axge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
