; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_ver_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_create_ver_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { %struct.bnxt_ver_info* }
%struct.bnxt_ver_info = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sysctl_oid* }
%struct.sysctl_oid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"hwrm_if\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"HWRM interface version\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"driver_hwrm_if\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"HWRM firmware version\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"hwrm_fw\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mgmt_fw\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"management firmware version\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"netctrl_fw\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"network control firmware version\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"roce_fw\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"RoCE firmware version\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"PHY version\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"hwrm_fw_name\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"HWRM firmware name\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"mgmt_fw_name\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"management firmware name\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"netctrl_fw_name\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"network control firmware name\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"roce_fw_name\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"RoCE firmware name\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"phy_vendor\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"PHY vendor name\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"phy_partnumber\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"PHY vendor part number\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"chip_num\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"chip number\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"chip_rev\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"chip revision\00", align 1
@.str.29 = private unnamed_addr constant [11 x i8] c"chip_metal\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"chip metal number\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"chip_bond_id\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"chip bond id\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"chip_type\00", align 1
@MAX_CHIP_TYPE = common dso_local global i64 0, align 8
@bnxt_chip_type = common dso_local global i32* null, align 8
@.str.34 = private unnamed_addr constant [12 x i8] c"package_ver\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@bnxt_package_ver_sysctl = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"currently installed package version\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"hwrm_min_ver\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@bnxt_hwrm_min_ver_sysctl = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [35 x i8] c"minimum hwrm API vesion to support\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_create_ver_sysctls(%struct.bnxt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnxt_softc*, align 8
  %4 = alloca %struct.bnxt_ver_info*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %3, align 8
  %6 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %6, i32 0, i32 0
  %8 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %7, align 8
  store %struct.bnxt_ver_info* %8, %struct.bnxt_ver_info** %4, align 8
  %9 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %9, i32 0, i32 19
  %11 = load %struct.sysctl_oid*, %struct.sysctl_oid** %10, align 8
  store %struct.sysctl_oid* %11, %struct.sysctl_oid** %5, align 8
  %12 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %13 = icmp ne %struct.sysctl_oid* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  store i32 %15, i32* %2, align 4
  br label %231

16:                                               ; preds = %1
  %17 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %18 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %17, i32 0, i32 1
  %19 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %20 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %19)
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %24 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %23, i32 0, i32 18
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SYSCTL_ADD_STRING(i32* %18, i32 %20, i32 %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %27, i32 0, i32 1
  %29 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %30 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %29)
  %31 = load i32, i32* @OID_AUTO, align 4
  %32 = load i32, i32* @CTLFLAG_RD, align 4
  %33 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %34 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %33, i32 0, i32 17
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @SYSCTL_ADD_STRING(i32* %28, i32 %30, i32 %31, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %35, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %37 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %38 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %37, i32 0, i32 1
  %39 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %40 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %39)
  %41 = load i32, i32* @OID_AUTO, align 4
  %42 = load i32, i32* @CTLFLAG_RD, align 4
  %43 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %44 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %43, i32 0, i32 16
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SYSCTL_ADD_STRING(i32* %38, i32 %40, i32 %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %42, i32 %45, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %47 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %48 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %47, i32 0, i32 1
  %49 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %50 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %49)
  %51 = load i32, i32* @OID_AUTO, align 4
  %52 = load i32, i32* @CTLFLAG_RD, align 4
  %53 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %54 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %53, i32 0, i32 15
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SYSCTL_ADD_STRING(i32* %48, i32 %50, i32 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %52, i32 %55, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %57 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %58 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %57, i32 0, i32 1
  %59 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %60 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %59)
  %61 = load i32, i32* @OID_AUTO, align 4
  %62 = load i32, i32* @CTLFLAG_RD, align 4
  %63 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %64 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %63, i32 0, i32 14
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @SYSCTL_ADD_STRING(i32* %58, i32 %60, i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i32 %62, i32 %65, i32 0, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %67 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %68 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %67, i32 0, i32 1
  %69 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %70 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %69)
  %71 = load i32, i32* @OID_AUTO, align 4
  %72 = load i32, i32* @CTLFLAG_RD, align 4
  %73 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %74 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %73, i32 0, i32 13
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @SYSCTL_ADD_STRING(i32* %68, i32 %70, i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %72, i32 %75, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %77 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %78 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %77, i32 0, i32 1
  %79 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %80 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %79)
  %81 = load i32, i32* @OID_AUTO, align 4
  %82 = load i32, i32* @CTLFLAG_RD, align 4
  %83 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %84 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %83, i32 0, i32 12
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @SYSCTL_ADD_STRING(i32* %78, i32 %80, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %82, i32 %85, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %87 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %88 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %87, i32 0, i32 1
  %89 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %90 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %89)
  %91 = load i32, i32* @OID_AUTO, align 4
  %92 = load i32, i32* @CTLFLAG_RD, align 4
  %93 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %94 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @SYSCTL_ADD_STRING(i32* %88, i32 %90, i32 %91, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %92, i32 %95, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  %97 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %98 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %97, i32 0, i32 1
  %99 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %100 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %99)
  %101 = load i32, i32* @OID_AUTO, align 4
  %102 = load i32, i32* @CTLFLAG_RD, align 4
  %103 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %104 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @SYSCTL_ADD_STRING(i32* %98, i32 %100, i32 %101, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i32 %102, i32 %105, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %107 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %108 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %107, i32 0, i32 1
  %109 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %110 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %109)
  %111 = load i32, i32* @OID_AUTO, align 4
  %112 = load i32, i32* @CTLFLAG_RD, align 4
  %113 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %114 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @SYSCTL_ADD_STRING(i32* %108, i32 %110, i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %112, i32 %115, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %117 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %118 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %117, i32 0, i32 1
  %119 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %120 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %119)
  %121 = load i32, i32* @OID_AUTO, align 4
  %122 = load i32, i32* @CTLFLAG_RD, align 4
  %123 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %124 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %123, i32 0, i32 8
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @SYSCTL_ADD_STRING(i32* %118, i32 %120, i32 %121, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i32 %122, i32 %125, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %127 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %128 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %127, i32 0, i32 1
  %129 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %130 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %129)
  %131 = load i32, i32* @OID_AUTO, align 4
  %132 = load i32, i32* @CTLFLAG_RD, align 4
  %133 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %134 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %133, i32 0, i32 7
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @SYSCTL_ADD_STRING(i32* %128, i32 %130, i32 %131, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0), i32 %132, i32 %135, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0))
  %137 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %138 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %137, i32 0, i32 1
  %139 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %140 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %139)
  %141 = load i32, i32* @OID_AUTO, align 4
  %142 = load i32, i32* @CTLFLAG_RD, align 4
  %143 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %144 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @SYSCTL_ADD_STRING(i32* %138, i32 %140, i32 %141, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.23, i64 0, i64 0), i32 %142, i32 %145, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0))
  %147 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %148 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %147, i32 0, i32 1
  %149 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %150 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %149)
  %151 = load i32, i32* @OID_AUTO, align 4
  %152 = load i32, i32* @CTLFLAG_RD, align 4
  %153 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %154 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %153, i32 0, i32 5
  %155 = call i32 @SYSCTL_ADD_U16(i32* %148, i32 %150, i32 %151, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0), i32 %152, i32* %154, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0))
  %156 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %157 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %156, i32 0, i32 1
  %158 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %159 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %158)
  %160 = load i32, i32* @OID_AUTO, align 4
  %161 = load i32, i32* @CTLFLAG_RD, align 4
  %162 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %163 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %162, i32 0, i32 4
  %164 = call i32 @SYSCTL_ADD_U8(i32* %157, i32 %159, i32 %160, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i64 0, i64 0), i32 %161, i32* %163, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %165 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %166 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %165, i32 0, i32 1
  %167 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %168 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %167)
  %169 = load i32, i32* @OID_AUTO, align 4
  %170 = load i32, i32* @CTLFLAG_RD, align 4
  %171 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %172 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %171, i32 0, i32 3
  %173 = call i32 @SYSCTL_ADD_U8(i32* %166, i32 %168, i32 %169, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.29, i64 0, i64 0), i32 %170, i32* %172, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.30, i64 0, i64 0))
  %174 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %175 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %174, i32 0, i32 1
  %176 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %177 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %176)
  %178 = load i32, i32* @OID_AUTO, align 4
  %179 = load i32, i32* @CTLFLAG_RD, align 4
  %180 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %181 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %180, i32 0, i32 2
  %182 = call i32 @SYSCTL_ADD_U8(i32* %175, i32 %177, i32 %178, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i64 0, i64 0), i32 %179, i32* %181, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i64 0, i64 0))
  %183 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %184 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %183, i32 0, i32 1
  %185 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %186 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %185)
  %187 = load i32, i32* @OID_AUTO, align 4
  %188 = load i32, i32* @CTLFLAG_RD, align 4
  %189 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %190 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @MAX_CHIP_TYPE, align 8
  %193 = icmp ugt i64 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %16
  %195 = load i32*, i32** @bnxt_chip_type, align 8
  %196 = load i64, i64* @MAX_CHIP_TYPE, align 8
  %197 = getelementptr inbounds i32, i32* %195, i64 %196
  %198 = load i32, i32* %197, align 4
  br label %206

199:                                              ; preds = %16
  %200 = load i32*, i32** @bnxt_chip_type, align 8
  %201 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %202 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i32, i32* %200, i64 %203
  %205 = load i32, i32* %204, align 4
  br label %206

206:                                              ; preds = %199, %194
  %207 = phi i32 [ %198, %194 ], [ %205, %199 ]
  %208 = call i32 @SYSCTL_ADD_STRING(i32* %184, i32 %186, i32 %187, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.33, i64 0, i64 0), i32 %188, i32 %207, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  %209 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %210 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %209, i32 0, i32 1
  %211 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %212 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %211)
  %213 = load i32, i32* @OID_AUTO, align 4
  %214 = load i32, i32* @CTLTYPE_STRING, align 4
  %215 = load i32, i32* @CTLFLAG_RD, align 4
  %216 = or i32 %214, %215
  %217 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %218 = load i32, i32* @bnxt_package_ver_sysctl, align 4
  %219 = call i32 @SYSCTL_ADD_PROC(i32* %210, i32 %212, i32 %213, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.34, i64 0, i64 0), i32 %216, %struct.bnxt_softc* %217, i32 0, i32 %218, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.36, i64 0, i64 0))
  %220 = load %struct.bnxt_ver_info*, %struct.bnxt_ver_info** %4, align 8
  %221 = getelementptr inbounds %struct.bnxt_ver_info, %struct.bnxt_ver_info* %220, i32 0, i32 1
  %222 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %223 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %222)
  %224 = load i32, i32* @OID_AUTO, align 4
  %225 = load i32, i32* @CTLTYPE_STRING, align 4
  %226 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %227 = or i32 %225, %226
  %228 = load %struct.bnxt_softc*, %struct.bnxt_softc** %3, align 8
  %229 = load i32, i32* @bnxt_hwrm_min_ver_sysctl, align 4
  %230 = call i32 @SYSCTL_ADD_PROC(i32* %221, i32 %223, i32 %224, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i32 %227, %struct.bnxt_softc* %228, i32 0, i32 %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.38, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %206, %14
  %232 = load i32, i32* %2, align 4
  ret i32 %232
}

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_U16(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_U8(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.bnxt_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
