; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_volume_offline_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_volume_offline_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PQI_STATUS_SUCCESS = common dso_local global i32 0, align 4
@SA_LV_STATUS_VPD_UNSUPPORTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@PQI_STATUS_FAILURE = common dso_local global i64 0, align 8
@VPD_PAGE = common dso_local global i32 0, align 4
@SA_VPD_LV_STATUS = common dso_local global i32 0, align 4
@SCSI_VPD_HEADER_LENGTH = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64*)* @pqisrc_get_volume_offline_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pqisrc_get_volume_offline_status(i32* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  store i32* %0, i32** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i32, i32* @PQI_STATUS_SUCCESS, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* @SA_LV_STATUS_VPD_UNSUPPORTED, align 8
  store i64 %11, i64* %7, align 8
  store i64* null, i64** %9, align 8
  %12 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %13 = load i32*, i32** %4, align 8
  %14 = call i64* @os_mem_alloc(i32* %13, i32 64)
  store i64* %14, i64** %9, align 8
  %15 = load i64*, i64** %9, align 8
  %16 = icmp ne i64* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i64, i64* @PQI_STATUS_FAILURE, align 8
  store i64 %18, i64* %3, align 8
  br label %59

19:                                               ; preds = %2
  %20 = load i32*, i32** %4, align 8
  %21 = load i64*, i64** %5, align 8
  %22 = load i32, i32* @VPD_PAGE, align 4
  %23 = load i32, i32* @SA_VPD_LV_STATUS, align 4
  %24 = or i32 %22, %23
  %25 = load i64*, i64** %9, align 8
  %26 = load i64, i64* @SCSI_VPD_HEADER_LENGTH, align 8
  %27 = call i32 @pqisrc_send_scsi_inquiry(i32* %20, i64* %21, i32 %24, i64* %25, i64 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %52

31:                                               ; preds = %19
  %32 = load i64*, i64** %9, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 3
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %8, align 8
  %35 = load i32*, i32** %4, align 8
  %36 = load i64*, i64** %5, align 8
  %37 = load i32, i32* @VPD_PAGE, align 4
  %38 = load i32, i32* @SA_VPD_LV_STATUS, align 4
  %39 = or i32 %37, %38
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @SCSI_VPD_HEADER_LENGTH, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @pqisrc_send_scsi_inquiry(i32* %35, i64* %36, i32 %39, i64* %40, i64 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %31
  br label %52

48:                                               ; preds = %31
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 4
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %48, %47, %30
  %53 = load i32*, i32** %4, align 8
  %54 = load i64*, i64** %9, align 8
  %55 = bitcast i64* %54 to i8*
  %56 = call i32 @os_mem_free(i32* %53, i8* %55, i32 64)
  %57 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* %7, align 8
  store i64 %58, i64* %3, align 8
  br label %59

59:                                               ; preds = %52, %17
  %60 = load i64, i64* %3, align 8
  ret i64 %60
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i64* @os_mem_alloc(i32*, i32) #1

declare dso_local i32 @pqisrc_send_scsi_inquiry(i32*, i64*, i32, i64*, i64) #1

declare dso_local i32 @os_mem_free(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
