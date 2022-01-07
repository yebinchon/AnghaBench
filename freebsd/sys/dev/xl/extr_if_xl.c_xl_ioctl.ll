; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, i32, i32, i32, %struct.xl_softc* }
%struct.xl_softc = type { i32, i32, i32, i32, i32, i32* }
%struct.ifreq = type { i32 }
%struct.mii_data = type { i32 }

@IFF_UP = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@XL905B_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_WOL_MAGIC = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@XL_CMD_INTR_ACK = common dso_local global i32 0, align 4
@XL_CMD_INTR_ENB = common dso_local global i32 0, align 4
@XL_COMMAND = common dso_local global i32 0, align 4
@XL_FLAG_FUNCREG = common dso_local global i32 0, align 4
@XL_INTRS = common dso_local global i32 0, align 4
@xl_poll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i64)* @xl_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_ioctl(%struct.ifnet* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.xl_softc*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mii_data*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %13 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %12, i32 0, i32 5
  %14 = load %struct.xl_softc*, %struct.xl_softc** %13, align 8
  store %struct.xl_softc* %14, %struct.xl_softc** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.ifreq*
  store %struct.ifreq* %16, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  store %struct.mii_data* null, %struct.mii_data** %11, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %202 [
    i32 129, label %18
    i32 133, label %73
    i32 132, label %73
    i32 131, label %88
    i32 128, label %88
    i32 130, label %116
  ]

18:                                               ; preds = %3
  %19 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %20 = call i32 @XL_LOCK(%struct.xl_softc* %19)
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IFF_UP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %54

27:                                               ; preds = %18
  %28 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %27
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %39 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = xor i32 %37, %40
  %42 = load i32, i32* @IFF_PROMISC, align 4
  %43 = load i32, i32* @IFF_ALLMULTI, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %49 = call i32 @xl_rxfilter(%struct.xl_softc* %48)
  br label %53

50:                                               ; preds = %34, %27
  %51 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %52 = call i32 @xl_init_locked(%struct.xl_softc* %51)
  br label %53

53:                                               ; preds = %50, %47
  br label %65

54:                                               ; preds = %18
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %63 = call i32 @xl_stop(%struct.xl_softc* %62)
  br label %64

64:                                               ; preds = %61, %54
  br label %65

65:                                               ; preds = %64, %53
  %66 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %70 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %72 = call i32 @XL_UNLOCK(%struct.xl_softc* %71)
  br label %207

73:                                               ; preds = %3, %3
  %74 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %75 = call i32 @XL_LOCK(%struct.xl_softc* %74)
  %76 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %77 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %73
  %83 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %84 = call i32 @xl_rxfilter(%struct.xl_softc* %83)
  br label %85

85:                                               ; preds = %82, %73
  %86 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %87 = call i32 @XL_UNLOCK(%struct.xl_softc* %86)
  br label %207

88:                                               ; preds = %3, %3
  %89 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %90 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %95 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = call %struct.mii_data* @device_get_softc(i32* %96)
  store %struct.mii_data* %97, %struct.mii_data** %11, align 8
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  %100 = icmp eq %struct.mii_data* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %103 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %104 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %105 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %104, i32 0, i32 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ifmedia_ioctl(%struct.ifnet* %102, %struct.ifreq* %103, i32* %105, i32 %106)
  store i32 %107, i32* %9, align 4
  br label %115

108:                                              ; preds = %98
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %111 = load %struct.mii_data*, %struct.mii_data** %11, align 8
  %112 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %111, i32 0, i32 0
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @ifmedia_ioctl(%struct.ifnet* %109, %struct.ifreq* %110, i32* %112, i32 %113)
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %108, %101
  br label %207

116:                                              ; preds = %3
  %117 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %118 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %121 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = xor i32 %119, %122
  store i32 %123, i32* %10, align 4
  %124 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %125 = call i32 @XL_LOCK(%struct.xl_softc* %124)
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* @IFCAP_TXCSUM, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %163

130:                                              ; preds = %116
  %131 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %132 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IFCAP_TXCSUM, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %163

137:                                              ; preds = %130
  %138 = load i32, i32* @IFCAP_TXCSUM, align 4
  %139 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %140 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = xor i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %144 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @IFCAP_TXCSUM, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %137
  %150 = load i32, i32* @XL905B_CSUM_FEATURES, align 4
  %151 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %152 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  br label %162

155:                                              ; preds = %137
  %156 = load i32, i32* @XL905B_CSUM_FEATURES, align 4
  %157 = xor i32 %156, -1
  %158 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %159 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = and i32 %160, %157
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %155, %149
  br label %163

163:                                              ; preds = %162, %130, %116
  %164 = load i32, i32* %10, align 4
  %165 = load i32, i32* @IFCAP_RXCSUM, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %163
  %169 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %170 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IFCAP_RXCSUM, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %181

175:                                              ; preds = %168
  %176 = load i32, i32* @IFCAP_RXCSUM, align 4
  %177 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %178 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = xor i32 %179, %176
  store i32 %180, i32* %178, align 8
  br label %181

181:                                              ; preds = %175, %168, %163
  %182 = load i32, i32* %10, align 4
  %183 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %199

186:                                              ; preds = %181
  %187 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %188 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i32, i32* @IFCAP_WOL_MAGIC, align 4
  %195 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %196 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = xor i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %186, %181
  %200 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %201 = call i32 @XL_UNLOCK(%struct.xl_softc* %200)
  br label %207

202:                                              ; preds = %3
  %203 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %204 = load i32, i32* %5, align 4
  %205 = load i64, i64* %6, align 8
  %206 = call i32 @ether_ioctl(%struct.ifnet* %203, i32 %204, i64 %205)
  store i32 %206, i32* %9, align 4
  br label %207

207:                                              ; preds = %202, %199, %115, %85, %65
  %208 = load i32, i32* %9, align 4
  ret i32 %208
}

declare dso_local i32 @XL_LOCK(%struct.xl_softc*) #1

declare dso_local i32 @xl_rxfilter(%struct.xl_softc*) #1

declare dso_local i32 @xl_init_locked(%struct.xl_softc*) #1

declare dso_local i32 @xl_stop(%struct.xl_softc*) #1

declare dso_local i32 @XL_UNLOCK(%struct.xl_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @ifmedia_ioctl(%struct.ifnet*, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @ether_ioctl(%struct.ifnet*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
