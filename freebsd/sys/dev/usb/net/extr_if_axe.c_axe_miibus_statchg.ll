; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_axe.c_axe_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axe_softc = type { i32, i32, i32 }
%struct.mii_data = type { i32, i32 }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@AXE_FLAG_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@AXE_FLAG_178 = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@AXE_MEDIA_FULL_DUPLEX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@AXE_178_MEDIA_TXFLOW_CONTROL_EN = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@AXE_178_MEDIA_RXFLOW_CONTROL_EN = common dso_local global i32 0, align 4
@AXE_178_MEDIA_RX_EN = common dso_local global i32 0, align 4
@AXE_178_MEDIA_MAGIC = common dso_local global i32 0, align 4
@AXE_178_MEDIA_ENCK = common dso_local global i32 0, align 4
@AXE_178_MEDIA_GMII = common dso_local global i32 0, align 4
@AXE_178_MEDIA_100TX = common dso_local global i32 0, align 4
@AXE_CMD_WRITE_MEDIA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"media change failed, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @axe_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axe_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.axe_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.axe_softc* @device_get_softc(i32 %9)
  store %struct.axe_softc* %10, %struct.axe_softc** %3, align 8
  %11 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %12 = call %struct.mii_data* @GET_MII(%struct.axe_softc* %11)
  store %struct.mii_data* %12, %struct.mii_data** %4, align 8
  %13 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %14 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %13, i32 0, i32 2
  %15 = call i32 @mtx_owned(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %20 = call i32 @AXE_LOCK(%struct.axe_softc* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %23 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %22, i32 0, i32 1
  %24 = call %struct.ifnet* @uether_getifp(i32* %23)
  store %struct.ifnet* %24, %struct.ifnet** %5, align 8
  %25 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %26 = icmp eq %struct.mii_data* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %21
  %28 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %29 = icmp eq %struct.ifnet* %28, null
  br i1 %29, label %37, label %30

30:                                               ; preds = %27
  %31 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30, %27, %21
  br label %181

38:                                               ; preds = %30
  %39 = load i32, i32* @AXE_FLAG_LINK, align 4
  %40 = xor i32 %39, -1
  %41 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %42 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %46 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IFM_ACTIVE, align 4
  %49 = load i32, i32* @IFM_AVALID, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = load i32, i32* @IFM_ACTIVE, align 4
  %53 = load i32, i32* @IFM_AVALID, align 4
  %54 = or i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %83

56:                                               ; preds = %38
  %57 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %58 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @IFM_SUBTYPE(i32 %59)
  switch i32 %60, label %81 [
    i32 128, label %61
    i32 129, label %61
    i32 130, label %67
  ]

61:                                               ; preds = %56, %56
  %62 = load i32, i32* @AXE_FLAG_LINK, align 4
  %63 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %64 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %82

67:                                               ; preds = %56
  %68 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %69 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AXE_FLAG_178, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %82

75:                                               ; preds = %67
  %76 = load i32, i32* @AXE_FLAG_LINK, align 4
  %77 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %78 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %82

81:                                               ; preds = %56
  br label %82

82:                                               ; preds = %81, %75, %74, %61
  br label %83

83:                                               ; preds = %82, %38
  %84 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %85 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @AXE_FLAG_LINK, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %181

91:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  %92 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %93 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @IFM_OPTIONS(i32 %94)
  %96 = load i32, i32* @IFM_FDX, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %132

99:                                               ; preds = %91
  %100 = load i32, i32* @AXE_MEDIA_FULL_DUPLEX, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  %103 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %104 = call i64 @AXE_IS_178_FAMILY(%struct.axe_softc* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %131

106:                                              ; preds = %99
  %107 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %108 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @IFM_OPTIONS(i32 %109)
  %111 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* @AXE_178_MEDIA_TXFLOW_CONTROL_EN, align 4
  %116 = load i32, i32* %6, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %106
  %119 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %120 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @IFM_OPTIONS(i32 %121)
  %123 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load i32, i32* @AXE_178_MEDIA_RXFLOW_CONTROL_EN, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %126, %118
  br label %131

131:                                              ; preds = %130, %99
  br label %132

132:                                              ; preds = %131, %91
  %133 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %134 = call i64 @AXE_IS_178_FAMILY(%struct.axe_softc* %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %169

136:                                              ; preds = %132
  %137 = load i32, i32* @AXE_178_MEDIA_RX_EN, align 4
  %138 = load i32, i32* @AXE_178_MEDIA_MAGIC, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* %6, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %143 = getelementptr inbounds %struct.axe_softc, %struct.axe_softc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AXE_FLAG_178, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %136
  %149 = load i32, i32* @AXE_178_MEDIA_ENCK, align 4
  %150 = load i32, i32* %6, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %148, %136
  %153 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %154 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @IFM_SUBTYPE(i32 %155)
  switch i32 %156, label %168 [
    i32 130, label %157
    i32 129, label %163
    i32 128, label %167
  ]

157:                                              ; preds = %152
  %158 = load i32, i32* @AXE_178_MEDIA_GMII, align 4
  %159 = load i32, i32* @AXE_178_MEDIA_ENCK, align 4
  %160 = or i32 %158, %159
  %161 = load i32, i32* %6, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %6, align 4
  br label %168

163:                                              ; preds = %152
  %164 = load i32, i32* @AXE_178_MEDIA_100TX, align 4
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %6, align 4
  br label %168

167:                                              ; preds = %152
  br label %168

168:                                              ; preds = %152, %167, %163, %157
  br label %169

169:                                              ; preds = %168, %132
  %170 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %171 = load i32, i32* @AXE_CMD_WRITE_MEDIA, align 4
  %172 = load i32, i32* %6, align 4
  %173 = call i32 @axe_cmd(%struct.axe_softc* %170, i32 %171, i32 0, i32 %172, i32* null)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %169
  %177 = load i32, i32* %2, align 4
  %178 = load i32, i32* %7, align 4
  %179 = call i32 @device_printf(i32 %177, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %176, %169
  br label %181

181:                                              ; preds = %180, %90, %37
  %182 = load i32, i32* %8, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %181
  %185 = load %struct.axe_softc*, %struct.axe_softc** %3, align 8
  %186 = call i32 @AXE_UNLOCK(%struct.axe_softc* %185)
  br label %187

187:                                              ; preds = %184, %181
  ret void
}

declare dso_local %struct.axe_softc* @device_get_softc(i32) #1

declare dso_local %struct.mii_data* @GET_MII(%struct.axe_softc*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @AXE_LOCK(%struct.axe_softc*) #1

declare dso_local %struct.ifnet* @uether_getifp(i32*) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i64 @AXE_IS_178_FAMILY(%struct.axe_softc*) #1

declare dso_local i32 @axe_cmd(%struct.axe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @AXE_UNLOCK(%struct.axe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
