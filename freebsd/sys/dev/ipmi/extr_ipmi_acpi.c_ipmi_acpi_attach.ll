; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_acpi.c_ipmi_acpi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_acpi.c_ipmi_acpi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_get_info = type { i32 }
%struct.ipmi_softc = type { i32, i32, i32, i32, i8*, i32, i32** }

@.str = private unnamed_addr constant [5 x i8] c"_IFT\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_SRV\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"KCS\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"SMIC\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"BT interface not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_ADR\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"SSIF interface not supported on ACPI\0A\00", align 1
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"unknown resource type\0A\00", align 1
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"couldn't configure I/O resource\0A\00", align 1
@MAX_RES = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"too few I/O resources\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"%s mode found at %s 0x%jx on %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"mem\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [5 x i8] c"_GPE\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"_GPE support not implemented\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipmi_acpi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipmi_acpi_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipmi_get_info, align 4
  %7 = alloca %struct.ipmi_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call %struct.ipmi_softc* @device_get_softc(i32 %15)
  store %struct.ipmi_softc* %16, %struct.ipmi_softc** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @acpi_get_handle(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @acpi_GetInteger(i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %13)
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %2, align 4
  br label %228

25:                                               ; preds = %1
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @acpi_GetInteger(i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %14)
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %228

32:                                               ; preds = %25
  %33 = load i32, i32* %13, align 4
  switch i32 %33, label %52 [
    i32 130, label %34
    i32 129, label %35
    i32 131, label %36
    i32 128, label %40
  ]

34:                                               ; preds = %32
  store i32 2, i32* %8, align 4
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %54

35:                                               ; preds = %32
  store i32 3, i32* %8, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %54

36:                                               ; preds = %32
  %37 = load i32, i32* %3, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %228

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @acpi_GetInteger(i32 %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %10)
  %43 = call i64 @ACPI_FAILURE(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ENXIO, align 4
  store i32 %46, i32* %2, align 4
  br label %228

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.ipmi_get_info, %struct.ipmi_get_info* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %228

52:                                               ; preds = %32
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %228

54:                                               ; preds = %35, %34
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @SYS_RES_IOPORT, align 4
  %57 = call i64 @bus_get_resource(i32 %55, i32 %56, i32 0, i32* null, i32* null)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @SYS_RES_IOPORT, align 4
  store i32 %60, i32* %12, align 4
  br label %73

61:                                               ; preds = %54
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @SYS_RES_MEMORY, align 4
  %64 = call i64 @bus_get_resource(i32 %62, i32 %63, i32 0, i32* null, i32* null)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %61
  %67 = load i32, i32* @SYS_RES_MEMORY, align 4
  store i32 %67, i32* %12, align 4
  br label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %3, align 4
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %71 = load i32, i32* @ENXIO, align 4
  store i32 %71, i32* %2, align 4
  br label %228

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %59
  %74 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %75 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %79 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %78, i32 0, i32 0
  %80 = load i32, i32* @RF_ACTIVE, align 4
  %81 = call i8* @bus_alloc_resource_any(i32 %76, i32 %77, i32* %79, i32 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %84 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %83, i32 0, i32 6
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 0
  store i32* %82, i32** %86, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %89 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %91 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %93 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %92, i32 0, i32 6
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 0
  %96 = load i32*, i32** %95, align 8
  %97 = icmp eq i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %73
  %99 = load i32, i32* %3, align 4
  %100 = call i32 (i32, i8*, ...) @device_printf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %101 = load i32, i32* @ENXIO, align 4
  store i32 %101, i32* %2, align 4
  br label %228

102:                                              ; preds = %73
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %134, %102
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* @MAX_RES, align 4
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %137

107:                                              ; preds = %103
  %108 = load i32, i32* %11, align 4
  %109 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %110 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load i32, i32* %3, align 4
  %112 = load i32, i32* %12, align 4
  %113 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %114 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %113, i32 0, i32 0
  %115 = load i32, i32* @RF_ACTIVE, align 4
  %116 = call i8* @bus_alloc_resource_any(i32 %111, i32 %112, i32* %114, i32 %115)
  %117 = bitcast i8* %116 to i32*
  %118 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %119 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %118, i32 0, i32 6
  %120 = load i32**, i32*** %119, align 8
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32*, i32** %120, i64 %122
  store i32* %117, i32** %123, align 8
  %124 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %125 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %124, i32 0, i32 6
  %126 = load i32**, i32*** %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*, i32** %126, i64 %128
  %130 = load i32*, i32** %129, align 8
  %131 = icmp eq i32* %130, null
  br i1 %131, label %132, label %133

132:                                              ; preds = %107
  br label %137

133:                                              ; preds = %107
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %103

137:                                              ; preds = %132, %103
  %138 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %139 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %141 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %140, i32 0, i32 6
  %142 = load i32**, i32*** %141, align 8
  %143 = getelementptr inbounds i32*, i32** %142, i64 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %160

146:                                              ; preds = %137
  %147 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %148 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %147, i32 0, i32 6
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sub nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32*, i32** %149, i64 %152
  %154 = load i32*, i32** %153, align 8
  %155 = icmp eq i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %146
  %157 = load i32, i32* %3, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %159 = load i32, i32* @ENXIO, align 4
  store i32 %159, i32* %9, align 4
  br label %224

160:                                              ; preds = %146, %137
  %161 = load i32, i32* %3, align 4
  %162 = load i8*, i8** %5, align 8
  %163 = load i32, i32* %12, align 4
  %164 = load i32, i32* @SYS_RES_IOPORT, align 4
  %165 = icmp eq i32 %163, %164
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0)
  %168 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %169 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %168, i32 0, i32 6
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 0
  %172 = load i32*, i32** %171, align 8
  %173 = call i64 @rman_get_start(i32* %172)
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @device_get_parent(i32 %175)
  %177 = call i32 @device_get_name(i32 %176)
  %178 = call i32 (i32, i8*, ...) @device_printf(i32 %161, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %162, i8* %167, i32 %174, i32 %177)
  %179 = load i32, i32* %3, align 4
  %180 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %181 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %180, i32 0, i32 5
  store i32 %179, i32* %181, align 8
  %182 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %183 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %182, i32 0, i32 3
  store i32 0, i32* %183, align 4
  %184 = load i32, i32* %3, align 4
  %185 = load i32, i32* @SYS_RES_IRQ, align 4
  %186 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %187 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %186, i32 0, i32 3
  %188 = load i32, i32* @RF_SHAREABLE, align 4
  %189 = load i32, i32* @RF_ACTIVE, align 4
  %190 = or i32 %188, %189
  %191 = call i8* @bus_alloc_resource_any(i32 %184, i32 %185, i32* %187, i32 %190)
  %192 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %193 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %192, i32 0, i32 4
  store i8* %191, i8** %193, align 8
  %194 = load i32, i32* %4, align 4
  %195 = call i32 @AcpiEvaluateObject(i32 %194, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32* null, i32* null)
  %196 = call i64 @ACPI_SUCCESS(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %160
  %199 = load i32, i32* %3, align 4
  %200 = call i32 (i32, i8*, ...) @device_printf(i32 %199, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %160
  %202 = load i32, i32* %13, align 4
  switch i32 %202, label %217 [
    i32 130, label %203
    i32 129, label %210
  ]

203:                                              ; preds = %201
  %204 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %205 = call i32 @ipmi_kcs_attach(%struct.ipmi_softc* %204)
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %9, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %203
  br label %224

209:                                              ; preds = %203
  br label %217

210:                                              ; preds = %201
  %211 = load %struct.ipmi_softc*, %struct.ipmi_softc** %7, align 8
  %212 = call i32 @ipmi_smic_attach(%struct.ipmi_softc* %211)
  store i32 %212, i32* %9, align 4
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %224

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %201, %216, %209
  %218 = load i32, i32* %3, align 4
  %219 = call i32 @ipmi_attach(i32 %218)
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %217
  br label %224

223:                                              ; preds = %217
  store i32 0, i32* %2, align 4
  br label %228

224:                                              ; preds = %222, %215, %208, %156
  %225 = load i32, i32* %3, align 4
  %226 = call i32 @ipmi_release_resources(i32 %225)
  %227 = load i32, i32* %9, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %224, %223, %98, %68, %52, %47, %45, %36, %30, %23
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.ipmi_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bus_get_resource(i32, i32, i32, i32*, i32*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i64 @rman_get_start(i32*) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, i32*) #1

declare dso_local i32 @ipmi_kcs_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_smic_attach(%struct.ipmi_softc*) #1

declare dso_local i32 @ipmi_attach(i32) #1

declare dso_local i32 @ipmi_release_resources(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
