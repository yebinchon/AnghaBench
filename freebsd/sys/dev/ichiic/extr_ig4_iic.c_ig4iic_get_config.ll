; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ig4_hw = type { i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@IG4_REG_COMP_VER = common dso_local global i32 0, align 4
@IG4_REG_CTL = common dso_local global i32 0, align 4
@IG4_CTL_SPEED_MASK = common dso_local global i32 0, align 4
@IG4_REG_SS_SCL_HCNT = common dso_local global i32 0, align 4
@IG4_SCL_CLOCK_MASK = common dso_local global i32 0, align 4
@IG4_REG_SS_SCL_LCNT = common dso_local global i32 0, align 4
@IG4_REG_FS_SCL_HCNT = common dso_local global i32 0, align 4
@IG4_REG_FS_SCL_LCNT = common dso_local global i32 0, align 4
@IG4_REG_SDA_HOLD = common dso_local global i32 0, align 4
@IG4_SDA_TX_HOLD_MASK = common dso_local global i32 0, align 4
@IG4_CTL_SPEED_STD = common dso_local global i8* null, align 8
@IG4_CTL_SPEED_FAST = common dso_local global i8* null, align 8
@IG4_HASWELL = common dso_local global i64 0, align 8
@IG4_ATOM = common dso_local global i64 0, align 8
@IG4_REG_COMP_PARAM1 = common dso_local global i32 0, align 4
@IG4_REG_TX_TL = common dso_local global i32 0, align 4
@IG4_FIFO_MASK = common dso_local global i32 0, align 4
@IG4_REG_RX_TL = common dso_local global i32 0, align 4
@ig4_timings = common dso_local global i32 0, align 4
@ig4iic_hw = common dso_local global %struct.ig4_hw* null, align 8
@IG4_SKYLAKE = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Controller parameters:\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"  Speed: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Std\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Fast\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"  Regs:  HCNT  :LCNT  :SDAHLD\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"  Std:   0x%04hx:0x%04hx:0x%04hx\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"  Fast:  0x%04hx:0x%04hx:0x%04hx\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"  FIFO:  RX:0x%04x: TX:0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @ig4iic_get_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ig4iic_get_config(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.ig4_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = load i32, i32* @IG4_REG_COMP_VER, align 4
  %7 = call i32 @reg_read(%struct.TYPE_7__* %5, i32 %6)
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 8
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = load i32, i32* @IG4_REG_CTL, align 4
  %13 = call i32 @reg_read(%struct.TYPE_7__* %11, i32 %12)
  %14 = load i32, i32* @IG4_CTL_SPEED_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = load i32, i32* @IG4_REG_SS_SCL_HCNT, align 4
  %21 = call i32 @reg_read(%struct.TYPE_7__* %19, i32 %20)
  %22 = load i32, i32* @IG4_SCL_CLOCK_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %23, i32* %26, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %28 = load i32, i32* @IG4_REG_SS_SCL_LCNT, align 4
  %29 = call i32 @reg_read(%struct.TYPE_7__* %27, i32 %28)
  %30 = load i32, i32* @IG4_SCL_CLOCK_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %36 = load i32, i32* @IG4_REG_FS_SCL_HCNT, align 4
  %37 = call i32 @reg_read(%struct.TYPE_7__* %35, i32 %36)
  %38 = load i32, i32* @IG4_SCL_CLOCK_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  store i32 %39, i32* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %44 = load i32, i32* @IG4_REG_FS_SCL_LCNT, align 4
  %45 = call i32 @reg_read(%struct.TYPE_7__* %43, i32 %44)
  %46 = load i32, i32* @IG4_SCL_CLOCK_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 5
  store i32 %47, i32* %50, align 4
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %52 = load i32, i32* @IG4_REG_SDA_HOLD, align 4
  %53 = call i32 @reg_read(%struct.TYPE_7__* %51, i32 %52)
  %54 = load i32, i32* @IG4_SDA_TX_HOLD_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 7
  store i32 %55, i32* %58, align 4
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 6
  store i32 %55, i32* %61, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i8*, i8** @IG4_CTL_SPEED_STD, align 8
  %69 = icmp ne i8* %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %1
  %71 = load i8*, i8** @IG4_CTL_SPEED_FAST, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  br label %76

76:                                               ; preds = %70, %1
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @IG4_HASWELL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IG4_ATOM, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %82, %76
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %90 = load i32, i32* @IG4_REG_COMP_PARAM1, align 4
  %91 = call i32 @reg_read(%struct.TYPE_7__* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i64 @IG4_PARAM1_TXFIFO_DEPTH(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %88
  %96 = load i32, i32* %4, align 4
  %97 = call i64 @IG4_PARAM1_TXFIFO_DEPTH(i32 %96)
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 8
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %95, %88
  %103 = load i32, i32* %4, align 4
  %104 = call i64 @IG4_PARAM1_RXFIFO_DEPTH(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load i32, i32* %4, align 4
  %108 = call i64 @IG4_PARAM1_RXFIFO_DEPTH(i32 %107)
  %109 = trunc i64 %108 to i32
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 9
  store i32 %109, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %102
  br label %159

114:                                              ; preds = %82
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %116 = load i32, i32* @IG4_REG_TX_TL, align 4
  %117 = call i32 @reg_read(%struct.TYPE_7__* %115, i32 %116)
  store i32 %117, i32* %4, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %119 = load i32, i32* @IG4_REG_TX_TL, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* @IG4_FIFO_MASK, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @reg_write(%struct.TYPE_7__* %118, i32 %119, i32 %122)
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %125 = load i32, i32* @IG4_REG_TX_TL, align 4
  %126 = call i32 @reg_read(%struct.TYPE_7__* %124, i32 %125)
  %127 = load i32, i32* @IG4_FIFO_MASK, align 4
  %128 = and i32 %126, %127
  %129 = add nsw i32 %128, 1
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 8
  store i32 %129, i32* %132, align 8
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %134 = load i32, i32* @IG4_REG_TX_TL, align 4
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @reg_write(%struct.TYPE_7__* %133, i32 %134, i32 %135)
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %138 = load i32, i32* @IG4_REG_RX_TL, align 4
  %139 = call i32 @reg_read(%struct.TYPE_7__* %137, i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %141 = load i32, i32* @IG4_REG_RX_TL, align 4
  %142 = load i32, i32* %4, align 4
  %143 = load i32, i32* @IG4_FIFO_MASK, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @reg_write(%struct.TYPE_7__* %140, i32 %141, i32 %144)
  %146 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %147 = load i32, i32* @IG4_REG_RX_TL, align 4
  %148 = call i32 @reg_read(%struct.TYPE_7__* %146, i32 %147)
  %149 = load i32, i32* @IG4_FIFO_MASK, align 4
  %150 = and i32 %148, %149
  %151 = add nsw i32 %150, 1
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 9
  store i32 %151, i32* %154, align 4
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %156 = load i32, i32* @IG4_REG_RX_TL, align 4
  %157 = load i32, i32* %4, align 4
  %158 = call i32 @reg_write(%struct.TYPE_7__* %155, i32 %156, i32 %157)
  br label %159

159:                                              ; preds = %114, %113
  %160 = load i32, i32* @ig4_timings, align 4
  %161 = icmp slt i32 %160, 2
  br i1 %161, label %162, label %230

162:                                              ; preds = %159
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.ig4_hw*, %struct.ig4_hw** @ig4iic_hw, align 8
  %167 = call i64 @nitems(%struct.ig4_hw* %166)
  %168 = icmp ult i64 %165, %167
  br i1 %168, label %169, label %230

169:                                              ; preds = %162
  %170 = load %struct.ig4_hw*, %struct.ig4_hw** @ig4iic_hw, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %170, i64 %173
  store %struct.ig4_hw* %174, %struct.ig4_hw** %3, align 8
  %175 = load i8*, i8** @IG4_CTL_SPEED_FAST, align 8
  %176 = ptrtoint i8* %175 to i32
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.ig4_hw*, %struct.ig4_hw** %3, align 8
  %181 = load i8*, i8** @IG4_CTL_SPEED_STD, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 6
  %191 = call i32 @ig4iic_clk_params(%struct.ig4_hw* %180, i8* %181, i32* %184, i32* %187, i32* %190)
  %192 = load %struct.ig4_hw*, %struct.ig4_hw** %3, align 8
  %193 = load i8*, i8** @IG4_CTL_SPEED_FAST, align 8
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 4
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 7
  %203 = call i32 @ig4iic_clk_params(%struct.ig4_hw* %192, i8* %193, i32* %196, i32* %199, i32* %202)
  %204 = load %struct.ig4_hw*, %struct.ig4_hw** %3, align 8
  %205 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %169
  %209 = load %struct.ig4_hw*, %struct.ig4_hw** %3, align 8
  %210 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 8
  store i32 %212, i32* %215, align 8
  br label %216

216:                                              ; preds = %208, %169
  %217 = load %struct.ig4_hw*, %struct.ig4_hw** %3, align 8
  %218 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %229

221:                                              ; preds = %216
  %222 = load %struct.ig4_hw*, %struct.ig4_hw** %3, align 8
  %223 = getelementptr inbounds %struct.ig4_hw, %struct.ig4_hw* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = trunc i64 %224 to i32
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 9
  store i32 %225, i32* %228, align 4
  br label %229

229:                                              ; preds = %221, %216
  br label %265

230:                                              ; preds = %162, %159
  %231 = load i32, i32* @ig4_timings, align 4
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %264

233:                                              ; preds = %230
  %234 = load i8*, i8** @IG4_CTL_SPEED_STD, align 8
  %235 = ptrtoint i8* %234 to i32
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  store i32 %235, i32* %238, align 4
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 4
  store i32 100, i32* %241, align 8
  %242 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 2
  store i32 100, i32* %244, align 8
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 5
  store i32 125, i32* %247, align 4
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 3
  store i32 125, i32* %250, align 4
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @IG4_SKYLAKE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %233
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 7
  store i32 28, i32* %259, align 4
  %260 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %261 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 6
  store i32 28, i32* %262, align 8
  br label %263

263:                                              ; preds = %256, %233
  br label %264

264:                                              ; preds = %263, %230
  br label %265

265:                                              ; preds = %264, %229
  %266 = load i64, i64* @bootverbose, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %320

268:                                              ; preds = %265
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %270 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @device_printf(i32 %271, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to i8*
  %279 = load i8*, i8** @IG4_CTL_SPEED_STD, align 8
  %280 = icmp eq i8* %278, %279
  %281 = zext i1 %280 to i64
  %282 = select i1 %280, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %282)
  %284 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %285 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %286 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 6
  %296 = load i32, i32* %295, align 8
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %288, i32 %292, i32 %296)
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 4
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 5
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 7
  %309 = load i32, i32* %308, align 4
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %301, i32 %305, i32 %309)
  %311 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %312 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 1
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 8
  %318 = load i32, i32* %317, align 8
  %319 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i32 %314, i32 %318)
  br label %320

320:                                              ; preds = %268, %265
  ret void
}

declare dso_local i32 @reg_read(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @IG4_PARAM1_TXFIFO_DEPTH(i32) #1

declare dso_local i64 @IG4_PARAM1_RXFIFO_DEPTH(i32) #1

declare dso_local i32 @reg_write(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i64 @nitems(%struct.ig4_hw*) #1

declare dso_local i32 @ig4iic_clk_params(%struct.ig4_hw*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
