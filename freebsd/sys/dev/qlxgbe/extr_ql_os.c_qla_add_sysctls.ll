; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_os.c_qla_add_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgbe/extr_ql_os.c_qla_add_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"version\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@ver_str = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Driver Version\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"firmware version\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"link_status\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@qla_sysctl_get_link_status = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Link Status\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Debug Level\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"enable_minidump\00", align 1
@.str.10 = private unnamed_addr constant [75 x i8] c"Minidump retrival prior to error recovery is enabled only when this is set\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"enable_driverstate_dump\00", align 1
@.str.12 = private unnamed_addr constant [79 x i8] c"Driver State retrival prior to error recovery is enabled only when this is set\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"enable_error_recovery\00", align 1
@.str.14 = private unnamed_addr constant [88 x i8] c"when set error recovery is enabled on fatal errors otherwise the port is turned offline\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"ms_delay_after_init\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"millisecond delay after hw_init\00", align 1
@QL_STD_REPLENISH_THRES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [14 x i8] c"std_replenish\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"Threshold for Replenishing Standard Frames\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"ipv4_lro\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"number of ipv4 lro completions\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"ipv6_lro\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"number of ipv6 lro completions\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"tx_tso_frames\00", align 1
@.str.24 = private unnamed_addr constant [24 x i8] c"number of Tx TSO Frames\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"hw_vlan_tx_frames\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"number of Tx VLAN Frames\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"hw_lock_failed\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"number of hw_lock failures\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @qla_add_sysctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla_add_sysctls(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 12
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_sysctl_ctx(i32 %7)
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_sysctl_tree(i32 %9)
  %11 = call i32 @SYSCTL_CHILDREN(i32 %10)
  %12 = load i32, i32* @OID_AUTO, align 4
  %13 = load i32, i32* @CTLFLAG_RD, align 4
  %14 = load i32, i32* @ver_str, align 4
  %15 = call i32 @SYSCTL_ADD_STRING(i32 %8, i32 %11, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @device_get_sysctl_ctx(i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_get_sysctl_tree(i32 %18)
  %20 = call i32 @SYSCTL_CHILDREN(i32 %19)
  %21 = load i32, i32* @OID_AUTO, align 4
  %22 = load i32, i32* @CTLFLAG_RD, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SYSCTL_ADD_STRING(i32 %17, i32 %20, i32 %21, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %25, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @device_get_sysctl_ctx(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_get_sysctl_tree(i32 %29)
  %31 = call i32 @SYSCTL_CHILDREN(i32 %30)
  %32 = load i32, i32* @OID_AUTO, align 4
  %33 = load i32, i32* @CTLTYPE_INT, align 4
  %34 = load i32, i32* @CTLFLAG_RW, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %37 = bitcast %struct.TYPE_3__* %36 to i8*
  %38 = load i32, i32* @qla_sysctl_get_link_status, align 4
  %39 = call i32 @SYSCTL_ADD_PROC(i32 %28, i32 %31, i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32 %35, i8* %37, i32 0, i32 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_get_sysctl_ctx(i32 %42)
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @device_get_sysctl_tree(i32 %44)
  %46 = call i32 @SYSCTL_CHILDREN(i32 %45)
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = load i32, i32* @CTLFLAG_RW, align 4
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @SYSCTL_ADD_UINT(i32 %43, i32 %46, i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 %48, i32* %50, i32 %53, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @device_get_sysctl_ctx(i32 %57)
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @device_get_sysctl_tree(i32 %59)
  %61 = call i32 @SYSCTL_CHILDREN(i32 %60)
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLFLAG_RW, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @SYSCTL_ADD_UINT(i32 %58, i32 %61, i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %63, i32* %65, i32 %68, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.10, i64 0, i64 0))
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @device_get_sysctl_ctx(i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = call i32 @device_get_sysctl_tree(i32 %74)
  %76 = call i32 @SYSCTL_CHILDREN(i32 %75)
  %77 = load i32, i32* @OID_AUTO, align 4
  %78 = load i32, i32* @CTLFLAG_RW, align 4
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @SYSCTL_ADD_UINT(i32 %73, i32 %76, i32 %77, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %78, i32* %80, i32 %83, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.12, i64 0, i64 0))
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  store i32 1, i32* %86, align 4
  %87 = load i32, i32* %3, align 4
  %88 = call i32 @device_get_sysctl_ctx(i32 %87)
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @device_get_sysctl_tree(i32 %89)
  %91 = call i32 @SYSCTL_CHILDREN(i32 %90)
  %92 = load i32, i32* @OID_AUTO, align 4
  %93 = load i32, i32* @CTLFLAG_RW, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @SYSCTL_ADD_UINT(i32 %88, i32 %91, i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %93, i32* %95, i32 %98, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.14, i64 0, i64 0))
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 4
  store i32 1000, i32* %101, align 4
  %102 = load i32, i32* %3, align 4
  %103 = call i32 @device_get_sysctl_ctx(i32 %102)
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @device_get_sysctl_tree(i32 %104)
  %106 = call i32 @SYSCTL_CHILDREN(i32 %105)
  %107 = load i32, i32* @OID_AUTO, align 4
  %108 = load i32, i32* @CTLFLAG_RW, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 4
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @SYSCTL_ADD_UINT(i32 %103, i32 %106, i32 %107, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.15, i64 0, i64 0), i32 %108, i32* %110, i32 %113, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %115 = load i32, i32* @QL_STD_REPLENISH_THRES, align 4
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 5
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @device_get_sysctl_ctx(i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @device_get_sysctl_tree(i32 %120)
  %122 = call i32 @SYSCTL_CHILDREN(i32 %121)
  %123 = load i32, i32* @OID_AUTO, align 4
  %124 = load i32, i32* @CTLFLAG_RW, align 4
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @SYSCTL_ADD_UINT(i32 %119, i32 %122, i32 %123, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %124, i32* %126, i32 %129, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0))
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @device_get_sysctl_ctx(i32 %131)
  %133 = load i32, i32* %3, align 4
  %134 = call i32 @device_get_sysctl_tree(i32 %133)
  %135 = call i32 @SYSCTL_CHILDREN(i32 %134)
  %136 = load i32, i32* @OID_AUTO, align 4
  %137 = load i32, i32* @CTLFLAG_RD, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 10
  %140 = call i32 @SYSCTL_ADD_QUAD(i32 %132, i32 %135, i32 %136, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i64 0, i64 0), i32 %137, i32* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %141 = load i32, i32* %3, align 4
  %142 = call i32 @device_get_sysctl_ctx(i32 %141)
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @device_get_sysctl_tree(i32 %143)
  %145 = call i32 @SYSCTL_CHILDREN(i32 %144)
  %146 = load i32, i32* @OID_AUTO, align 4
  %147 = load i32, i32* @CTLFLAG_RD, align 4
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 9
  %150 = call i32 @SYSCTL_ADD_QUAD(i32 %142, i32 %145, i32 %146, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i64 0, i64 0), i32 %147, i32* %149, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @device_get_sysctl_ctx(i32 %151)
  %153 = load i32, i32* %3, align 4
  %154 = call i32 @device_get_sysctl_tree(i32 %153)
  %155 = call i32 @SYSCTL_CHILDREN(i32 %154)
  %156 = load i32, i32* @OID_AUTO, align 4
  %157 = load i32, i32* @CTLFLAG_RD, align 4
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 8
  %160 = call i32 @SYSCTL_ADD_QUAD(i32 %152, i32 %155, i32 %156, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0), i32 %157, i32* %159, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.24, i64 0, i64 0))
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @device_get_sysctl_ctx(i32 %161)
  %163 = load i32, i32* %3, align 4
  %164 = call i32 @device_get_sysctl_tree(i32 %163)
  %165 = call i32 @SYSCTL_CHILDREN(i32 %164)
  %166 = load i32, i32* @OID_AUTO, align 4
  %167 = load i32, i32* @CTLFLAG_RD, align 4
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 7
  %170 = call i32 @SYSCTL_ADD_QUAD(i32 %162, i32 %165, i32 %166, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %167, i32* %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %171 = load i32, i32* %3, align 4
  %172 = call i32 @device_get_sysctl_ctx(i32 %171)
  %173 = load i32, i32* %3, align 4
  %174 = call i32 @device_get_sysctl_tree(i32 %173)
  %175 = call i32 @SYSCTL_CHILDREN(i32 %174)
  %176 = load i32, i32* @OID_AUTO, align 4
  %177 = load i32, i32* @CTLFLAG_RD, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 6
  %180 = call i32 @SYSCTL_ADD_QUAD(i32 %172, i32 %175, i32 %176, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0), i32 %177, i32* %179, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.28, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_STRING(i32, i32, i32, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @device_get_sysctl_ctx(i32) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32, i32, i32, i8*, i32, i8*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(i32, i32, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(i32, i32, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
