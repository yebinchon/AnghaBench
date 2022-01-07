; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_describe_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_describe_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { i32 }
%struct.amr_prodinfo = type { i8*, i8*, i8*, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32 }
%struct.amr_enquiry = type { i8*, i8*, i8*, i64, %struct.TYPE_2__, i32 }

@AMR_CMD_CONFIG = common dso_local global i32 0, align 4
@AMR_CONFIG_PRODUCT_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"<LSILogic %.80s> Firmware %.16s, BIOS %.16s, %dMB RAM\0A\00", align 1
@M_AMR = common dso_local global i32 0, align 4
@AMR_CMD_EXT_ENQUIRY2 = common dso_local global i32 0, align 4
@amr_table_adaptertype = common dso_local global i32 0, align 4
@AMR_CMD_ENQUIRY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Series 428\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Series 434\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"unknown controller\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"<unsupported controller>\0A\00", align 1
@AMR_SIG_438 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"HP NetRaid 3si\00", align 1
@.str.6 = private unnamed_addr constant [57 x i8] c"<%s> Firmware %c.%02d.%02d, BIOS %c.%02d.%02d, %dMB RAM\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"<%s> Firmware %.4s, BIOS %.4s, %dMB RAM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amr_softc*)* @amr_describe_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_describe_controller(%struct.amr_softc* %0) #0 {
  %2 = alloca %struct.amr_softc*, align 8
  %3 = alloca %struct.amr_prodinfo*, align 8
  %4 = alloca %struct.amr_enquiry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.amr_softc* %0, %struct.amr_softc** %2, align 8
  %7 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %8 = load i32, i32* @AMR_CMD_CONFIG, align 4
  %9 = load i32, i32* @AMR_CONFIG_PRODUCT_INFO, align 4
  %10 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %7, i32 2048, i32 %8, i32 %9, i32 0, i32* %6)
  store %struct.amr_prodinfo* %10, %struct.amr_prodinfo** %3, align 8
  %11 = icmp ne %struct.amr_prodinfo* %10, null
  br i1 %11, label %12, label %32

12:                                               ; preds = %1
  %13 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %14 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %3, align 8
  %17 = getelementptr inbounds %struct.amr_prodinfo, %struct.amr_prodinfo* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %3, align 8
  %20 = getelementptr inbounds %struct.amr_prodinfo, %struct.amr_prodinfo* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %3, align 8
  %23 = getelementptr inbounds %struct.amr_prodinfo, %struct.amr_prodinfo* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  %25 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %3, align 8
  %26 = getelementptr inbounds %struct.amr_prodinfo, %struct.amr_prodinfo* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 (i32, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %21, i8* %24, i32 %27)
  %29 = load %struct.amr_prodinfo*, %struct.amr_prodinfo** %3, align 8
  %30 = load i32, i32* @M_AMR, align 4
  %31 = call i32 @free(%struct.amr_prodinfo* %29, i32 %30)
  br label %219

32:                                               ; preds = %1
  %33 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %34 = load i32, i32* @AMR_CMD_EXT_ENQUIRY2, align 4
  %35 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %33, i32 2048, i32 %34, i32 0, i32 0, i32* %6)
  %36 = bitcast %struct.amr_prodinfo* %35 to %struct.amr_enquiry*
  store %struct.amr_enquiry* %36, %struct.amr_enquiry** %4, align 8
  %37 = icmp ne %struct.amr_enquiry* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* @amr_table_adaptertype, align 4
  %40 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %41 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = call i8* @amr_describe_code(i32 %39, i64 %42)
  store i8* %43, i8** %5, align 8
  br label %65

44:                                               ; preds = %32
  %45 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %46 = load i32, i32* @AMR_CMD_ENQUIRY, align 4
  %47 = call %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc* %45, i32 2048, i32 %46, i32 0, i32 0, i32* %6)
  %48 = bitcast %struct.amr_prodinfo* %47 to %struct.amr_enquiry*
  store %struct.amr_enquiry* %48, %struct.amr_enquiry** %4, align 8
  %49 = icmp ne %struct.amr_enquiry* %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %52 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pci_get_device(i32 %53)
  switch i32 %54, label %57 [
    i32 36880, label %55
    i32 36960, label %56
  ]

55:                                               ; preds = %50
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %58

56:                                               ; preds = %50
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %58

57:                                               ; preds = %50
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %58

58:                                               ; preds = %57, %56, %55
  br label %64

59:                                               ; preds = %44
  %60 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %61 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i32, i8*, ...) @device_printf(i32 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %219

64:                                               ; preds = %58
  br label %65

65:                                               ; preds = %64, %38
  %66 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %67 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %66, i32 0, i32 4
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp sge i32 %72, 65
  br i1 %73, label %74, label %196

74:                                               ; preds = %65
  %75 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %76 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = load i8, i8* %79, align 1
  %81 = sext i8 %80 to i32
  %82 = icmp sle i32 %81, 90
  br i1 %82, label %83, label %196

83:                                               ; preds = %74
  %84 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %85 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 1
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp slt i32 %90, 32
  br i1 %91, label %92, label %196

92:                                               ; preds = %83
  %93 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %94 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp slt i32 %99, 32
  br i1 %100, label %101, label %196

101:                                              ; preds = %92
  %102 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %103 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = getelementptr inbounds i8, i8* %105, i64 2
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sge i32 %108, 65
  br i1 %109, label %110, label %196

110:                                              ; preds = %101
  %111 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %112 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 2
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp sle i32 %117, 90
  br i1 %118, label %119, label %196

119:                                              ; preds = %110
  %120 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %121 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %120, i32 0, i32 4
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 1
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = icmp slt i32 %126, 32
  br i1 %127, label %128, label %196

128:                                              ; preds = %119
  %129 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %130 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 1
  %132 = load i8*, i8** %131, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp slt i32 %135, 32
  br i1 %136, label %137, label %196

137:                                              ; preds = %128
  %138 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %139 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AMR_SIG_438, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8** %5, align 8
  br label %144

144:                                              ; preds = %143, %137
  %145 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %146 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i8*, i8** %5, align 8
  %149 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %150 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 2
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %157 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %164 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 0
  %168 = load i8, i8* %167, align 1
  %169 = sext i8 %168 to i32
  %170 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %171 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 2
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %178 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i8*, i8** %179, align 8
  %181 = getelementptr inbounds i8, i8* %180, i64 1
  %182 = load i8, i8* %181, align 1
  %183 = sext i8 %182 to i32
  %184 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %185 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = getelementptr inbounds i8, i8* %187, i64 0
  %189 = load i8, i8* %188, align 1
  %190 = sext i8 %189 to i32
  %191 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %192 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = call i32 (i32, i8*, ...) @device_printf(i32 %147, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.6, i64 0, i64 0), i8* %148, i32 %155, i32 %162, i32 %169, i32 %176, i32 %183, i32 %190, i32 %194)
  br label %214

196:                                              ; preds = %128, %119, %110, %101, %92, %83, %74, %65
  %197 = load %struct.amr_softc*, %struct.amr_softc** %2, align 8
  %198 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load i8*, i8** %5, align 8
  %201 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %202 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %206 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %205, i32 0, i32 4
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %210 = getelementptr inbounds %struct.amr_enquiry, %struct.amr_enquiry* %209, i32 0, i32 4
  %211 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i32, i8*, ...) @device_printf(i32 %199, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %200, i8* %204, i8* %208, i32 %212)
  br label %214

214:                                              ; preds = %196, %144
  %215 = load %struct.amr_enquiry*, %struct.amr_enquiry** %4, align 8
  %216 = bitcast %struct.amr_enquiry* %215 to %struct.amr_prodinfo*
  %217 = load i32, i32* @M_AMR, align 4
  %218 = call i32 @free(%struct.amr_prodinfo* %216, i32 %217)
  br label %219

219:                                              ; preds = %214, %59, %12
  ret void
}

declare dso_local %struct.amr_prodinfo* @amr_enquiry(%struct.amr_softc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.amr_prodinfo*, i32) #1

declare dso_local i8* @amr_describe_code(i32, i64) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
