; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_pd_inq_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mfiutil/extr_mfi_drive.c_mfi_pd_inq_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_pd_info = type { i32 }
%struct.scsi_inquiry_data = type { i8*, i8*, i8*, i64 }

@SID_VENDOR_SPECIFIC_0_SIZE = common dso_local global i32 0, align 4
@mfi_pd_inq_string.inq_string = internal global [64 x i8] zeroinitializer, align 16
@T_DIRECT = common dso_local global i64 0, align 8
@SID_QUAL_LU_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"<%s %s serial=%s> SATA\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SCSI-CCS\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SAS\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SCSI-%d\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"<%s %s %s serial=%s> %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mfi_pd_inq_string(%struct.mfi_pd_info* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mfi_pd_info*, align 8
  %4 = alloca %struct.scsi_inquiry_data, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca [16 x i8], align 16
  %7 = alloca [48 x i8], align 16
  %8 = alloca [16 x i8], align 16
  %9 = alloca [12 x i8], align 1
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.mfi_pd_info* %0, %struct.mfi_pd_info** %3, align 8
  store %struct.scsi_inquiry_data* %4, %struct.scsi_inquiry_data** %5, align 8
  %13 = load i32, i32* @SID_VENDOR_SPECIFIC_0_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %10, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %11, align 8
  %17 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %18 = load %struct.mfi_pd_info*, %struct.mfi_pd_info** %3, align 8
  %19 = getelementptr inbounds %struct.mfi_pd_info, %struct.mfi_pd_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @memcpy(%struct.scsi_inquiry_data* %17, i32 %20, i32 4)
  %22 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %23 = call i64 @SID_QUAL_IS_VENDOR_UNIQUE(%struct.scsi_inquiry_data* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %87

26:                                               ; preds = %1
  %27 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %28 = call i64 @SID_TYPE(%struct.scsi_inquiry_data* %27)
  %29 = load i64, i64* @T_DIRECT, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i8* null, i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %87

32:                                               ; preds = %26
  %33 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %34 = call i64 @SID_QUAL(%struct.scsi_inquiry_data* %33)
  %35 = load i64, i64* @SID_QUAL_LU_CONNECTED, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i8* null, i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %87

38:                                               ; preds = %32
  %39 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %40 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @cam_strvis(i8* %39, i8* %42, i32 8, i32 16)
  %44 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %45 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @cam_strvis(i8* %44, i8* %47, i32 8, i32 48)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %50 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %51 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %50, i32 0, i32 2
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @cam_strvis(i8* %49, i8* %52, i32 8, i32 16)
  %54 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %55 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = trunc i64 %14 to i32
  %59 = call i32 @cam_strvis(i8* %16, i8* %57, i32 8, i32 %58)
  %60 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %38
  %64 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %65 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mfi_pd_inq_string.inq_string, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %64, i8* %65, i8* %16)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mfi_pd_inq_string.inq_string, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %87

67:                                               ; preds = %38
  %68 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %69 = call i32 @SID_ANSI_REV(%struct.scsi_inquiry_data* %68)
  switch i32 %69, label %76 [
    i32 128, label %70
    i32 5, label %73
  ]

70:                                               ; preds = %67
  %71 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %72 = call i32 @strcpy(i8* %71, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %81

73:                                               ; preds = %67
  %74 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %75 = call i32 @strcpy(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %81

76:                                               ; preds = %67
  %77 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %78 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %79 = call i32 @SID_ANSI_REV(%struct.scsi_inquiry_data* %78)
  %80 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %77, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %76, %73, %70
  %82 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %83 = getelementptr inbounds [48 x i8], [48 x i8]* %7, i64 0, i64 0
  %84 = getelementptr inbounds [16 x i8], [16 x i8]* %8, i64 0, i64 0
  %85 = getelementptr inbounds [12 x i8], [12 x i8]* %9, i64 0, i64 0
  %86 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mfi_pd_inq_string.inq_string, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i8* %82, i8* %83, i8* %84, i8* %16, i8* %85)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @mfi_pd_inq_string.inq_string, i64 0, i64 0), i8** %2, align 8
  store i32 1, i32* %12, align 4
  br label %87

87:                                               ; preds = %81, %63, %37, %31, %25
  %88 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %88)
  %89 = load i8*, i8** %2, align 8
  ret i8* %89
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(%struct.scsi_inquiry_data*, i32, i32) #2

declare dso_local i64 @SID_QUAL_IS_VENDOR_UNIQUE(%struct.scsi_inquiry_data*) #2

declare dso_local i64 @SID_TYPE(%struct.scsi_inquiry_data*) #2

declare dso_local i64 @SID_QUAL(%struct.scsi_inquiry_data*) #2

declare dso_local i32 @cam_strvis(i8*, i8*, i32, i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #2

declare dso_local i32 @SID_ANSI_REV(%struct.scsi_inquiry_data*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
