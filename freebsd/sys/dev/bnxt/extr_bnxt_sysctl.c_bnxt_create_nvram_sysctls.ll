; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_nvram_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_nvram_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_nvram_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.sysctl_oid* }
%struct.sysctl_oid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"mfg_id\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"manufacturer id\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"device_id\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"device id\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"sector_size\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"sector size\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"nvram total size\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"reserved_size\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"total reserved space\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"available_size\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"total available space\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_create_nvram_sysctls(%struct.bnxt_nvram_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_nvram_info*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  store %struct.bnxt_nvram_info* %0, %struct.bnxt_nvram_info** %3, align 8
  %5 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %6 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %5, i32 0, i32 7
  %7 = load %struct.sysctl_oid*, %struct.sysctl_oid** %6, align 8
  store %struct.sysctl_oid* %7, %struct.sysctl_oid** %4, align 8
  %8 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %9 = icmp ne %struct.sysctl_oid* %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  store i32 %11, i32* %2, align 4
  br label %67

12:                                               ; preds = %1
  %13 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %14 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %13, i32 0, i32 1
  %15 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %16 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %15)
  %17 = load i32, i32* @OID_AUTO, align 4
  %18 = load i32, i32* @CTLFLAG_RD, align 4
  %19 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %20 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %19, i32 0, i32 6
  %21 = call i32 @SYSCTL_ADD_U16(i32* %14, i32 %16, i32 %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18, i32* %20, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %23 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %22, i32 0, i32 1
  %24 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %25 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %24)
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %29 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %28, i32 0, i32 5
  %30 = call i32 @SYSCTL_ADD_U16(i32* %23, i32 %25, i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32* %29, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %31, i32 0, i32 1
  %33 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %34 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %33)
  %35 = load i32, i32* @OID_AUTO, align 4
  %36 = load i32, i32* @CTLFLAG_RD, align 4
  %37 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %38 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %37, i32 0, i32 4
  %39 = call i32 @SYSCTL_ADD_U32(i32* %32, i32 %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %36, i32* %38, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %40 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %41 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %40, i32 0, i32 1
  %42 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %43 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %42)
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLFLAG_RD, align 4
  %46 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %47 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %46, i32 0, i32 3
  %48 = call i32 @SYSCTL_ADD_U32(i32* %41, i32 %43, i32 %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %45, i32* %47, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %49 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %50 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %49, i32 0, i32 1
  %51 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %52 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %51)
  %53 = load i32, i32* @OID_AUTO, align 4
  %54 = load i32, i32* @CTLFLAG_RD, align 4
  %55 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %56 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %55, i32 0, i32 2
  %57 = call i32 @SYSCTL_ADD_U32(i32* %50, i32 %52, i32 %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i32 %54, i32* %56, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0))
  %58 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %59 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %58, i32 0, i32 1
  %60 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %61 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %60)
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLFLAG_RD, align 4
  %64 = load %struct.bnxt_nvram_info*, %struct.bnxt_nvram_info** %3, align 8
  %65 = getelementptr inbounds %struct.bnxt_nvram_info, %struct.bnxt_nvram_info* %64, i32 0, i32 0
  %66 = call i32 @SYSCTL_ADD_U32(i32* %59, i32 %61, i32 %62, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %63, i32* %65, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %12, %10
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @SYSCTL_ADD_U16(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_U32(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
