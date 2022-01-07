; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_connection_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_connection_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i32, i32, i32, i32, i32, i32, i32, i64, %struct.iscsi_session_limits, i32, %struct.iscsi_session_limits, i32, %struct.iscsi_session_limits, i8*, i8* }
%struct.iscsi_session_limits = type { i32, i32, i32, i32, i8*, i8*, i64 }
%struct.iscsi_daemon_request = type { i32, i32, i32, i32, i32 }
%struct.addrinfo = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"calloc\00", align 1
@CONN_DIGEST_NONE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"iSER not supported\00", align 1
@.str.2 = private unnamed_addr constant [66 x i8] c"iscsid(8) compiled without ICL_KERNEL_PROXY does not support iSER\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to create socket for %s\00", align 1
@SOCKBUF_SIZE = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"setsockopt(SO_RCVBUF) failed\00", align 1
@SO_SNDBUF = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"setsockopt(SO_SNDBUF) failed\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"failed to bind to %s\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"connecting to %s\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"failed to connect to %s\00", align 1
@ISCSIDCONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.connection* (i32, %struct.iscsi_daemon_request*)* @connection_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.connection* @connection_new(i32 %0, %struct.iscsi_daemon_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_daemon_request*, align 8
  %5 = alloca %struct.connection*, align 8
  %6 = alloca %struct.iscsi_session_limits*, align 8
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.iscsi_daemon_request* %1, %struct.iscsi_daemon_request** %4, align 8
  %13 = call %struct.connection* @calloc(i32 1, i32 192)
  store %struct.connection* %13, %struct.connection** %5, align 8
  %14 = load %struct.connection*, %struct.connection** %5, align 8
  %15 = icmp eq %struct.connection* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i8*, i8** @CONN_DIGEST_NONE, align 8
  %20 = load %struct.connection*, %struct.connection** %5, align 8
  %21 = getelementptr inbounds %struct.connection, %struct.connection* %20, i32 0, i32 14
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @CONN_DIGEST_NONE, align 8
  %23 = load %struct.connection*, %struct.connection** %5, align 8
  %24 = getelementptr inbounds %struct.connection, %struct.connection* %23, i32 0, i32 13
  store i8* %22, i8** %24, align 8
  %25 = load %struct.connection*, %struct.connection** %5, align 8
  %26 = getelementptr inbounds %struct.connection, %struct.connection* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.connection*, %struct.connection** %5, align 8
  %28 = getelementptr inbounds %struct.connection, %struct.connection* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = load %struct.connection*, %struct.connection** %5, align 8
  %30 = getelementptr inbounds %struct.connection, %struct.connection* %29, i32 0, i32 2
  store i32 8192, i32* %30, align 8
  %31 = load %struct.connection*, %struct.connection** %5, align 8
  %32 = getelementptr inbounds %struct.connection, %struct.connection* %31, i32 0, i32 3
  store i32 8192, i32* %32, align 4
  %33 = load %struct.connection*, %struct.connection** %5, align 8
  %34 = getelementptr inbounds %struct.connection, %struct.connection* %33, i32 0, i32 4
  store i32 262144, i32* %34, align 8
  %35 = load %struct.connection*, %struct.connection** %5, align 8
  %36 = getelementptr inbounds %struct.connection, %struct.connection* %35, i32 0, i32 5
  store i32 65536, i32* %36, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.connection*, %struct.connection** %5, align 8
  %39 = getelementptr inbounds %struct.connection, %struct.connection* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 8
  %40 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.connection*, %struct.connection** %5, align 8
  %44 = getelementptr inbounds %struct.connection, %struct.connection* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load %struct.connection*, %struct.connection** %5, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 8
  %47 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %47, i32 0, i32 3
  %49 = call i32 @memcpy(%struct.iscsi_session_limits* %46, i32* %48, i32 40)
  %50 = load %struct.connection*, %struct.connection** %5, align 8
  %51 = getelementptr inbounds %struct.connection, %struct.connection* %50, i32 0, i32 12
  %52 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %52, i32 0, i32 2
  %54 = call i32 @memcpy(%struct.iscsi_session_limits* %51, i32* %53, i32 40)
  %55 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %4, align 8
  %56 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.connection*, %struct.connection** %5, align 8
  %59 = getelementptr inbounds %struct.connection, %struct.connection* %58, i32 0, i32 11
  store i32 %57, i32* %59, align 8
  %60 = load %struct.connection*, %struct.connection** %5, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 10
  store %struct.iscsi_session_limits* %61, %struct.iscsi_session_limits** %6, align 8
  %62 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %63 = load %struct.iscsi_daemon_request*, %struct.iscsi_daemon_request** %4, align 8
  %64 = getelementptr inbounds %struct.iscsi_daemon_request, %struct.iscsi_daemon_request* %63, i32 0, i32 0
  %65 = call i32 @memcpy(%struct.iscsi_session_limits* %62, i32* %64, i32 40)
  %66 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %67 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %18
  %71 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %72 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %71, i32 0, i32 0
  store i32 16777215, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %18
  %74 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %75 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %80 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %83 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %78, %73
  %85 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %91 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %90, i32 0, i32 2
  store i32 16777215, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %84
  %93 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %94 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %99 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %98, i32 0, i32 3
  store i32 16777215, i32* %99, align 4
  br label %100

100:                                              ; preds = %97, %92
  %101 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %102 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %105 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp sgt i32 %103, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %100
  %109 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %110 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %113 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %112, i32 0, i32 3
  store i32 %111, i32* %113, align 4
  br label %114

114:                                              ; preds = %108, %100
  %115 = load %struct.connection*, %struct.connection** %5, align 8
  %116 = getelementptr inbounds %struct.connection, %struct.connection* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %119 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp sgt i32 %117, %120
  br i1 %121, label %122, label %128

122:                                              ; preds = %114
  %123 = load %struct.iscsi_session_limits*, %struct.iscsi_session_limits** %6, align 8
  %124 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.connection*, %struct.connection** %5, align 8
  %127 = getelementptr inbounds %struct.connection, %struct.connection* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %122, %114
  %129 = load %struct.connection*, %struct.connection** %5, align 8
  %130 = getelementptr inbounds %struct.connection, %struct.connection* %129, i32 0, i32 8
  %131 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %130, i32 0, i32 4
  %132 = load i8*, i8** %131, align 8
  store i8* %132, i8** %9, align 8
  %133 = load %struct.connection*, %struct.connection** %5, align 8
  %134 = getelementptr inbounds %struct.connection, %struct.connection* %133, i32 0, i32 8
  %135 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %10, align 8
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %128
  %143 = load %struct.connection*, %struct.connection** %5, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = call i32 @resolve_addr(%struct.connection* %143, i8* %144, %struct.addrinfo** %7, i32 1)
  br label %147

146:                                              ; preds = %128
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  br label %147

147:                                              ; preds = %146, %142
  %148 = load %struct.connection*, %struct.connection** %5, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = call i32 @resolve_addr(%struct.connection* %148, i8* %149, %struct.addrinfo** %8, i32 0)
  %151 = load %struct.connection*, %struct.connection** %5, align 8
  %152 = getelementptr inbounds %struct.connection, %struct.connection* %151, i32 0, i32 8
  %153 = getelementptr inbounds %struct.iscsi_session_limits, %struct.iscsi_session_limits* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %147
  %157 = load %struct.connection*, %struct.connection** %5, align 8
  %158 = call i32 @fail(%struct.connection* %157, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %159 = call i32 @log_errx(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %147
  %161 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %162 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %165 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %168 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @socket(i32 %163, i32 %166, i32 %169)
  %171 = load %struct.connection*, %struct.connection** %5, align 8
  %172 = getelementptr inbounds %struct.connection, %struct.connection* %171, i32 0, i32 7
  store i64 %170, i64* %172, align 8
  %173 = load %struct.connection*, %struct.connection** %5, align 8
  %174 = getelementptr inbounds %struct.connection, %struct.connection* %173, i32 0, i32 7
  %175 = load i64, i64* %174, align 8
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %160
  %178 = load %struct.connection*, %struct.connection** %5, align 8
  %179 = load i32, i32* @errno, align 4
  %180 = call i8* @strerror(i32 %179)
  %181 = call i32 @fail(%struct.connection* %178, i8* %180)
  %182 = load i8*, i8** %9, align 8
  %183 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8* %182)
  br label %184

184:                                              ; preds = %177, %160
  %185 = load i32, i32* @SOCKBUF_SIZE, align 4
  store i32 %185, i32* %12, align 4
  %186 = load %struct.connection*, %struct.connection** %5, align 8
  %187 = getelementptr inbounds %struct.connection, %struct.connection* %186, i32 0, i32 7
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* @SOL_SOCKET, align 4
  %190 = load i32, i32* @SO_RCVBUF, align 4
  %191 = call i32 @setsockopt(i64 %188, i32 %189, i32 %190, i32* %12, i32 4)
  %192 = icmp eq i32 %191, -1
  br i1 %192, label %193, label %195

193:                                              ; preds = %184
  %194 = call i32 @log_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %195

195:                                              ; preds = %193, %184
  %196 = load i32, i32* @SOCKBUF_SIZE, align 4
  store i32 %196, i32* %12, align 4
  %197 = load %struct.connection*, %struct.connection** %5, align 8
  %198 = getelementptr inbounds %struct.connection, %struct.connection* %197, i32 0, i32 7
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* @SOL_SOCKET, align 4
  %201 = load i32, i32* @SO_SNDBUF, align 4
  %202 = call i32 @setsockopt(i64 %199, i32 %200, i32 %201, i32* %12, i32 4)
  %203 = icmp eq i32 %202, -1
  br i1 %203, label %204, label %206

204:                                              ; preds = %195
  %205 = call i32 @log_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %195
  %207 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %208 = icmp ne %struct.addrinfo* %207, null
  br i1 %208, label %209, label %230

209:                                              ; preds = %206
  %210 = load %struct.connection*, %struct.connection** %5, align 8
  %211 = getelementptr inbounds %struct.connection, %struct.connection* %210, i32 0, i32 7
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %214 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  %217 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @bind(i64 %212, i32 %215, i32 %218)
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %209
  %223 = load %struct.connection*, %struct.connection** %5, align 8
  %224 = load i32, i32* @errno, align 4
  %225 = call i8* @strerror(i32 %224)
  %226 = call i32 @fail(%struct.connection* %223, i8* %225)
  %227 = load i8*, i8** %9, align 8
  %228 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i8* %227)
  br label %229

229:                                              ; preds = %222, %209
  br label %230

230:                                              ; preds = %229, %206
  %231 = load i8*, i8** %10, align 8
  %232 = call i32 @log_debugx(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %231)
  %233 = load %struct.connection*, %struct.connection** %5, align 8
  %234 = getelementptr inbounds %struct.connection, %struct.connection* %233, i32 0, i32 7
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %237 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %240 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @connect(i64 %235, i32 %238, i32 %241)
  store i32 %242, i32* %11, align 4
  %243 = load i32, i32* %11, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %252

245:                                              ; preds = %230
  %246 = load %struct.connection*, %struct.connection** %5, align 8
  %247 = load i32, i32* @errno, align 4
  %248 = call i8* @strerror(i32 %247)
  %249 = call i32 @fail(%struct.connection* %246, i8* %248)
  %250 = load i8*, i8** %10, align 8
  %251 = call i32 (i32, i8*, ...) @log_err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %245, %230
  %253 = load %struct.connection*, %struct.connection** %5, align 8
  ret %struct.connection* %253
}

declare dso_local %struct.connection* @calloc(i32, i32) #1

declare dso_local i32 @log_err(i32, i8*, ...) #1

declare dso_local i32 @memcpy(%struct.iscsi_session_limits*, i32*, i32) #1

declare dso_local i32 @resolve_addr(%struct.connection*, i8*, %struct.addrinfo**, i32) #1

declare dso_local i32 @fail(%struct.connection*, i8*) #1

declare dso_local i32 @log_errx(i32, i8*) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @setsockopt(i64, i32, i32, i32*, i32) #1

declare dso_local i32 @log_warn(i8*) #1

declare dso_local i32 @bind(i64, i32, i32) #1

declare dso_local i32 @log_debugx(i8*, i8*) #1

declare dso_local i32 @connect(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
