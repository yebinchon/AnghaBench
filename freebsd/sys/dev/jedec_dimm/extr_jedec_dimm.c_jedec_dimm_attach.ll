; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jedec_dimm_softc = type { i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@JEDEC_DTI_TSOD = common dso_local global i32 0, align 4
@SPD_OFFSET_DRAM_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to read dram_type: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"DDR3\00", align 1
@SPD_LEN_DDR3_PARTNUM = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR3_PARTNUM = common dso_local global i32 0, align 4
@SPD_LEN_DDR3_SERIAL = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR3_SERIAL = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR3_TSOD_PRESENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"DDR4\00", align 1
@SPD_LEN_DDR4_PARTNUM = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_PARTNUM = common dso_local global i32 0, align 4
@SPD_LEN_DDR4_SERIAL = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_SERIAL = common dso_local global i32 0, align 4
@SPD_OFFSET_DDR4_TSOD_PRESENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"unsupported dram_type 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"failed to read TSOD-present byte: %d\0A\00", align 1
@TSOD_REG_MANUFACTURER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to read TSOD Manufacturer ID\0A\00", align 1
@TSOD_REG_DEV_REV = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"failed to read TSOD Device ID\0A\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Unknown TSOD Manufacturer and Device IDs, 0x%x and 0x%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"TSOD: %s\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [10 x i8] c"DIMM type\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"capacity\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"DIMM capacity (MB)\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"part\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"DIMM Part Number\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"DIMM Serial Number\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@jedec_dimm_temp_sysctl = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"DIMM temperature (deg C)\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"slotid\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [21 x i8] c"DIMM Slot Identifier\00", align 1
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [13 x i8] c"%s%s%s%s%s%s\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c" w/ \00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c")\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jedec_dimm_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jedec_dimm_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.jedec_dimm_softc*, align 8
  %16 = alloca %struct.sysctl_ctx_list*, align 8
  %17 = alloca %struct.sysctl_oid*, align 8
  %18 = alloca %struct.sysctl_oid_list*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %22 = load i32, i32* %2, align 4
  %23 = call %struct.jedec_dimm_softc* @device_get_softc(i32 %22)
  store %struct.jedec_dimm_softc* %23, %struct.jedec_dimm_softc** %15, align 8
  %24 = load i32, i32* %2, align 4
  %25 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %24)
  store %struct.sysctl_ctx_list* %25, %struct.sysctl_ctx_list** %16, align 8
  %26 = load i32, i32* %2, align 4
  %27 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %26)
  store %struct.sysctl_oid* %27, %struct.sysctl_oid** %17, align 8
  %28 = load %struct.sysctl_oid*, %struct.sysctl_oid** %17, align 8
  %29 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %28)
  store %struct.sysctl_oid_list* %29, %struct.sysctl_oid_list** %18, align 8
  %30 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %31 = call i32 @bzero(%struct.jedec_dimm_softc* %30, i32 56)
  %32 = load i32, i32* %2, align 4
  %33 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %34 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @device_get_parent(i32 %35)
  %37 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %38 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %37, i32 0, i32 7
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @smbus_get_addr(i32 %39)
  %41 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %42 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @JEDEC_DTI_TSOD, align 4
  %44 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %45 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, 15
  %48 = or i32 %43, %47
  %49 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %50 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %52 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %55 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @SPD_OFFSET_DRAM_TYPE, align 4
  %58 = call i32 @smbus_readb(i32 %53, i32 %56, i32 %57, i32* %3)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %1
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %365

65:                                               ; preds = %1
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  switch i32 %67, label %88 [
    i32 129, label %68
    i32 128, label %78
  ]

68:                                               ; preds = %65
  %69 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %70 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %69, i32 0, i32 2
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %71, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %73 = load i32, i32* @SPD_LEN_DDR3_PARTNUM, align 4
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* @SPD_OFFSET_DDR3_PARTNUM, align 4
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* @SPD_LEN_DDR3_SERIAL, align 4
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* @SPD_OFFSET_DDR3_SERIAL, align 4
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* @SPD_OFFSET_DDR3_TSOD_PRESENT, align 4
  store i32 %77, i32* %9, align 4
  br label %93

78:                                               ; preds = %65
  %79 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %80 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %81, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @SPD_LEN_DDR4_PARTNUM, align 4
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* @SPD_OFFSET_DDR4_PARTNUM, align 4
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* @SPD_LEN_DDR4_SERIAL, align 4
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @SPD_OFFSET_DDR4_SERIAL, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @SPD_OFFSET_DDR4_TSOD_PRESENT, align 4
  store i32 %87, i32* %9, align 4
  br label %93

88:                                               ; preds = %65
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %90)
  %92 = load i32, i32* @EINVAL, align 4
  store i32 %92, i32* %12, align 4
  br label %365

93:                                               ; preds = %78, %68
  %94 = load i64, i64* @bootverbose, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @jedec_dimm_dump(%struct.jedec_dimm_softc* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %93
  %101 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %102 = load i32, i32* %14, align 4
  %103 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %104 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %103, i32 0, i32 6
  %105 = call i32 @jedec_dimm_capacity(%struct.jedec_dimm_softc* %101, i32 %102, i32* %104)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %100
  br label %365

109:                                              ; preds = %100
  %110 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %111 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %112 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %111, i32 0, i32 3
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @jedec_dimm_field_to_str(%struct.jedec_dimm_softc* %110, i8* %113, i32 8, i32 %114, i32 %115, i32 1)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %109
  br label %365

120:                                              ; preds = %109
  %121 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %122 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %123 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %122, i32 0, i32 4
  %124 = load i8*, i8** %123, align 8
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @jedec_dimm_field_to_str(%struct.jedec_dimm_softc* %121, i8* %124, i32 8, i32 %125, i32 %126, i32 0)
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %120
  br label %365

131:                                              ; preds = %120
  %132 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %133 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %132, i32 0, i32 7
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %136 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @smbus_readb(i32 %134, i32 %137, i32 %138, i32* %3)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %131
  %143 = load i32, i32* %2, align 4
  %144 = load i32, i32* %12, align 4
  %145 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  br label %365

146:                                              ; preds = %131
  %147 = load i32, i32* %3, align 4
  %148 = and i32 %147, 128
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %188

150:                                              ; preds = %146
  store i32 1, i32* %11, align 4
  %151 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %152 = load i32, i32* @TSOD_REG_MANUFACTURER, align 4
  %153 = call i32 @jedec_dimm_readw_be(%struct.jedec_dimm_softc* %151, i32 %152, i32* %10)
  store i32 %153, i32* %12, align 4
  %154 = load i32, i32* %12, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32, i32* %2, align 4
  %158 = call i32 (i32, i8*, ...) @device_printf(i32 %157, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %189

159:                                              ; preds = %150
  %160 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %161 = load i32, i32* @TSOD_REG_DEV_REV, align 4
  %162 = call i32 @jedec_dimm_readw_be(%struct.jedec_dimm_softc* %160, i32 %161, i32* %4)
  store i32 %162, i32* %12, align 4
  %163 = load i32, i32* %12, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %2, align 4
  %167 = call i32 (i32, i8*, ...) @device_printf(i32 %166, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %189

168:                                              ; preds = %159
  %169 = load i32, i32* %10, align 4
  %170 = load i32, i32* %4, align 4
  %171 = call i8* @jedec_dimm_tsod_match(i32 %169, i32 %170)
  store i8* %171, i8** %19, align 8
  %172 = load i64, i64* @bootverbose, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %187

174:                                              ; preds = %168
  %175 = load i8*, i8** %19, align 8
  %176 = icmp eq i8* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 (i32, i8*, ...) @device_printf(i32 %178, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i32 %179, i32 %180)
  br label %186

182:                                              ; preds = %174
  %183 = load i32, i32* %2, align 4
  %184 = load i8*, i8** %19, align 8
  %185 = call i32 (i32, i8*, ...) @device_printf(i32 %183, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %184)
  br label %186

186:                                              ; preds = %182, %177
  br label %187

187:                                              ; preds = %186, %168
  br label %190

188:                                              ; preds = %146
  br label %189

189:                                              ; preds = %188, %165, %156
  store i8* null, i8** %19, align 8
  store i32 0, i32* %11, align 4
  br label %190

190:                                              ; preds = %189, %187
  %191 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %16, align 8
  %192 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %18, align 8
  %193 = load i32, i32* @OID_AUTO, align 4
  %194 = load i32, i32* @CTLFLAG_RD, align 4
  %195 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %196 = or i32 %194, %195
  %197 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %198 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %197, i32 0, i32 2
  %199 = load i8*, i8** %198, align 8
  %200 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %191, %struct.sysctl_oid_list* %192, i32 %193, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %196, i8* %199, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %201 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %16, align 8
  %202 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %18, align 8
  %203 = load i32, i32* @OID_AUTO, align 4
  %204 = load i32, i32* @CTLFLAG_RD, align 4
  %205 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %206 = or i32 %204, %205
  %207 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %208 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %207, i32 0, i32 6
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %201, %struct.sysctl_oid_list* %202, i32 %203, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), i32 %206, i32* null, i32 %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0))
  %211 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %16, align 8
  %212 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %18, align 8
  %213 = load i32, i32* @OID_AUTO, align 4
  %214 = load i32, i32* @CTLFLAG_RD, align 4
  %215 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %218 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %217, i32 0, i32 3
  %219 = load i8*, i8** %218, align 8
  %220 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %211, %struct.sysctl_oid_list* %212, i32 %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %216, i8* %219, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %221 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %16, align 8
  %222 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %18, align 8
  %223 = load i32, i32* @OID_AUTO, align 4
  %224 = load i32, i32* @CTLFLAG_RD, align 4
  %225 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %226 = or i32 %224, %225
  %227 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %228 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %227, i32 0, i32 4
  %229 = load i8*, i8** %228, align 8
  %230 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %221, %struct.sysctl_oid_list* %222, i32 %223, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i32 %226, i8* %229, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.16, i64 0, i64 0))
  %231 = load i32, i32* %11, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %248

233:                                              ; preds = %190
  %234 = load i8*, i8** %19, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %248

236:                                              ; preds = %233
  %237 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %16, align 8
  %238 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %18, align 8
  %239 = load i32, i32* @OID_AUTO, align 4
  %240 = load i32, i32* @CTLTYPE_INT, align 4
  %241 = load i32, i32* @CTLFLAG_RD, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %244 = or i32 %242, %243
  %245 = load i32, i32* %2, align 4
  %246 = load i32, i32* @jedec_dimm_temp_sysctl, align 4
  %247 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %237, %struct.sysctl_oid_list* %238, i32 %239, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i32 %244, i32 %245, i32 0, i32 %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  br label %248

248:                                              ; preds = %236, %233, %190
  %249 = load i32, i32* %2, align 4
  %250 = call i32 @device_get_name(i32 %249)
  %251 = load i32, i32* %2, align 4
  %252 = call i32 @device_get_unit(i32 %251)
  %253 = call i64 @resource_string_value(i32 %250, i32 %252, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %20)
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %275

255:                                              ; preds = %248
  %256 = load i8*, i8** %20, align 8
  %257 = icmp ne i8* %256, null
  br i1 %257, label %258, label %274

258:                                              ; preds = %255
  %259 = load i8*, i8** %20, align 8
  %260 = load i32, i32* @M_DEVBUF, align 4
  %261 = call i8* @strdup(i8* %259, i32 %260)
  %262 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %263 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %262, i32 0, i32 5
  store i8* %261, i8** %263, align 8
  %264 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %16, align 8
  %265 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %18, align 8
  %266 = load i32, i32* @OID_AUTO, align 4
  %267 = load i32, i32* @CTLFLAG_RD, align 4
  %268 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %269 = or i32 %267, %268
  %270 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %271 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %270, i32 0, i32 5
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list* %264, %struct.sysctl_oid_list* %265, i32 %266, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i32 %269, i8* %272, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  br label %274

274:                                              ; preds = %258, %255
  br label %275

275:                                              ; preds = %274, %248
  %276 = load i8*, i8** %19, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %283, label %278

278:                                              ; preds = %275
  %279 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %280 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %279, i32 0, i32 5
  %281 = load i8*, i8** %280, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %364

283:                                              ; preds = %278, %275
  %284 = load i32, i32* %2, align 4
  %285 = call i8* @device_get_desc(i32 %284)
  %286 = call i32 @strlen(i8* %285)
  store i32 %286, i32* %13, align 4
  %287 = load i8*, i8** %19, align 8
  %288 = icmp ne i8* %287, null
  br i1 %288, label %289, label %296

289:                                              ; preds = %283
  %290 = load i8*, i8** %19, align 8
  %291 = call i32 @strlen(i8* %290)
  %292 = load i32, i32* %13, align 4
  %293 = add nsw i32 %292, %291
  store i32 %293, i32* %13, align 4
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 4
  store i32 %295, i32* %13, align 4
  br label %296

296:                                              ; preds = %289, %283
  %297 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %298 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %297, i32 0, i32 5
  %299 = load i8*, i8** %298, align 8
  %300 = icmp ne i8* %299, null
  br i1 %300, label %301, label %310

301:                                              ; preds = %296
  %302 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %303 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %302, i32 0, i32 5
  %304 = load i8*, i8** %303, align 8
  %305 = call i32 @strlen(i8* %304)
  %306 = load i32, i32* %13, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %13, align 4
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, 3
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %301, %296
  %311 = load i32, i32* %13, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %13, align 4
  %313 = load i32, i32* %13, align 4
  %314 = load i32, i32* @M_TEMP, align 4
  %315 = load i32, i32* @M_WAITOK, align 4
  %316 = load i32, i32* @M_ZERO, align 4
  %317 = or i32 %315, %316
  %318 = call i8* @malloc(i32 %313, i32 %314, i32 %317)
  store i8* %318, i8** %21, align 8
  %319 = load i8*, i8** %21, align 8
  %320 = load i32, i32* %13, align 4
  %321 = load i32, i32* %2, align 4
  %322 = call i8* @device_get_desc(i32 %321)
  %323 = load i8*, i8** %19, align 8
  %324 = icmp ne i8* %323, null
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)
  %327 = load i8*, i8** %19, align 8
  %328 = icmp ne i8* %327, null
  br i1 %328, label %329, label %331

329:                                              ; preds = %310
  %330 = load i8*, i8** %19, align 8
  br label %332

331:                                              ; preds = %310
  br label %332

332:                                              ; preds = %331, %329
  %333 = phi i8* [ %330, %329 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %331 ]
  %334 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %335 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %334, i32 0, i32 5
  %336 = load i8*, i8** %335, align 8
  %337 = icmp ne i8* %336, null
  %338 = zext i1 %337 to i64
  %339 = select i1 %337, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)
  %340 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %341 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %340, i32 0, i32 5
  %342 = load i8*, i8** %341, align 8
  %343 = icmp ne i8* %342, null
  br i1 %343, label %344, label %348

344:                                              ; preds = %332
  %345 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %346 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %345, i32 0, i32 5
  %347 = load i8*, i8** %346, align 8
  br label %349

348:                                              ; preds = %332
  br label %349

349:                                              ; preds = %348, %344
  %350 = phi i8* [ %347, %344 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0), %348 ]
  %351 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %15, align 8
  %352 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %351, i32 0, i32 5
  %353 = load i8*, i8** %352, align 8
  %354 = icmp ne i8* %353, null
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.24, i64 0, i64 0)
  %357 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %319, i32 %320, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), i8* %322, i8* %326, i8* %333, i8* %339, i8* %350, i8* %356)
  %358 = load i32, i32* %2, align 4
  %359 = load i8*, i8** %21, align 8
  %360 = call i32 @device_set_desc_copy(i32 %358, i8* %359)
  %361 = load i8*, i8** %21, align 8
  %362 = load i32, i32* @M_TEMP, align 4
  %363 = call i32 @free(i8* %361, i32 %362)
  br label %364

364:                                              ; preds = %349, %278
  br label %365

365:                                              ; preds = %364, %142, %130, %119, %108, %88, %61
  %366 = load i32, i32* %12, align 4
  ret i32 %366
}

declare dso_local %struct.jedec_dimm_softc* @device_get_softc(i32) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @bzero(%struct.jedec_dimm_softc*, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @smbus_get_addr(i32) #1

declare dso_local i32 @smbus_readb(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @jedec_dimm_dump(%struct.jedec_dimm_softc*, i32) #1

declare dso_local i32 @jedec_dimm_capacity(%struct.jedec_dimm_softc*, i32, i32*) #1

declare dso_local i32 @jedec_dimm_field_to_str(%struct.jedec_dimm_softc*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @jedec_dimm_readw_be(%struct.jedec_dimm_softc*, i32, i32*) #1

declare dso_local i8* @jedec_dimm_tsod_match(i32, i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i64 @resource_string_value(i32, i32, i8*, i8**) #1

declare dso_local i32 @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @strdup(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @device_get_desc(i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
