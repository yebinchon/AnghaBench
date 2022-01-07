; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl45_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_cl45_read.c"
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
@.str = private unnamed_addr constant [26 x i8] c"read phy register failed\0A\00", align 1
@ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT = common dso_local global i32 0, align 4
@ELINK_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_READ_45 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_DATA = common dso_local global i32 0, align 4
@ELINK_FLAGS_MDC_MDIO_WA = common dso_local global i32 0, align 4
@ELINK_FLAGS_DUMMY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*)* @elink_cl45_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_cl45_read(%struct.bxe_softc* %0, %struct.elink_phy* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca %struct.elink_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store %struct.elink_phy* %1, %struct.elink_phy** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
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
  br i1 %104, label %105, label %113

105:                                              ; preds = %100
  %106 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %107 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %109 = load i32, i32* @ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT, align 4
  %110 = call i32 @elink_cb_event_log(%struct.bxe_softc* %108, i32 %109)
  %111 = load i32*, i32** %10, align 8
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* @ELINK_STATUS_TIMEOUT, align 4
  store i32 %112, i32* %13, align 4
  br label %172

113:                                              ; preds = %100
  %114 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %115 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 21
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 %118, 16
  %120 = or i32 %117, %119
  %121 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_READ_45, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %124 = or i32 %122, %123
  store i32 %124, i32* %11, align 4
  %125 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %126 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %127 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %130 = add nsw i64 %128, %129
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @REG_WR(%struct.bxe_softc* %125, i64 %130, i32 %131)
  store i32 0, i32* %12, align 4
  br label %133

133:                                              ; preds = %155, %113
  %134 = load i32, i32* %12, align 4
  %135 = icmp slt i32 %134, 50
  br i1 %135, label %136, label %158

136:                                              ; preds = %133
  %137 = call i32 @DELAY(i32 10)
  %138 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %139 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %140 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %139, i32 0, i32 2
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %143 = add nsw i64 %141, %142
  %144 = call i32 @REG_RD(%struct.bxe_softc* %138, i64 %143)
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %136
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @EMAC_MDIO_COMM_DATA, align 4
  %152 = and i32 %150, %151
  %153 = load i32*, i32** %10, align 8
  store i32 %152, i32* %153, align 4
  br label %158

154:                                              ; preds = %136
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  br label %133

158:                                              ; preds = %149, %133
  %159 = load i32, i32* %11, align 4
  %160 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %165 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %166 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %167 = load i32, i32* @ELINK_LOG_ID_MDIO_ACCESS_TIMEOUT, align 4
  %168 = call i32 @elink_cb_event_log(%struct.bxe_softc* %166, i32 %167)
  %169 = load i32*, i32** %10, align 8
  store i32 0, i32* %169, align 4
  %170 = load i32, i32* @ELINK_STATUS_TIMEOUT, align 4
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %163, %158
  br label %172

172:                                              ; preds = %171, %105
  %173 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %174 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ELINK_FLAGS_MDC_MDIO_WA, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %172
  %180 = load i32, i32* @ELINK_FLAGS_DUMMY_READ, align 4
  %181 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %182 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = xor i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %186 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @ELINK_FLAGS_DUMMY_READ, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %179
  %192 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %193 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @elink_cl45_read(%struct.bxe_softc* %192, %struct.elink_phy* %193, i32 %194, i32 15, i32* %15)
  br label %196

196:                                              ; preds = %191, %179
  br label %197

197:                                              ; preds = %196, %172
  %198 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %199 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @ELINK_FLAGS_MDC_MDIO_WA_B0, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %206 = load %struct.elink_phy*, %struct.elink_phy** %7, align 8
  %207 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @EMAC_REG_EMAC_MDIO_STATUS, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i32, i32* @EMAC_MDIO_STATUS_10MB, align 4
  %212 = call i32 @elink_bits_dis(%struct.bxe_softc* %205, i64 %210, i32 %211)
  br label %213

213:                                              ; preds = %204, %197
  %214 = load i32, i32* %13, align 4
  ret i32 %214
}

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i64) #1

declare dso_local i32 @elink_set_mdio_clk(%struct.bxe_softc*, i32, i64) #1

declare dso_local i32 @elink_bits_en(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i64, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cb_event_log(%struct.bxe_softc*, i32) #1

declare dso_local i32 @elink_bits_dis(%struct.bxe_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
