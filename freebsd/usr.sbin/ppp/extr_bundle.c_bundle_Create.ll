; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32, i32, i32*, i32, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_34__, %struct.TYPE_40__, %struct.TYPE_31__, i32*, i64, %struct.TYPE_39__, %struct.TYPE_38__, %struct.TYPE_32__, i64, i64, i32, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_34__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_34__ }
%struct.TYPE_34__ = type { %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, %struct.TYPE_42__ }
%struct.TYPE_27__ = type { i8*, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_25__ = type { i8*, i32, %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_23__ = type { i32, i32, i8*, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i8* }
%struct.TYPE_42__ = type { i32, i32, i8*, %struct.TYPE_41__* }
%struct.TYPE_41__ = type { i8* }
%struct.TYPE_40__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i8*, i64, i32 }
%struct.TYPE_39__ = type { i32, i64 }
%struct.TYPE_38__ = type { i64, i8*, %struct.TYPE_37__, i32, %struct.TYPE_36__, %struct.TYPE_35__ }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_36__ = type { i8*, i8* }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_32__ = type { %struct.bundle*, i32, i32, i32, i32 }
%struct.TYPE_33__ = type { i64 }

@bundle_Create.bundle = internal global %struct.bundle zeroinitializer, align 8
@LogALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"bundle_Create:  There's only one BUNDLE !\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"No available tunnel devices found (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%s%d: %s\0A\00", align 1
@LogPHASE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Using interface: %s\0A\00", align 1
@PHASE_DEAD = common dso_local global i32 0, align 4
@bundle_LayerStart = common dso_local global i32 0, align 4
@bundle_LayerUp = common dso_local global i32 0, align 4
@bundle_LayerDown = common dso_local global i32 0, align 4
@bundle_LayerFinish = common dso_local global i32 0, align 4
@NCP_IDLE_TIMEOUT = common dso_local global i32 0, align 4
@OPT_IDCHECK = common dso_local global i64 0, align 8
@OPT_LOOPBACK = common dso_local global i64 0, align 8
@OPT_SROUTES = common dso_local global i64 0, align 8
@OPT_TCPMSSFIXUP = common dso_local global i64 0, align 8
@OPT_THROUGHPUT = common dso_local global i64 0, align 8
@OPT_UTMP = common dso_local global i64 0, align 8
@OPT_NAS_IP_ADDRESS = common dso_local global i64 0, align 8
@OPT_NAS_IDENTIFIER = common dso_local global i64 0, align 8
@OPT_IPCP = common dso_local global i32 0, align 4
@probe = common dso_local global %struct.TYPE_33__ zeroinitializer, align 8
@OPT_IPV6CP = common dso_local global i32 0, align 4
@DEF_IFQUEUE = common dso_local global i32 0, align 4
@CHOKED_TIMEOUT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"deflink\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"Cannot create data link: %s\0A\00", align 1
@BUNDLE_DESCRIPTOR = common dso_local global i32 0, align 4
@bundle_UpdateSet = common dso_local global i32 0, align 4
@bundle_IsSet = common dso_local global i32 0, align 4
@bundle_DescriptorRead = common dso_local global i32 0, align 4
@bundle_DescriptorWrite = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"OUT\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DIAL\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ALIVE\00", align 1
@MAXFILTERS = common dso_local global i32 0, align 4
@A_NONE = common dso_local global i8* null, align 8
@IFACE_CLEAR_ALL = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_POINTOPOINT = common dso_local global i32 0, align 4
@LOAD_VERBOSLY = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@TUNSIFHEAD = common dso_local global i32 0, align 4
@TUNSIFMODE = common dso_local global i32 0, align 4
@TUNSLMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bundle* @bundle_Create(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32*, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 2), align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @LogALERT, align 4
  %18 = call i32 (i32, i8*, ...) @log_Printf(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  store %struct.bundle* null, %struct.bundle** %4, align 8
  br label %218

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  br label %27

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %11, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = load i32, i32* @ENOENT, align 4
  store i32 %28, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 0), align 8
  br label %30

30:                                               ; preds = %68, %27
  %31 = load i32, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 0), align 8
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load i8*, i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 0), align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 0), align 8
  %38 = call i32 @snprintf(i8* %35, i32 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %36, i32 %37)
  %39 = load i8*, i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 0), align 8
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = call i64 @ID0open(i8* %39, i32 %40)
  store i64 %41, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 1), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 1), align 8
  %43 = icmp sge i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %34
  br label %71

45:                                               ; preds = %34
  %46 = load i32, i32* @errno, align 4
  %47 = load i32, i32* @ENXIO, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* @errno, align 4
  %51 = load i32, i32* @ENOENT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49, %45
  %54 = load i32, i32* @errno, align 4
  %55 = load i32, i32* @ENOENT, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %8, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %8, align 4
  %60 = icmp sgt i32 %59, 2
  br i1 %60, label %61, label %63

61:                                               ; preds = %57, %53
  %62 = load i32, i32* @errno, align 4
  store i32 %62, i32* %9, align 4
  br label %71

63:                                               ; preds = %57
  br label %66

64:                                               ; preds = %49
  %65 = load i32, i32* @errno, align 4
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %64, %63
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 0), align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 0), align 8
  br label %30

71:                                               ; preds = %61, %44, %30
  %72 = load i64, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 1), align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %71
  %75 = load i32, i32* %7, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i32, i32* @LogWARN, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i8* @strerror(i32 %79)
  %81 = call i32 (i32, i8*, ...) @log_Printf(i32 %78, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %80)
  br label %89

82:                                               ; preds = %74
  %83 = load i32, i32* @LogWARN, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i8* @strerror(i32 %86)
  %88 = call i32 (i32, i8*, ...) @log_Printf(i32 %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %84, i32 %85, i8* %87)
  br label %89

89:                                               ; preds = %82, %77
  store %struct.bundle* null, %struct.bundle** %4, align 8
  br label %218

90:                                               ; preds = %71
  %91 = load i32, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 0), align 8
  %92 = call i32 @log_SetTun(i32 %91, i32* null)
  %93 = load i8*, i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 0), align 8
  %94 = call i8* @strrchr(i8* %93, i8 signext 47)
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp eq i8* %95, null
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i8*, i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 0), align 8
  store i8* %98, i8** %12, align 8
  br label %102

99:                                               ; preds = %90
  %100 = load i8*, i8** %12, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %12, align 8
  br label %102

102:                                              ; preds = %99, %97
  %103 = load i8*, i8** %12, align 8
  %104 = call i32* @iface_Create(i8* %103)
  store i32* %104, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 2), align 8
  %105 = load i32*, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 2), align 8
  %106 = icmp eq i32* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i64, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 1), align 8
  %109 = call i32 @close(i64 %108)
  store %struct.bundle* null, %struct.bundle** %4, align 8
  br label %218

110:                                              ; preds = %102
  store i32 0, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 2), align 8
  %111 = load i32, i32* @LogPHASE, align 4
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 (i32, i8*, ...) @log_Printf(i32 %111, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 19), align 8
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 18), align 8
  %114 = load i32, i32* @PHASE_DEAD, align 4
  store i32 %114, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 17), align 8
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 16), align 8
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 15), align 8
  %115 = load i32, i32* @bundle_LayerStart, align 4
  store i32 %115, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 14, i32 4), align 4
  %116 = load i32, i32* @bundle_LayerUp, align 4
  store i32 %116, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 14, i32 3), align 8
  %117 = load i32, i32* @bundle_LayerDown, align 4
  store i32 %117, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 14, i32 2), align 4
  %118 = load i32, i32* @bundle_LayerFinish, align 4
  store i32 %118, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 14, i32 1), align 8
  store %struct.bundle* @bundle_Create.bundle, %struct.bundle** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 14, i32 0), align 8
  %119 = load i32, i32* @NCP_IDLE_TIMEOUT, align 4
  store i32 %119, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 5, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 5, i32 0), align 8
  %120 = load i8*, i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 4, i32 0), align 8
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 4, i32 1), align 8
  store i8 0, i8* %121, align 1
  %122 = load i64, i64* @OPT_IDCHECK, align 8
  %123 = shl i64 1, %122
  %124 = load i64, i64* @OPT_LOOPBACK, align 8
  %125 = shl i64 1, %124
  %126 = or i64 %123, %125
  %127 = load i64, i64* @OPT_SROUTES, align 8
  %128 = shl i64 1, %127
  %129 = or i64 %126, %128
  %130 = load i64, i64* @OPT_TCPMSSFIXUP, align 8
  %131 = shl i64 1, %130
  %132 = or i64 %129, %131
  %133 = load i64, i64* @OPT_THROUGHPUT, align 8
  %134 = shl i64 1, %133
  %135 = or i64 %132, %134
  %136 = load i64, i64* @OPT_UTMP, align 8
  %137 = shl i64 1, %136
  %138 = or i64 %135, %137
  %139 = load i64, i64* @OPT_NAS_IP_ADDRESS, align 8
  %140 = shl i64 1, %139
  %141 = or i64 %138, %140
  %142 = load i64, i64* @OPT_NAS_IDENTIFIER, align 8
  %143 = shl i64 1, %142
  %144 = or i64 %141, %143
  store i64 %144, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 0), align 8
  %145 = load i32, i32* @OPT_IPCP, align 4
  %146 = call i32 @opt_enable(%struct.bundle* @bundle_Create.bundle, i32 %145)
  %147 = load i64, i64* getelementptr inbounds (%struct.TYPE_33__, %struct.TYPE_33__* @probe, i32 0, i32 0), align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %110
  %150 = load i32, i32* @OPT_IPV6CP, align 4
  %151 = call i32 @opt_enable(%struct.bundle* @bundle_Create.bundle, i32 %150)
  br label %152

152:                                              ; preds = %149, %110
  %153 = load i8*, i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 1), align 8
  store i8 0, i8* %153, align 1
  %154 = load i32, i32* @DEF_IFQUEUE, align 4
  store i32 %154, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 3), align 4
  %155 = load i32, i32* @CHOKED_TIMEOUT, align 4
  store i32 %155, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 13, i32 2, i32 0), align 8
  %156 = load i32, i32* %6, align 4
  store i32 %156, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 12, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 12, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 11), align 8
  %157 = load i32, i32* %6, align 4
  %158 = call i32* @datalink_Create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), %struct.bundle* @bundle_Create.bundle, i32 %157)
  store i32* %158, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 10), align 8
  %159 = load i32*, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 10), align 8
  %160 = icmp eq i32* %159, null
  br i1 %160, label %161, label %170

161:                                              ; preds = %152
  %162 = load i32, i32* @LogALERT, align 4
  %163 = load i32, i32* @errno, align 4
  %164 = call i8* @strerror(i32 %163)
  %165 = call i32 (i32, i8*, ...) @log_Printf(i32 %162, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i8* %164)
  %166 = load i32*, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 2), align 8
  %167 = call i32 @iface_Free(i32* %166)
  store i32* null, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 2), align 8
  %168 = load i64, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 9, i32 1), align 8
  %169 = call i32 @close(i64 %168)
  store %struct.bundle* null, %struct.bundle** %4, align 8
  br label %218

170:                                              ; preds = %152
  %171 = load i32, i32* @BUNDLE_DESCRIPTOR, align 4
  store i32 %171, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 8, i32 4), align 8
  %172 = load i32, i32* @bundle_UpdateSet, align 4
  store i32 %172, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 8, i32 3), align 4
  %173 = load i32, i32* @bundle_IsSet, align 4
  store i32 %173, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 8, i32 2), align 8
  %174 = load i32, i32* @bundle_DescriptorRead, align 4
  store i32 %174, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 8, i32 1), align 4
  %175 = load i32, i32* @bundle_DescriptorWrite, align 4
  store i32 %175, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 8, i32 0), align 8
  %176 = call i32 @ncp_Init(i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 1), %struct.bundle* @bundle_Create.bundle)
  %177 = call i32 @memset(%struct.TYPE_34__* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7), i8 signext 0, i32 96)
  store i32 1, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 3, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 3, i32 0), align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 3, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 2, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 2, i32 0), align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 2, i32 2), align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 1, i32 1), align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 0, i32 1), align 8
  store i32 0, i32* %13, align 4
  br label %178

178:                                              ; preds = %207, %170
  %179 = load i32, i32* %13, align 4
  %180 = load i32, i32* @MAXFILTERS, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %210

182:                                              ; preds = %178
  %183 = load i8*, i8** @A_NONE, align 8
  %184 = load %struct.TYPE_41__*, %struct.TYPE_41__** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 3, i32 3), align 8
  %185 = load i32, i32* %13, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %187, i32 0, i32 0
  store i8* %183, i8** %188, align 8
  %189 = load i8*, i8** @A_NONE, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 2, i32 3), align 8
  %191 = load i32, i32* %13, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  store i8* %189, i8** %194, align 8
  %195 = load i8*, i8** @A_NONE, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 1, i32 2), align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %199, i32 0, i32 0
  store i8* %195, i8** %200, align 8
  %201 = load i8*, i8** @A_NONE, align 8
  %202 = load %struct.TYPE_26__*, %struct.TYPE_26__** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 7, i32 0, i32 2), align 8
  %203 = load i32, i32* %13, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %205, i32 0, i32 0
  store i8* %201, i8** %206, align 8
  br label %207

207:                                              ; preds = %182
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %178

210:                                              ; preds = %178
  %211 = call i32 @memset(%struct.TYPE_34__* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 6, i32 1), i8 signext 0, i32 96)
  store i64 0, i64* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 6, i32 0), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 5, i32 0), align 8
  %212 = call i32 @memset(%struct.TYPE_34__* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 4, i32 0), i8 signext 0, i32 96)
  %213 = call i32 @radius_Init(i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 3))
  %214 = load i32*, i32** getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 2), align 8
  %215 = load i32, i32* @IFACE_CLEAR_ALL, align 4
  %216 = call i32 @iface_Clear(i32* %214, i32* getelementptr inbounds (%struct.bundle, %struct.bundle* @bundle_Create.bundle, i32 0, i32 1), i32 0, i32 %215)
  %217 = call i32 @bundle_LockTun(%struct.bundle* @bundle_Create.bundle)
  store %struct.bundle* @bundle_Create.bundle, %struct.bundle** %4, align 8
  br label %218

218:                                              ; preds = %210, %161, %107, %89, %16
  %219 = load %struct.bundle*, %struct.bundle** %4, align 8
  ret %struct.bundle* %219
}

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i64 @ID0open(i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @log_SetTun(i32, i32*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32* @iface_Create(i8*) #1

declare dso_local i32 @close(i64) #1

declare dso_local i32 @opt_enable(%struct.bundle*, i32) #1

declare dso_local i32* @datalink_Create(i8*, %struct.bundle*, i32) #1

declare dso_local i32 @iface_Free(i32*) #1

declare dso_local i32 @ncp_Init(i32*, %struct.bundle*) #1

declare dso_local i32 @memset(%struct.TYPE_34__*, i8 signext, i32) #1

declare dso_local i32 @radius_Init(i32*) #1

declare dso_local i32 @iface_Clear(i32*, i32*, i32, i32) #1

declare dso_local i32 @bundle_LockTun(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
