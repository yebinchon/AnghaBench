; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_read_extended_config_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_read_extended_config_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_ext_cfg_page_req = type { i32, i32, %struct.TYPE_2__, i8*, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i8* }

@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPTIO_READ_EXT_CFG_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Reading extended config page header failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MPTIO_READ_EXT_CFG_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Reading extended config page failed: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mpt_read_extended_config_page(i32 %0, i8* %1, i8* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mpt_ext_cfg_page_req, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %21 = load i32*, i32** %13, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %6
  %23 = call i32 @bzero(%struct.mpt_ext_cfg_page_req* %14, i32 56)
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %12, align 4
  %34 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 4
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @MPTIO_READ_EXT_CFG_HEADER, align 4
  %37 = call i64 @ioctl(i32 %35, i32 %36, %struct.mpt_ext_cfg_page_req* %14)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store i8* null, i8** %7, align 8
  br label %105

40:                                               ; preds = %22
  %41 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IOC_STATUS_SUCCESS(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %13, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %13, align 8
  store i32 %50, i32* %51, align 4
  br label %57

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mpt_ioc_status(i32 %54)
  %56 = call i32 @warnx(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %52, %48
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* @errno, align 4
  store i8* null, i8** %7, align 8
  br label %105

59:                                               ; preds = %40
  %60 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = mul nsw i32 %62, 4
  %64 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 0
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @malloc(i32 %66)
  store i8* %67, i8** %15, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 3
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 2
  %71 = load i8*, i8** %15, align 8
  %72 = call i32 @bcopy(%struct.TYPE_2__* %70, i8* %71, i32 32)
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @MPTIO_READ_EXT_CFG_PAGE, align 4
  %75 = call i64 @ioctl(i32 %73, i32 %74, %struct.mpt_ext_cfg_page_req* %14)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %59
  %78 = load i32, i32* @errno, align 4
  store i32 %78, i32* %16, align 4
  %79 = load i8*, i8** %15, align 8
  %80 = call i32 @free(i8* %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* @errno, align 4
  store i8* null, i8** %7, align 8
  br label %105

82:                                               ; preds = %59
  %83 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @IOC_STATUS_SUCCESS(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = load i32*, i32** %13, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %13, align 8
  store i32 %92, i32* %93, align 4
  br label %99

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.mpt_ext_cfg_page_req, %struct.mpt_ext_cfg_page_req* %14, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @mpt_ioc_status(i32 %96)
  %98 = call i32 @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %90
  %100 = load i8*, i8** %15, align 8
  %101 = call i32 @free(i8* %100)
  %102 = load i32, i32* @EIO, align 4
  store i32 %102, i32* @errno, align 4
  store i8* null, i8** %7, align 8
  br label %105

103:                                              ; preds = %82
  %104 = load i8*, i8** %15, align 8
  store i8* %104, i8** %7, align 8
  br label %105

105:                                              ; preds = %103, %99, %77, %57, %39
  %106 = load i8*, i8** %7, align 8
  ret i8* %106
}

declare dso_local i32 @bzero(%struct.mpt_ext_cfg_page_req*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mpt_ext_cfg_page_req*) #1

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
