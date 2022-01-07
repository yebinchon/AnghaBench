; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_load_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mxge/extr_if_mxge.c_mxge_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i64, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to adopt running firmware\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Successfully adopted running firmware\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"Using firmware currently running on NIC.  For optimal\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"performance consider loading optimized firmware\0A\00", align 1
@mxge_fw_unaligned = common dso_local global i32 0, align 4
@MXGE_FW_OFFSET = common dso_local global i32 0, align 4
@MXGEFW_BOOT_HANDOFF = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"handoff failed (%p = 0x%x)\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @mxge_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxge_load_firmware(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [72 x i8], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = getelementptr inbounds [72 x i8], [72 x i8]* %8, i64 0, i64 0
  %16 = getelementptr inbounds i8, i8* %15, i64 7
  %17 = ptrtoint i8* %16 to i64
  %18 = and i64 %17, -8
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %9, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %10, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = call i32 @mxge_load_firmware_helper(%struct.TYPE_7__* %23, i32* %10)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %67

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %3, align 4
  br label %160

32:                                               ; preds = %27
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = call i32 @mxge_adopt_running_firmware(%struct.TYPE_7__* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %3, align 4
  br label %160

43:                                               ; preds = %32
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 4096
  br i1 %51, label %52, label %61

52:                                               ; preds = %43
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (i32, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %59, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %52, %43
  %62 = load i32, i32* @mxge_fw_unaligned, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 1
  store i32 2048, i32* %66, align 4
  store i32 0, i32* %3, align 4
  br label %160

67:                                               ; preds = %2
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32* %71, i32** %6, align 8
  %72 = load i32*, i32** %6, align 8
  store volatile i32 0, i32* %72, align 4
  %73 = call i32 (...) @wmb()
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @MXGE_LOWPART_TO_U32(i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @MXGE_HIGHPART_TO_U32(i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @htobe32(i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @htobe32(i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 %89, i32* %91, align 4
  %92 = call i32 @htobe32(i32 -1)
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @MXGE_FW_OFFSET, align 4
  %96 = add nsw i32 %95, 8
  %97 = call i32 @htobe32(i32 %96)
  %98 = load i32*, i32** %9, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 8
  %102 = call i32 @htobe32(i32 %101)
  %103 = load i32*, i32** %9, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 4
  store i32 %102, i32* %104, align 4
  %105 = call i32 @htobe32(i32 8)
  %106 = load i32*, i32** %9, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 5
  store i32 %105, i32* %107, align 4
  %108 = call i32 @htobe32(i32 0)
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 6
  store i32 %108, i32* %110, align 4
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @MXGEFW_BOOT_HANDOFF, align 8
  %115 = add nsw i64 %113, %114
  %116 = inttoptr i64 %115 to i8*
  store i8* %116, i8** %7, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i32*, i32** %9, align 8
  %119 = call i32 @mxge_pio_copy(i8* %117, i32* %118, i32 64)
  %120 = call i32 (...) @wmb()
  %121 = call i32 @DELAY(i32 1000)
  %122 = call i32 (...) @wmb()
  store i32 0, i32* %14, align 4
  br label %123

123:                                              ; preds = %132, %67
  %124 = load i32*, i32** %6, align 8
  %125 = load volatile i32, i32* %124, align 4
  %126 = icmp ne i32 %125, -1
  br i1 %126, label %127, label %130

127:                                              ; preds = %123
  %128 = load i32, i32* %14, align 4
  %129 = icmp slt i32 %128, 20
  br label %130

130:                                              ; preds = %127, %123
  %131 = phi i1 [ false, %123 ], [ %129, %127 ]
  br i1 %131, label %132, label %146

132:                                              ; preds = %130
  %133 = call i32 @DELAY(i32 10000)
  %134 = load i32, i32* %14, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %14, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %145 = call i32 @bus_dmamap_sync(i32 %139, i32 %143, i32 %144)
  br label %123

146:                                              ; preds = %130
  %147 = load i32*, i32** %6, align 8
  %148 = load volatile i32, i32* %147, align 4
  %149 = icmp ne i32 %148, -1
  br i1 %149, label %150, label %159

150:                                              ; preds = %146
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i32*, i32** %6, align 8
  %156 = load volatile i32, i32* %155, align 4
  %157 = call i32 (i32, i8*, ...) @device_printf(i32 %153, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32* %154, i32 %156)
  %158 = load i32, i32* @ENXIO, align 4
  store i32 %158, i32* %3, align 4
  br label %160

159:                                              ; preds = %146
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %159, %150, %61, %37, %30
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @mxge_load_firmware_helper(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @mxge_adopt_running_firmware(%struct.TYPE_7__*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @MXGE_LOWPART_TO_U32(i32) #1

declare dso_local i32 @MXGE_HIGHPART_TO_U32(i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @mxge_pio_copy(i8*, i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
