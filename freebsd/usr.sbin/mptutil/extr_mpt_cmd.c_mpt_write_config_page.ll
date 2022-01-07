; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_write_config_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_write_config_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mpt_cfg_page_req = type { i32, i32, i8* }

@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPTIO_WRITE_CFG_PAGE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Writing config page failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_write_config_page(i32 %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_2__*, align 8
  %9 = alloca %struct.mpt_cfg_page_req, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = call i32 @bzero(%struct.mpt_cfg_page_req* %9, i32 16)
  %17 = load i8*, i8** %6, align 8
  %18 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %9, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %8, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 4
  %25 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MPTIO_WRITE_CFG_PAGE, align 4
  %28 = call i64 @ioctl(i32 %26, i32 %27, %struct.mpt_cfg_page_req* %9)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i32, i32* @errno, align 4
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %15
  %33 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %9, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @IOC_STATUS_SUCCESS(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %50, label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %7, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %9, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %51

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %9, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mpt_ioc_status(i32 %46)
  %48 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EIO, align 4
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %50, %44, %40, %30
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @bzero(%struct.mpt_cfg_page_req*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mpt_cfg_page_req*) #1

declare dso_local i32 @IOC_STATUS_SUCCESS(i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @mpt_ioc_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
