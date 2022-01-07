; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_status = type { i32, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.an_req = type { i32, i32 }
%struct.an_ltv_rssi_map = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@AN_RID_RSSI_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RSSI table:\09\09[ present ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"RSSI table:\09\09[ not available ]\0A\00", align 1
@AN_RID_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"MAC address:\09\09\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"\0AOperating mode:\09\09[ \00", align 1
@AN_STATUS_OPMODE_CONFIGURED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"configured \00", align 1
@AN_STATUS_OPMODE_MAC_ENABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"MAC ON \00", align 1
@AN_STATUS_OPMODE_RX_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"RX ON \00", align 1
@AN_STATUS_OPMODE_IN_SYNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"synced \00", align 1
@AN_STATUS_OPMODE_ASSOCIATED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"associated \00", align 1
@AN_STATUS_OPMODE_LEAP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"LEAP \00", align 1
@AN_STATUS_OPMODE_ERROR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"error \00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"Error code:\09\09\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"\0ASignal strength:\09[ %u%% ]\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"\0AAverage Noise:\09\09[ %u%% ]\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\0ASignal quality:\09\09[ %u%% ]\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"\0ASignal quality:\09\09[ %u ]\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"\0AMax Noise:\09\09[ %u%% ]\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"\0ACurrent TX rate:\09[ %u%s ]\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c".5\00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\0ACurrent SSID:\09\09\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"\0ACurrent AP name:\09\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"\0ACurrent BSSID:\09\09\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"\0ABeacon period:\09\09\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"\0ADTIM period:\09\09\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"\0AATIM duration:\09\09\00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c"\0AHOP period:\09\09\00", align 1
@.str.28 = private unnamed_addr constant [16 x i8] c"\0AChannel set:\09\09\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"\0ACurrent channel:\09\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"\0AHops to backbone:\09\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"\0ATotal AP load:\09\09\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"\0AOur generated load:\09\00", align 1
@.str.33 = private unnamed_addr constant [19 x i8] c"\0AAccumulated ARL:\09\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @an_dumpstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_dumpstatus(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.an_ltv_status*, align 8
  %4 = alloca %struct.an_req, align 4
  %5 = alloca %struct.an_ltv_rssi_map, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.an_ltv_rssi_map, %struct.an_ltv_rssi_map* %5, i32 0, i32 0
  store i32 24, i32* %7, align 8
  %8 = load i32, i32* @AN_RID_RSSI_MAP, align 4
  %9 = getelementptr inbounds %struct.an_ltv_rssi_map, %struct.an_ltv_rssi_map* %5, i32 0, i32 2
  store i32 %8, i32* %9, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast %struct.an_ltv_rssi_map* %5 to %struct.an_req*
  %12 = call i32 @an_getval(i8* %10, %struct.an_req* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %19

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %15
  %20 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 0
  store i32 8, i32* %20, align 4
  %21 = load i32, i32* @AN_RID_STATUS, align 4
  %22 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i8*, i8** %2, align 8
  %24 = call i32 @an_getval(i8* %23, %struct.an_req* %4)
  %25 = bitcast %struct.an_req* %4 to %struct.an_ltv_status*
  store %struct.an_ltv_status* %25, %struct.an_ltv_status** %3, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %28 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %27, i32 0, i32 21
  %29 = bitcast i32* %28 to i8*
  %30 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %31 = call i32 @an_printhex(i8* %29, i32 %30)
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %33 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %34 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AN_STATUS_OPMODE_CONFIGURED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %19
  %42 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %43 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AN_STATUS_OPMODE_MAC_ENABLED, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  %51 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %52 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AN_STATUS_OPMODE_RX_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %50
  %60 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %61 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @AN_STATUS_OPMODE_IN_SYNC, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  %69 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %70 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @AN_STATUS_OPMODE_ASSOCIATED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %68
  %78 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %79 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @AN_STATUS_OPMODE_LEAP, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %88 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @AN_STATUS_OPMODE_ERROR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %98 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %99 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %98, i32 0, i32 20
  %100 = bitcast i32* %99 to i8*
  %101 = call i32 @an_printhex(i8* %100, i32 1)
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.an_ltv_rssi_map, %struct.an_ltv_rssi_map* %5, i32 0, i32 1
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %108 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i32 %112)
  br label %119

114:                                              ; preds = %95
  %115 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %116 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i64 %117)
  br label %119

119:                                              ; preds = %114, %104
  %120 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %121 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %119
  %127 = getelementptr inbounds %struct.an_ltv_rssi_map, %struct.an_ltv_rssi_map* %5, i32 0, i32 1
  %128 = load %struct.TYPE_2__*, %struct.TYPE_2__** %127, align 8
  %129 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %130 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32 %134)
  br label %141

136:                                              ; preds = %119
  %137 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %138 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i64 %139)
  br label %141

141:                                              ; preds = %136, %126
  %142 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %143 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i32 %144)
  %146 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %147 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 4
  %149 = sdiv i32 %148, 2
  %150 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %151 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = srem i32 %152, 2
  %154 = icmp ne i32 %153, 0
  %155 = zext i1 %154 to i64
  %156 = select i1 %154, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.20, i64 0, i64 0)
  %157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0), i32 %149, i8* %156)
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %159 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %160 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %159, i32 0, i32 19
  %161 = bitcast i32* %160 to i8*
  %162 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %163 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @an_printstr(i8* %161, i32 %164)
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0))
  %167 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %168 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %167, i32 0, i32 18
  %169 = bitcast i32* %168 to i8*
  %170 = call i32 @an_printstr(i8* %169, i32 16)
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0))
  %172 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %173 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %172, i32 0, i32 17
  %174 = bitcast i32* %173 to i8*
  %175 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %176 = call i32 @an_printhex(i8* %174, i32 %175)
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0))
  %178 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %179 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %178, i32 0, i32 16
  %180 = call i32 @an_printwords(i32* %179, i32 1)
  %181 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0))
  %182 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %183 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %182, i32 0, i32 15
  %184 = call i32 @an_printwords(i32* %183, i32 1)
  %185 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i64 0, i64 0))
  %186 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %187 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %186, i32 0, i32 14
  %188 = call i32 @an_printwords(i32* %187, i32 1)
  %189 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i64 0, i64 0))
  %190 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %191 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %190, i32 0, i32 13
  %192 = call i32 @an_printwords(i32* %191, i32 1)
  %193 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.28, i64 0, i64 0))
  %194 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %195 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %194, i32 0, i32 12
  %196 = call i32 @an_printwords(i32* %195, i32 1)
  %197 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.29, i64 0, i64 0))
  %198 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %199 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %198, i32 0, i32 11
  %200 = call i32 @an_printwords(i32* %199, i32 1)
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.30, i64 0, i64 0))
  %202 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %203 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %202, i32 0, i32 10
  %204 = call i32 @an_printwords(i32* %203, i32 1)
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %206 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %207 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %206, i32 0, i32 9
  %208 = call i32 @an_printwords(i32* %207, i32 1)
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i64 0, i64 0))
  %210 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %211 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %210, i32 0, i32 8
  %212 = call i32 @an_printwords(i32* %211, i32 1)
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.33, i64 0, i64 0))
  %214 = load %struct.an_ltv_status*, %struct.an_ltv_status** %3, align 8
  %215 = getelementptr inbounds %struct.an_ltv_status, %struct.an_ltv_status* %214, i32 0, i32 7
  %216 = call i32 @an_printwords(i32* %215, i32 1)
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.34, i64 0, i64 0))
  ret void
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @an_printhex(i8*, i32) #1

declare dso_local i32 @an_printstr(i8*, i32) #1

declare dso_local i32 @an_printwords(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
