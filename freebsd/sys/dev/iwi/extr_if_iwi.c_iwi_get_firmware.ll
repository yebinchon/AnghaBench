; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_get_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_get_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_8__, i32 }
%struct.TYPE_7__ = type { i8*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, %struct.firmware* }
%struct.firmware = type { i32, i32, i32, i64 }
%struct.iwi_firmware_hdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"iwi_bss\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"iwi_ucode_bss\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"iwi_ibss\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"iwi_ucode_ibss\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"iwi_monitor\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"iwi_ucode_monitor\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"unknown opmode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [25 x i8] c"could not load firmware\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"could not load ucode\0A\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"iwi_boot\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"could not load boot firmware\0A\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"firmware version mismatch: '%s' is %d, '%s' is %d, '%s' is %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"image '%s' too small\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"image '%s' too small (2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, i32)* @iwi_get_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_get_firmware(%struct.iwi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwi_firmware_hdr*, align 8
  %7 = alloca %struct.firmware*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %9 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %15 = call i32 @iwi_put_firmware(%struct.iwi_softc* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %36 [
    i32 128, label %18
    i32 130, label %24
    i32 129, label %30
  ]

18:                                               ; preds = %16
  %19 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %20 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %19, i32 0, i32 1
  %21 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %22 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %21, i32 0, i32 2
  %23 = call i32 @iwi_getfw(%struct.TYPE_8__* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %43

24:                                               ; preds = %16
  %25 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %26 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %25, i32 0, i32 1
  %27 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %28 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %27, i32 0, i32 2
  %29 = call i32 @iwi_getfw(%struct.TYPE_8__* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %43

30:                                               ; preds = %16
  %31 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %32 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %31, i32 0, i32 1
  %33 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %34 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %33, i32 0, i32 2
  %35 = call i32 @iwi_getfw(%struct.TYPE_8__* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_7__* %34, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %43

36:                                               ; preds = %16
  %37 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %38 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %314

43:                                               ; preds = %30, %24, %18
  %44 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 3
  %47 = load %struct.firmware*, %struct.firmware** %46, align 8
  store %struct.firmware* %47, %struct.firmware** %7, align 8
  %48 = load %struct.firmware*, %struct.firmware** %7, align 8
  %49 = icmp eq %struct.firmware* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %52 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %311

55:                                               ; preds = %43
  %56 = load %struct.firmware*, %struct.firmware** %7, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 300
  br i1 %59, label %60, label %183

60:                                               ; preds = %55
  %61 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %62 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = icmp eq %struct.TYPE_6__* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %60
  %67 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = call i32 (i32, i8*, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %311

71:                                               ; preds = %60
  %72 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %73 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 3
  %75 = load %struct.firmware*, %struct.firmware** %74, align 8
  %76 = icmp eq %struct.firmware* %75, null
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = call %struct.firmware* @firmware_get(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %79 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %80 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  store %struct.firmware* %78, %struct.firmware** %81, align 8
  %82 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %83 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 3
  %85 = load %struct.firmware*, %struct.firmware** %84, align 8
  %86 = icmp eq %struct.firmware* %85, null
  br i1 %86, label %87, label %92

87:                                               ; preds = %77
  %88 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %89 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 (i32, i8*, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %311

92:                                               ; preds = %77
  br label %93

93:                                               ; preds = %92, %71
  %94 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %95 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  %97 = load %struct.firmware*, %struct.firmware** %96, align 8
  %98 = getelementptr inbounds %struct.firmware, %struct.firmware* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %101 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 3
  %103 = load %struct.firmware*, %struct.firmware** %102, align 8
  %104 = getelementptr inbounds %struct.firmware, %struct.firmware* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %99, %105
  br i1 %106, label %122, label %107

107:                                              ; preds = %93
  %108 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %109 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 3
  %111 = load %struct.firmware*, %struct.firmware** %110, align 8
  %112 = getelementptr inbounds %struct.firmware, %struct.firmware* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %116 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %114, %120
  br i1 %121, label %122, label %163

122:                                              ; preds = %107, %93
  %123 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %124 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %127 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load %struct.firmware*, %struct.firmware** %128, align 8
  %130 = getelementptr inbounds %struct.firmware, %struct.firmware* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %133 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  %135 = load %struct.firmware*, %struct.firmware** %134, align 8
  %136 = getelementptr inbounds %struct.firmware, %struct.firmware* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %139 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %145 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %151 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 3
  %153 = load %struct.firmware*, %struct.firmware** %152, align 8
  %154 = getelementptr inbounds %struct.firmware, %struct.firmware* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %157 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load %struct.firmware*, %struct.firmware** %158, align 8
  %160 = getelementptr inbounds %struct.firmware, %struct.firmware* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 (i32, i8*, ...) @device_printf(i32 %125, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 %131, i32 %137, i32 %143, i64 %149, i32 %155, i32 %161)
  br label %311

163:                                              ; preds = %107
  %164 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %165 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %166 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %165, i32 0, i32 2
  %167 = call i32* @iwi_setup_oucode(%struct.iwi_softc* %164, %struct.TYPE_7__* %166)
  %168 = icmp eq i32* %167, null
  br i1 %168, label %181, label %169

169:                                              ; preds = %163
  %170 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %171 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %172 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %171, i32 0, i32 3
  %173 = call i32* @iwi_setup_ofw(%struct.iwi_softc* %170, %struct.TYPE_8__* %172)
  %174 = icmp eq i32* %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %177 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %178 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %177, i32 0, i32 1
  %179 = call i32* @iwi_setup_ofw(%struct.iwi_softc* %176, %struct.TYPE_8__* %178)
  %180 = icmp eq i32* %179, null
  br i1 %180, label %181, label %182

181:                                              ; preds = %175, %169, %163
  br label %311

182:                                              ; preds = %175
  br label %307

183:                                              ; preds = %55
  %184 = load %struct.firmware*, %struct.firmware** %7, align 8
  %185 = getelementptr inbounds %struct.firmware, %struct.firmware* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = icmp ult i64 %187, 12
  br i1 %188, label %189, label %197

189:                                              ; preds = %183
  %190 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %191 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.firmware*, %struct.firmware** %7, align 8
  %194 = getelementptr inbounds %struct.firmware, %struct.firmware* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i32 (i32, i8*, ...) @device_printf(i32 %192, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32 %195)
  br label %311

197:                                              ; preds = %183
  %198 = load %struct.firmware*, %struct.firmware** %7, align 8
  %199 = getelementptr inbounds %struct.firmware, %struct.firmware* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.iwi_firmware_hdr*
  store %struct.iwi_firmware_hdr* %201, %struct.iwi_firmware_hdr** %6, align 8
  %202 = load %struct.firmware*, %struct.firmware** %7, align 8
  %203 = getelementptr inbounds %struct.firmware, %struct.firmware* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = load %struct.iwi_firmware_hdr*, %struct.iwi_firmware_hdr** %6, align 8
  %207 = getelementptr inbounds %struct.iwi_firmware_hdr, %struct.iwi_firmware_hdr* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @le32toh(i32 %208)
  %210 = sext i32 %209 to i64
  %211 = add i64 12, %210
  %212 = load %struct.iwi_firmware_hdr*, %struct.iwi_firmware_hdr** %6, align 8
  %213 = getelementptr inbounds %struct.iwi_firmware_hdr, %struct.iwi_firmware_hdr* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @le32toh(i32 %214)
  %216 = sext i32 %215 to i64
  %217 = add i64 %211, %216
  %218 = load %struct.iwi_firmware_hdr*, %struct.iwi_firmware_hdr** %6, align 8
  %219 = getelementptr inbounds %struct.iwi_firmware_hdr, %struct.iwi_firmware_hdr* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @le32toh(i32 %220)
  %222 = sext i32 %221 to i64
  %223 = add i64 %217, %222
  %224 = icmp ult i64 %205, %223
  br i1 %224, label %225, label %233

225:                                              ; preds = %197
  %226 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %227 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.firmware*, %struct.firmware** %7, align 8
  %230 = getelementptr inbounds %struct.firmware, %struct.firmware* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32, i8*, ...) @device_printf(i32 %228, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), i32 %231)
  br label %311

233:                                              ; preds = %197
  %234 = load %struct.firmware*, %struct.firmware** %7, align 8
  %235 = getelementptr inbounds %struct.firmware, %struct.firmware* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = inttoptr i64 %236 to i8*
  %238 = getelementptr inbounds i8, i8* %237, i64 12
  %239 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %240 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  store i8* %238, i8** %241, align 8
  %242 = load %struct.iwi_firmware_hdr*, %struct.iwi_firmware_hdr** %6, align 8
  %243 = getelementptr inbounds %struct.iwi_firmware_hdr, %struct.iwi_firmware_hdr* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @le32toh(i32 %244)
  %246 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %247 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  store i32 %245, i32* %248, align 8
  %249 = load %struct.firmware*, %struct.firmware** %7, align 8
  %250 = getelementptr inbounds %struct.firmware, %struct.firmware* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %253 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 2
  store i32 %251, i32* %254, align 4
  %255 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %256 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %260 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %259, i32 0, i32 3
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 8
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %258, i64 %263
  %265 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %266 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %265, i32 0, i32 2
  %267 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %266, i32 0, i32 0
  store i8* %264, i8** %267, align 8
  %268 = load %struct.iwi_firmware_hdr*, %struct.iwi_firmware_hdr** %6, align 8
  %269 = getelementptr inbounds %struct.iwi_firmware_hdr, %struct.iwi_firmware_hdr* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @le32toh(i32 %270)
  %272 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %273 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 1
  store i32 %271, i32* %274, align 8
  %275 = load %struct.firmware*, %struct.firmware** %7, align 8
  %276 = getelementptr inbounds %struct.firmware, %struct.firmware* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %279 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %278, i32 0, i32 2
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %279, i32 0, i32 2
  store i32 %277, i32* %280, align 4
  %281 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %282 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 0
  %284 = load i8*, i8** %283, align 8
  %285 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %286 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i8, i8* %284, i64 %289
  %291 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %292 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  store i8* %290, i8** %293, align 8
  %294 = load %struct.iwi_firmware_hdr*, %struct.iwi_firmware_hdr** %6, align 8
  %295 = getelementptr inbounds %struct.iwi_firmware_hdr, %struct.iwi_firmware_hdr* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @le32toh(i32 %296)
  %298 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %299 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %299, i32 0, i32 1
  store i32 %297, i32* %300, align 8
  %301 = load %struct.firmware*, %struct.firmware** %7, align 8
  %302 = getelementptr inbounds %struct.firmware, %struct.firmware* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %305 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 2
  store i32 %303, i32* %306, align 4
  br label %307

307:                                              ; preds = %233, %182
  %308 = load i32, i32* %5, align 4
  %309 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %310 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 8
  store i32 0, i32* %3, align 4
  br label %314

311:                                              ; preds = %225, %189, %181, %122, %87, %66, %50
  %312 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %313 = call i32 @iwi_put_firmware(%struct.iwi_softc* %312)
  store i32 1, i32* %3, align 4
  br label %314

314:                                              ; preds = %311, %307, %36
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i32 @iwi_put_firmware(%struct.iwi_softc*) #1

declare dso_local i32 @iwi_getfw(%struct.TYPE_8__*, i8*, %struct.TYPE_7__*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.firmware* @firmware_get(i8*) #1

declare dso_local i32* @iwi_setup_oucode(%struct.iwi_softc*, %struct.TYPE_7__*) #1

declare dso_local i32* @iwi_setup_ofw(%struct.iwi_softc*, %struct.TYPE_8__*) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
