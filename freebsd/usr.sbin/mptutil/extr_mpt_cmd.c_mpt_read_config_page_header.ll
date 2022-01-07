; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_read_config_page_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cmd.c_mpt_read_config_page_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }
%struct.mpt_cfg_page_req = type { %struct.TYPE_3__, i32, i32 }

@MPI_IOCSTATUS_SUCCESS = common dso_local global i32 0, align 4
@MPTIO_READ_CFG_HEADER = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Reading config page header failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_read_config_page_header(i32 %0, i8* %1, i8* %2, i32 %3, %struct.TYPE_3__* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_3__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mpt_cfg_page_req, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_3__* %4, %struct.TYPE_3__** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i32*, i32** %13, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %6
  %18 = load i32, i32* @MPI_IOCSTATUS_SUCCESS, align 4
  %19 = load i32*, i32** %13, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %6
  %21 = call i32 @bzero(%struct.mpt_cfg_page_req* %14, i32 24)
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %14, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %10, align 8
  %26 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %14, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %14, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @MPTIO_READ_CFG_HEADER, align 4
  %32 = call i64 @ioctl(i32 %30, i32 %31, %struct.mpt_cfg_page_req* %14)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @errno, align 4
  store i32 %35, i32* %7, align 4
  br label %60

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %14, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @IOC_STATUS_SUCCESS(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %14, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32*, i32** %13, align 8
  store i32 %46, i32* %47, align 4
  br label %53

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %14, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @mpt_ioc_status(i32 %50)
  %52 = call i32 @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %48, %44
  %54 = load i32, i32* @EIO, align 4
  store i32 %54, i32* %7, align 4
  br label %60

55:                                               ; preds = %36
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %57 = getelementptr inbounds %struct.mpt_cfg_page_req, %struct.mpt_cfg_page_req* %14, i32 0, i32 0
  %58 = bitcast %struct.TYPE_3__* %56 to i8*
  %59 = bitcast %struct.TYPE_3__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %55, %53, %34
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @bzero(%struct.mpt_cfg_page_req*, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.mpt_cfg_page_req*) #1

declare dso_local i32 @IOC_STATUS_SUCCESS(i32) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @mpt_ioc_status(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
