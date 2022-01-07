; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_negotiate_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_login.c_login_negotiate_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdu = type { %struct.connection* }
%struct.connection = type { i64, i32, i32, i64, i64, i64, i32, i64, i32, i64, i8*, i8*, i32* }
%struct.keys = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"InitiatorName\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"initiator resent InitiatorName\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"SessionType\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"initiator resent SessionType\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"TargetName\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"initiator resent TargetName\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"InitiatorAlias\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Irrelevant\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"HeaderDigest\00", align 1
@CONN_SESSION_TYPE_DISCOVERY = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [36 x i8] c"discovery session; digests disabled\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"CRC32C\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"initiator prefers CRC32C for header digest; we'll use it\00", align 1
@CONN_DIGEST_CRC32C = common dso_local global i8* null, align 8
@.str.13 = private unnamed_addr constant [56 x i8] c"initiator prefers not to do header digest; we'll comply\00", align 1
@.str.14 = private unnamed_addr constant [67 x i8] c"initiator sent unrecognized HeaderDigest value \22%s\22; will use None\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"DataDigest\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"initiator prefers CRC32C for data digest; we'll use it\00", align 1
@.str.17 = private unnamed_addr constant [54 x i8] c"initiator prefers not to do data digest; we'll comply\00", align 1
@.str.18 = private unnamed_addr constant [65 x i8] c"initiator sent unrecognized DataDigest value \22%s\22; will use None\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"MaxConnections\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"InitialR2T\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"ImmediateData\00", align 1
@.str.24 = private unnamed_addr constant [44 x i8] c"discovery session; ImmediateData irrelevant\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"MaxRecvDataSegmentLength\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"received invalid MaxRecvDataSegmentLength\00", align 1
@.str.28 = private unnamed_addr constant [48 x i8] c"capping MaxRecvDataSegmentLength from %zd to %d\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"MaxBurstLength\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"received invalid MaxBurstLength\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"capping MaxBurstLength from %zd to %d\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"FirstBurstLength\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"received invalid FirstBurstLength\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"capping FirstBurstLength from %zd to %d\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"DefaultTime2Wait\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"DefaultTime2Retain\00", align 1
@.str.37 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"MaxOutstandingR2T\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"DataPDUInOrder\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"DataSequenceInOrder\00", align 1
@.str.41 = private unnamed_addr constant [19 x i8] c"ErrorRecoveryLevel\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"OFMarker\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"IFMarker\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"iSCSIProtocolLevel\00", align 1
@.str.45 = private unnamed_addr constant [48 x i8] c"unknown key \22%s\22; responding with NotUnderstood\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"NotUnderstood\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pdu*, i8*, i8*, i32, %struct.keys*)* @login_negotiate_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @login_negotiate_key(%struct.pdu* %0, i8* %1, i8* %2, i32 %3, %struct.keys* %4) #0 {
  %6 = alloca %struct.pdu*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.keys*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.connection*, align 8
  store %struct.pdu* %0, %struct.pdu** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.keys* %4, %struct.keys** %10, align 8
  %14 = load %struct.pdu*, %struct.pdu** %6, align 8
  %15 = getelementptr inbounds %struct.pdu, %struct.pdu* %14, i32 0, i32 0
  %16 = load %struct.connection*, %struct.connection** %15, align 8
  store %struct.connection* %16, %struct.connection** %13, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  br label %425

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @strcmp(i8* %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %30
  br label %424

36:                                               ; preds = %26
  %37 = load i8*, i8** %7, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  br label %423

46:                                               ; preds = %36
  %47 = load i8*, i8** %7, align 8
  %48 = call i64 @strcmp(i8* %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %46
  %51 = load %struct.connection*, %struct.connection** %13, align 8
  %52 = getelementptr inbounds %struct.connection, %struct.connection* %51, i32 0, i32 12
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.connection*, %struct.connection** %13, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 12
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @free(i32* %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load i8*, i8** %8, align 8
  %62 = call i32* @checked_strdup(i8* %61)
  %63 = load %struct.connection*, %struct.connection** %13, align 8
  %64 = getelementptr inbounds %struct.connection, %struct.connection* %63, i32 0, i32 12
  store i32* %62, i32** %64, align 8
  br label %422

65:                                               ; preds = %46
  %66 = load i8*, i8** %8, align 8
  %67 = call i64 @strcmp(i8* %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %421

70:                                               ; preds = %65
  %71 = load i8*, i8** %7, align 8
  %72 = call i64 @strcmp(i8* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %109

74:                                               ; preds = %70
  %75 = load %struct.connection*, %struct.connection** %13, align 8
  %76 = getelementptr inbounds %struct.connection, %struct.connection* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @CONN_SESSION_TYPE_DISCOVERY, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  %81 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %82 = load %struct.keys*, %struct.keys** %10, align 8
  %83 = load i8*, i8** %7, align 8
  %84 = call i32 @keys_add(%struct.keys* %82, i8* %83, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %425

85:                                               ; preds = %74
  %86 = load i8*, i8** %8, align 8
  %87 = call i32 @login_list_prefers(i8* %86, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  switch i32 %88, label %102 [
    i32 1, label %89
    i32 2, label %97
  ]

89:                                               ; preds = %85
  %90 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0))
  %91 = load i8*, i8** @CONN_DIGEST_CRC32C, align 8
  %92 = load %struct.connection*, %struct.connection** %13, align 8
  %93 = getelementptr inbounds %struct.connection, %struct.connection* %92, i32 0, i32 11
  store i8* %91, i8** %93, align 8
  %94 = load %struct.keys*, %struct.keys** %10, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @keys_add(%struct.keys* %94, i8* %95, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %108

97:                                               ; preds = %85
  %98 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.13, i64 0, i64 0))
  %99 = load %struct.keys*, %struct.keys** %10, align 8
  %100 = load i8*, i8** %7, align 8
  %101 = call i32 @keys_add(%struct.keys* %99, i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %108

102:                                              ; preds = %85
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @log_warnx(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.14, i64 0, i64 0), i8* %103)
  %105 = load %struct.keys*, %struct.keys** %10, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = call i32 @keys_add(%struct.keys* %105, i8* %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %108

108:                                              ; preds = %102, %97, %89
  br label %420

109:                                              ; preds = %70
  %110 = load i8*, i8** %7, align 8
  %111 = call i64 @strcmp(i8* %110, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %148

113:                                              ; preds = %109
  %114 = load %struct.connection*, %struct.connection** %13, align 8
  %115 = getelementptr inbounds %struct.connection, %struct.connection* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CONN_SESSION_TYPE_DISCOVERY, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %121 = load %struct.keys*, %struct.keys** %10, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = call i32 @keys_add(%struct.keys* %121, i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %425

124:                                              ; preds = %113
  %125 = load i8*, i8** %8, align 8
  %126 = call i32 @login_list_prefers(i8* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  switch i32 %127, label %141 [
    i32 1, label %128
    i32 2, label %136
  ]

128:                                              ; preds = %124
  %129 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i64 0, i64 0))
  %130 = load i8*, i8** @CONN_DIGEST_CRC32C, align 8
  %131 = load %struct.connection*, %struct.connection** %13, align 8
  %132 = getelementptr inbounds %struct.connection, %struct.connection* %131, i32 0, i32 10
  store i8* %130, i8** %132, align 8
  %133 = load %struct.keys*, %struct.keys** %10, align 8
  %134 = load i8*, i8** %7, align 8
  %135 = call i32 @keys_add(%struct.keys* %133, i8* %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %147

136:                                              ; preds = %124
  %137 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.17, i64 0, i64 0))
  %138 = load %struct.keys*, %struct.keys** %10, align 8
  %139 = load i8*, i8** %7, align 8
  %140 = call i32 @keys_add(%struct.keys* %138, i8* %139, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %147

141:                                              ; preds = %124
  %142 = load i8*, i8** %8, align 8
  %143 = call i32 @log_warnx(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.18, i64 0, i64 0), i8* %142)
  %144 = load %struct.keys*, %struct.keys** %10, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = call i32 @keys_add(%struct.keys* %144, i8* %145, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  br label %147

147:                                              ; preds = %141, %136, %128
  br label %419

148:                                              ; preds = %109
  %149 = load i8*, i8** %7, align 8
  %150 = call i64 @strcmp(i8* %149, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %148
  %153 = load %struct.keys*, %struct.keys** %10, align 8
  %154 = load i8*, i8** %7, align 8
  %155 = call i32 @keys_add(%struct.keys* %153, i8* %154, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %418

156:                                              ; preds = %148
  %157 = load i8*, i8** %7, align 8
  %158 = call i64 @strcmp(i8* %157, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %156
  %161 = load %struct.keys*, %struct.keys** %10, align 8
  %162 = load i8*, i8** %7, align 8
  %163 = call i32 @keys_add(%struct.keys* %161, i8* %162, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %417

164:                                              ; preds = %156
  %165 = load i8*, i8** %7, align 8
  %166 = call i64 @strcmp(i8* %165, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %164
  %169 = load %struct.connection*, %struct.connection** %13, align 8
  %170 = getelementptr inbounds %struct.connection, %struct.connection* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @CONN_SESSION_TYPE_DISCOVERY, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %179

174:                                              ; preds = %168
  %175 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.24, i64 0, i64 0))
  %176 = load %struct.keys*, %struct.keys** %10, align 8
  %177 = load i8*, i8** %7, align 8
  %178 = call i32 @keys_add(%struct.keys* %176, i8* %177, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %196

179:                                              ; preds = %168
  %180 = load i8*, i8** %8, align 8
  %181 = call i64 @strcmp(i8* %180, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %179
  %184 = load %struct.connection*, %struct.connection** %13, align 8
  %185 = getelementptr inbounds %struct.connection, %struct.connection* %184, i32 0, i32 1
  store i32 1, i32* %185, align 8
  %186 = load %struct.keys*, %struct.keys** %10, align 8
  %187 = load i8*, i8** %7, align 8
  %188 = call i32 @keys_add(%struct.keys* %186, i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %195

189:                                              ; preds = %179
  %190 = load %struct.connection*, %struct.connection** %13, align 8
  %191 = getelementptr inbounds %struct.connection, %struct.connection* %190, i32 0, i32 1
  store i32 0, i32* %191, align 8
  %192 = load %struct.keys*, %struct.keys** %10, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = call i32 @keys_add(%struct.keys* %192, i8* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %195

195:                                              ; preds = %189, %183
  br label %196

196:                                              ; preds = %195, %174
  br label %416

197:                                              ; preds = %164
  %198 = load i8*, i8** %7, align 8
  %199 = call i64 @strcmp(i8* %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.26, i64 0, i64 0))
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %242

201:                                              ; preds = %197
  %202 = load i8*, i8** %8, align 8
  %203 = call i64 @strtoul(i8* %202, i32* null, i32 10)
  store i64 %203, i64* %12, align 8
  %204 = load i64, i64* %12, align 8
  %205 = icmp ule i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.pdu*, %struct.pdu** %6, align 8
  %208 = call i32 @login_send_error(%struct.pdu* %207, i32 2, i32 0)
  %209 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.27, i64 0, i64 0))
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i64, i64* %12, align 8
  %212 = trunc i64 %211 to i32
  %213 = load %struct.connection*, %struct.connection** %13, align 8
  %214 = getelementptr inbounds %struct.connection, %struct.connection* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = icmp sgt i32 %212, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %210
  %218 = load i64, i64* %12, align 8
  %219 = load %struct.connection*, %struct.connection** %13, align 8
  %220 = getelementptr inbounds %struct.connection, %struct.connection* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.28, i64 0, i64 0), i64 %218, i32 %221)
  %223 = load %struct.connection*, %struct.connection** %13, align 8
  %224 = getelementptr inbounds %struct.connection, %struct.connection* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  store i64 %226, i64* %12, align 8
  br label %227

227:                                              ; preds = %217, %210
  %228 = load i64, i64* %12, align 8
  %229 = load %struct.connection*, %struct.connection** %13, align 8
  %230 = getelementptr inbounds %struct.connection, %struct.connection* %229, i32 0, i32 3
  store i64 %228, i64* %230, align 8
  %231 = load %struct.connection*, %struct.connection** %13, align 8
  %232 = getelementptr inbounds %struct.connection, %struct.connection* %231, i32 0, i32 5
  %233 = load i64, i64* %232, align 8
  %234 = load %struct.connection*, %struct.connection** %13, align 8
  %235 = getelementptr inbounds %struct.connection, %struct.connection* %234, i32 0, i32 4
  store i64 %233, i64* %235, align 8
  %236 = load %struct.keys*, %struct.keys** %10, align 8
  %237 = load i8*, i8** %7, align 8
  %238 = load %struct.connection*, %struct.connection** %13, align 8
  %239 = getelementptr inbounds %struct.connection, %struct.connection* %238, i32 0, i32 4
  %240 = load i64, i64* %239, align 8
  %241 = call i32 @keys_add_int(%struct.keys* %236, i8* %237, i64 %240)
  br label %415

242:                                              ; preds = %197
  %243 = load i8*, i8** %7, align 8
  %244 = call i64 @strcmp(i8* %243, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0))
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %280

246:                                              ; preds = %242
  %247 = load i8*, i8** %8, align 8
  %248 = call i64 @strtoul(i8* %247, i32* null, i32 10)
  store i64 %248, i64* %12, align 8
  %249 = load i64, i64* %12, align 8
  %250 = icmp ule i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load %struct.pdu*, %struct.pdu** %6, align 8
  %253 = call i32 @login_send_error(%struct.pdu* %252, i32 2, i32 0)
  %254 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.30, i64 0, i64 0))
  br label %255

255:                                              ; preds = %251, %246
  %256 = load i64, i64* %12, align 8
  %257 = trunc i64 %256 to i32
  %258 = load %struct.connection*, %struct.connection** %13, align 8
  %259 = getelementptr inbounds %struct.connection, %struct.connection* %258, i32 0, i32 6
  %260 = load i32, i32* %259, align 8
  %261 = icmp sgt i32 %257, %260
  br i1 %261, label %262, label %272

262:                                              ; preds = %255
  %263 = load i64, i64* %12, align 8
  %264 = load %struct.connection*, %struct.connection** %13, align 8
  %265 = getelementptr inbounds %struct.connection, %struct.connection* %264, i32 0, i32 6
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.31, i64 0, i64 0), i64 %263, i32 %266)
  %268 = load %struct.connection*, %struct.connection** %13, align 8
  %269 = getelementptr inbounds %struct.connection, %struct.connection* %268, i32 0, i32 6
  %270 = load i32, i32* %269, align 8
  %271 = sext i32 %270 to i64
  store i64 %271, i64* %12, align 8
  br label %272

272:                                              ; preds = %262, %255
  %273 = load i64, i64* %12, align 8
  %274 = load %struct.connection*, %struct.connection** %13, align 8
  %275 = getelementptr inbounds %struct.connection, %struct.connection* %274, i32 0, i32 7
  store i64 %273, i64* %275, align 8
  %276 = load %struct.keys*, %struct.keys** %10, align 8
  %277 = load i8*, i8** %7, align 8
  %278 = load i64, i64* %12, align 8
  %279 = call i32 @keys_add_int(%struct.keys* %276, i8* %277, i64 %278)
  br label %414

280:                                              ; preds = %242
  %281 = load i8*, i8** %7, align 8
  %282 = call i64 @strcmp(i8* %281, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0))
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %284, label %318

284:                                              ; preds = %280
  %285 = load i8*, i8** %8, align 8
  %286 = call i64 @strtoul(i8* %285, i32* null, i32 10)
  store i64 %286, i64* %12, align 8
  %287 = load i64, i64* %12, align 8
  %288 = icmp ule i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = load %struct.pdu*, %struct.pdu** %6, align 8
  %291 = call i32 @login_send_error(%struct.pdu* %290, i32 2, i32 0)
  %292 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.33, i64 0, i64 0))
  br label %293

293:                                              ; preds = %289, %284
  %294 = load i64, i64* %12, align 8
  %295 = trunc i64 %294 to i32
  %296 = load %struct.connection*, %struct.connection** %13, align 8
  %297 = getelementptr inbounds %struct.connection, %struct.connection* %296, i32 0, i32 8
  %298 = load i32, i32* %297, align 8
  %299 = icmp sgt i32 %295, %298
  br i1 %299, label %300, label %310

300:                                              ; preds = %293
  %301 = load i64, i64* %12, align 8
  %302 = load %struct.connection*, %struct.connection** %13, align 8
  %303 = getelementptr inbounds %struct.connection, %struct.connection* %302, i32 0, i32 8
  %304 = load i32, i32* %303, align 8
  %305 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0), i64 %301, i32 %304)
  %306 = load %struct.connection*, %struct.connection** %13, align 8
  %307 = getelementptr inbounds %struct.connection, %struct.connection* %306, i32 0, i32 8
  %308 = load i32, i32* %307, align 8
  %309 = sext i32 %308 to i64
  store i64 %309, i64* %12, align 8
  br label %310

310:                                              ; preds = %300, %293
  %311 = load i64, i64* %12, align 8
  %312 = load %struct.connection*, %struct.connection** %13, align 8
  %313 = getelementptr inbounds %struct.connection, %struct.connection* %312, i32 0, i32 9
  store i64 %311, i64* %313, align 8
  %314 = load %struct.keys*, %struct.keys** %10, align 8
  %315 = load i8*, i8** %7, align 8
  %316 = load i64, i64* %12, align 8
  %317 = call i32 @keys_add_int(%struct.keys* %314, i8* %315, i64 %316)
  br label %413

318:                                              ; preds = %280
  %319 = load i8*, i8** %7, align 8
  %320 = call i64 @strcmp(i8* %319, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.35, i64 0, i64 0))
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %327

322:                                              ; preds = %318
  %323 = load %struct.keys*, %struct.keys** %10, align 8
  %324 = load i8*, i8** %7, align 8
  %325 = load i8*, i8** %8, align 8
  %326 = call i32 @keys_add(%struct.keys* %323, i8* %324, i8* %325)
  br label %412

327:                                              ; preds = %318
  %328 = load i8*, i8** %7, align 8
  %329 = call i64 @strcmp(i8* %328, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.36, i64 0, i64 0))
  %330 = icmp eq i64 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = load %struct.keys*, %struct.keys** %10, align 8
  %333 = load i8*, i8** %7, align 8
  %334 = call i32 @keys_add(%struct.keys* %332, i8* %333, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %411

335:                                              ; preds = %327
  %336 = load i8*, i8** %7, align 8
  %337 = call i64 @strcmp(i8* %336, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.38, i64 0, i64 0))
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %335
  %340 = load %struct.keys*, %struct.keys** %10, align 8
  %341 = load i8*, i8** %7, align 8
  %342 = call i32 @keys_add(%struct.keys* %340, i8* %341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %410

343:                                              ; preds = %335
  %344 = load i8*, i8** %7, align 8
  %345 = call i64 @strcmp(i8* %344, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0))
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %343
  %348 = load %struct.keys*, %struct.keys** %10, align 8
  %349 = load i8*, i8** %7, align 8
  %350 = call i32 @keys_add(%struct.keys* %348, i8* %349, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %409

351:                                              ; preds = %343
  %352 = load i8*, i8** %7, align 8
  %353 = call i64 @strcmp(i8* %352, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.40, i64 0, i64 0))
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %351
  %356 = load %struct.keys*, %struct.keys** %10, align 8
  %357 = load i8*, i8** %7, align 8
  %358 = call i32 @keys_add(%struct.keys* %356, i8* %357, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0))
  br label %408

359:                                              ; preds = %351
  %360 = load i8*, i8** %7, align 8
  %361 = call i64 @strcmp(i8* %360, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.41, i64 0, i64 0))
  %362 = icmp eq i64 %361, 0
  br i1 %362, label %363, label %367

363:                                              ; preds = %359
  %364 = load %struct.keys*, %struct.keys** %10, align 8
  %365 = load i8*, i8** %7, align 8
  %366 = call i32 @keys_add(%struct.keys* %364, i8* %365, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0))
  br label %407

367:                                              ; preds = %359
  %368 = load i8*, i8** %7, align 8
  %369 = call i64 @strcmp(i8* %368, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0))
  %370 = icmp eq i64 %369, 0
  br i1 %370, label %371, label %375

371:                                              ; preds = %367
  %372 = load %struct.keys*, %struct.keys** %10, align 8
  %373 = load i8*, i8** %7, align 8
  %374 = call i32 @keys_add(%struct.keys* %372, i8* %373, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %406

375:                                              ; preds = %367
  %376 = load i8*, i8** %7, align 8
  %377 = call i64 @strcmp(i8* %376, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i64 0, i64 0))
  %378 = icmp eq i64 %377, 0
  br i1 %378, label %379, label %383

379:                                              ; preds = %375
  %380 = load %struct.keys*, %struct.keys** %10, align 8
  %381 = load i8*, i8** %7, align 8
  %382 = call i32 @keys_add(%struct.keys* %380, i8* %381, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.25, i64 0, i64 0))
  br label %405

383:                                              ; preds = %375
  %384 = load i8*, i8** %7, align 8
  %385 = call i64 @strcmp(i8* %384, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i64 0, i64 0))
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %398

387:                                              ; preds = %383
  %388 = load i8*, i8** %8, align 8
  %389 = call i64 @strtoul(i8* %388, i32* null, i32 10)
  store i64 %389, i64* %12, align 8
  %390 = load i64, i64* %12, align 8
  %391 = icmp ugt i64 %390, 2
  br i1 %391, label %392, label %393

392:                                              ; preds = %387
  store i64 2, i64* %12, align 8
  br label %393

393:                                              ; preds = %392, %387
  %394 = load %struct.keys*, %struct.keys** %10, align 8
  %395 = load i8*, i8** %7, align 8
  %396 = load i64, i64* %12, align 8
  %397 = call i32 @keys_add_int(%struct.keys* %394, i8* %395, i64 %396)
  br label %404

398:                                              ; preds = %383
  %399 = load i8*, i8** %7, align 8
  %400 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.45, i64 0, i64 0), i8* %399)
  %401 = load %struct.keys*, %struct.keys** %10, align 8
  %402 = load i8*, i8** %7, align 8
  %403 = call i32 @keys_add(%struct.keys* %401, i8* %402, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.46, i64 0, i64 0))
  br label %404

404:                                              ; preds = %398, %393
  br label %405

405:                                              ; preds = %404, %379
  br label %406

406:                                              ; preds = %405, %371
  br label %407

407:                                              ; preds = %406, %363
  br label %408

408:                                              ; preds = %407, %355
  br label %409

409:                                              ; preds = %408, %347
  br label %410

410:                                              ; preds = %409, %339
  br label %411

411:                                              ; preds = %410, %331
  br label %412

412:                                              ; preds = %411, %322
  br label %413

413:                                              ; preds = %412, %310
  br label %414

414:                                              ; preds = %413, %272
  br label %415

415:                                              ; preds = %414, %227
  br label %416

416:                                              ; preds = %415, %196
  br label %417

417:                                              ; preds = %416, %160
  br label %418

418:                                              ; preds = %417, %152
  br label %419

419:                                              ; preds = %418, %147
  br label %420

420:                                              ; preds = %419, %108
  br label %421

421:                                              ; preds = %420, %69
  br label %422

422:                                              ; preds = %421, %60
  br label %423

423:                                              ; preds = %422, %45
  br label %424

424:                                              ; preds = %423, %35
  br label %425

425:                                              ; preds = %80, %119, %424, %25
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @checked_strdup(i8*) #1

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @keys_add(%struct.keys*, i8*, i8*) #1

declare dso_local i32 @login_list_prefers(i8*, i8*, i8*) #1

declare dso_local i32 @log_warnx(i8*, i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @login_send_error(%struct.pdu*, i32, i32) #1

declare dso_local i32 @keys_add_int(%struct.keys*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
