; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_cam_sdio.c_sdio_card_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiotool/extr_cam_sdio.c_sdio_card_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }

@SD_IO_CCCR_BUS_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error getting CCCR_BUS_WIDTH value\00", align 1
@CCCR_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot do 8-bit on SDIO yet\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Error setting CCCR_BUS_WIDTH value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdio_card_set_bus_width(%struct.cam_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %9 = load i32, i32* @SD_IO_CCCR_BUS_WIDTH, align 4
  %10 = call i32 @sdio_rw_direct(%struct.cam_device* %8, i32 0, i32 %9, i32 0, i32* null, i32* %7)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %3, align 4
  br label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, -4
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %27 [
    i32 130, label %20
    i32 129, label %21
    i32 128, label %25
  ]

20:                                               ; preds = %16
  br label %27

21:                                               ; preds = %16
  %22 = load i32, i32* @CCCR_BUS_WIDTH_4, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %16
  %26 = call i32 @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %38

27:                                               ; preds = %16, %21, %20
  %28 = load %struct.cam_device*, %struct.cam_device** %4, align 8
  %29 = load i32, i32* @SD_IO_CCCR_BUS_WIDTH, align 4
  %30 = call i32 @sdio_rw_direct(%struct.cam_device* %28, i32 0, i32 %29, i32 1, i32* %7, i32* %7)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = call i32 @warn(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %33, %25, %13
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @sdio_rw_direct(%struct.cam_device*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
