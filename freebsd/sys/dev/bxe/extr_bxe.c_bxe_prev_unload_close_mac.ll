; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload_close_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload_close_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_mac_vals = type { i32, i32, i32, i32, i32*, i8*, i8*, i8* }

@FALSE = common dso_local global i32 0, align 4
@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Disable BMAC Rx\0A\00", align 1
@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@ELINK_BMAC_CONTROL_RX_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Disable EMAC Rx\0A\00", align 1
@NIG_REG_NIG_EMAC0_EN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Disable XMAC Rx\0A\00", align 1
@GRCBASE_XMAC1 = common dso_local global i32 0, align 4
@GRCBASE_XMAC0 = common dso_local global i32 0, align 4
@XMAC_REG_PFC_CTRL_HI = common dso_local global i32 0, align 4
@XMAC_REG_CTRL = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_UMAC0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"Disable UMAC Rx\0A\00", align 1
@GRCBASE_UMAC1 = common dso_local global i32 0, align 4
@GRCBASE_UMAC0 = common dso_local global i32 0, align 4
@UMAC_REG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*, %struct.bxe_mac_vals*)* @bxe_prev_unload_close_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_prev_unload_close_mac(%struct.bxe_softc* %0, %struct.bxe_mac_vals* %1) #0 {
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca %struct.bxe_mac_vals*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store %struct.bxe_mac_vals* %1, %struct.bxe_mac_vals** %4, align 8
  %13 = load i32, i32* @FALSE, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %15 = call i32 @SC_PORT(%struct.bxe_softc* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %17 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %19 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %21 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %20, i32 0, i32 2
  store i32 0, i32* %21, align 8
  %22 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %23 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %22, i32 0, i32 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %26 = call i8* @REG_RD(%struct.bxe_softc* %24, i32 %25)
  %27 = ptrtoint i8* %26 to i32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %29 = call i32 @CHIP_IS_E3(%struct.bxe_softc* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %147, label %31

31:                                               ; preds = %2
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %33 = load i32, i32* @NIG_REG_BMAC0_REGS_OUT_EN, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %34, 4
  %36 = add nsw i32 %33, %35
  %37 = call i8* @REG_RD(%struct.bxe_softc* %32, i32 %36)
  %38 = ptrtoint i8* %37 to i32
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %39, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %123

46:                                               ; preds = %31
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %123

49:                                               ; preds = %46
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %51 = load i32, i32* @DBG_LOAD, align 4
  %52 = call i32 @BLOGD(%struct.bxe_softc* %50, i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %53 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %54 = call i32 @SC_PORT(%struct.bxe_softc* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %6, align 4
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %63 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @BIGMAC2_REGISTER_BMAC_CONTROL, align 4
  br label %69

67:                                               ; preds = %60
  %68 = load i32, i32* @BIGMAC_REGISTER_BMAC_CONTROL, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %7, align 4
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %72, %73
  %75 = call i8* @REG_RD(%struct.bxe_softc* %71, i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %76, i32* %77, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = add nsw i32 %79, %80
  %82 = add nsw i32 %81, 4
  %83 = call i8* @REG_RD(%struct.bxe_softc* %78, i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %90 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %94 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %93, i32 0, i32 4
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 %92, i32* %96, align 4
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %100 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 %98, i32* %102, align 4
  %103 = load i32, i32* @ELINK_BMAC_CONTROL_RX_ENABLE, align 4
  %104 = xor i32 %103, -1
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %104
  store i32 %107, i32* %105, align 4
  %108 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %109 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %110 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @REG_WR(%struct.bxe_softc* %108, i32 %111, i32 %113)
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %116 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %117 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @REG_WR(%struct.bxe_softc* %115, i32 %119, i32 %121)
  br label %123

123:                                              ; preds = %69, %46, %31
  %124 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %125 = load i32, i32* @DBG_LOAD, align 4
  %126 = call i32 @BLOGD(%struct.bxe_softc* %124, i32 %125, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %127 = load i32, i32* @NIG_REG_NIG_EMAC0_EN, align 4
  %128 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %129 = call i32 @SC_PORT(%struct.bxe_softc* %128)
  %130 = mul nsw i32 %129, 4
  %131 = add nsw i32 %127, %130
  %132 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %133 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %135 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %136 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @REG_RD(%struct.bxe_softc* %134, i32 %137)
  %139 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %140 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %139, i32 0, i32 7
  store i8* %138, i8** %140, align 8
  %141 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %142 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %143 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @REG_WR(%struct.bxe_softc* %141, i32 %144, i32 0)
  %146 = load i32, i32* @TRUE, align 4
  store i32 %146, i32* %10, align 4
  br label %243

147:                                              ; preds = %2
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %203

152:                                              ; preds = %147
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %154 = load i32, i32* @DBG_LOAD, align 4
  %155 = call i32 @BLOGD(%struct.bxe_softc* %153, i32 %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %157 = call i32 @SC_PORT(%struct.bxe_softc* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = load i32, i32* @GRCBASE_XMAC1, align 4
  br label %163

161:                                              ; preds = %152
  %162 = load i32, i32* @GRCBASE_XMAC0, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  store i32 %164, i32* %6, align 4
  %165 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %168 = add nsw i32 %166, %167
  %169 = call i8* @REG_RD(%struct.bxe_softc* %165, i32 %168)
  %170 = ptrtoint i8* %169 to i32
  store i32 %170, i32* %5, align 4
  %171 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %174 = add nsw i32 %172, %173
  %175 = load i32, i32* %5, align 4
  %176 = and i32 %175, -3
  %177 = call i32 @REG_WR(%struct.bxe_softc* %171, i32 %174, i32 %176)
  %178 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* %5, align 4
  %183 = or i32 %182, 2
  %184 = call i32 @REG_WR(%struct.bxe_softc* %178, i32 %181, i32 %183)
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @XMAC_REG_CTRL, align 4
  %187 = add nsw i32 %185, %186
  %188 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %189 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 8
  %190 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %191 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %192 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i8* @REG_RD(%struct.bxe_softc* %190, i32 %193)
  %195 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %196 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %195, i32 0, i32 6
  store i8* %194, i8** %196, align 8
  %197 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %198 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %199 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @REG_WR(%struct.bxe_softc* %197, i32 %200, i32 0)
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %163, %147
  %204 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_UMAC0, align 4
  %205 = load i32, i32* %11, align 4
  %206 = shl i32 %204, %205
  store i32 %206, i32* %8, align 4
  %207 = load i32, i32* %8, align 4
  %208 = load i32, i32* %9, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %242

211:                                              ; preds = %203
  %212 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %213 = load i32, i32* @DBG_LOAD, align 4
  %214 = call i32 @BLOGD(%struct.bxe_softc* %212, i32 %213, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %215 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %216 = call i32 @SC_PORT(%struct.bxe_softc* %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i32, i32* @GRCBASE_UMAC1, align 4
  br label %222

220:                                              ; preds = %211
  %221 = load i32, i32* @GRCBASE_UMAC0, align 4
  br label %222

222:                                              ; preds = %220, %218
  %223 = phi i32 [ %219, %218 ], [ %221, %220 ]
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = load i32, i32* @UMAC_REG_COMMAND_CONFIG, align 4
  %226 = add nsw i32 %224, %225
  %227 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %228 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %227, i32 0, i32 1
  store i32 %226, i32* %228, align 4
  %229 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %230 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %231 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @REG_RD(%struct.bxe_softc* %229, i32 %232)
  %234 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %235 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %234, i32 0, i32 5
  store i8* %233, i8** %235, align 8
  %236 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %237 = load %struct.bxe_mac_vals*, %struct.bxe_mac_vals** %4, align 8
  %238 = getelementptr inbounds %struct.bxe_mac_vals, %struct.bxe_mac_vals* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @REG_WR(%struct.bxe_softc* %236, i32 %239, i32 0)
  %241 = load i32, i32* @TRUE, align 4
  store i32 %241, i32* %10, align 4
  br label %242

242:                                              ; preds = %222, %203
  br label %243

243:                                              ; preds = %242, %123
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %243
  %247 = call i32 @DELAY(i32 20000)
  br label %248

248:                                              ; preds = %246, %243
  ret void
}

declare dso_local i32 @SC_PORT(%struct.bxe_softc*) #1

declare dso_local i8* @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
