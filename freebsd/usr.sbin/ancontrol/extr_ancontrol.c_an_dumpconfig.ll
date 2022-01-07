; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpconfig.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ancontrol/extr_ancontrol.c_an_dumpconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_ltv_genconfig = type { i32, i32, i64, i64, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.an_req = type { i32, i32 }

@AN_RID_ACTUALCFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Operating mode:\09\09\09\09[ \00", align 1
@AN_OPMODE_IBSS_ADHOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"ad-hoc\00", align 1
@AN_OPMODE_INFRASTRUCTURE_STATION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"infrastructure\00", align 1
@AN_OPMODE_AP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"access point\00", align 1
@AN_OPMODE_AP_REPEATER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"access point repeater\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c" ]\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"\0AReceive mode:\09\09\09\09[ \00", align 1
@AN_RXMODE_BC_MC_ADDR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"broadcast/multicast/unicast\00", align 1
@AN_RXMODE_BC_ADDR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"broadcast/unicast\00", align 1
@AN_RXMODE_ADDR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [8 x i8] c"unicast\00", align 1
@AN_RXMODE_80211_MONITOR_CURBSS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"802.11 monitor, current BSSID\00", align 1
@AN_RXMODE_80211_MONITOR_ANYBSS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"802.11 monitor, any BSSID\00", align 1
@AN_RXMODE_LAN_MONITOR_CURBSS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [27 x i8] c"LAN monitor, current BSSID\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"\0AFragment threshold:\09\09\09\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"\0ARTS threshold:\09\09\09\09\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"\0AMAC address:\09\09\09\09\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [21 x i8] c"\0ASupported rates:\09\09\09\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"\0AShort retry limit:\09\09\09\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"\0ALong retry limit:\09\09\09\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"\0ATX MSDU lifetime:\09\09\09\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"\0ARX MSDU lifetime:\09\09\09\00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"\0AStationary:\09\09\09\09\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"\0AOrdering:\09\09\09\09\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"\0ADevice type:\09\09\09\09[ \00", align 1
@AN_DEVTYPE_PC4500 = common dso_local global i64 0, align 8
@.str.24 = private unnamed_addr constant [7 x i8] c"PC4500\00", align 1
@AN_DEVTYPE_PC4800 = common dso_local global i64 0, align 8
@.str.25 = private unnamed_addr constant [7 x i8] c"PC4800\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"unknown (%x)\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"\0AScanning mode:\09\09\09\09[ \00", align 1
@AN_SCANMODE_ACTIVE = common dso_local global i64 0, align 8
@.str.28 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@AN_SCANMODE_PASSIVE = common dso_local global i64 0, align 8
@.str.29 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@AN_SCANMODE_AIRONET_ACTIVE = common dso_local global i64 0, align 8
@.str.30 = private unnamed_addr constant [15 x i8] c"Aironet active\00", align 1
@.str.31 = private unnamed_addr constant [18 x i8] c"\0AProbe delay:\09\09\09\09\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"\0AProbe energy timeout:\09\09\09\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"\0AProbe response timeout:\09\09\09\00", align 1
@.str.34 = private unnamed_addr constant [27 x i8] c"\0ABeacon listen timeout:\09\09\09\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"\0AIBSS join network timeout:\09\09\00", align 1
@.str.36 = private unnamed_addr constant [28 x i8] c"\0AAuthentication timeout:\09\09\09\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"\0AWEP enabled:\09\09\09\09[ \00", align 1
@AN_AUTHTYPE_PRIVACY_IN_USE = common dso_local global i32 0, align 4
@AN_AUTHTYPE_LEAP = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [5 x i8] c"LEAP\00", align 1
@AN_AUTHTYPE_ALLOW_UNENCRYPTED = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [11 x i8] c"mixed cell\00", align 1
@.str.40 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"\0AAuthentication type:\09\09\09[ \00", align 1
@AN_AUTHTYPE_MASK = common dso_local global i32 0, align 4
@AN_AUTHTYPE_NONE = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@AN_AUTHTYPE_OPEN = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@AN_AUTHTYPE_SHAREDKEY = common dso_local global i32 0, align 4
@.str.45 = private unnamed_addr constant [11 x i8] c"shared key\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"\0AAssociation timeout:\09\09\09\00", align 1
@.str.47 = private unnamed_addr constant [36 x i8] c"\0ASpecified AP association timeout:\09\00", align 1
@.str.48 = private unnamed_addr constant [27 x i8] c"\0AOffline scan interval:\09\09\09\00", align 1
@.str.49 = private unnamed_addr constant [27 x i8] c"\0AOffline scan duration:\09\09\09\00", align 1
@.str.50 = private unnamed_addr constant [21 x i8] c"\0ALink loss delay:\09\09\09\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"\0AMax beacon loss time:\09\09\09\00", align 1
@.str.52 = private unnamed_addr constant [22 x i8] c"\0ARefresh interval:\09\09\09\00", align 1
@.str.53 = private unnamed_addr constant [23 x i8] c"\0APower save mode:\09\09\09[ \00", align 1
@AN_PSAVE_NONE = common dso_local global i64 0, align 8
@AN_PSAVE_CAM = common dso_local global i64 0, align 8
@.str.54 = private unnamed_addr constant [22 x i8] c"constantly awake mode\00", align 1
@AN_PSAVE_PSP = common dso_local global i64 0, align 8
@.str.55 = private unnamed_addr constant [4 x i8] c"PSP\00", align 1
@AN_PSAVE_PSP_CAM = common dso_local global i64 0, align 8
@.str.56 = private unnamed_addr constant [19 x i8] c"PSP-CAM (fast PSP)\00", align 1
@.str.57 = private unnamed_addr constant [25 x i8] c"\0ASleep through DTIMs:\09\09\09\00", align 1
@.str.58 = private unnamed_addr constant [31 x i8] c"\0APower save listen interval:\09\09\00", align 1
@.str.59 = private unnamed_addr constant [35 x i8] c"\0APower save fast listen interval:\09\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"\0APower save listen decay:\09\09\00", align 1
@.str.61 = private unnamed_addr constant [33 x i8] c"\0APower save fast listen decay:\09\09\00", align 1
@.str.62 = private unnamed_addr constant [28 x i8] c"\0AAP/ad-hoc Beacon period:\09\09\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"\0AAP/ad-hoc ATIM duration:\09\09\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"\0AAP/ad-hoc current channel:\09\09\00", align 1
@.str.65 = private unnamed_addr constant [27 x i8] c"\0AAP/ad-hoc DTIM period:\09\09\09\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"\0ARadio type:\09\09\09\09[ \00", align 1
@AN_RADIOTYPE_80211_FH = common dso_local global i32 0, align 4
@.str.67 = private unnamed_addr constant [10 x i8] c"802.11 FH\00", align 1
@AN_RADIOTYPE_80211_DS = common dso_local global i32 0, align 4
@.str.68 = private unnamed_addr constant [10 x i8] c"802.11 DS\00", align 1
@AN_RADIOTYPE_LM2000_DS = common dso_local global i32 0, align 4
@.str.69 = private unnamed_addr constant [10 x i8] c"LM2000 DS\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"\0ARX Diversity:\09\09\09\09[ \00", align 1
@AN_DIVERSITY_FACTORY_DEFAULT = common dso_local global i8 0, align 1
@.str.71 = private unnamed_addr constant [16 x i8] c"factory default\00", align 1
@AN_DIVERSITY_ANTENNA_1_ONLY = common dso_local global i8 0, align 1
@.str.72 = private unnamed_addr constant [15 x i8] c"antenna 1 only\00", align 1
@AN_DIVERSITY_ANTENNA_2_ONLY = common dso_local global i8 0, align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"antenna 2 only\00", align 1
@AN_DIVERSITY_ANTENNA_1_AND_2 = common dso_local global i8 0, align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"antenna 1 and 2\00", align 1
@.str.75 = private unnamed_addr constant [21 x i8] c"\0ATX Diversity:\09\09\09\09[ \00", align 1
@.str.76 = private unnamed_addr constant [26 x i8] c"\0ATransmit power level:\09\09\09\00", align 1
@.str.77 = private unnamed_addr constant [20 x i8] c"\0ARSS threshold:\09\09\09\09\00", align 1
@.str.78 = private unnamed_addr constant [16 x i8] c"\0ANode name:\09\09\09\09\00", align 1
@.str.79 = private unnamed_addr constant [20 x i8] c"\0AARL threshold:\09\09\09\09\00", align 1
@.str.80 = private unnamed_addr constant [16 x i8] c"\0AARL decay:\09\09\09\09\00", align 1
@.str.81 = private unnamed_addr constant [16 x i8] c"\0AARL delay:\09\09\09\09\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"\0AConfiguration:\09\09\09\09[ \00", align 1
@AN_HOME_NETWORK = common dso_local global i32 0, align 4
@.str.83 = private unnamed_addr constant [19 x i8] c"Home Configuration\00", align 1
@.str.84 = private unnamed_addr constant [25 x i8] c"Enterprise Configuration\00", align 1
@.str.85 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @an_dumpconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_dumpconfig(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.an_ltv_genconfig*, align 8
  %4 = alloca %struct.an_req, align 4
  %5 = alloca i8, align 1
  store i8* %0, i8** %2, align 8
  %6 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 0
  store i32 8, i32* %6, align 4
  %7 = load i32, i32* @AN_RID_ACTUALCFG, align 4
  %8 = getelementptr inbounds %struct.an_req, %struct.an_req* %4, i32 0, i32 1
  store i32 %7, i32* %8, align 4
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 @an_getval(i8* %9, %struct.an_req* %4)
  %11 = bitcast %struct.an_req* %4 to %struct.an_ltv_genconfig*
  store %struct.an_ltv_genconfig* %11, %struct.an_ltv_genconfig** %3, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %14 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 7
  %17 = load i32, i32* @AN_OPMODE_IBSS_ADHOC, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %23 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, 7
  %26 = load i32, i32* @AN_OPMODE_INFRASTRUCTURE_STATION, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %21
  %31 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %32 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, 7
  %35 = load i32, i32* @AN_OPMODE_AP, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %41 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, 7
  %44 = load i32, i32* @AN_OPMODE_AP_REPEATER, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %39
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %51 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %52 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 7
  %55 = load i32, i32* @AN_RXMODE_BC_MC_ADDR, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %48
  %60 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %61 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 7
  %64 = load i32, i32* @AN_RXMODE_BC_ADDR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  %69 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %70 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 7
  %73 = load i32, i32* @AN_RXMODE_ADDR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %68
  %78 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %79 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %80, 7
  %82 = load i32, i32* @AN_RXMODE_80211_MONITOR_CURBSS, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %77
  %87 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %88 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 7
  %91 = load i32, i32* @AN_RXMODE_80211_MONITOR_ANYBSS, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86
  %94 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %86
  %96 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %97 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 7
  %100 = load i32, i32* @AN_RXMODE_LAN_MONITOR_CURBSS, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %95
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %106 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0))
  %107 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %108 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %107, i32 0, i32 46
  %109 = call i32 @an_printwords(i32* %108, i32 1)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %111 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %112 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %111, i32 0, i32 45
  %113 = call i32 @an_printwords(i32* %112, i32 1)
  %114 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  %115 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %116 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %115, i32 0, i32 44
  %117 = bitcast i32* %116 to i8*
  %118 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %119 = call i32 @an_printhex(i8* %117, i32 %118)
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  %121 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %122 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %121, i32 0, i32 43
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @an_printspeeds(i32 %123, i32 8)
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %126 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %127 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %126, i32 0, i32 42
  %128 = call i32 @an_printwords(i32* %127, i32 1)
  %129 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  %130 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %131 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %130, i32 0, i32 41
  %132 = call i32 @an_printwords(i32* %131, i32 1)
  %133 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %134 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %135 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %134, i32 0, i32 40
  %136 = call i32 @an_printwords(i32* %135, i32 1)
  %137 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.20, i64 0, i64 0))
  %138 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %139 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %138, i32 0, i32 39
  %140 = call i32 @an_printwords(i32* %139, i32 1)
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.21, i64 0, i64 0))
  %142 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %143 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %142, i32 0, i32 38
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @an_printbool(i32 %144)
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.22, i64 0, i64 0))
  %147 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %148 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %147, i32 0, i32 37
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @an_printbool(i32 %149)
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i64 0, i64 0))
  %152 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %153 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AN_DEVTYPE_PC4500, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %104
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0))
  br label %173

159:                                              ; preds = %104
  %160 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %161 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @AN_DEVTYPE_PC4800, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %159
  %166 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  br label %172

167:                                              ; preds = %159
  %168 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %169 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %168, i32 0, i32 2
  %170 = load i64, i64* %169, align 8
  %171 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i64 %170)
  br label %172

172:                                              ; preds = %167, %165
  br label %173

173:                                              ; preds = %172, %157
  %174 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %175 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  %176 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %177 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @AN_SCANMODE_ACTIVE, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %183

181:                                              ; preds = %173
  %182 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.28, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %173
  %184 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %185 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @AN_SCANMODE_PASSIVE, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %183
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %183
  %192 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %193 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %192, i32 0, i32 3
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @AN_SCANMODE_AIRONET_ACTIVE, align 8
  %196 = icmp eq i64 %194, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %191
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.30, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %191
  %200 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.31, i64 0, i64 0))
  %202 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %203 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %202, i32 0, i32 36
  %204 = call i32 @an_printwords(i32* %203, i32 1)
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.32, i64 0, i64 0))
  %206 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %207 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %206, i32 0, i32 35
  %208 = call i32 @an_printwords(i32* %207, i32 1)
  %209 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0))
  %210 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %211 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %210, i32 0, i32 34
  %212 = call i32 @an_printwords(i32* %211, i32 1)
  %213 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.34, i64 0, i64 0))
  %214 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %215 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %214, i32 0, i32 33
  %216 = call i32 @an_printwords(i32* %215, i32 1)
  %217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.35, i64 0, i64 0))
  %218 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %219 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %218, i32 0, i32 32
  %220 = call i32 @an_printwords(i32* %219, i32 1)
  %221 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.36, i64 0, i64 0))
  %222 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %223 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %222, i32 0, i32 31
  %224 = call i32 @an_printwords(i32* %223, i32 1)
  %225 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0))
  %226 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %227 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @AN_AUTHTYPE_PRIVACY_IN_USE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %254

232:                                              ; preds = %199
  %233 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %234 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @AN_AUTHTYPE_LEAP, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.38, i64 0, i64 0))
  br label %253

241:                                              ; preds = %232
  %242 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %243 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %242, i32 0, i32 4
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @AN_AUTHTYPE_ALLOW_UNENCRYPTED, align 4
  %246 = and i32 %244, %245
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %241
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.39, i64 0, i64 0))
  br label %252

250:                                              ; preds = %241
  %251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.40, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %248
  br label %253

253:                                              ; preds = %252, %239
  br label %256

254:                                              ; preds = %199
  %255 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i64 0, i64 0))
  br label %256

256:                                              ; preds = %254, %253
  %257 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %258 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0))
  %259 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %260 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %259, i32 0, i32 4
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* @AN_AUTHTYPE_MASK, align 4
  %263 = and i32 %261, %262
  %264 = load i32, i32* @AN_AUTHTYPE_NONE, align 4
  %265 = icmp eq i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %256
  %267 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %268

268:                                              ; preds = %266, %256
  %269 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %270 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %269, i32 0, i32 4
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @AN_AUTHTYPE_MASK, align 4
  %273 = and i32 %271, %272
  %274 = load i32, i32* @AN_AUTHTYPE_OPEN, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %268
  %277 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i64 0, i64 0))
  br label %278

278:                                              ; preds = %276, %268
  %279 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %280 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @AN_AUTHTYPE_MASK, align 4
  %283 = and i32 %281, %282
  %284 = load i32, i32* @AN_AUTHTYPE_SHAREDKEY, align 4
  %285 = icmp eq i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %278
  %287 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i64 0, i64 0))
  br label %288

288:                                              ; preds = %286, %278
  %289 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %290 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.46, i64 0, i64 0))
  %291 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %292 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %291, i32 0, i32 30
  %293 = call i32 @an_printwords(i32* %292, i32 1)
  %294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.47, i64 0, i64 0))
  %295 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %296 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %295, i32 0, i32 29
  %297 = call i32 @an_printwords(i32* %296, i32 1)
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.48, i64 0, i64 0))
  %299 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %300 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %299, i32 0, i32 28
  %301 = call i32 @an_printwords(i32* %300, i32 1)
  %302 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.49, i64 0, i64 0))
  %303 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %304 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %303, i32 0, i32 27
  %305 = call i32 @an_printwords(i32* %304, i32 1)
  %306 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.50, i64 0, i64 0))
  %307 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %308 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %307, i32 0, i32 26
  %309 = call i32 @an_printwords(i32* %308, i32 1)
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.51, i64 0, i64 0))
  %311 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %312 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %311, i32 0, i32 25
  %313 = call i32 @an_printwords(i32* %312, i32 1)
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.52, i64 0, i64 0))
  %315 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %316 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %315, i32 0, i32 24
  %317 = call i32 @an_printwords(i32* %316, i32 1)
  %318 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.53, i64 0, i64 0))
  %319 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %320 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @AN_PSAVE_NONE, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %288
  %325 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i64 0, i64 0))
  br label %326

326:                                              ; preds = %324, %288
  %327 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %328 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %327, i32 0, i32 5
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @AN_PSAVE_CAM, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %326
  %333 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.54, i64 0, i64 0))
  br label %334

334:                                              ; preds = %332, %326
  %335 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %336 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %335, i32 0, i32 5
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @AN_PSAVE_PSP, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %334
  %341 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.55, i64 0, i64 0))
  br label %342

342:                                              ; preds = %340, %334
  %343 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %344 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @AN_PSAVE_PSP_CAM, align 8
  %347 = icmp eq i64 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %342
  %349 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.56, i64 0, i64 0))
  br label %350

350:                                              ; preds = %348, %342
  %351 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %352 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.57, i64 0, i64 0))
  %353 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %354 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %353, i32 0, i32 23
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @an_printbool(i32 %355)
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.58, i64 0, i64 0))
  %358 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %359 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %358, i32 0, i32 22
  %360 = call i32 @an_printwords(i32* %359, i32 1)
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.59, i64 0, i64 0))
  %362 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %363 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %362, i32 0, i32 21
  %364 = call i32 @an_printwords(i32* %363, i32 1)
  %365 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i64 0, i64 0))
  %366 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %367 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %366, i32 0, i32 20
  %368 = call i32 @an_printwords(i32* %367, i32 1)
  %369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.61, i64 0, i64 0))
  %370 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %371 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %370, i32 0, i32 19
  %372 = call i32 @an_printwords(i32* %371, i32 1)
  %373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.62, i64 0, i64 0))
  %374 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %375 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %374, i32 0, i32 18
  %376 = call i32 @an_printwords(i32* %375, i32 1)
  %377 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0))
  %378 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %379 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %378, i32 0, i32 17
  %380 = call i32 @an_printwords(i32* %379, i32 1)
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.64, i64 0, i64 0))
  %382 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %383 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %382, i32 0, i32 16
  %384 = call i32 @an_printwords(i32* %383, i32 1)
  %385 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.65, i64 0, i64 0))
  %386 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %387 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %386, i32 0, i32 15
  %388 = call i32 @an_printwords(i32* %387, i32 1)
  %389 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.66, i64 0, i64 0))
  %390 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %391 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %390, i32 0, i32 6
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @AN_RADIOTYPE_80211_FH, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %350
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.67, i64 0, i64 0))
  br label %423

398:                                              ; preds = %350
  %399 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %400 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %399, i32 0, i32 6
  %401 = load i32, i32* %400, align 8
  %402 = load i32, i32* @AN_RADIOTYPE_80211_DS, align 4
  %403 = and i32 %401, %402
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %398
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.68, i64 0, i64 0))
  br label %422

407:                                              ; preds = %398
  %408 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %409 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 8
  %411 = load i32, i32* @AN_RADIOTYPE_LM2000_DS, align 4
  %412 = and i32 %410, %411
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %407
  %415 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i64 0, i64 0))
  br label %421

416:                                              ; preds = %407
  %417 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %418 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %417, i32 0, i32 6
  %419 = load i32, i32* %418, align 8
  %420 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0), i32 %419)
  br label %421

421:                                              ; preds = %416, %414
  br label %422

422:                                              ; preds = %421, %405
  br label %423

423:                                              ; preds = %422, %396
  %424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.70, i64 0, i64 0))
  %426 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %427 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %426, i32 0, i32 7
  %428 = load i32, i32* %427, align 4
  %429 = and i32 %428, 255
  %430 = trunc i32 %429 to i8
  store i8 %430, i8* %5, align 1
  %431 = load i8, i8* %5, align 1
  %432 = zext i8 %431 to i32
  %433 = load i8, i8* @AN_DIVERSITY_FACTORY_DEFAULT, align 1
  %434 = zext i8 %433 to i32
  %435 = icmp eq i32 %432, %434
  br i1 %435, label %436, label %438

436:                                              ; preds = %423
  %437 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i64 0, i64 0))
  br label %465

438:                                              ; preds = %423
  %439 = load i8, i8* %5, align 1
  %440 = zext i8 %439 to i32
  %441 = load i8, i8* @AN_DIVERSITY_ANTENNA_1_ONLY, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %440, %442
  br i1 %443, label %444, label %446

444:                                              ; preds = %438
  %445 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0))
  br label %464

446:                                              ; preds = %438
  %447 = load i8, i8* %5, align 1
  %448 = zext i8 %447 to i32
  %449 = load i8, i8* @AN_DIVERSITY_ANTENNA_2_ONLY, align 1
  %450 = zext i8 %449 to i32
  %451 = icmp eq i32 %448, %450
  br i1 %451, label %452, label %454

452:                                              ; preds = %446
  %453 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0))
  br label %463

454:                                              ; preds = %446
  %455 = load i8, i8* %5, align 1
  %456 = zext i8 %455 to i32
  %457 = load i8, i8* @AN_DIVERSITY_ANTENNA_1_AND_2, align 1
  %458 = zext i8 %457 to i32
  %459 = icmp eq i32 %456, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %454
  %461 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0))
  br label %462

462:                                              ; preds = %460, %454
  br label %463

463:                                              ; preds = %462, %452
  br label %464

464:                                              ; preds = %463, %444
  br label %465

465:                                              ; preds = %464, %436
  %466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %467 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.75, i64 0, i64 0))
  %468 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %469 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %468, i32 0, i32 7
  %470 = load i32, i32* %469, align 4
  %471 = ashr i32 %470, 8
  %472 = and i32 %471, 255
  %473 = trunc i32 %472 to i8
  store i8 %473, i8* %5, align 1
  %474 = load i8, i8* %5, align 1
  %475 = zext i8 %474 to i32
  %476 = load i8, i8* @AN_DIVERSITY_FACTORY_DEFAULT, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp eq i32 %475, %477
  br i1 %478, label %479, label %481

479:                                              ; preds = %465
  %480 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.71, i64 0, i64 0))
  br label %508

481:                                              ; preds = %465
  %482 = load i8, i8* %5, align 1
  %483 = zext i8 %482 to i32
  %484 = load i8, i8* @AN_DIVERSITY_ANTENNA_1_ONLY, align 1
  %485 = zext i8 %484 to i32
  %486 = icmp eq i32 %483, %485
  br i1 %486, label %487, label %489

487:                                              ; preds = %481
  %488 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.72, i64 0, i64 0))
  br label %507

489:                                              ; preds = %481
  %490 = load i8, i8* %5, align 1
  %491 = zext i8 %490 to i32
  %492 = load i8, i8* @AN_DIVERSITY_ANTENNA_2_ONLY, align 1
  %493 = zext i8 %492 to i32
  %494 = icmp eq i32 %491, %493
  br i1 %494, label %495, label %497

495:                                              ; preds = %489
  %496 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0))
  br label %506

497:                                              ; preds = %489
  %498 = load i8, i8* %5, align 1
  %499 = zext i8 %498 to i32
  %500 = load i8, i8* @AN_DIVERSITY_ANTENNA_1_AND_2, align 1
  %501 = zext i8 %500 to i32
  %502 = icmp eq i32 %499, %501
  br i1 %502, label %503, label %505

503:                                              ; preds = %497
  %504 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0))
  br label %505

505:                                              ; preds = %503, %497
  br label %506

506:                                              ; preds = %505, %495
  br label %507

507:                                              ; preds = %506, %487
  br label %508

508:                                              ; preds = %507, %479
  %509 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %510 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.76, i64 0, i64 0))
  %511 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %512 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %511, i32 0, i32 14
  %513 = call i32 @an_printwords(i32* %512, i32 1)
  %514 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.77, i64 0, i64 0))
  %515 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %516 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %515, i32 0, i32 13
  %517 = call i32 @an_printwords(i32* %516, i32 1)
  %518 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.78, i64 0, i64 0))
  %519 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %520 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %519, i32 0, i32 12
  %521 = bitcast i32* %520 to i8*
  %522 = call i32 @an_printstr(i8* %521, i32 16)
  %523 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.79, i64 0, i64 0))
  %524 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %525 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %524, i32 0, i32 11
  %526 = call i32 @an_printwords(i32* %525, i32 1)
  %527 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.80, i64 0, i64 0))
  %528 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %529 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %528, i32 0, i32 10
  %530 = call i32 @an_printwords(i32* %529, i32 1)
  %531 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.81, i64 0, i64 0))
  %532 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %533 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %532, i32 0, i32 9
  %534 = call i32 @an_printwords(i32* %533, i32 1)
  %535 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.82, i64 0, i64 0))
  %536 = load %struct.an_ltv_genconfig*, %struct.an_ltv_genconfig** %3, align 8
  %537 = getelementptr inbounds %struct.an_ltv_genconfig, %struct.an_ltv_genconfig* %536, i32 0, i32 8
  %538 = load i32, i32* %537, align 8
  %539 = load i32, i32* @AN_HOME_NETWORK, align 4
  %540 = and i32 %538, %539
  %541 = icmp ne i32 %540, 0
  br i1 %541, label %542, label %544

542:                                              ; preds = %508
  %543 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0))
  br label %546

544:                                              ; preds = %508
  %545 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.84, i64 0, i64 0))
  br label %546

546:                                              ; preds = %544, %542
  %547 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %548 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0))
  %549 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.85, i64 0, i64 0))
  %550 = load i8*, i8** %2, align 8
  %551 = call i32 @an_readkeyinfo(i8* %550)
  ret void
}

declare dso_local i32 @an_getval(i8*, %struct.an_req*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @an_printwords(i32*, i32) #1

declare dso_local i32 @an_printhex(i8*, i32) #1

declare dso_local i32 @an_printspeeds(i32, i32) #1

declare dso_local i32 @an_printbool(i32) #1

declare dso_local i32 @an_printstr(i8*, i32) #1

declare dso_local i32 @an_readkeyinfo(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
