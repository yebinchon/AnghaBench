; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/rfcomm_sppd/extr_rfcomm_sppd.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/bluetooth/rfcomm_sppd/extr_rfcomm_sppd.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.sockaddr_rfcomm = type { i32, i32, i32, i32, i8*, i32, i32 }
%struct.hostent = type { i32* }
%struct.sockaddr = type { i32 }

@SPPD_BUFFER_SIZE = common dso_local global i32 0, align 4
@NG_HCI_BDADDR_ANY = common dso_local global i32* null, align 8
@SDP_SERVICE_CLASS_SERIAL_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"a:bc:thS\00", align 1
@optarg = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@h_errno = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_DIALUP_NETWORKING = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_FAX = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Unknown service name: %s\00", align 1
@sppd_sighandler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not sigaction(SIGTERM)\00", align 1
@SIGHUP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Could not sigaction(SIGHUP)\00", align 1
@SIGINT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not sigaction(SIGINT)\00", align 1
@SIG_IGN = common dso_local global i32 0, align 4
@SA_NOCLDWAIT = common dso_local global i32 0, align 4
@SIGCHLD = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Could not sigaction(SIGCHLD)\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_RFCOMM = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"Could not create socket\00", align 1
@AF_BLUETOOTH = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [36 x i8] c"Could not bind socket on channel %d\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"Could not listen on socket\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Could not get socket name\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Unable to create local SDP session\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Unable to open local SDP session. %s (%d)\00", align 1
@.str.13 = private unnamed_addr constant [62 x i8] c"Unable to register LAN service with local SDP daemon. %s (%d)\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"Unable to accept()\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"Connect from wrong client\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"Could not obtain RFCOMM channel\00", align 1
@.str.17 = private unnamed_addr constant [33 x i8] c"Invalid RFCOMM channel number %d\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"Could not bind socket\00", align 1
@.str.19 = private unnamed_addr constant [25 x i8] c"Could not connect socket\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Could not daemon()\00", align 1
@SPPD_IDENT = common dso_local global i32 0, align 4
@LOG_NDELAY = common dso_local global i32 0, align 4
@LOG_PERROR = common dso_local global i32 0, align 4
@LOG_PID = common dso_local global i32 0, align 4
@LOG_DAEMON = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"Starting on %s...\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"stdin/stdout\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@done = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [23 x i8] c"Could not select(). %s\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Could not read master pty, fd=%d. %s\00", align 1
@.str.26 = private unnamed_addr constant [46 x i8] c"Could not write to socket, fd=%d, size=%d. %s\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"Could not read socket, fd=%d. %s\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"Could not write to master pty, fd=%d, size=%d. %s\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Completed on %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 8
  %7 = alloca %struct.sockaddr_rfcomm, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.hostent*, align 8
  %25 = alloca %struct.sockaddr_rfcomm, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.sockaddr_rfcomm, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %32 = load i32, i32* @SPPD_BUFFER_SIZE, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %22, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %23, align 8
  %36 = load i32*, i32** @NG_HCI_BDADDR_ANY, align 8
  %37 = call i32 @memcpy(i32* %8, i32* %36, i32 4)
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %38 = load i32, i32* @SDP_SERVICE_CLASS_SERIAL_PORT, align 4
  store i32 %38, i32* %12, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %39

39:                                               ; preds = %96, %2
  %40 = load i32, i32* %4, align 4
  %41 = load i8**, i8*** %5, align 8
  %42 = call i32 @getopt(i32 %40, i8** %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %42, i32* %9, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %97

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  switch i32 %45, label %94 [
    i32 97, label %46
    i32 99, label %65
    i32 98, label %90
    i32 116, label %91
    i32 83, label %92
    i32 104, label %93
  ]

46:                                               ; preds = %44
  %47 = load i32*, i32** @optarg, align 8
  %48 = call i32 @bt_aton(i32* %47, i32* %8)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %64, label %50

50:                                               ; preds = %46
  store %struct.hostent* null, %struct.hostent** %24, align 8
  %51 = load i32*, i32** @optarg, align 8
  %52 = call %struct.hostent* @bt_gethostbyname(i32* %51)
  store %struct.hostent* %52, %struct.hostent** %24, align 8
  %53 = icmp eq %struct.hostent* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load i32*, i32** @optarg, align 8
  %56 = load i32, i32* @h_errno, align 4
  %57 = call i32 @hstrerror(i32 %56)
  %58 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.hostent*, %struct.hostent** %24, align 8
  %61 = getelementptr inbounds %struct.hostent, %struct.hostent* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @memcpy(i32* %8, i32* %62, i32 4)
  br label %64

64:                                               ; preds = %59, %46
  br label %96

65:                                               ; preds = %44
  %66 = load i32*, i32** @optarg, align 8
  %67 = call i32 @strtoul(i32* %66, i8** %21, i32 10)
  store i32 %67, i32* %11, align 4
  %68 = load i8*, i8** %21, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  %73 = load i32*, i32** @optarg, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @tolower(i32 %75) #5
  switch i32 %76, label %85 [
    i32 100, label %77
    i32 102, label %79
    i32 108, label %81
    i32 115, label %83
  ]

77:                                               ; preds = %72
  %78 = load i32, i32* @SDP_SERVICE_CLASS_DIALUP_NETWORKING, align 4
  store i32 %78, i32* %12, align 4
  br label %88

79:                                               ; preds = %72
  %80 = load i32, i32* @SDP_SERVICE_CLASS_FAX, align 4
  store i32 %80, i32* %12, align 4
  br label %88

81:                                               ; preds = %72
  %82 = load i32, i32* @SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP, align 4
  store i32 %82, i32* %12, align 4
  br label %88

83:                                               ; preds = %72
  %84 = load i32, i32* @SDP_SERVICE_CLASS_SERIAL_PORT, align 4
  store i32 %84, i32* %12, align 4
  br label %88

85:                                               ; preds = %72
  %86 = load i32*, i32** @optarg, align 8
  %87 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %86)
  br label %88

88:                                               ; preds = %85, %83, %81, %79, %77
  br label %89

89:                                               ; preds = %88, %65
  br label %96

90:                                               ; preds = %44
  store i32 1, i32* %10, align 4
  br label %96

91:                                               ; preds = %44
  store i32 1, i32* %18, align 4
  br label %96

92:                                               ; preds = %44
  store i32 1, i32* %17, align 4
  br label %96

93:                                               ; preds = %44
  br label %94

94:                                               ; preds = %44, %93
  %95 = call i32 (...) @usage()
  br label %96

96:                                               ; preds = %94, %92, %91, %90, %89, %64
  br label %39

97:                                               ; preds = %39
  %98 = load i32, i32* %17, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load i32*, i32** @NG_HCI_BDADDR_ANY, align 8
  %102 = call i64 @memcmp(i32* %8, i32* %101, i32 4)
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 (...) @usage()
  br label %106

106:                                              ; preds = %104, %100, %97
  %107 = bitcast %struct.sigaction* %6 to %struct.sockaddr_rfcomm*
  %108 = call i32 @memset(%struct.sockaddr_rfcomm* %107, i32 0, i32 32)
  %109 = load i32, i32* @sppd_sighandler, align 4
  %110 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 6
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @SIGTERM, align 4
  %112 = bitcast %struct.sigaction* %6 to %struct.sockaddr_rfcomm*
  %113 = call i64 @sigaction(i32 %111, %struct.sockaddr_rfcomm* %112, i32* null)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %106
  %118 = load i32, i32* @SIGHUP, align 4
  %119 = bitcast %struct.sigaction* %6 to %struct.sockaddr_rfcomm*
  %120 = call i64 @sigaction(i32 %118, %struct.sockaddr_rfcomm* %119, i32* null)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* @SIGINT, align 4
  %126 = bitcast %struct.sigaction* %6 to %struct.sockaddr_rfcomm*
  %127 = call i64 @sigaction(i32 %125, %struct.sockaddr_rfcomm* %126, i32* null)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32, i32* @SIG_IGN, align 4
  %133 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 6
  store i32 %132, i32* %133, align 4
  %134 = load i32, i32* @SA_NOCLDWAIT, align 4
  %135 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 5
  store i32 %134, i32* %135, align 8
  %136 = load i32, i32* @SIGCHLD, align 4
  %137 = bitcast %struct.sigaction* %6 to %struct.sockaddr_rfcomm*
  %138 = call i64 @sigaction(i32 %136, %struct.sockaddr_rfcomm* %137, i32* null)
  %139 = icmp slt i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %131
  %141 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %131
  %143 = load i32, i32* %18, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %152

145:                                              ; preds = %142
  %146 = call i64 @sppd_ttys_open(i8** %20, i32* %14, i32* %15)
  %147 = icmp slt i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %145
  %149 = call i32 @exit(i32 1) #6
  unreachable

150:                                              ; preds = %145
  %151 = load i32, i32* %14, align 4
  store i32 %151, i32* %16, align 4
  br label %160

152:                                              ; preds = %142
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 (...) @usage()
  br label %157

157:                                              ; preds = %155, %152
  %158 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %159, i32* %16, align 4
  br label %160

160:                                              ; preds = %157, %150
  %161 = load i32, i32* %17, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %271

163:                                              ; preds = %160
  %164 = load i32, i32* @PF_BLUETOOTH, align 4
  %165 = load i32, i32* @SOCK_STREAM, align 4
  %166 = load i32, i32* @BLUETOOTH_PROTO_RFCOMM, align 4
  %167 = call i32 @socket(i32 %164, i32 %165, i32 %166)
  store i32 %167, i32* %30, align 4
  %168 = load i32, i32* %30, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %172

172:                                              ; preds = %170, %163
  %173 = load i32*, i32** @NG_HCI_BDADDR_ANY, align 8
  %174 = call i32 @memcpy(i32* %26, i32* %173, i32 4)
  %175 = call i32 @memset(%struct.sockaddr_rfcomm* %25, i32 0, i32 32)
  %176 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %25, i32 0, i32 0
  store i32 32, i32* %176, align 8
  %177 = load i8*, i8** @AF_BLUETOOTH, align 8
  %178 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %25, i32 0, i32 4
  store i8* %177, i8** %178, align 8
  %179 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %25, i32 0, i32 3
  %180 = call i32 @memcpy(i32* %179, i32* %26, i32 4)
  %181 = load i32, i32* %11, align 4
  %182 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %25, i32 0, i32 1
  store i32 %181, i32* %182, align 4
  %183 = load i32, i32* %30, align 4
  %184 = bitcast %struct.sockaddr_rfcomm* %25 to %struct.sockaddr*
  %185 = call i64 @bind(i32 %183, %struct.sockaddr* %184, i32 32)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %172
  %188 = load i32, i32* %11, align 4
  %189 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %187, %172
  %191 = load i32, i32* %30, align 4
  %192 = call i64 @listen(i32 %191, i32 10)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %196

194:                                              ; preds = %190
  %195 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %196

196:                                              ; preds = %194, %190
  store i32 32, i32* %31, align 4
  %197 = load i32, i32* %30, align 4
  %198 = bitcast %struct.sockaddr_rfcomm* %25 to %struct.sockaddr*
  %199 = call i64 @getsockname(i32 %197, %struct.sockaddr* %198, i32* %31)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %196
  %204 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %25, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %11, align 4
  %206 = call i8* @sdp_open_local(i32* null)
  store i8* %206, i8** %28, align 8
  %207 = load i8*, i8** %28, align 8
  %208 = icmp eq i8* %207, null
  br i1 %208, label %209, label %211

209:                                              ; preds = %203
  %210 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  br label %211

211:                                              ; preds = %209, %203
  %212 = load i8*, i8** %28, align 8
  %213 = call i64 @sdp_error(i8* %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %211
  %216 = load i8*, i8** %28, align 8
  %217 = call i64 @sdp_error(i8* %216)
  %218 = call i8* @strerror(i64 %217)
  %219 = load i8*, i8** %28, align 8
  %220 = call i64 @sdp_error(i8* %219)
  %221 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i8* %218, i64 %220)
  br label %222

222:                                              ; preds = %215, %211
  %223 = call i32 @memset(%struct.sockaddr_rfcomm* %27, i32 0, i32 32)
  %224 = load i32, i32* %11, align 4
  %225 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %27, i32 0, i32 2
  store i32 %224, i32* %225, align 8
  %226 = load i8*, i8** %28, align 8
  %227 = load i32, i32* @SDP_SERVICE_CLASS_SERIAL_PORT, align 4
  %228 = bitcast %struct.sockaddr_rfcomm* %27 to i8*
  %229 = call i64 @sdp_register_service(i8* %226, i32 %227, i32* %26, i8* %228, i32 32, i32* %29)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %222
  %232 = load i8*, i8** %28, align 8
  %233 = call i64 @sdp_error(i8* %232)
  %234 = call i8* @strerror(i64 %233)
  %235 = load i8*, i8** %28, align 8
  %236 = call i64 @sdp_error(i8* %235)
  %237 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.13, i64 0, i64 0), i8* %234, i64 %236)
  br label %238

238:                                              ; preds = %231, %222
  store i32 -1, i32* %13, align 4
  br label %239

239:                                              ; preds = %262, %238
  %240 = load i32, i32* %13, align 4
  %241 = icmp slt i32 %240, 0
  br i1 %241, label %242, label %263

242:                                              ; preds = %239
  store i32 32, i32* %31, align 4
  %243 = load i32, i32* %30, align 4
  %244 = bitcast %struct.sockaddr_rfcomm* %7 to %struct.sockaddr*
  %245 = call i32 @accept(i32 %243, %struct.sockaddr* %244, i32* %31)
  store i32 %245, i32* %13, align 4
  %246 = load i32, i32* %13, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %242
  %249 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %242
  %251 = load i32*, i32** @NG_HCI_BDADDR_ANY, align 8
  %252 = call i64 @memcmp(i32* %8, i32* %251, i32 4)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 3
  %256 = call i64 @memcmp(i32* %8, i32* %255, i32 4)
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %262

258:                                              ; preds = %254
  %259 = call i32 @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0))
  %260 = load i32, i32* %13, align 4
  %261 = call i32 @close(i32 %260)
  store i32 -1, i32* %13, align 4
  br label %262

262:                                              ; preds = %258, %254, %250
  br label %239

263:                                              ; preds = %239
  %264 = load i8*, i8** %28, align 8
  %265 = load i32, i32* %29, align 4
  %266 = call i32 @sdp_unregister_service(i8* %264, i32 %265)
  %267 = load i8*, i8** %28, align 8
  %268 = call i32 @sdp_close(i8* %267)
  %269 = load i32, i32* %30, align 4
  %270 = call i32 @close(i32 %269)
  br label %326

271:                                              ; preds = %160
  %272 = load i32, i32* %11, align 4
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %285

274:                                              ; preds = %271
  %275 = load i32, i32* %12, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %274
  %278 = load i32, i32* %12, align 4
  %279 = call i64 @rfcomm_channel_lookup(i32* null, i32* %8, i32 %278, i32* %11, i32* %9)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %277
  %282 = load i32, i32* %9, align 4
  %283 = call i32 @errc(i32 1, i32 %282, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  br label %284

284:                                              ; preds = %281, %277
  br label %285

285:                                              ; preds = %284, %274, %271
  %286 = load i32, i32* %11, align 4
  %287 = icmp sle i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* %11, align 4
  %290 = icmp sgt i32 %289, 30
  br i1 %290, label %291, label %294

291:                                              ; preds = %288, %285
  %292 = load i32, i32* %11, align 4
  %293 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.17, i64 0, i64 0), i32 %292)
  br label %294

294:                                              ; preds = %291, %288
  %295 = load i32, i32* @PF_BLUETOOTH, align 4
  %296 = load i32, i32* @SOCK_STREAM, align 4
  %297 = load i32, i32* @BLUETOOTH_PROTO_RFCOMM, align 4
  %298 = call i32 @socket(i32 %295, i32 %296, i32 %297)
  store i32 %298, i32* %13, align 4
  %299 = load i32, i32* %13, align 4
  %300 = icmp slt i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %303

303:                                              ; preds = %301, %294
  %304 = call i32 @memset(%struct.sockaddr_rfcomm* %7, i32 0, i32 32)
  %305 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 0
  store i32 32, i32* %305, align 8
  %306 = load i8*, i8** @AF_BLUETOOTH, align 8
  %307 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 4
  store i8* %306, i8** %307, align 8
  %308 = load i32, i32* %13, align 4
  %309 = bitcast %struct.sockaddr_rfcomm* %7 to %struct.sockaddr*
  %310 = call i64 @bind(i32 %308, %struct.sockaddr* %309, i32 32)
  %311 = icmp slt i64 %310, 0
  br i1 %311, label %312, label %314

312:                                              ; preds = %303
  %313 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0))
  br label %314

314:                                              ; preds = %312, %303
  %315 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 3
  %316 = call i32 @memcpy(i32* %315, i32* %8, i32 4)
  %317 = load i32, i32* %11, align 4
  %318 = getelementptr inbounds %struct.sockaddr_rfcomm, %struct.sockaddr_rfcomm* %7, i32 0, i32 1
  store i32 %317, i32* %318, align 4
  %319 = load i32, i32* %13, align 4
  %320 = bitcast %struct.sockaddr_rfcomm* %7 to %struct.sockaddr*
  %321 = call i64 @connect(i32 %319, %struct.sockaddr* %320, i32 32)
  %322 = icmp slt i64 %321, 0
  br i1 %322, label %323, label %325

323:                                              ; preds = %314
  %324 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.19, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %314
  br label %326

326:                                              ; preds = %325, %263
  %327 = load i32, i32* %10, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %326
  %330 = call i64 @daemon(i32 0, i32 0)
  %331 = icmp slt i64 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %329
  %333 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.20, i64 0, i64 0))
  br label %334

334:                                              ; preds = %332, %329, %326
  %335 = load i32, i32* @SPPD_IDENT, align 4
  %336 = load i32, i32* @LOG_NDELAY, align 4
  %337 = load i32, i32* @LOG_PERROR, align 4
  %338 = or i32 %336, %337
  %339 = load i32, i32* @LOG_PID, align 4
  %340 = or i32 %338, %339
  %341 = load i32, i32* @LOG_DAEMON, align 4
  %342 = call i32 @openlog(i32 %335, i32 %340, i32 %341)
  %343 = load i32, i32* @LOG_INFO, align 4
  %344 = load i8*, i8** %20, align 8
  %345 = icmp ne i8* %344, null
  br i1 %345, label %346, label %348

346:                                              ; preds = %334
  %347 = load i8*, i8** %20, align 8
  br label %349

348:                                              ; preds = %334
  br label %349

349:                                              ; preds = %348, %346
  %350 = phi i8* [ %347, %346 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %348 ]
  %351 = call i32 (i32, i8*, ...) @syslog(i32 %343, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* %350)
  %352 = load i32, i32* %10, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %358, label %354

354:                                              ; preds = %349
  %355 = load i32, i32* @stdout, align 4
  %356 = load i8*, i8** %20, align 8
  %357 = call i32 @fprintf(i32 %355, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i64 0, i64 0), i8* %356)
  br label %358

358:                                              ; preds = %354, %349
  store i64 0, i64* @done, align 8
  br label %359

359:                                              ; preds = %461, %390, %380, %358
  %360 = load i64, i64* @done, align 8
  %361 = icmp ne i64 %360, 0
  %362 = xor i1 %361, true
  br i1 %362, label %363, label %462

363:                                              ; preds = %359
  %364 = call i32 @FD_ZERO(i32* %19)
  %365 = load i32, i32* %14, align 4
  %366 = call i32 @FD_SET(i32 %365, i32* %19)
  %367 = load i32, i32* %13, align 4
  %368 = call i32 @FD_SET(i32 %367, i32* %19)
  %369 = load i32, i32* %14, align 4
  %370 = load i32, i32* %13, align 4
  %371 = call i64 @max(i32 %369, i32 %370)
  %372 = add nsw i64 %371, 1
  %373 = call i32 @select(i64 %372, i32* %19, i32* null, i32* null, i32* null)
  store i32 %373, i32* %9, align 4
  %374 = load i32, i32* %9, align 4
  %375 = icmp slt i32 %374, 0
  br i1 %375, label %376, label %387

376:                                              ; preds = %363
  %377 = load i64, i64* @errno, align 8
  %378 = load i64, i64* @EINTR, align 8
  %379 = icmp eq i64 %377, %378
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  br label %359

381:                                              ; preds = %376
  %382 = load i32, i32* @LOG_ERR, align 4
  %383 = load i64, i64* @errno, align 8
  %384 = call i8* @strerror(i64 %383)
  %385 = call i32 (i32, i8*, ...) @syslog(i32 %382, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i64 0, i64 0), i8* %384)
  %386 = call i32 @exit(i32 1) #6
  unreachable

387:                                              ; preds = %363
  %388 = load i32, i32* %9, align 4
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %387
  br label %359

391:                                              ; preds = %387
  %392 = load i32, i32* %14, align 4
  %393 = call i64 @FD_ISSET(i32 %392, i32* %19)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %426

395:                                              ; preds = %391
  %396 = load i32, i32* %14, align 4
  %397 = trunc i64 %33 to i32
  %398 = call i32 @sppd_read(i32 %396, i8* %35, i32 %397)
  store i32 %398, i32* %9, align 4
  %399 = load i32, i32* %9, align 4
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %408

401:                                              ; preds = %395
  %402 = load i32, i32* @LOG_ERR, align 4
  %403 = load i32, i32* %14, align 4
  %404 = load i64, i64* @errno, align 8
  %405 = call i8* @strerror(i64 %404)
  %406 = call i32 (i32, i8*, ...) @syslog(i32 %402, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i64 0, i64 0), i32 %403, i8* %405)
  %407 = call i32 @exit(i32 1) #6
  unreachable

408:                                              ; preds = %395
  %409 = load i32, i32* %9, align 4
  %410 = icmp eq i32 %409, 0
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  br label %462

412:                                              ; preds = %408
  %413 = load i32, i32* %13, align 4
  %414 = load i32, i32* %9, align 4
  %415 = call i64 @sppd_write(i32 %413, i8* %35, i32 %414)
  %416 = icmp slt i64 %415, 0
  br i1 %416, label %417, label %425

417:                                              ; preds = %412
  %418 = load i32, i32* @LOG_ERR, align 4
  %419 = load i32, i32* %13, align 4
  %420 = load i32, i32* %9, align 4
  %421 = load i64, i64* @errno, align 8
  %422 = call i8* @strerror(i64 %421)
  %423 = call i32 (i32, i8*, ...) @syslog(i32 %418, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 %419, i32 %420, i8* %422)
  %424 = call i32 @exit(i32 1) #6
  unreachable

425:                                              ; preds = %412
  br label %426

426:                                              ; preds = %425, %391
  %427 = load i32, i32* %13, align 4
  %428 = call i64 @FD_ISSET(i32 %427, i32* %19)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %461

430:                                              ; preds = %426
  %431 = load i32, i32* %13, align 4
  %432 = trunc i64 %33 to i32
  %433 = call i32 @sppd_read(i32 %431, i8* %35, i32 %432)
  store i32 %433, i32* %9, align 4
  %434 = load i32, i32* %9, align 4
  %435 = icmp slt i32 %434, 0
  br i1 %435, label %436, label %443

436:                                              ; preds = %430
  %437 = load i32, i32* @LOG_ERR, align 4
  %438 = load i32, i32* %13, align 4
  %439 = load i64, i64* @errno, align 8
  %440 = call i8* @strerror(i64 %439)
  %441 = call i32 (i32, i8*, ...) @syslog(i32 %437, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.27, i64 0, i64 0), i32 %438, i8* %440)
  %442 = call i32 @exit(i32 1) #6
  unreachable

443:                                              ; preds = %430
  %444 = load i32, i32* %9, align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %443
  br label %462

447:                                              ; preds = %443
  %448 = load i32, i32* %16, align 4
  %449 = load i32, i32* %9, align 4
  %450 = call i64 @sppd_write(i32 %448, i8* %35, i32 %449)
  %451 = icmp slt i64 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %447
  %453 = load i32, i32* @LOG_ERR, align 4
  %454 = load i32, i32* %16, align 4
  %455 = load i32, i32* %9, align 4
  %456 = load i64, i64* @errno, align 8
  %457 = call i8* @strerror(i64 %456)
  %458 = call i32 (i32, i8*, ...) @syslog(i32 %453, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0), i32 %454, i32 %455, i8* %457)
  %459 = call i32 @exit(i32 1) #6
  unreachable

460:                                              ; preds = %447
  br label %461

461:                                              ; preds = %460, %426
  br label %359

462:                                              ; preds = %446, %411, %359
  %463 = load i32, i32* @LOG_INFO, align 4
  %464 = load i8*, i8** %20, align 8
  %465 = icmp ne i8* %464, null
  br i1 %465, label %466, label %468

466:                                              ; preds = %462
  %467 = load i8*, i8** %20, align 8
  br label %469

468:                                              ; preds = %462
  br label %469

469:                                              ; preds = %468, %466
  %470 = phi i8* [ %467, %466 ], [ getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0), %468 ]
  %471 = call i32 (i32, i8*, ...) @syslog(i32 %463, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* %470)
  %472 = call i32 (...) @closelog()
  %473 = load i32, i32* %13, align 4
  %474 = call i32 @close(i32 %473)
  %475 = load i8*, i8** %20, align 8
  %476 = icmp ne i8* %475, null
  br i1 %476, label %477, label %482

477:                                              ; preds = %469
  %478 = load i32, i32* %15, align 4
  %479 = call i32 @close(i32 %478)
  %480 = load i32, i32* %14, align 4
  %481 = call i32 @close(i32 %480)
  br label %482

482:                                              ; preds = %477, %469
  store i32 0, i32* %3, align 4
  %483 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %483)
  %484 = load i32, i32* %3, align 4
  ret i32 %484
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @bt_aton(i32*, i32*) #2

declare dso_local %struct.hostent* @bt_gethostbyname(i32*) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i32 @hstrerror(i32) #2

declare dso_local i32 @strtoul(i32*, i8**, i32) #2

; Function Attrs: nounwind readonly
declare dso_local i32 @tolower(i32) #3

declare dso_local i32 @usage(...) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @memset(%struct.sockaddr_rfcomm*, i32, i32) #2

declare dso_local i64 @sigaction(i32, %struct.sockaddr_rfcomm*, i32*) #2

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i64 @sppd_ttys_open(i8**, i32*, i32*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @listen(i32, i32) #2

declare dso_local i64 @getsockname(i32, %struct.sockaddr*, i32*) #2

declare dso_local i8* @sdp_open_local(i32*) #2

declare dso_local i64 @sdp_error(i8*) #2

declare dso_local i8* @strerror(i64) #2

declare dso_local i64 @sdp_register_service(i8*, i32, i32*, i8*, i32, i32*) #2

declare dso_local i32 @accept(i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @sdp_unregister_service(i8*, i32) #2

declare dso_local i32 @sdp_close(i8*) #2

declare dso_local i64 @rfcomm_channel_lookup(i32*, i32*, i32, i32*, i32*) #2

declare dso_local i32 @errc(i32, i32, i8*) #2

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #2

declare dso_local i64 @daemon(i32, i32) #2

declare dso_local i32 @openlog(i32, i32, i32) #2

declare dso_local i32 @syslog(i32, i8*, ...) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i64, i32*, i32*, i32*, i32*) #2

declare dso_local i64 @max(i32, i32) #2

declare dso_local i64 @FD_ISSET(i32, i32*) #2

declare dso_local i32 @sppd_read(i32, i8*, i32) #2

declare dso_local i64 @sppd_write(i32, i8*, i32) #2

declare dso_local i32 @closelog(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
