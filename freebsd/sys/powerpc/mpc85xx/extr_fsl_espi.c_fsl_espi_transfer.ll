; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_espi.c_fsl_espi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i64, i64, i64, i64 }
%struct.fsl_espi_softc = type { i32, i32, i64, i32, i32, i64, i64, %struct.spi_command* }

@.str = private unnamed_addr constant [36 x i8] c"TX/RX command sizes should be equal\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"TX/RX data sizes should be equal\00", align 1
@ESPI_SPCOM_TRANLEN_M = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Invalid chip select %d requested by %s\0A\00", align 1
@FSL_ESPI_BUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"fsl_espi\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"unable to get platform clock, giving up.\0A\00", align 1
@ESPI_CSMODE_DIV16 = common dso_local global i32 0, align 4
@ESPI_CSMODE_PM_S = common dso_local global i32 0, align 4
@ESPI_CSMODE_REV = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPOL = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPOL_CPHA = common dso_local global i32 0, align 4
@ESPI_CSMODE_CI = common dso_local global i32 0, align 4
@SPIBUS_MODE_CPHA = common dso_local global i32 0, align 4
@ESPI_CSMODE_CP = common dso_local global i32 0, align 4
@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@ESPI_CSMODE_POL = common dso_local global i32 0, align 4
@ESPI_SPCOM = common dso_local global i32 0, align 4
@ESPI_SPCOM_CS_S = common dso_local global i32 0, align 4
@ESPI_SPIM = common dso_local global i32 0, align 4
@ESPI_SPIE_TXE = common dso_local global i32 0, align 4
@ESPI_SPIE_DON = common dso_local global i32 0, align 4
@ESPI_SPIE_RXF = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [11 x i8] c"SPI error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @fsl_espi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_espi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.fsl_espi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.fsl_espi_softc* @device_get_softc(i32 %16)
  store %struct.fsl_espi_softc* %17, %struct.fsl_espi_softc** %8, align 8
  %18 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %19 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %22 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %28 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %31 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @KASSERT(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %37 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %40 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load i64, i64* @ESPI_SPCOM_TRANLEN_M, align 8
  %44 = add nsw i64 %43, 1
  %45 = icmp sgt i64 %42, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %4, align 4
  br label %241

48:                                               ; preds = %3
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @spibus_get_cs(i32 %49, i32* %13)
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  %55 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %56 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp sgt i32 %54, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %53, %48
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @device_get_nameunit(i32 %62)
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %4, align 4
  br label %241

66:                                               ; preds = %53
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @spibus_get_clock(i32 %67, i32* %11)
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @spibus_get_mode(i32 %69, i32* %12)
  %71 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %72 = call i32 @FSL_ESPI_LOCK(%struct.fsl_espi_softc* %71)
  br label %73

73:                                               ; preds = %80, %66
  %74 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %75 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @FSL_ESPI_BUSY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %83 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %82, i32 0, i32 4
  %84 = call i32 @mtx_sleep(i32 %81, i32* %83, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 0)
  br label %73

85:                                               ; preds = %73
  %86 = load i32, i32* @FSL_ESPI_BUSY, align 4
  %87 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %88 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %90 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %91 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %90, i32 0, i32 7
  store %struct.spi_command* %89, %struct.spi_command** %91, align 8
  %92 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %93 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %92, i32 0, i32 6
  store i64 0, i64* %93, align 8
  %94 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %95 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %94, i32 0, i32 5
  store i64 0, i64* %95, align 8
  %96 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %97 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %100 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %98, %101
  %103 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %104 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = call i32 (...) @mpc85xx_get_system_clock()
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %9, align 4
  %108 = sdiv i32 %107, 256
  %109 = call i32 @max(i32 %106, i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %85
  %113 = load i32, i32* %5, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %4, align 4
  br label %241

116:                                              ; preds = %85
  store i32 0, i32* %10, align 4
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %11, align 4
  %119 = mul nsw i32 %118, 16
  %120 = mul nsw i32 %119, 2
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %116
  %123 = load i32, i32* @ESPI_CSMODE_DIV16, align 4
  %124 = load i32, i32* %10, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %9, align 4
  %127 = sdiv i32 %126, 16
  store i32 %127, i32* %9, align 4
  br label %128

128:                                              ; preds = %122, %116
  %129 = load i32, i32* %9, align 4
  %130 = load i32, i32* %11, align 4
  %131 = mul nsw i32 %130, 2
  %132 = call i32 @howmany(i32 %129, i32 %131)
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %15, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  store i32 1, i32* %15, align 4
  br label %137

137:                                              ; preds = %136, %128
  %138 = load i32, i32* %15, align 4
  %139 = icmp sgt i32 %138, 15
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  store i32 15, i32* %15, align 4
  br label %141

141:                                              ; preds = %140, %137
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* @ESPI_CSMODE_PM_S, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @ESPI_CSMODE_REV, align 4
  %148 = load i32, i32* %10, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %10, align 4
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @SPIBUS_MODE_CPOL, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %141
  %154 = load i32, i32* %12, align 4
  %155 = load i32, i32* @SPIBUS_MODE_CPOL_CPHA, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153, %141
  %158 = load i32, i32* @ESPI_CSMODE_CI, align 4
  %159 = load i32, i32* %10, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %157, %153
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* @SPIBUS_MODE_CPHA, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %12, align 4
  %167 = load i32, i32* @SPIBUS_MODE_CPOL_CPHA, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165, %161
  %170 = load i32, i32* @ESPI_CSMODE_CP, align 4
  %171 = load i32, i32* %10, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %173

173:                                              ; preds = %169, %165
  %174 = load i32, i32* %13, align 4
  %175 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %173
  %179 = load i32, i32* @ESPI_CSMODE_POL, align 4
  %180 = load i32, i32* %10, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %10, align 4
  br label %182

182:                                              ; preds = %178, %173
  %183 = call i32 @ESPI_CSMODE_LEN(i32 7)
  %184 = load i32, i32* %10, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %10, align 4
  %186 = call i32 @ESPI_CSMODE_CSCG(i32 1)
  %187 = load i32, i32* %10, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %10, align 4
  %189 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %190 = load i32, i32* @ESPI_SPCOM, align 4
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* @ESPI_SPCOM_CS_S, align 4
  %193 = shl i32 %191, %192
  %194 = sext i32 %193 to i64
  %195 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %196 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %197, 1
  %199 = or i64 %194, %198
  %200 = trunc i64 %199 to i32
  %201 = call i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc* %189, i32 %190, i32 %200)
  %202 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @ESPI_CSMODE(i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = call i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc* %202, i32 %204, i32 %205)
  %207 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %208 = load i32, i32* @ESPI_SPIM, align 4
  %209 = load i32, i32* @ESPI_SPIE_TXE, align 4
  %210 = load i32, i32* @ESPI_SPIE_DON, align 4
  %211 = or i32 %209, %210
  %212 = load i32, i32* @ESPI_SPIE_RXF, align 4
  %213 = or i32 %211, %212
  %214 = call i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc* %207, i32 %208, i32 %213)
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %217 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %216, i32 0, i32 4
  %218 = load i32, i32* @hz, align 4
  %219 = mul nsw i32 %218, 2
  %220 = call i32 @mtx_sleep(i32 %215, i32* %217, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  store i32 %220, i32* %14, align 4
  %221 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %222 = load i32, i32* @ESPI_SPIM, align 4
  %223 = call i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc* %221, i32 %222, i32 0)
  %224 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %225 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %224, i32 0, i32 1
  store i32 0, i32* %225, align 4
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @wakeup_one(i32 %226)
  %228 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %229 = call i32 @FSL_ESPI_UNLOCK(%struct.fsl_espi_softc* %228)
  %230 = load i32, i32* %14, align 4
  %231 = load i32, i32* @EWOULDBLOCK, align 4
  %232 = icmp eq i32 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %182
  %234 = load %struct.fsl_espi_softc*, %struct.fsl_espi_softc** %8, align 8
  %235 = getelementptr inbounds %struct.fsl_espi_softc, %struct.fsl_espi_softc* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = call i32 (i32, i8*, ...) @device_printf(i32 %236, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %238 = load i32, i32* @EIO, align 4
  store i32 %238, i32* %14, align 4
  br label %239

239:                                              ; preds = %233, %182
  %240 = load i32, i32* %14, align 4
  store i32 %240, i32* %4, align 4
  br label %241

241:                                              ; preds = %239, %112, %59, %46
  %242 = load i32, i32* %4, align 4
  ret i32 %242
}

declare dso_local %struct.fsl_espi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @FSL_ESPI_LOCK(%struct.fsl_espi_softc*) #1

declare dso_local i32 @mtx_sleep(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @mpc85xx_get_system_clock(...) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @ESPI_CSMODE_LEN(i32) #1

declare dso_local i32 @ESPI_CSMODE_CSCG(i32) #1

declare dso_local i32 @FSL_ESPI_WRITE(%struct.fsl_espi_softc*, i32, i32) #1

declare dso_local i32 @ESPI_CSMODE(i32) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @FSL_ESPI_UNLOCK(%struct.fsl_espi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
