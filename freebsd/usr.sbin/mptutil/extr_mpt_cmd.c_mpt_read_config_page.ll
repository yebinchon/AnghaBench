; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_read_config_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_read_config_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_cfg_page_req = type { i32, i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8* }

@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPTIO_READ_CFG_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Reading config page header failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MPTIO_READ_CFG_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Reading config page failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpt_read_config_page(i32 %0, i8* %1, i8* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mpt_cfg_page_req, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %11, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %19 = load i32*, i32** %11, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %5
  %21 = call i32 @bzero(%struct.mpt_cfg_page_req* %12, i32 48)
  %22 = load i8*, i8** %8, align 8
  %23 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 4
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @MPTIO_READ_CFG_HEADER, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.mpt_cfg_page_req* %12)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i8* null, i8** %6, align 8
  br label %100

35:                                               ; preds = %20
  %36 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @IOC_STATUS_SUCCESS(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %54, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %11, align 8
  store i32 %45, i32* %46, align 4
  br label %52

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mpt_ioc_status(i32 %49)
  %51 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %47, %43
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* @errno, align 4
  store i8* null, i8** %6, align 8
  br label %100

54:                                               ; preds = %35
  %55 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %57, 4
  %59 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 0
  store i32 %58, i32* %59, align 8
  %60 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i8* @malloc(i32 %61)
  store i8* %62, i8** %13, align 8
  %63 = load i8*, i8** %13, align 8
  %64 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 3
  store i8* %63, i8** %64, align 8
  %65 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 2
  %66 = load i8*, i8** %13, align 8
  %67 = call i32 @bcopy(%struct.TYPE_2__* %65, i8* %66, i32 24)
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MPTIO_READ_CFG_PAGE, align 4
  %70 = call i64 @ioctl(i32 %68, i32 %69, %struct.mpt_cfg_page_req* %12)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %54
  %73 = load i32, i32* @errno, align 4
  store i32 %73, i32* %14, align 4
  %74 = load i8*, i8** %13, align 8
  %75 = call i32 @free(i8* %74)
  %76 = load i32, i32* %14, align 4
  store i32 %76, i32* @errno, align 4
  store i8* null, i8** %6, align 8
  br label %100

77:                                               ; preds = %54
  %78 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @IOC_STATUS_SUCCESS(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %98, label %82

82:                                               ; preds = %77
  %83 = load i32*, i32** %11, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %11, align 8
  store i32 %87, i32* %88, align 4
  br label %94

89:                                               ; preds = %82
  %90 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %12, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @mpt_ioc_status(i32 %91)
  %93 = call i32 @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i8*, i8** %13, align 8
  %96 = call i32 @free(i8* %95)
  %97 = load i32, i32* @EIO, align 4
  store i32 %97, i32* @errno, align 4
  store i8* null, i8** %6, align 8
  br label %100

98:                                               ; preds = %77
  %99 = load i8*, i8** %13, align 8
  store i8* %99, i8** %6, align 8
  br label %100

100:                                              ; preds = %98, %94, %72, %52, %34
  %101 = load i8*, i8** %6, align 8
  ret i8* %101
}

declare dso_local i32 @bzero(%struct.mpt_cfg_page_req*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mpt_cfg_page_req*) #1

declare dso_local i32 @IOC_STATUS_SUCCESS(i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @mpt_ioc_status(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_2__*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
