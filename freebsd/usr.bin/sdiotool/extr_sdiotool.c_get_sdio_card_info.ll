; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_sdiotool.c_get_sdio_card_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_sdiotool.c_get_sdio_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%struct.card_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [58 x i8] c"F0: Vendor 0x%04X product 0x%04X max block size %d bytes\0A\00", align 1
@SD_IO_FBR_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"F%d: Vendor 0x%04X product 0x%04X max block size %d bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"F%d doesn't exist\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_device*, %struct.card_info*)* @get_sdio_card_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_sdio_card_info(%struct.cam_device* %0, %struct.card_info* %1) #0 {
  %3 = alloca %struct.cam_device*, align 8
  %4 = alloca %struct.card_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %3, align 8
  store %struct.card_info* %1, %struct.card_info** %4, align 8
  %9 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %10 = call i32 @sdio_get_common_cis_addr(%struct.cam_device* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.card_info*, %struct.card_info** %4, align 8
  %12 = call i32 @memset(%struct.card_info* %11, i32 0, i32 16)
  %13 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.card_info*, %struct.card_info** %4, align 8
  %16 = getelementptr inbounds %struct.card_info, %struct.card_info* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 0
  %19 = call i32 @sdio_func_read_cis(%struct.cam_device* %13, i32 0, i32 %14, %struct.TYPE_2__* %18)
  %20 = load %struct.card_info*, %struct.card_info** %4, align 8
  %21 = getelementptr inbounds %struct.card_info, %struct.card_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.card_info*, %struct.card_info** %4, align 8
  %27 = getelementptr inbounds %struct.card_info, %struct.card_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.card_info*, %struct.card_info** %4, align 8
  %33 = getelementptr inbounds %struct.card_info, %struct.card_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %31, i32 %37)
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %120, %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp sle i32 %40, 7
  br i1 %41, label %42, label %123

42:                                               ; preds = %39
  %43 = load i32, i32* @SD_IO_FBR_START, align 4
  %44 = load i32, i32* %8, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %45, 9
  store i32 %46, i32* %6, align 4
  %47 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = call i32 @sdio_read_1(%struct.cam_device* %47, i32 0, i32 %48, i32* %7)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @bailout(i32 %51)
  %53 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = call i32 @sdio_read_1(%struct.cam_device* %53, i32 0, i32 %54, i32* %7)
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  %63 = call i32 @sdio_read_1(%struct.cam_device* %60, i32 0, i32 %61, i32* %7)
  %64 = shl i32 %63, 16
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  %67 = load %struct.cam_device*, %struct.cam_device** %3, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load %struct.card_info*, %struct.card_info** %4, align 8
  %71 = getelementptr inbounds %struct.card_info, %struct.card_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = call i32 @sdio_func_read_cis(%struct.cam_device* %67, i32 %68, i32 %69, %struct.TYPE_2__* %75)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.card_info*, %struct.card_info** %4, align 8
  %79 = getelementptr inbounds %struct.card_info, %struct.card_info* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.card_info*, %struct.card_info** %4, align 8
  %87 = getelementptr inbounds %struct.card_info, %struct.card_info* %86, i32 0, i32 1
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.card_info*, %struct.card_info** %4, align 8
  %95 = getelementptr inbounds %struct.card_info, %struct.card_info* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %85, i32 %93, i32 %101)
  %103 = load %struct.card_info*, %struct.card_info** %4, align 8
  %104 = getelementptr inbounds %struct.card_info, %struct.card_info* %103, i32 0, i32 1
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %42
  %113 = load i32, i32* %8, align 4
  %114 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %123

115:                                              ; preds = %42
  %116 = load %struct.card_info*, %struct.card_info** %4, align 8
  %117 = getelementptr inbounds %struct.card_info, %struct.card_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %8, align 4
  br label %39

123:                                              ; preds = %112, %39
  ret void
}

declare dso_local i32 @sdio_get_common_cis_addr(%struct.cam_device*) #1

declare dso_local i32 @memset(%struct.card_info*, i32, i32) #1

declare dso_local i32 @sdio_func_read_cis(%struct.cam_device*, i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @sdio_read_1(%struct.cam_device*, i32, i32, i32*) #1

declare dso_local i32 @bailout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
