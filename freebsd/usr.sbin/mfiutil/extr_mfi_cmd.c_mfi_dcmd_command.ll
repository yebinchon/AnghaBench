; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_dcmd_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_cmd.c_mfi_dcmd_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_ioc_passthru = type { i64, i8*, %struct.mfi_dcmd_frame }
%struct.mfi_dcmd_frame = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i32 }

@MFI_MBOX_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MFI_CMD_DCMD = common dso_local global i32 0, align 4
@MFIIO_PASSTHRU = common dso_local global i32 0, align 4
@MFI_STAT_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Command failed: %s\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_dcmd_command(i32 %0, i32 %1, i8* %2, i64 %3, i64* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca %struct.mfi_ioc_passthru, align 8
  %17 = alloca %struct.mfi_dcmd_frame*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %19 = load i64*, i64** %13, align 8
  %20 = icmp ne i64* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %7
  %22 = load i64, i64* %14, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @MFI_MBOX_SIZE, align 8
  %27 = icmp ugt i64 %25, %26
  br i1 %27, label %34, label %28

28:                                               ; preds = %24, %7
  %29 = load i64*, i64** %13, align 8
  %30 = icmp eq i64* %29, null
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i64, i64* %14, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %24, %21
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %103

36:                                               ; preds = %31, %28
  %37 = call i32 @bzero(%struct.mfi_ioc_passthru* %16, i32 64)
  %38 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %16, i32 0, i32 2
  store %struct.mfi_dcmd_frame* %38, %struct.mfi_dcmd_frame** %17, align 8
  %39 = load i64*, i64** %13, align 8
  %40 = icmp ne i64* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i64*, i64** %13, align 8
  %43 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %44 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %14, align 8
  %47 = call i32 @bcopy(i64* %42, i32 %45, i64 %46)
  br label %48

48:                                               ; preds = %41, %36
  %49 = load i32, i32* @MFI_CMD_DCMD, align 4
  %50 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %51 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  store i32 %49, i32* %52, align 8
  %53 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %54 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i64 0, i64* %55, align 8
  %56 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %57 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %61 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %59, i64* %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %65 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 8
  %66 = load i8*, i8** %11, align 8
  %67 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %16, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load i64, i64* %12, align 8
  %69 = getelementptr inbounds %struct.mfi_ioc_passthru, %struct.mfi_ioc_passthru* %16, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* @MFIIO_PASSTHRU, align 4
  %72 = call i32 @ioctl(i32 %70, i32 %71, %struct.mfi_ioc_passthru* %16)
  store i32 %72, i32* %18, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %48
  %76 = load i32, i32* %18, align 4
  store i32 %76, i32* %8, align 4
  br label %103

77:                                               ; preds = %48
  %78 = load i64*, i64** %15, align 8
  %79 = icmp ne i64* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %77
  %81 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %82 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64*, i64** %15, align 8
  store i64 %84, i64* %85, align 8
  br label %102

86:                                               ; preds = %77
  %87 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %88 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MFI_STAT_OK, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %86
  %94 = load %struct.mfi_dcmd_frame*, %struct.mfi_dcmd_frame** %17, align 8
  %95 = getelementptr inbounds %struct.mfi_dcmd_frame, %struct.mfi_dcmd_frame* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @mfi_status(i64 %97)
  %99 = call i32 @warnx(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EIO, align 4
  store i32 %100, i32* @errno, align 4
  store i32 -1, i32* %8, align 4
  br label %103

101:                                              ; preds = %86
  br label %102

102:                                              ; preds = %101, %80
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %102, %93, %75, %34
  %104 = load i32, i32* %8, align 4
  ret i32 %104
}

declare dso_local i32 @bzero(%struct.mfi_ioc_passthru*, i32) #1

declare dso_local i32 @bcopy(i64*, i32, i64) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mfi_ioc_passthru*) #1

declare dso_local i32 @warnx(i8*, i32) #1

declare dso_local i32 @mfi_status(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
