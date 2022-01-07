; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_kiic.c_kiic_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_kiic.c_kiic_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iic_msg = type { i32, i32, i32*, i32 }
%struct.kiic_softc = type { i32, i32*, i32, i32, i32, i32 }

@I2C_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"kiic\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ISR = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@IIC_M_NOSTOP = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@I2C_COMBMODE = common dso_local global i32 0, align 4
@I2C_STDSUBMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"oversize I2C message\00", align 1
@I2C_STDMODE = common dso_local global i32 0, align 4
@I2C_READING = common dso_local global i32 0, align 4
@ADDR = common dso_local global i32 0, align 4
@SUBADDR = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@I2C_CT_ADDR = common dso_local global i32 0, align 4
@I2C_ERROR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"I2C error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.iic_msg*, i32)* @kiic_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kiic_transfer(i32 %0, %struct.iic_msg* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iic_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kiic_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.iic_msg* %1, %struct.iic_msg** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.kiic_softc* @device_get_softc(i32 %15)
  store %struct.kiic_softc* %16, %struct.kiic_softc** %8, align 8
  store i32 100, i32* %11, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %18 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %17, i32 0, i32 4
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %21 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @I2C_BUSY, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %29 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %28, i32 0, i32 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mtx_sleep(i32 %27, i32* %29, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %3
  %33 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %34 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @I2C_BUSY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %41 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %40, i32 0, i32 4
  %42 = call i32 @mtx_unlock(i32* %41)
  %43 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %43, i32* %4, align 4
  br label %239

44:                                               ; preds = %32
  %45 = load i32, i32* @I2C_BUSY, align 4
  %46 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %47 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %49 = load i32, i32* @ISR, align 4
  %50 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %51 = load i32, i32* @ISR, align 4
  %52 = call i32 @kiic_readreg(%struct.kiic_softc* %50, i32 %51)
  %53 = call i32 @kiic_writereg(%struct.kiic_softc* %48, i32 %49, i32 %52)
  %54 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %55 = load i32, i32* @STATUS, align 4
  %56 = call i32 @kiic_writereg(%struct.kiic_softc* %54, i32 %55, i32 0)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %230, %44
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %233

61:                                               ; preds = %57
  %62 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %62, i64 %64
  %66 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @IIC_M_NOSTOP, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %61
  %72 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %72, i64 %75
  %77 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @IIC_M_RD, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %71
  %83 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %84 = load i32, i32* @I2C_COMBMODE, align 4
  %85 = call i32 @kiic_setmode(%struct.kiic_softc* %83, i32 %84)
  br label %90

86:                                               ; preds = %71
  %87 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %88 = load i32, i32* @I2C_STDSUBMODE, align 4
  %89 = call i32 @kiic_setmode(%struct.kiic_softc* %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %91, i64 %93
  %95 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 1
  %98 = zext i1 %97 to i32
  %99 = call i32 @KASSERT(i32 %98, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %100 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %100, i64 %102
  %104 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %9, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %9, align 4
  br label %114

110:                                              ; preds = %61
  %111 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %112 = load i32, i32* @I2C_STDMODE, align 4
  %113 = call i32 @kiic_setmode(%struct.kiic_softc* %111, i32 %112)
  br label %114

114:                                              ; preds = %110, %90
  %115 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %115, i64 %117
  %119 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %122 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %121, i32 0, i32 1
  store i32* %120, i32** %122, align 8
  %123 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %123, i64 %125
  %127 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %130 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 8
  %131 = load i32, i32* @I2C_BUSY, align 4
  %132 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %133 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %134, i64 %136
  %138 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  store i32 %139, i32* %13, align 4
  %140 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %141 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = mul nsw i32 %142, 200
  %144 = add nsw i32 1000, %143
  store i32 %144, i32* %11, align 4
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 100000
  store i32 %146, i32* %11, align 4
  %147 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %148 = load i32, i32* %9, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %147, i64 %149
  %151 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @IIC_M_RD, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %164

156:                                              ; preds = %114
  %157 = load i32, i32* @I2C_READING, align 4
  %158 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %159 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %157
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* %13, align 4
  %163 = or i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %164

164:                                              ; preds = %156, %114
  %165 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %166 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %13, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %13, align 4
  %170 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %171 = load i32, i32* %13, align 4
  %172 = and i32 %171, 256
  %173 = ashr i32 %172, 8
  %174 = call i32 @kiic_setport(%struct.kiic_softc* %170, i32 %173)
  %175 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %176 = load i32, i32* @ADDR, align 4
  %177 = load i32, i32* %13, align 4
  %178 = and i32 %177, 255
  %179 = call i32 @kiic_writereg(%struct.kiic_softc* %175, i32 %176, i32 %178)
  %180 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %181 = load i32, i32* @SUBADDR, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @kiic_writereg(%struct.kiic_softc* %180, i32 %181, i32 %182)
  %184 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %185 = load i32, i32* @CONTROL, align 4
  %186 = call i32 @kiic_readreg(%struct.kiic_softc* %184, i32 %185)
  %187 = load i32, i32* @I2C_CT_ADDR, align 4
  %188 = or i32 %186, %187
  store i32 %188, i32* %10, align 4
  %189 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %190 = load i32, i32* @CONTROL, align 4
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @kiic_writereg(%struct.kiic_softc* %189, i32 %190, i32 %191)
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %195 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %194, i32 0, i32 4
  %196 = load i32, i32* %11, align 4
  %197 = call i32 @mtx_sleep(i32 %193, i32* %195, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %196)
  store i32 %197, i32* %12, align 4
  %198 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %199 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.iic_msg*, %struct.iic_msg** %6, align 8
  %202 = load i32, i32* %9, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %201, i64 %203
  %205 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = sub nsw i32 %206, %200
  store i32 %207, i32* %205, align 4
  %208 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %209 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @I2C_ERROR, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %164
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @EWOULDBLOCK, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %229

218:                                              ; preds = %214, %164
  %219 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %220 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @device_printf(i32 %221, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %223 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %224 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %223, i32 0, i32 0
  store i32 0, i32* %224, align 8
  %225 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %226 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %225, i32 0, i32 4
  %227 = call i32 @mtx_unlock(i32* %226)
  %228 = load i32, i32* @EIO, align 4
  store i32 %228, i32* %4, align 4
  br label %239

229:                                              ; preds = %214
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %9, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %9, align 4
  br label %57

233:                                              ; preds = %57
  %234 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %235 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %234, i32 0, i32 0
  store i32 0, i32* %235, align 8
  %236 = load %struct.kiic_softc*, %struct.kiic_softc** %8, align 8
  %237 = getelementptr inbounds %struct.kiic_softc, %struct.kiic_softc* %236, i32 0, i32 4
  %238 = call i32 @mtx_unlock(i32* %237)
  store i32 0, i32* %4, align 4
  br label %239

239:                                              ; preds = %233, %218, %39
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.kiic_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kiic_writereg(%struct.kiic_softc*, i32, i32) #1

declare dso_local i32 @kiic_readreg(%struct.kiic_softc*, i32) #1

declare dso_local i32 @kiic_setmode(%struct.kiic_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @kiic_setport(%struct.kiic_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
