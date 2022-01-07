; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_read_config_info_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_cam.c_mpt_read_config_info_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_softc = type { i32, %struct.TYPE_11__, i32, %struct.TYPE_13__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_12__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_12__ = type { i8*, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }

@MPI_CONFIG_PAGETYPE_FC_PORT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MPT_PRT_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"FC Port Page 0 Header: %x %x %x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to read FC Port Page 0\0A\00", align 1
@MPI_FCPORTPAGE0_FLAGS_ATTACH_TYPE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"<NO LOOP>\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"N-Port\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"NL-Port\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"F-Port\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"FL-Port\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@MPT_PRT_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [71 x i8] c"FC Port Page 0: Topology <%s> WWNN 0x%16jx WWPN 0x%16jx Speed %u-Gbit\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"wwnn\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [21 x i8] c"World Wide Node Name\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"wwpn\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"World Wide Port Name\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpt_softc*)* @mpt_read_config_info_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_read_config_info_fc(%struct.mpt_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mpt_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.mpt_softc* %0, %struct.mpt_softc** %3, align 8
  store i8* null, i8** %6, align 8
  %8 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %9 = load i32, i32* @MPI_CONFIG_PAGETYPE_FC_PORT, align 4
  %10 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 5
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @mpt_read_cfg_header(%struct.mpt_softc* %8, i32 %9, i32 0, i32 0, %struct.TYPE_12__* %12, i32 %13, i32 5000)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %185

18:                                               ; preds = %1
  %19 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %20 = load i32, i32* @MPT_PRT_DEBUG, align 4
  %21 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %27 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @mpt_lprt(%struct.mpt_softc* %19, i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %30, i32 %35, i32 %40)
  %42 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %43 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %44 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 5
  %46 = load i32, i32* @FALSE, align 4
  %47 = call i32 @mpt_read_cur_cfg_page(%struct.mpt_softc* %42, i32 0, %struct.TYPE_12__* %45, i32 72, i32 %46, i32 5000)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %18
  %51 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %52 = call i32 @mpt_prt(%struct.mpt_softc* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %185

53:                                               ; preds = %18
  %54 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %54, i32 0, i32 3
  %56 = call i32 @mpt2host_config_page_fc_port_0(%struct.TYPE_13__* %55)
  %57 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %58 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %73 [
    i32 135, label %61
    i32 134, label %64
    i32 136, label %67
    i32 133, label %70
  ]

61:                                               ; preds = %53
  %62 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %63 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %62, i32 0, i32 0
  store i32 1, i32* %63, align 8
  br label %76

64:                                               ; preds = %53
  %65 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %66 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %65, i32 0, i32 0
  store i32 2, i32* %66, align 8
  br label %76

67:                                               ; preds = %53
  %68 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %68, i32 0, i32 0
  store i32 10, i32* %69, align 8
  br label %76

70:                                               ; preds = %53
  %71 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %72 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %71, i32 0, i32 0
  store i32 4, i32* %72, align 8
  br label %76

73:                                               ; preds = %53
  %74 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %75 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %70, %67, %64, %61
  %77 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %78 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MPI_FCPORTPAGE0_FLAGS_ATTACH_TYPE_MASK, align 4
  %82 = and i32 %80, %81
  switch i32 %82, label %90 [
    i32 131, label %83
    i32 130, label %86
    i32 129, label %87
    i32 132, label %88
    i32 128, label %89
  ]

83:                                               ; preds = %76
  %84 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %85 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %84, i32 0, i32 0
  store i32 0, i32* %85, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %93

86:                                               ; preds = %76
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %93

87:                                               ; preds = %76
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %93

88:                                               ; preds = %76
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %6, align 8
  br label %93

89:                                               ; preds = %76
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8** %6, align 8
  br label %93

90:                                               ; preds = %76
  %91 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %92 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %6, align 8
  br label %93

93:                                               ; preds = %90, %89, %88, %87, %86, %83
  %94 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %95 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %99, 32
  %101 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 4
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %100, %105
  %107 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %108 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %112 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = shl i32 %116, 32
  %118 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %119 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %117, %122
  %124 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %125 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 1
  store i32 %123, i32* %127, align 4
  %128 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %129 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %133 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 2
  store i32 %131, i32* %135, align 4
  %136 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %137 = load i32, i32* @MPT_PRT_INFO, align 4
  %138 = load i8*, i8** %6, align 8
  %139 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %140 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %145 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %150 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @mpt_lprt(%struct.mpt_softc* %136, i32 %137, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.8, i64 0, i64 0), i8* %138, i32 %143, i32 %148, i32 %151)
  %153 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %154 = call i32 @MPT_UNLOCK(%struct.mpt_softc* %153)
  %155 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %156 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %157)
  store %struct.sysctl_ctx_list* %158, %struct.sysctl_ctx_list** %4, align 8
  %159 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %160 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %161)
  store %struct.sysctl_oid* %162, %struct.sysctl_oid** %5, align 8
  %163 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %164 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %165 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %164)
  %166 = load i32, i32* @OID_AUTO, align 4
  %167 = load i32, i32* @CTLFLAG_RD, align 4
  %168 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %169 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %163, i32 %165, i32 %166, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %167, i32* %171, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %173 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %174 = load %struct.sysctl_oid*, %struct.sysctl_oid** %5, align 8
  %175 = call i32 @SYSCTL_CHILDREN(%struct.sysctl_oid* %174)
  %176 = load i32, i32* @OID_AUTO, align 4
  %177 = load i32, i32* @CTLFLAG_RD, align 4
  %178 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %179 = getelementptr inbounds %struct.mpt_softc, %struct.mpt_softc* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 1
  %182 = call i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list* %173, i32 %175, i32 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %177, i32* %181, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %183 = load %struct.mpt_softc*, %struct.mpt_softc** %3, align 8
  %184 = call i32 @MPT_LOCK(%struct.mpt_softc* %183)
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %93, %50, %17
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @mpt_read_cfg_header(%struct.mpt_softc*, i32, i32, i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @mpt_lprt(%struct.mpt_softc*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @mpt_read_cur_cfg_page(%struct.mpt_softc*, i32, %struct.TYPE_12__*, i32, i32, i32) #1

declare dso_local i32 @mpt_prt(%struct.mpt_softc*, i8*) #1

declare dso_local i32 @mpt2host_config_page_fc_port_0(%struct.TYPE_13__*) #1

declare dso_local i32 @MPT_UNLOCK(%struct.mpt_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_QUAD(%struct.sysctl_ctx_list*, i32, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @MPT_LOCK(%struct.mpt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
