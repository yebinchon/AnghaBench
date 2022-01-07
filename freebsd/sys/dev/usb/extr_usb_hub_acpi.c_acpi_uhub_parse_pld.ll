; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_parse_pld.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_parse_pld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysctl_oid_list = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i8* }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.acpi_uhub_softc = type { %struct.acpi_uhub_port* }
%struct.acpi_uhub_port = type { i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_PLD\00", align 1
@AE_OK = common dso_local global i64 0, align 8
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_PLD_SIZE = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pldraw\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"Raw PLD value\00", align 1
@usb_debug = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [13 x i8] c"Revision:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Color:#%02x%02x%02x\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Width %d mm Height %d mm\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Visible\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Dock\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Lid\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"PanelPosition: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"VertPosition: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"HorizPosition: %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"Shape: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"80: %02x, %02x, %02x\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"96: %02x, %02x, %02x, %02x\0A\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"VOFF%d mm HOFF %dmm\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.sysctl_oid_list*)* @acpi_uhub_parse_pld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_uhub_parse_pld(i32 %0, i32 %1, i32 %2, %struct.sysctl_oid_list* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sysctl_oid_list*, align 8
  %9 = alloca %struct.TYPE_10__, align 8
  %10 = alloca %struct.acpi_uhub_softc*, align 8
  %11 = alloca %struct.acpi_uhub_port*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_9__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.sysctl_oid_list* %3, %struct.sysctl_oid_list** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.acpi_uhub_softc* @device_get_softc(i32 %16)
  store %struct.acpi_uhub_softc* %17, %struct.acpi_uhub_softc** %10, align 8
  %18 = load %struct.acpi_uhub_softc*, %struct.acpi_uhub_softc** %10, align 8
  %19 = getelementptr inbounds %struct.acpi_uhub_softc, %struct.acpi_uhub_softc* %18, i32 0, i32 0
  %20 = load %struct.acpi_uhub_port*, %struct.acpi_uhub_port** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sub i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.acpi_uhub_port, %struct.acpi_uhub_port* %20, i64 %23
  store %struct.acpi_uhub_port* %24, %struct.acpi_uhub_port** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %25, align 8
  %26 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i64 @AcpiEvaluateObject(i32 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.TYPE_10__* %9)
  %30 = load i64, i64* @AE_OK, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %291

32:                                               ; preds = %4
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %12, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %32
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %40
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i64 0
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %15, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %14, align 4
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %13, align 8
  br label %81

64:                                               ; preds = %40, %32
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %14, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  store i8* %78, i8** %13, align 8
  br label %80

79:                                               ; preds = %64
  br label %287

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %50
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @ACPI_PLD_SIZE, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* %14, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @ACPI_PLD_SIZE, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  store i32 %90, i32* %14, align 4
  %91 = load %struct.acpi_uhub_port*, %struct.acpi_uhub_port** %11, align 8
  %92 = getelementptr inbounds %struct.acpi_uhub_port, %struct.acpi_uhub_port* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i8*, i8** %13, align 8
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @memcpy(i32 %93, i8* %94, i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = call i32 @device_get_sysctl_ctx(i32 %97)
  %99 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %8, align 8
  %100 = load i32, i32* @OID_AUTO, align 4
  %101 = load i32, i32* @CTLFLAG_RD, align 4
  %102 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.acpi_uhub_port*, %struct.acpi_uhub_port** %11, align 8
  %105 = getelementptr inbounds %struct.acpi_uhub_port, %struct.acpi_uhub_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %14, align 4
  %108 = call i32 @SYSCTL_ADD_OPAQUE(i32 %98, %struct.sysctl_oid_list* %99, i32 %100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %106, i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %109 = load i64, i64* @usb_debug, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %286

111:                                              ; preds = %89
  %112 = load i32, i32* %5, align 4
  %113 = load i8*, i8** %13, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %116, 127
  %118 = call i32 (i32, i8*, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i8*, i8** %13, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = and i32 %122, 128
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %111
  %126 = load i32, i32* %5, align 4
  %127 = load i8*, i8** %13, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8*, i8** %13, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 2
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8*, i8** %13, align 8
  %136 = getelementptr inbounds i8, i8* %135, i64 3
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = call i32 (i32, i8*, ...) @device_printf(i32 %126, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %130, i32 %134, i32 %138)
  br label %140

140:                                              ; preds = %125, %111
  %141 = load i32, i32* %5, align 4
  %142 = load i8*, i8** %13, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 4
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = load i8*, i8** %13, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 5
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = shl i32 %149, 8
  %151 = or i32 %145, %150
  %152 = load i8*, i8** %13, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 6
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = load i8*, i8** %13, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 7
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = shl i32 %159, 8
  %161 = or i32 %155, %160
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %141, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %151, i32 %161)
  %163 = load i8*, i8** %13, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 8
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = and i32 %166, 1
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %140
  %170 = load i32, i32* %5, align 4
  %171 = call i32 (i32, i8*, ...) @device_printf(i32 %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %172

172:                                              ; preds = %169, %140
  %173 = load i8*, i8** %13, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 8
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = and i32 %176, 2
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load i32, i32* %5, align 4
  %181 = call i32 (i32, i8*, ...) @device_printf(i32 %180, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  br label %182

182:                                              ; preds = %179, %172
  %183 = load i8*, i8** %13, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 8
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = and i32 %186, 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %182
  %190 = load i32, i32* %5, align 4
  %191 = call i32 (i32, i8*, ...) @device_printf(i32 %190, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %192

192:                                              ; preds = %189, %182
  %193 = load i32, i32* %5, align 4
  %194 = load i8*, i8** %13, align 8
  %195 = getelementptr inbounds i8, i8* %194, i64 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = ashr i32 %197, 3
  %199 = and i32 %198, 7
  %200 = call i32 (i32, i8*, ...) @device_printf(i32 %193, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %199)
  %201 = load i32, i32* %5, align 4
  %202 = load i8*, i8** %13, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 8
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = ashr i32 %205, 6
  %207 = and i32 %206, 3
  %208 = call i32 (i32, i8*, ...) @device_printf(i32 %201, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %207)
  %209 = load i32, i32* %5, align 4
  %210 = load i8*, i8** %13, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 9
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = and i32 %213, 3
  %215 = call i32 (i32, i8*, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i32 %214)
  %216 = load i32, i32* %5, align 4
  %217 = load i8*, i8** %13, align 8
  %218 = getelementptr inbounds i8, i8* %217, i64 9
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = ashr i32 %220, 2
  %222 = and i32 %221, 15
  %223 = call i32 (i32, i8*, ...) @device_printf(i32 %216, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 %222)
  %224 = load i32, i32* %5, align 4
  %225 = load i8*, i8** %13, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 9
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i32
  %229 = load i8*, i8** %13, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 10
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = load i8*, i8** %13, align 8
  %234 = getelementptr inbounds i8, i8* %233, i64 11
  %235 = load i8, i8* %234, align 1
  %236 = zext i8 %235 to i32
  %237 = call i32 (i32, i8*, ...) @device_printf(i32 %224, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %228, i32 %232, i32 %236)
  %238 = load i32, i32* %5, align 4
  %239 = load i8*, i8** %13, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 12
  %241 = load i8, i8* %240, align 1
  %242 = zext i8 %241 to i32
  %243 = load i8*, i8** %13, align 8
  %244 = getelementptr inbounds i8, i8* %243, i64 13
  %245 = load i8, i8* %244, align 1
  %246 = zext i8 %245 to i32
  %247 = load i8*, i8** %13, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 14
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  %251 = load i8*, i8** %13, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 15
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = call i32 (i32, i8*, ...) @device_printf(i32 %238, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i32 %242, i32 %246, i32 %250, i32 %254)
  %256 = load i8*, i8** %13, align 8
  %257 = getelementptr inbounds i8, i8* %256, i64 0
  %258 = load i8, i8* %257, align 1
  %259 = zext i8 %258 to i32
  %260 = and i32 %259, 127
  %261 = icmp sge i32 %260, 2
  br i1 %261, label %262, label %285

262:                                              ; preds = %192
  %263 = load i32, i32* %5, align 4
  %264 = load i8*, i8** %13, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 16
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = load i8*, i8** %13, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 17
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = shl i32 %271, 8
  %273 = or i32 %267, %272
  %274 = load i8*, i8** %13, align 8
  %275 = getelementptr inbounds i8, i8* %274, i64 18
  %276 = load i8, i8* %275, align 1
  %277 = zext i8 %276 to i32
  %278 = load i8*, i8** %13, align 8
  %279 = getelementptr inbounds i8, i8* %278, i64 19
  %280 = load i8, i8* %279, align 1
  %281 = zext i8 %280 to i32
  %282 = shl i32 %281, 8
  %283 = or i32 %277, %282
  %284 = call i32 (i32, i8*, ...) @device_printf(i32 %263, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 %273, i32 %283)
  br label %285

285:                                              ; preds = %262, %192
  br label %286

286:                                              ; preds = %285, %89
  br label %287

287:                                              ; preds = %286, %79
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %289 = load %struct.TYPE_9__*, %struct.TYPE_9__** %288, align 8
  %290 = call i32 @AcpiOsFree(%struct.TYPE_9__* %289)
  br label %291

291:                                              ; preds = %287, %4
  ret i32 0
}

declare dso_local %struct.acpi_uhub_softc* @device_get_softc(i32) #1

declare dso_local i64 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @SYSCTL_ADD_OPAQUE(i32, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
