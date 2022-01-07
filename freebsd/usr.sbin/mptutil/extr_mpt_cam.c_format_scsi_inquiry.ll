; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_format_scsi_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_cam.c_format_scsi_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_standalone_disk = type { i32 }
%struct.scsi_inquiry_data = type { i32, i32, i32 }

@T_DIRECT = common dso_local global i64 0, align 8
@SID_QUAL_LU_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ATA\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"<%s %s> SATA\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"SCSI-CCS\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"SAS\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"SCSI-%d\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"<%s %s %s> %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_standalone_disk*, %struct.scsi_inquiry_data*)* @format_scsi_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @format_scsi_inquiry(%struct.mpt_standalone_disk* %0, %struct.scsi_inquiry_data* %1) #0 {
  %3 = alloca %struct.mpt_standalone_disk*, align 8
  %4 = alloca %struct.scsi_inquiry_data*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca [48 x i8], align 16
  %7 = alloca [16 x i8], align 16
  %8 = alloca [12 x i8], align 1
  store %struct.mpt_standalone_disk* %0, %struct.mpt_standalone_disk** %3, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %4, align 8
  %9 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %10 = call i64 @SID_QUAL_IS_VENDOR_UNIQUE(%struct.scsi_inquiry_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %78

13:                                               ; preds = %2
  %14 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %15 = call i64 @SID_TYPE(%struct.scsi_inquiry_data* %14)
  %16 = load i64, i64* @T_DIRECT, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %78

19:                                               ; preds = %13
  %20 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %21 = call i64 @SID_QUAL(%struct.scsi_inquiry_data* %20)
  %22 = load i64, i64* @SID_QUAL_LU_CONNECTED, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %78

25:                                               ; preds = %19
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %27 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %28 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @cam_strvis(i8* %26, i32 %29, i32 4, i32 16)
  %31 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  %32 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %33 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @cam_strvis(i8* %31, i32 %34, i32 4, i32 48)
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %37 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %38 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cam_strvis(i8* %36, i32 %39, i32 4, i32 16)
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %42 = call i64 @strcmp(i8* %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %25
  %45 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %3, align 8
  %46 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %52 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %49, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %50, i8* %51)
  br label %78

53:                                               ; preds = %25
  %54 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %55 = call i32 @SID_ANSI_REV(%struct.scsi_inquiry_data* %54)
  switch i32 %55, label %62 [
    i32 128, label %56
    i32 5, label %59
  ]

56:                                               ; preds = %53
  %57 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %58 = call i32 @strcpy(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %67

59:                                               ; preds = %53
  %60 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %61 = call i32 @strcpy(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %67

62:                                               ; preds = %53
  %63 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %64 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %65 = call i32 @SID_ANSI_REV(%struct.scsi_inquiry_data* %64)
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %63, i32 12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %59, %56
  %68 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %3, align 8
  %69 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %74 = getelementptr inbounds [48 x i8], [48 x i8]* %6, i64 0, i64 0
  %75 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %76 = getelementptr inbounds [12 x i8], [12 x i8]* %8, i64 0, i64 0
  %77 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %72, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i8* %73, i8* %74, i8* %75, i8* %76)
  br label %78

78:                                               ; preds = %67, %44, %24, %18, %12
  ret void
}

declare dso_local i64 @SID_QUAL_IS_VENDOR_UNIQUE(%struct.scsi_inquiry_data*) #1

declare dso_local i64 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i64 @SID_QUAL(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @cam_strvis(i8*, i32, i32, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @SID_ANSI_REV(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
