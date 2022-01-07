; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl45_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl45_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.elink_phy = type { i32, i32, i64 }

@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@ELINK_FLAGS_MDC_MDIO_WA_G = common dso_local global i32 0, align 4
@MISC_REG_CHIP_NUM = common dso_local global i64 0, align 8
@MISC_REG_CHIP_REV = common dso_local global i64 0, align 8
@ELINK_FLAGS_MDC_MDIO_WA_B0 = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_STATUS = common dso_local global i64 0, align 8
@EMAC_MDIO_STATUS_10MB = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_ADDRESS = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_COMM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"write phy register failed\0A\00", align 1
@ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@ELINK_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_WRITE_45 = common dso_local global i32 0, align 4
@ELINK_FLAGS_MDC_MDIO_WA = common dso_local global i32 0, align 4
@ELINK_FLAGS_DUMMY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32)* @elink_cl45_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_cl45_write(%struct.bxe_softc* %0, %struct.elink_phy* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.elink_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %18 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ELINK_FLAGS_MDC_MDIO_WA_G, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %5
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %25 = load i64, i64* @MISC_REG_CHIP_NUM, align 8
  %26 = call i32 @REG_RD(%struct.bxe_softc* %24, i64 %25)
  %27 = shl i32 %26, 16
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %29 = load i64, i64* @MISC_REG_CHIP_REV, align 8
  %30 = call i32 @REG_RD(%struct.bxe_softc* %28, i64 %29)
  %31 = and i32 %30, 15
  %32 = shl i32 %31, 12
  %33 = or i32 %27, %32
  store i32 %33, i32* %14, align 4
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %35 = load i32, i32* %14, align 4
  %36 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %37 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @elink_set_mdio_clk(%struct.bxe_softc* %34, i32 %35, i64 %38)
  br label %40

40:                                               ; preds = %23, %5
  %41 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %42 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ELINK_FLAGS_MDC_MDIO_WA_B0, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %40
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %49 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %50 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EMAC_REG_EMAC_MDIO_STATUS, align 8
  %53 = add nsw i64 %51, %52
  %54 = load i32, i32* @EMAC_MDIO_STATUS_10MB, align 4
  %55 = call i32 @elink_bits_en(%struct.bxe_softc* %48, i64 %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %40
  %57 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %58 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 21
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = load i32, i32* %9, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_ADDRESS, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %69 = or i32 %67, %68
  store i32 %69, i32* %11, align 4
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %71 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %72 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %75 = add nsw i64 %73, %74
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @REG_WR(%struct.bxe_softc* %70, i64 %75, i32 %76)
  store i32 0, i32* %12, align 4
  br label %78

78:                                               ; preds = %97, %56
  %79 = load i32, i32* %12, align 4
  %80 = icmp slt i32 %79, 50
  br i1 %80, label %81, label %100

81:                                               ; preds = %78
  %82 = call i32 @DELAY(i32 10)
  %83 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %84 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %85 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @REG_RD(%struct.bxe_softc* %83, i64 %88)
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %81
  %95 = call i32 @DELAY(i32 5)
  br label %100

96:                                               ; preds = %81
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %78

100:                                              ; preds = %94, %78
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %107 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %109 = load i32, i32* @ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT, align 4
  %110 = call i32 @elink_cb_event_log(%struct.bxe_softc* %108, i32 %109)
  %111 = load i32, i32* @ELINK_STATUS_TIMEOUT, align 4
  store i32 %111, i32* %13, align 4
  br label %169

112:                                              ; preds = %100
  %113 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %114 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 21
  %117 = load i32, i32* %8, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %116, %118
  %120 = load i32, i32* %10, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_WRITE_45, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %11, align 4
  %126 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %127 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %128 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @REG_WR(%struct.bxe_softc* %126, i64 %131, i32 %132)
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %153, %112
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 50
  br i1 %136, label %137, label %156

137:                                              ; preds = %134
  %138 = call i32 @DELAY(i32 10)
  %139 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %140 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %141 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @REG_RD(%struct.bxe_softc* %139, i64 %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %137
  %151 = call i32 @DELAY(i32 5)
  br label %156

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %12, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %12, align 4
  br label %134

156:                                              ; preds = %150, %134
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %163 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %162, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %165 = load i32, i32* @ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT, align 4
  %166 = call i32 @elink_cb_event_log(%struct.bxe_softc* %164, i32 %165)
  %167 = load i32, i32* @ELINK_STATUS_TIMEOUT, align 4
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %161, %156
  br label %169

169:                                              ; preds = %168, %105
  %170 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %171 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @ELINK_FLAGS_MDC_MDIO_WA, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %194

176:                                              ; preds = %169
  %177 = load i32, i32* @ELINK_FLAGS_DUMMY_READ, align 4
  %178 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %179 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = xor i32 %180, %177
  store i32 %181, i32* %179, align 8
  %182 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %183 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ELINK_FLAGS_DUMMY_READ, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %176
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %190 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @elink_cl45_read(%struct.bxe_softc* %189, %struct.elink_phy* %190, i32 %191, i32 15, i32* %15)
  br label %193

193:                                              ; preds = %188, %176
  br label %194

194:                                              ; preds = %193, %169
  %195 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %196 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @ELINK_FLAGS_MDC_MDIO_WA_B0, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %194
  %202 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %203 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %204 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @EMAC_REG_EMAC_MDIO_STATUS, align 8
  %207 = add nsw i64 %205, %206
  %208 = load i32, i32* @EMAC_MDIO_STATUS_10MB, align 4
  %209 = call i32 @elink_bits_dis(%struct.bxe_softc* %202, i64 %207, i32 %208)
  br label %210

210:                                              ; preds = %201, %194
  %211 = load i32, i32* %13, align 4
  ret i32 %211
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @elink_set_mdio_clk(%struct.bxe_softc*, i32, i64) #1

declare dso_local i32 @elink_bits_en(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cb_event_log(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
