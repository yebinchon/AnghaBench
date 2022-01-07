; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_negotiate_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_login.c_login_negotiate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, i8*, i8*, i32, %struct.iscsi_session_limits }
%struct.TYPE_2__ = type { i32 }
%struct.iscsi_session_limits = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"TargetAlias\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Irrelevant\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"HeaderDigest\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"CRC32C\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"target prefers CRC32C for header digest; we'll use it\00", align 1
@CONN_DIGEST_CRC32C = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [53 x i8] c"target prefers not to do header digest; we'll comply\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"target sent unrecognized HeaderDigest value \22%s\22; will use None\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"DataDigest\00", align 1
@.str.9 = private unnamed_addr constant [52 x i8] c"target prefers CRC32C for data digest; we'll use it\00", align 1
@.str.10 = private unnamed_addr constant [51 x i8] c"target prefers not to do data digest; we'll comply\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"target sent unrecognized DataDigest value \22%s\22; will use None\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"MaxConnections\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"InitialR2T\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"ImmediateData\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"MaxRecvDataSegmentLength\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"received invalid MaxRecvDataSegmentLength\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"capping max_send_data_segment_length from %d to %d\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"MaxBurstLength\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"received invalid MaxBurstLength\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"capping MaxBurstLength from %d to %d\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"FirstBurstLength\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"received invalid FirstBurstLength\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"capping FirstBurstLength from %d to %d\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"DefaultTime2Wait\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"DefaultTime2Retain\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"MaxOutstandingR2T\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"DataPDUInOrder\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"DataSequenceInOrder\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"ErrorRecoveryLevel\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"OFMarker\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"IFMarker\00", align 1
@.str.33 = private unnamed_addr constant [15 x i8] c"RDMAExtensions\00", align 1
@.str.34 = private unnamed_addr constant [36 x i8] c"received unsupported RDMAExtensions\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"InitiatorRecvDataSegmentLength\00", align 1
@.str.36 = private unnamed_addr constant [48 x i8] c"received invalid InitiatorRecvDataSegmentLength\00", align 1
@.str.37 = private unnamed_addr constant [53 x i8] c"capping InitiatorRecvDataSegmentLength from %d to %d\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"TargetPortalGroupTag\00", align 1
@.str.39 = private unnamed_addr constant [28 x i8] c"TargetRecvDataSegmentLength\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"received invalid TargetRecvDataSegmentLength\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"capping TargetRecvDataSegmentLength from %d to %d\00", align 1
@.str.42 = private unnamed_addr constant [27 x i8] c"unknown key \22%s\22; ignoring\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.connection*, i8*, i8*)* @login_negotiate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_negotiate_key(%struct.connection* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.connection*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.iscsi_session_limits*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.connection*, %struct.connection** %4, align 8
  %11 = getelementptr inbounds %struct.connection, %struct.connection* %10, i32 0, i32 10
  store %struct.iscsi_session_limits* %11, %struct.iscsi_session_limits** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.connection*, %struct.connection** %4, align 8
  %17 = getelementptr inbounds %struct.connection, %struct.connection* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @strlcpy(i32 %18, i8* %19, i32 4)
  br label %340

21:                                               ; preds = %3
  %22 = load i8*, i8** %6, align 8
  %23 = call i64 @strcmp(i8* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %339

26:                                               ; preds = %21
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @login_list_prefers(i8* %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %41 [
    i32 1, label %34
    i32 2, label %39
  ]

34:                                               ; preds = %30
  %35 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  %36 = load i8*, i8** @CONN_DIGEST_CRC32C, align 8
  %37 = load %struct.connection*, %struct.connection** %4, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 8
  store i8* %36, i8** %38, align 8
  br label %44

39:                                               ; preds = %30
  %40 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  br label %44

41:                                               ; preds = %30
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 @log_warnx(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0), i8* %42)
  br label %44

44:                                               ; preds = %41, %39, %34
  br label %338

45:                                               ; preds = %26
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @login_list_prefers(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  switch i32 %52, label %60 [
    i32 1, label %53
    i32 2, label %58
  ]

53:                                               ; preds = %49
  %54 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %55 = load i8*, i8** @CONN_DIGEST_CRC32C, align 8
  %56 = load %struct.connection*, %struct.connection** %4, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 7
  store i8* %55, i8** %57, align 8
  br label %63

58:                                               ; preds = %49
  %59 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.10, i64 0, i64 0))
  br label %63

60:                                               ; preds = %49
  %61 = load i8*, i8** %6, align 8
  %62 = call i32 @log_warnx(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %58, %53
  br label %337

64:                                               ; preds = %45
  %65 = load i8*, i8** %5, align 8
  %66 = call i64 @strcmp(i8* %65, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %336

69:                                               ; preds = %64
  %70 = load i8*, i8** %5, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %69
  %74 = load i8*, i8** %6, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.connection*, %struct.connection** %4, align 8
  %79 = getelementptr inbounds %struct.connection, %struct.connection* %78, i32 0, i32 0
  store i32 1, i32* %79, align 8
  br label %83

80:                                               ; preds = %73
  %81 = load %struct.connection*, %struct.connection** %4, align 8
  %82 = getelementptr inbounds %struct.connection, %struct.connection* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  br label %335

84:                                               ; preds = %69
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @strcmp(i8* %85, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %84
  %89 = load i8*, i8** %6, align 8
  %90 = call i64 @strcmp(i8* %89, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.connection*, %struct.connection** %4, align 8
  %94 = getelementptr inbounds %struct.connection, %struct.connection* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  br label %98

95:                                               ; preds = %88
  %96 = load %struct.connection*, %struct.connection** %4, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 1
  store i32 0, i32* %97, align 4
  br label %98

98:                                               ; preds = %95, %92
  br label %334

99:                                               ; preds = %84
  %100 = load i8*, i8** %5, align 8
  %101 = call i64 @strcmp(i8* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0))
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %134

103:                                              ; preds = %99
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @strtoul(i8* %104, i32* null, i32 10)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp sle i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %113 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %111, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %119 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.18, i64 0, i64 0), i32 %117, i32 %120)
  %122 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %123 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %116, %110
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.connection*, %struct.connection** %4, align 8
  %128 = getelementptr inbounds %struct.connection, %struct.connection* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %130 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.connection*, %struct.connection** %4, align 8
  %133 = getelementptr inbounds %struct.connection, %struct.connection* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 4
  br label %333

134:                                              ; preds = %99
  %135 = load i8*, i8** %5, align 8
  %136 = call i64 @strcmp(i8* %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %137 = icmp eq i64 %136, 0
  br i1 %137, label %138, label %164

138:                                              ; preds = %134
  %139 = load i8*, i8** %6, align 8
  %140 = call i32 @strtoul(i8* %139, i32* null, i32 10)
  store i32 %140, i32* %9, align 4
  %141 = load i32, i32* %9, align 4
  %142 = icmp sle i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %138
  %146 = load i32, i32* %9, align 4
  %147 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %148 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = icmp sgt i32 %146, %149
  br i1 %150, label %151, label %160

151:                                              ; preds = %145
  %152 = load i32, i32* %9, align 4
  %153 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %154 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i32 %152, i32 %155)
  %157 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %158 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %151, %145
  %161 = load i32, i32* %9, align 4
  %162 = load %struct.connection*, %struct.connection** %4, align 8
  %163 = getelementptr inbounds %struct.connection, %struct.connection* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 8
  br label %332

164:                                              ; preds = %134
  %165 = load i8*, i8** %5, align 8
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %194

168:                                              ; preds = %164
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @strtoul(i8* %169, i32* null, i32 10)
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* %9, align 4
  %172 = icmp sle i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %168
  %174 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %168
  %176 = load i32, i32* %9, align 4
  %177 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %178 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %176, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %175
  %182 = load i32, i32* %9, align 4
  %183 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %184 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.24, i64 0, i64 0), i32 %182, i32 %185)
  %187 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %188 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %181, %175
  %191 = load i32, i32* %9, align 4
  %192 = load %struct.connection*, %struct.connection** %4, align 8
  %193 = getelementptr inbounds %struct.connection, %struct.connection* %192, i32 0, i32 5
  store i32 %191, i32* %193, align 4
  br label %331

194:                                              ; preds = %164
  %195 = load i8*, i8** %5, align 8
  %196 = call i64 @strcmp(i8* %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0))
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %194
  br label %330

199:                                              ; preds = %194
  %200 = load i8*, i8** %5, align 8
  %201 = call i64 @strcmp(i8* %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  br label %329

204:                                              ; preds = %199
  %205 = load i8*, i8** %5, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %328

209:                                              ; preds = %204
  %210 = load i8*, i8** %5, align 8
  %211 = call i64 @strcmp(i8* %210, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %209
  br label %327

214:                                              ; preds = %209
  %215 = load i8*, i8** %5, align 8
  %216 = call i64 @strcmp(i8* %215, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.29, i64 0, i64 0))
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %326

219:                                              ; preds = %214
  %220 = load i8*, i8** %5, align 8
  %221 = call i64 @strcmp(i8* %220, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0))
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %325

224:                                              ; preds = %219
  %225 = load i8*, i8** %5, align 8
  %226 = call i64 @strcmp(i8* %225, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224
  br label %324

229:                                              ; preds = %224
  %230 = load i8*, i8** %5, align 8
  %231 = call i64 @strcmp(i8* %230, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %229
  br label %323

234:                                              ; preds = %229
  %235 = load i8*, i8** %5, align 8
  %236 = call i64 @strcmp(i8* %235, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.33, i64 0, i64 0))
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %251

238:                                              ; preds = %234
  %239 = load %struct.connection*, %struct.connection** %4, align 8
  %240 = getelementptr inbounds %struct.connection, %struct.connection* %239, i32 0, i32 6
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = load i8*, i8** %6, align 8
  %246 = call i64 @strcmp(i8* %245, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.34, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %244, %238
  br label %322

251:                                              ; preds = %234
  %252 = load i8*, i8** %5, align 8
  %253 = call i64 @strcmp(i8* %252, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.35, i64 0, i64 0))
  %254 = icmp eq i64 %253, 0
  br i1 %254, label %255, label %281

255:                                              ; preds = %251
  %256 = load i8*, i8** %6, align 8
  %257 = call i32 @strtoul(i8* %256, i32* null, i32 10)
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = icmp sle i32 %258, 0
  br i1 %259, label %260, label %262

260:                                              ; preds = %255
  %261 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.36, i64 0, i64 0))
  br label %262

262:                                              ; preds = %260, %255
  %263 = load i32, i32* %9, align 4
  %264 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %265 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp sgt i32 %263, %266
  br i1 %267, label %268, label %277

268:                                              ; preds = %262
  %269 = load i32, i32* %9, align 4
  %270 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %271 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.37, i64 0, i64 0), i32 %269, i32 %272)
  %274 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %275 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %9, align 4
  br label %277

277:                                              ; preds = %268, %262
  %278 = load i32, i32* %9, align 4
  %279 = load %struct.connection*, %struct.connection** %4, align 8
  %280 = getelementptr inbounds %struct.connection, %struct.connection* %279, i32 0, i32 3
  store i32 %278, i32* %280, align 4
  br label %321

281:                                              ; preds = %251
  %282 = load i8*, i8** %5, align 8
  %283 = call i64 @strcmp(i8* %282, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0))
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %281
  br label %320

286:                                              ; preds = %281
  %287 = load i8*, i8** %5, align 8
  %288 = call i64 @strcmp(i8* %287, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.39, i64 0, i64 0))
  %289 = icmp eq i64 %288, 0
  br i1 %289, label %290, label %316

290:                                              ; preds = %286
  %291 = load i8*, i8** %6, align 8
  %292 = call i32 @strtoul(i8* %291, i32* null, i32 10)
  store i32 %292, i32* %9, align 4
  %293 = load i32, i32* %9, align 4
  %294 = icmp sle i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %290
  %296 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.40, i64 0, i64 0))
  br label %297

297:                                              ; preds = %295, %290
  %298 = load i32, i32* %9, align 4
  %299 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %300 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = icmp sgt i32 %298, %301
  br i1 %302, label %303, label %312

303:                                              ; preds = %297
  %304 = load i32, i32* %9, align 4
  %305 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %306 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.41, i64 0, i64 0), i32 %304, i32 %307)
  %309 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %7, align 8
  %310 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  store i32 %311, i32* %9, align 4
  br label %312

312:                                              ; preds = %303, %297
  %313 = load i32, i32* %9, align 4
  %314 = load %struct.connection*, %struct.connection** %4, align 8
  %315 = getelementptr inbounds %struct.connection, %struct.connection* %314, i32 0, i32 2
  store i32 %313, i32* %315, align 8
  br label %319

316:                                              ; preds = %286
  %317 = load i8*, i8** %5, align 8
  %318 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.42, i64 0, i64 0), i8* %317)
  br label %319

319:                                              ; preds = %316, %312
  br label %320

320:                                              ; preds = %319, %285
  br label %321

321:                                              ; preds = %320, %277
  br label %322

322:                                              ; preds = %321, %250
  br label %323

323:                                              ; preds = %322, %233
  br label %324

324:                                              ; preds = %323, %228
  br label %325

325:                                              ; preds = %324, %223
  br label %326

326:                                              ; preds = %325, %218
  br label %327

327:                                              ; preds = %326, %213
  br label %328

328:                                              ; preds = %327, %208
  br label %329

329:                                              ; preds = %328, %203
  br label %330

330:                                              ; preds = %329, %198
  br label %331

331:                                              ; preds = %330, %190
  br label %332

332:                                              ; preds = %331, %160
  br label %333

333:                                              ; preds = %332, %125
  br label %334

334:                                              ; preds = %333, %98
  br label %335

335:                                              ; preds = %334, %83
  br label %336

336:                                              ; preds = %335, %68
  br label %337

337:                                              ; preds = %336, %63
  br label %338

338:                                              ; preds = %337, %44
  br label %339

339:                                              ; preds = %338, %25
  br label %340

340:                                              ; preds = %339, %15
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @login_list_prefers(i8*, i8*, i8*) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @log_errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
