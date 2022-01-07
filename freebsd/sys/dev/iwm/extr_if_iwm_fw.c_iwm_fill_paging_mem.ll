; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_fw.c_iwm_fill_paging_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_fw.c_iwm_fill_paging_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.iwm_fw_img = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i8* }

@IWM_UCODE_SECTION_MAX = common dso_local global i32 0, align 4
@IWM_PAGING_SEPARATOR_SECTION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Paging: Missing CSS and/or paging sections\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IWM_DEBUG_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Paging: load paging CSS to FW, sec = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Paging: copied %d CSS bytes to first block\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"Paging: copied %d paging bytes to block %d\0A\00", align 1
@IWM_FW_PAGING_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [46 x i8] c"Paging: copied %d pages in the last block %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, %struct.iwm_fw_img*)* @iwm_fill_paging_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_fill_paging_mem(%struct.iwm_softc* %0, %struct.iwm_fw_img* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwm_softc*, align 8
  %5 = alloca %struct.iwm_fw_img*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %4, align 8
  store %struct.iwm_fw_img* %1, %struct.iwm_fw_img** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @IWM_UCODE_SECTION_MAX, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %15 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IWM_PAGING_SEPARATOR_SECTION, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %6, align 4
  br label %31

27:                                               ; preds = %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %9

31:                                               ; preds = %24, %9
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %34 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @nitems(%struct.TYPE_6__* %35)
  %37 = sub nsw i32 %36, 1
  %38 = icmp sge i32 %32, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %41 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %45 = call i32 @iwm_free_fw_paging(%struct.iwm_softc* %44)
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %3, align 4
  br label %186

47:                                               ; preds = %31
  %48 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %49 = load i32, i32* @IWM_DEBUG_FW, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (%struct.iwm_softc*, i32, i8*, i32, ...) @IWM_DPRINTF(%struct.iwm_softc* %48, i32 %49, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %53 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %60 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %59, i32 0, i32 0
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %68 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %67, i32 0, i32 2
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %58, i8* %66, i32 %72)
  %74 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %75 = load i32, i32* @IWM_DEBUG_FW, align 4
  %76 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %77 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %76, i32 0, i32 2
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (%struct.iwm_softc*, i32, i8*, i32, ...) @IWM_DPRINTF(%struct.iwm_softc* %74, i32 %75, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %85

85:                                               ; preds = %143, %47
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %88 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %146

91:                                               ; preds = %85
  %92 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %93 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %102 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %113 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %112, i32 0, i32 2
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @memcpy(i32 %100, i8* %111, i32 %119)
  %121 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %122 = load i32, i32* @IWM_DEBUG_FW, align 4
  %123 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %124 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = load i32, i32* %7, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %7, align 4
  %132 = call i32 (%struct.iwm_softc*, i32, i8*, i32, ...) @IWM_DPRINTF(%struct.iwm_softc* %121, i32 %122, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %134 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %133, i32 0, i32 2
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = add nsw i32 %141, %140
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %91
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %7, align 4
  br label %85

146:                                              ; preds = %85
  %147 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %148 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %149, 0
  br i1 %150, label %151, label %185

151:                                              ; preds = %146
  %152 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %153 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %152, i32 0, i32 2
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.iwm_fw_img*, %struct.iwm_fw_img** %5, align 8
  %162 = getelementptr inbounds %struct.iwm_fw_img, %struct.iwm_fw_img* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i32, i32* @IWM_FW_PAGING_SIZE, align 4
  %173 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %174 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = mul nsw i32 %172, %175
  %177 = call i32 @memcpy(i32 %160, i8* %171, i32 %176)
  %178 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %179 = load i32, i32* @IWM_DEBUG_FW, align 4
  %180 = load %struct.iwm_softc*, %struct.iwm_softc** %4, align 8
  %181 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %7, align 4
  %184 = call i32 (%struct.iwm_softc*, i32, i8*, i32, ...) @IWM_DPRINTF(%struct.iwm_softc* %178, i32 %179, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %151, %146
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %185, %39
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @nitems(%struct.TYPE_6__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iwm_free_fw_paging(%struct.iwm_softc*) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
