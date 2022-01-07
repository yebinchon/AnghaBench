; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbiod = type { i32, i32, i32, %struct.thread*, %struct.smb_vc* }
%struct.thread = type { i32 }
%struct.smb_vc = type { i32, i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"called for already opened connection\0A\00", align 1
@EISCONN = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"tcreate\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"tbind\0A\00", align 1
@SMBTP_SELECTID = common dso_local global i32 0, align 4
@SMBIOD_ST_TRANACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"tconnect\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"snegotiate\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smbiod*)* @smb_iod_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smb_iod_connect(%struct.smbiod* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smbiod*, align 8
  %4 = alloca %struct.smb_vc*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  store %struct.smbiod* %0, %struct.smbiod** %3, align 8
  %7 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %8 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %7, i32 0, i32 4
  %9 = load %struct.smb_vc*, %struct.smb_vc** %8, align 8
  store %struct.smb_vc* %9, %struct.smb_vc** %4, align 8
  %10 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %11 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %10, i32 0, i32 3
  %12 = load %struct.thread*, %struct.thread** %11, align 8
  store %struct.thread* %12, %struct.thread** %5, align 8
  %13 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %14 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @SMBIODEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %18 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %25 [
    i32 128, label %20
    i32 129, label %23
  ]

20:                                               ; preds = %1
  %21 = call i32 @SMBERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EISCONN, align 4
  store i32 %22, i32* %2, align 4
  br label %106

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOTCONN, align 4
  store i32 %24, i32* %2, align 4
  br label %106

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %28 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  store i32 0, i32* %6, align 4
  %31 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %32 = load %struct.thread*, %struct.thread** %5, align 8
  %33 = call i64 @SMB_TRAN_CREATE(%struct.smb_vc* %31, %struct.thread* %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %102

38:                                               ; preds = %26
  %39 = call i32 (i8*, ...) @SMBIODEBUG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %41 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %46 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %47 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.thread*, %struct.thread** %5, align 8
  %50 = call i64 @SMB_TRAN_BIND(%struct.smb_vc* %45, i64 %48, %struct.thread* %49)
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %102

55:                                               ; preds = %44
  br label %56

56:                                               ; preds = %55, %38
  %57 = call i32 (i8*, ...) @SMBIODEBUG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %58 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %59 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %60 = getelementptr inbounds %struct.smb_vc, %struct.smb_vc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.thread*, %struct.thread** %5, align 8
  %63 = call i64 @SMB_TRAN_CONNECT(%struct.smb_vc* %58, i32 %61, %struct.thread* %62)
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %102

68:                                               ; preds = %56
  %69 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %70 = load i32, i32* @SMBTP_SELECTID, align 4
  %71 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %72 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %71, i32 0, i32 2
  %73 = call i32 @SMB_TRAN_SETPARAM(%struct.smb_vc* %69, i32 %70, i32* %72)
  %74 = load i32, i32* @SMBIOD_ST_TRANACTIVE, align 4
  %75 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %76 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = call i32 (i8*, ...) @SMBIODEBUG(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %78 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %79 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %80 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %79, i32 0, i32 1
  %81 = call i64 @smb_smb_negotiate(%struct.smb_vc* %78, i32* %80)
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %68
  br label %102

86:                                               ; preds = %68
  %87 = call i32 (i8*, ...) @SMBIODEBUG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %88 = load %struct.smb_vc*, %struct.smb_vc** %4, align 8
  %89 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %90 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %89, i32 0, i32 1
  %91 = call i64 @smb_smb_ssnsetup(%struct.smb_vc* %88, i32* %90)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  br label %102

96:                                               ; preds = %86
  %97 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %98 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %97, i32 0, i32 0
  store i32 128, i32* %98, align 8
  %99 = call i32 (i8*, ...) @SMBIODEBUG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %100 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %101 = call i32 @smb_iod_invrq(%struct.smbiod* %100)
  store i32 0, i32* %2, align 4
  br label %106

102:                                              ; preds = %95, %85, %67, %54, %37
  %103 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %104 = call i32 @smb_iod_dead(%struct.smbiod* %103)
  %105 = load i32, i32* %6, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %102, %96, %23, %20
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @SMBIODEBUG(i8*, ...) #1

declare dso_local i32 @SMBERROR(i8*) #1

declare dso_local i64 @SMB_TRAN_CREATE(%struct.smb_vc*, %struct.thread*) #1

declare dso_local i64 @SMB_TRAN_BIND(%struct.smb_vc*, i64, %struct.thread*) #1

declare dso_local i64 @SMB_TRAN_CONNECT(%struct.smb_vc*, i32, %struct.thread*) #1

declare dso_local i32 @SMB_TRAN_SETPARAM(%struct.smb_vc*, i32, i32*) #1

declare dso_local i64 @smb_smb_negotiate(%struct.smb_vc*, i32*) #1

declare dso_local i64 @smb_smb_ssnsetup(%struct.smb_vc*, i32*) #1

declare dso_local i32 @smb_iod_invrq(%struct.smbiod*) #1

declare dso_local i32 @smb_iod_dead(%struct.smbiod*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
