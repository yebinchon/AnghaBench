; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_add_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_add_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i32, i64 }

@BHND_NVRAM_SRC_SPROM = common dso_local global i64 0, align 8
@BHND_NVRAM_SRC_OTP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"bhnd_nvram\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to add nvram device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CHIPC_SPROM_OTP = common dso_local global i32 0, align 4
@CHIPC_SPROM_OTP_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to set OTP memory resource: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"bhnd_pmu\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"failed to add pmu\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bhnd_pwrctl\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"failed to add pwrctl\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"gpio\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"failed to add gpio\0A\00", align 1
@RM_MAX_END = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"failed to set gpio memory resource: %d\0A\00", align 1
@BHND_ATTACH_NATIVE = common dso_local global i64 0, align 8
@CHIPC_UART_MAX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"uart\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"failed to add uart%u\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"failed to set uart%u irq %u\0A\00", align 1
@CHIPC_UART_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"failed to set uart%u memory resource: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"failed to add %s device\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"failed to set flash memory resource %d: %d\0A\00", align 1
@CHIPC_SFLASH_BASE = common dso_local global i32 0, align 4
@CHIPC_SFLASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_softc*)* @chipc_add_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_add_children(%struct.chipc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.chipc_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %3, align 8
  %11 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %12 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BHND_NVRAM_SRC_SPROM, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %24, label %17

17:                                               ; preds = %1
  %18 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BHND_NVRAM_SRC_OTP, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %53

24:                                               ; preds = %17, %1
  %25 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32* @BUS_ADD_CHILD(i32 %27, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %28, i32** %4, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %33 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @ENXIO, align 4
  store i32 %36, i32* %2, align 4
  br label %255

37:                                               ; preds = %24
  %38 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* @CHIPC_SPROM_OTP, align 4
  %41 = load i32, i32* @CHIPC_SPROM_OTP_SIZE, align 4
  %42 = call i32 @chipc_set_mem_resource(%struct.chipc_softc* %38, i32* %39, i32 0, i32 %40, i32 %41, i32 0, i32 0)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %47 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %255

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %52, %17
  %54 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %55 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 5
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %79

59:                                               ; preds = %53
  %60 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %61 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %79, label %65

65:                                               ; preds = %59
  %66 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32* @BUS_ADD_CHILD(i32 %68, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 -1)
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %74 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %2, align 4
  br label %255

78:                                               ; preds = %65
  br label %100

79:                                               ; preds = %59, %53
  %80 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %81 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  %86 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %87 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32* @BUS_ADD_CHILD(i32 %88, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  store i32* %89, i32** %4, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %94 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %2, align 4
  br label %255

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98, %79
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %102 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32* @BUS_ADD_CHILD(i32 %103, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 -1)
  store i32* %104, i32** %4, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %100
  %108 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %109 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 (i32, i8*, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %2, align 4
  br label %255

113:                                              ; preds = %100
  %114 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = load i32, i32* @RM_MAX_END, align 4
  %117 = call i32 @chipc_set_mem_resource(%struct.chipc_softc* %114, i32* %115, i32 0, i32 0, i32 %116, i32 0, i32 0)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %113
  %121 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %122 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = call i32 (i32, i8*, ...) @device_printf(i32 %123, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* %6, align 4
  store i32 %126, i32* %2, align 4
  br label %255

127:                                              ; preds = %113
  %128 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %129 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i64 @bhnd_get_attach_type(i32 %130)
  %132 = load i64, i64* @BHND_ATTACH_NATIVE, align 8
  %133 = icmp ne i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %255

135:                                              ; preds = %127
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %192, %135
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %139 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @CHIPC_UART_MAX, align 4
  %143 = call i32 @min(i32 %141, i32 %142)
  %144 = icmp slt i32 %137, %143
  br i1 %144, label %145, label %195

145:                                              ; preds = %136
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %146 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %147 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i32* @BUS_ADD_CHILD(i32 %148, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 -1)
  store i32* %149, i32** %4, align 8
  %150 = load i32*, i32** %4, align 8
  %151 = icmp eq i32* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %145
  %153 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %154 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %155, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i32 %156)
  %158 = load i32, i32* @ENXIO, align 4
  store i32 %158, i32* %2, align 4
  br label %255

159:                                              ; preds = %145
  %160 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %161 = load i32*, i32** %4, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @chipc_set_irq_resource(%struct.chipc_softc* %160, i32* %161, i32 %162, i32 0)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %159
  %167 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %168 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 (i32, i8*, ...) @device_printf(i32 %169, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0), i32 %170, i32 0)
  %172 = load i32, i32* %6, align 4
  store i32 %172, i32* %2, align 4
  br label %255

173:                                              ; preds = %159
  %174 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %175 = load i32*, i32** %4, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i32, i32* %7, align 4
  %178 = call i32 @CHIPC_UART(i32 %177)
  %179 = load i32, i32* @CHIPC_UART_SIZE, align 4
  %180 = call i32 @chipc_set_mem_resource(%struct.chipc_softc* %174, i32* %175, i32 %176, i32 %178, i32 %179, i32 0, i32 0)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %191

183:                                              ; preds = %173
  %184 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %185 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %6, align 4
  %189 = call i32 (i32, i8*, ...) @device_printf(i32 %186, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %187, i32 %188)
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %2, align 4
  br label %255

191:                                              ; preds = %173
  br label %192

192:                                              ; preds = %191
  %193 = load i32, i32* %7, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %7, align 4
  br label %136

195:                                              ; preds = %136
  %196 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %197 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = call i8* @chipc_flash_bus_name(i32 %199)
  store i8* %200, i8** %5, align 8
  %201 = load i8*, i8** %5, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %254

203:                                              ; preds = %195
  %204 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %205 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i8*, i8** %5, align 8
  %208 = call i32* @BUS_ADD_CHILD(i32 %206, i32 0, i8* %207, i32 -1)
  store i32* %208, i32** %4, align 8
  %209 = load i32*, i32** %4, align 8
  %210 = icmp eq i32* %209, null
  br i1 %210, label %211, label %218

211:                                              ; preds = %203
  %212 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %213 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i8*, i8** %5, align 8
  %216 = call i32 (i32, i8*, ...) @device_printf(i32 %214, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i8* %215)
  %217 = load i32, i32* @ENXIO, align 4
  store i32 %217, i32* %2, align 4
  br label %255

218:                                              ; preds = %203
  store i32 0, i32* %10, align 4
  %219 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %220 = load i32*, i32** %4, align 8
  %221 = load i32, i32* %10, align 4
  %222 = load i32, i32* @RM_MAX_END, align 4
  %223 = call i32 @chipc_set_mem_resource(%struct.chipc_softc* %219, i32* %220, i32 %221, i32 0, i32 %222, i32 1, i32 1)
  store i32 %223, i32* %6, align 4
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %218
  %227 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %228 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = load i32, i32* %6, align 4
  %232 = call i32 (i32, i8*, ...) @device_printf(i32 %229, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 %230, i32 %231)
  %233 = load i32, i32* %6, align 4
  store i32 %233, i32* %2, align 4
  br label %255

234:                                              ; preds = %218
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  %237 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %238 = load i32*, i32** %4, align 8
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @CHIPC_SFLASH_BASE, align 4
  %241 = load i32, i32* @CHIPC_SFLASH_SIZE, align 4
  %242 = call i32 @chipc_set_mem_resource(%struct.chipc_softc* %237, i32* %238, i32 %239, i32 %240, i32 %241, i32 0, i32 0)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %253

245:                                              ; preds = %234
  %246 = load %struct.chipc_softc*, %struct.chipc_softc** %3, align 8
  %247 = getelementptr inbounds %struct.chipc_softc, %struct.chipc_softc* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = load i32, i32* %6, align 4
  %251 = call i32 (i32, i8*, ...) @device_printf(i32 %248, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 %249, i32 %250)
  %252 = load i32, i32* %6, align 4
  store i32 %252, i32* %2, align 4
  br label %255

253:                                              ; preds = %234
  br label %254

254:                                              ; preds = %253, %195
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %254, %245, %226, %211, %183, %166, %152, %134, %120, %107, %92, %72, %45, %31
  %256 = load i32, i32* %2, align 4
  ret i32 %256
}

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @chipc_set_mem_resource(%struct.chipc_softc*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @bhnd_get_attach_type(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @chipc_set_irq_resource(%struct.chipc_softc*, i32*, i32, i32) #1

declare dso_local i32 @CHIPC_UART(i32) #1

declare dso_local i8* @chipc_flash_bus_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
