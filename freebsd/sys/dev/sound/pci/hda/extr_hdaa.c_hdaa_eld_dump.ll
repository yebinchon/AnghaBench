; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_eld_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_eld_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_widget = type { i32*, i32, i32, %struct.hdaa_devinfo* }
%struct.hdaa_devinfo = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"ELD nid=%d: ELD_Ver=%u Baseline_ELD_Len=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"ELD nid=%d: CEA_EDID_Ver=%u MNL=%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"ELD nid=%d: SAD_Count=%u Conn_Type=%u S_AI=%u HDCP=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"ELD nid=%d: Aud_Synch_Delay=%ums\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ELD nid=%d: Channels=0x%b\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\10\07RLRC\06FLRC\05RC\04RLR\03FC\02LFE\01FLR\00", align 1
@.str.6 = private unnamed_addr constant [56 x i8] c"ELD nid=%d: Port_ID=0x%02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"ELD nid=%d: Manufacturer_Name=0x%02x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [37 x i8] c"ELD nid=%d: Product_Code=0x%02x%02x\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"ELD nid=%d: Monitor_Name_String='%.*s'\0A\00", align 1
@HDA_HDMI_CODING_TYPE_REF_CTX = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"ELD nid=%d: %s %dch freqs=0x%b\00", align 1
@HDA_HDMI_CODING_TYPES = common dso_local global i32* null, align 8
@.str.11 = private unnamed_addr constant [25 x i8] c"\10\07192\06176\0596\0488\0348\0244\0132\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c" sizes=0x%b\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"\10\0324\0220\0116\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c" max_bitrate=%d\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c" profile=%d\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_widget*)* @hdaa_eld_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_eld_dump(%struct.hdaa_widget* %0) #0 {
  %2 = alloca %struct.hdaa_widget*, align 8
  %3 = alloca %struct.hdaa_devinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdaa_widget* %0, %struct.hdaa_widget** %2, align 8
  %11 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %12 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %11, i32 0, i32 3
  %13 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %12, align 8
  store %struct.hdaa_devinfo* %13, %struct.hdaa_devinfo** %3, align 8
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %3, align 8
  %15 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  %17 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %18 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %1
  %22 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %23 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %24, 4
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %1
  br label %301

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %30 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %33 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 3
  %38 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %39 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %37, i32 %42)
  %44 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %45 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 3
  %50 = icmp ne i32 %49, 2
  br i1 %50, label %51, label %52

51:                                               ; preds = %27
  br label %301

52:                                               ; preds = %27
  %53 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %54 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %57 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %60, 4
  %62 = call i32 @min(i32 %55, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %64 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 31
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %71 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %74 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 5
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %78, i32 %79)
  %81 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %82 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 4
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %89 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %93 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 5
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 2
  %98 = and i32 %97, 3
  %99 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %100 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = ashr i32 %103, 1
  %105 = and i32 %104, 1
  %106 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %107 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 1
  %112 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %90, i32 %91, i32 %98, i32 %105, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %115 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %118 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 6
  %121 = load i32, i32* %120, align 4
  %122 = mul nsw i32 %121, 2
  %123 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %116, i32 %122)
  %124 = load i32, i32* %4, align 4
  %125 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %126 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %129 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 7
  %132 = load i32, i32* %131, align 4
  %133 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %127, i32 %132, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %136 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %139 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 8
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %144 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 9
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %149 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 10
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %154 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 11
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %159 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 12
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %164 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 13
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %169 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 14
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %174 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %173, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 15
  %177 = load i32, i32* %176, align 4
  %178 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.6, i64 0, i64 0), i32 %137, i32 %142, i32 %147, i32 %152, i32 %157, i32 %162, i32 %167, i32 %172, i32 %177)
  %179 = load i32, i32* %4, align 4
  %180 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %181 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %184 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %183, i32 0, i32 0
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 16
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %189 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 17
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %179, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %182, i32 %187, i32 %192)
  %194 = load i32, i32* %4, align 4
  %195 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %196 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %199 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 18
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %204 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 19
  %207 = load i32, i32* %206, align 4
  %208 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %194, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %197, i32 %202, i32 %207)
  %209 = load i32, i32* %4, align 4
  %210 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %211 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %215 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 20
  %218 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %209, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %212, i32 %213, i32* %217)
  store i32 0, i32* %8, align 4
  br label %219

219:                                              ; preds = %298, %52
  %220 = load i32, i32* %8, align 4
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %301

223:                                              ; preds = %219
  %224 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %225 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = add nsw i32 20, %227
  %229 = load i32, i32* %8, align 4
  %230 = mul nsw i32 %229, 3
  %231 = add nsw i32 %228, %230
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %226, i64 %232
  store i32* %233, i32** %5, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  %236 = load i32, i32* %235, align 4
  %237 = ashr i32 %236, 3
  %238 = and i32 %237, 15
  store i32 %238, i32* %10, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* @HDA_HDMI_CODING_TYPE_REF_CTX, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %258

242:                                              ; preds = %223
  %243 = load i32*, i32** %5, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  %245 = load i32, i32* %244, align 4
  %246 = ashr i32 %245, 3
  %247 = and i32 %246, 31
  store i32 %247, i32* %10, align 4
  %248 = load i32, i32* %10, align 4
  %249 = icmp slt i32 %248, 1
  br i1 %249, label %253, label %250

250:                                              ; preds = %242
  %251 = load i32, i32* %10, align 4
  %252 = icmp sgt i32 %251, 3
  br i1 %252, label %253, label %254

253:                                              ; preds = %250, %242
  store i32 0, i32* %10, align 4
  br label %257

254:                                              ; preds = %250
  %255 = load i32, i32* %10, align 4
  %256 = add nsw i32 %255, 14
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %254, %253
  br label %258

258:                                              ; preds = %257, %223
  %259 = load i32, i32* %4, align 4
  %260 = load %struct.hdaa_widget*, %struct.hdaa_widget** %2, align 8
  %261 = getelementptr inbounds %struct.hdaa_widget, %struct.hdaa_widget* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** @HDA_HDMI_CODING_TYPES, align 8
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32, i32* %263, i64 %265
  %267 = load i32, i32* %266, align 4
  %268 = load i32*, i32** %5, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 0
  %270 = load i32, i32* %269, align 4
  %271 = and i32 %270, 7
  %272 = add nsw i32 %271, 1
  %273 = load i32*, i32** %5, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %259, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %262, i32 %267, i32 %272, i32 %275, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %277 = load i32, i32* %10, align 4
  switch i32 %277, label %296 [
    i32 132, label %278
    i32 135, label %284
    i32 130, label %284
    i32 131, label %284
    i32 129, label %284
    i32 136, label %284
    i32 133, label %284
    i32 134, label %284
    i32 128, label %290
  ]

278:                                              ; preds = %258
  %279 = load i32*, i32** %5, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, 7
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i32 %282, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  br label %296

284:                                              ; preds = %258, %258, %258, %258, %258, %258, %258
  %285 = load i32*, i32** %5, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 2
  %287 = load i32, i32* %286, align 4
  %288 = mul nsw i32 %287, 8000
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 %288)
  br label %296

290:                                              ; preds = %258
  %291 = load i32*, i32** %5, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = load i32, i32* %292, align 4
  %294 = and i32 %293, 7
  %295 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i32 %294)
  br label %296

296:                                              ; preds = %258, %290, %284, %278
  %297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %298

298:                                              ; preds = %296
  %299 = load i32, i32* %8, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %8, align 4
  br label %219

301:                                              ; preds = %26, %51, %219
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
