; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ichiic/extr_ig4_iic.c_ig4iic_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__, i64, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32 }

@IG4_REG_DEVIDLE_CTRL = common dso_local global i32 0, align 4
@IG4_RESTORE_REQUIRED = common dso_local global i32 0, align 4
@IG4_DEVICE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"i2crst\00", align 1
@IG4_HASWELL = common dso_local global i64 0, align 8
@IG4_ATOM = common dso_local global i64 0, align 8
@IG4_REG_RESETS_HSW = common dso_local global i32 0, align 4
@IG4_RESETS_ASSERT_HSW = common dso_local global i32 0, align 4
@IG4_RESETS_DEASSERT_HSW = common dso_local global i32 0, align 4
@IG4_REG_RESETS_SKL = common dso_local global i32 0, align 4
@IG4_RESETS_ASSERT_SKL = common dso_local global i32 0, align 4
@IG4_RESETS_DEASSERT_SKL = common dso_local global i32 0, align 4
@IG4_REG_COMP_TYPE = common dso_local global i32 0, align 4
@IG4_REG_COMP_PARAM1 = common dso_local global i32 0, align 4
@IG4_REG_GENERAL = common dso_local global i32 0, align 4
@IG4_GENERAL_SWMODE = common dso_local global i32 0, align 4
@IG4_REG_SW_LTR_VALUE = common dso_local global i32 0, align 4
@IG4_REG_AUTO_LTR_VALUE = common dso_local global i32 0, align 4
@IG4_REG_ACTIVE_LTR_VALUE = common dso_local global i32 0, align 4
@IG4_REG_IDLE_LTR_VALUE = common dso_local global i32 0, align 4
@IG4_REG_COMP_VER = common dso_local global i32 0, align 4
@IG4_COMP_MIN_VER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"controller error during attach-1\0A\00", align 1
@IG4_REG_CLR_INTR = common dso_local global i32 0, align 4
@IG4_REG_INTR_MASK = common dso_local global i32 0, align 4
@IG4_REG_SS_SCL_HCNT = common dso_local global i32 0, align 4
@IG4_REG_SS_SCL_LCNT = common dso_local global i32 0, align 4
@IG4_REG_FS_SCL_HCNT = common dso_local global i32 0, align 4
@IG4_REG_FS_SCL_LCNT = common dso_local global i32 0, align 4
@IG4_REG_SDA_HOLD = common dso_local global i32 0, align 4
@IG4_CTL_SPEED_MASK = common dso_local global i32 0, align 4
@IG4_CTL_SPEED_STD = common dso_local global i32 0, align 4
@IG4_REG_RX_TL = common dso_local global i32 0, align 4
@IG4_REG_TX_TL = common dso_local global i32 0, align 4
@IG4_REG_CTL = common dso_local global i32 0, align 4
@IG4_CTL_MASTER = common dso_local global i32 0, align 4
@IG4_CTL_SLAVE_DISABLE = common dso_local global i32 0, align 4
@IG4_CTL_RESTARTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32)* @ig4iic_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ig4iic_set_config(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %8 = load i32, i32* @IG4_REG_DEVIDLE_CTRL, align 4
  %9 = call i32 @reg_read(%struct.TYPE_8__* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @IG4_HAS_ADDREGS(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @IG4_RESTORE_REQUIRED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = load i32, i32* @IG4_REG_DEVIDLE_CTRL, align 4
  %23 = load i32, i32* @IG4_DEVICE_IDLE, align 4
  %24 = load i32, i32* @IG4_RESTORE_REQUIRED, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @reg_write(%struct.TYPE_8__* %21, i32 %22, i32 %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = load i32, i32* @IG4_REG_DEVIDLE_CTRL, align 4
  %29 = call i32 @reg_write(%struct.TYPE_8__* %27, i32 %28, i32 0)
  %30 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  store i32 1, i32* %5, align 4
  br label %31

31:                                               ; preds = %20, %15, %2
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @IG4_HASWELL, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IG4_ATOM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %37, %31
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %48 = load i32, i32* @IG4_REG_RESETS_HSW, align 4
  %49 = load i32, i32* @IG4_RESETS_ASSERT_HSW, align 4
  %50 = call i32 @reg_write(%struct.TYPE_8__* %47, i32 %48, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = load i32, i32* @IG4_REG_RESETS_HSW, align 4
  %53 = load i32, i32* @IG4_RESETS_DEASSERT_HSW, align 4
  %54 = call i32 @reg_write(%struct.TYPE_8__* %51, i32 %52, i32 %53)
  br label %74

55:                                               ; preds = %43, %37
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @IG4_HAS_ADDREGS(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %61
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %66 = load i32, i32* @IG4_REG_RESETS_SKL, align 4
  %67 = load i32, i32* @IG4_RESETS_ASSERT_SKL, align 4
  %68 = call i32 @reg_write(%struct.TYPE_8__* %65, i32 %66, i32 %67)
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %70 = load i32, i32* @IG4_REG_RESETS_SKL, align 4
  %71 = load i32, i32* @IG4_RESETS_DEASSERT_SKL, align 4
  %72 = call i32 @reg_write(%struct.TYPE_8__* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %61, %55
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @IG4_ATOM, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = load i32, i32* @IG4_REG_COMP_TYPE, align 4
  %83 = call i32 @reg_read(%struct.TYPE_8__* %81, i32 %82)
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %80, %74
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IG4_HASWELL, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %84
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IG4_ATOM, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %90, %84
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = load i32, i32* @IG4_REG_COMP_PARAM1, align 4
  %99 = call i32 @reg_read(%struct.TYPE_8__* %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %101 = load i32, i32* @IG4_REG_GENERAL, align 4
  %102 = call i32 @reg_read(%struct.TYPE_8__* %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @IG4_HASWELL, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %96
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @IG4_GENERAL_SWMODE, align 4
  %111 = and i32 %109, %110
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load i32, i32* @IG4_GENERAL_SWMODE, align 4
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %118 = load i32, i32* @IG4_REG_GENERAL, align 4
  %119 = load i32, i32* %6, align 4
  %120 = call i32 @reg_write(%struct.TYPE_8__* %117, i32 %118, i32 %119)
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %122 = load i32, i32* @IG4_REG_GENERAL, align 4
  %123 = call i32 @reg_read(%struct.TYPE_8__* %121, i32 %122)
  store i32 %123, i32* %6, align 4
  br label %124

124:                                              ; preds = %113, %108, %96
  br label %125

125:                                              ; preds = %124, %90
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @IG4_HASWELL, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %125
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %133 = load i32, i32* @IG4_REG_SW_LTR_VALUE, align 4
  %134 = call i32 @reg_read(%struct.TYPE_8__* %132, i32 %133)
  store i32 %134, i32* %6, align 4
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %136 = load i32, i32* @IG4_REG_AUTO_LTR_VALUE, align 4
  %137 = call i32 @reg_read(%struct.TYPE_8__* %135, i32 %136)
  store i32 %137, i32* %6, align 4
  br label %152

138:                                              ; preds = %125
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = call i64 @IG4_HAS_ADDREGS(i64 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = load i32, i32* @IG4_REG_ACTIVE_LTR_VALUE, align 4
  %147 = call i32 @reg_read(%struct.TYPE_8__* %145, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %149 = load i32, i32* @IG4_REG_IDLE_LTR_VALUE, align 4
  %150 = call i32 @reg_read(%struct.TYPE_8__* %148, i32 %149)
  store i32 %150, i32* %6, align 4
  br label %151

151:                                              ; preds = %144, %138
  br label %152

152:                                              ; preds = %151, %131
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @IG4_HASWELL, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %152
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @IG4_ATOM, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %158, %152
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %166 = load i32, i32* @IG4_REG_COMP_VER, align 4
  %167 = call i32 @reg_read(%struct.TYPE_8__* %165, i32 %166)
  store i32 %167, i32* %6, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IG4_COMP_MIN_VER, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %164
  %172 = load i32, i32* @ENXIO, align 4
  store i32 %172, i32* %3, align 4
  br label %267

173:                                              ; preds = %164
  br label %174

174:                                              ; preds = %173, %158
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %176 = call i64 @set_controller(%struct.TYPE_8__* %175, i32 0)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %184

178:                                              ; preds = %174
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @device_printf(i32 %181, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %183 = load i32, i32* @ENXIO, align 4
  store i32 %183, i32* %3, align 4
  br label %267

184:                                              ; preds = %174
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %186 = load i32, i32* @IG4_REG_CLR_INTR, align 4
  %187 = call i32 @reg_read(%struct.TYPE_8__* %185, i32 %186)
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %189 = load i32, i32* @IG4_REG_INTR_MASK, align 4
  %190 = call i32 @reg_write(%struct.TYPE_8__* %188, i32 %189, i32 0)
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 3
  store i64 0, i64* %192, align 8
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %194 = load i32, i32* @IG4_REG_SS_SCL_HCNT, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @reg_write(%struct.TYPE_8__* %193, i32 %194, i32 %198)
  %200 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %201 = load i32, i32* @IG4_REG_SS_SCL_LCNT, align 4
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @reg_write(%struct.TYPE_8__* %200, i32 %201, i32 %205)
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = load i32, i32* @IG4_REG_FS_SCL_HCNT, align 4
  %209 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @reg_write(%struct.TYPE_8__* %207, i32 %208, i32 %212)
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %215 = load i32, i32* @IG4_REG_FS_SCL_LCNT, align 4
  %216 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @reg_write(%struct.TYPE_8__* %214, i32 %215, i32 %219)
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %222 = load i32, i32* @IG4_REG_SDA_HOLD, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @IG4_CTL_SPEED_MASK, align 4
  %228 = and i32 %226, %227
  %229 = load i32, i32* @IG4_CTL_SPEED_STD, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %184
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 5
  %235 = load i32, i32* %234, align 4
  br label %241

236:                                              ; preds = %184
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  br label %241

241:                                              ; preds = %236, %231
  %242 = phi i32 [ %235, %231 ], [ %240, %236 ]
  %243 = call i32 @reg_write(%struct.TYPE_8__* %221, i32 %222, i32 %242)
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %245 = load i32, i32* @IG4_REG_RX_TL, align 4
  %246 = call i32 @reg_write(%struct.TYPE_8__* %244, i32 %245, i32 0)
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %248 = load i32, i32* @IG4_REG_TX_TL, align 4
  %249 = call i32 @reg_write(%struct.TYPE_8__* %247, i32 %248, i32 0)
  %250 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %251 = load i32, i32* @IG4_REG_CTL, align 4
  %252 = load i32, i32* @IG4_CTL_MASTER, align 4
  %253 = load i32, i32* @IG4_CTL_SLAVE_DISABLE, align 4
  %254 = or i32 %252, %253
  %255 = load i32, i32* @IG4_CTL_RESTARTEN, align 4
  %256 = or i32 %254, %255
  %257 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %258 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @IG4_CTL_SPEED_MASK, align 4
  %262 = and i32 %260, %261
  %263 = or i32 %256, %262
  %264 = call i32 @reg_write(%struct.TYPE_8__* %250, i32 %251, i32 %263)
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  store i64 0, i64* %266, align 8
  store i32 0, i32* %3, align 4
  br label %267

267:                                              ; preds = %241, %178, %171
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i32 @reg_read(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @IG4_HAS_ADDREGS(i64) #1

declare dso_local i32 @reg_write(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i64 @set_controller(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
