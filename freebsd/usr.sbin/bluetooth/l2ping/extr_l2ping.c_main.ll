; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2ping/extr_l2ping.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2ping/extr_l2ping.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostent = type { i8*, i8* }
%struct.sockaddr_l2cap = type { i32, i8, i8* }
%struct.ng_btsocket_l2cap_raw_ping = type { i32, i32, i8* }
%struct.timeval = type { i32, i64 }
%struct.sockaddr = type { i32 }

@NG_HCI_BDADDR_ANY = common dso_local global i8* null, align 8
@NG_L2CAP_MAX_ECHO_SIZE = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate echo data buffer\00", align 1
@NG_L2CAP_MTU_MINIMUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"a:c:fi:nS:s:h\00", align 1
@optarg = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@h_errno = common dso_local global i32 0, align 4
@AF_BLUETOOTH = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Failed to create remote hostname\00", align 1
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Could not create socket\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Could not bind socket, src bdaddr=%s\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"Could not connect socket, dst bdaddr=%s\00", align 1
@PATTERN_SIZE = common dso_local global i32 0, align 4
@pattern = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"Could not gettimeofday(a)\00", align 1
@SIOC_L2CAP_L2CA_PING = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [26 x i8] c"Could not gettimeofday(b)\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [55 x i8] c"%d bytes from %s seq_no=%d time=%.3f ms result=%#x %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.hostent*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sockaddr_l2cap, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.ng_btsocket_l2cap_raw_ping, align 8
  %22 = alloca %struct.timeval, align 8
  %23 = alloca %struct.timeval, align 8
  %24 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %25 = load i8*, i8** @NG_HCI_BDADDR_ANY, align 8
  %26 = call i32 @memcpy(i8* %6, i8* %25, i32 1)
  %27 = load i8*, i8** @NG_HCI_BDADDR_ANY, align 8
  %28 = call i32 @memcpy(i8* %7, i8* %27, i32 1)
  %29 = load i32, i32* @NG_L2CAP_MAX_ECHO_SIZE, align 4
  %30 = call i64 @calloc(i32 %29, i32 1)
  %31 = inttoptr i64 %30 to i8*
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %37 = call i32 @exit(i32 1) #3
  unreachable

38:                                               ; preds = %2
  %39 = load i32, i32* @NG_L2CAP_MTU_MINIMUM, align 4
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %16, align 4
  store i32 -1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %43

43:                                               ; preds = %137, %38
  %44 = load i32, i32* %4, align 4
  %45 = load i8**, i8*** %5, align 8
  %46 = call i32 @getopt(i32 %44, i8** %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 %46, i32* %11, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %138

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  switch i32 %49, label %135 [
    i32 97, label %50
    i32 99, label %69
    i32 102, label %82
    i32 105, label %83
    i32 110, label %96
    i32 83, label %97
    i32 115, label %116
    i32 104, label %134
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* @optarg, align 4
  %52 = call i32 @bt_aton(i32 %51, i8* %7)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* @optarg, align 4
  %56 = call %struct.hostent* @bt_gethostbyname(i32 %55)
  store %struct.hostent* %56, %struct.hostent** %8, align 8
  %57 = icmp eq %struct.hostent* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %54
  %59 = load i32, i32* @optarg, align 4
  %60 = load i32, i32* @h_errno, align 4
  %61 = call i32 @hstrerror(i32 %60)
  %62 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %61)
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.hostent*, %struct.hostent** %8, align 8
  %65 = getelementptr inbounds %struct.hostent, %struct.hostent* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @memcpy(i8* %7, i8* %66, i32 1)
  br label %68

68:                                               ; preds = %63, %50
  br label %137

69:                                               ; preds = %48
  %70 = load i32, i32* @optarg, align 4
  %71 = call i32 @strtol(i32 %70, i8** %18, i32 10)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load i8*, i8** %18, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74, %69
  %80 = call i32 (...) @usage()
  br label %81

81:                                               ; preds = %79, %74
  br label %137

82:                                               ; preds = %48
  store i32 1, i32* %15, align 4
  br label %137

83:                                               ; preds = %48
  %84 = load i32, i32* @optarg, align 4
  %85 = call i32 @strtol(i32 %84, i8** %18, i32 10)
  store i32 %85, i32* %14, align 4
  %86 = load i32, i32* %14, align 4
  %87 = icmp sle i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load i8*, i8** %18, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88, %83
  %94 = call i32 (...) @usage()
  br label %95

95:                                               ; preds = %93, %88
  br label %137

96:                                               ; preds = %48
  store i32 1, i32* %17, align 4
  br label %137

97:                                               ; preds = %48
  %98 = load i32, i32* @optarg, align 4
  %99 = call i32 @bt_aton(i32 %98, i8* %6)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %115, label %101

101:                                              ; preds = %97
  %102 = load i32, i32* @optarg, align 4
  %103 = call %struct.hostent* @bt_gethostbyname(i32 %102)
  store %struct.hostent* %103, %struct.hostent** %8, align 8
  %104 = icmp eq %struct.hostent* %103, null
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load i32, i32* @optarg, align 4
  %107 = load i32, i32* @h_errno, align 4
  %108 = call i32 @hstrerror(i32 %107)
  %109 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %106, i32 %108)
  br label %110

110:                                              ; preds = %105, %101
  %111 = load %struct.hostent*, %struct.hostent** %8, align 8
  %112 = getelementptr inbounds %struct.hostent, %struct.hostent* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @memcpy(i8* %6, i8* %113, i32 1)
  br label %115

115:                                              ; preds = %110, %97
  br label %137

116:                                              ; preds = %48
  %117 = load i32, i32* @optarg, align 4
  %118 = call i32 @strtol(i32 %117, i8** %18, i32 10)
  store i32 %118, i32* %16, align 4
  %119 = load i32, i32* %16, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ult i64 %120, 4
  br i1 %121, label %131, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* @NG_L2CAP_MAX_ECHO_SIZE, align 4
  %125 = icmp sgt i32 %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %18, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %126, %122, %116
  %132 = call i32 (...) @usage()
  br label %133

133:                                              ; preds = %131, %126
  br label %137

134:                                              ; preds = %48
  br label %135

135:                                              ; preds = %48, %134
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135, %133, %115, %96, %95, %82, %81, %68
  br label %43

138:                                              ; preds = %43
  %139 = load i8*, i8** @NG_HCI_BDADDR_ANY, align 8
  %140 = call i64 @memcmp(i8* %7, i8* %139, i32 1)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = call i32 (...) @usage()
  br label %144

144:                                              ; preds = %142, %138
  %145 = load i8*, i8** @AF_BLUETOOTH, align 8
  %146 = call %struct.hostent* @bt_gethostbyaddr(i8* %7, i32 1, i8* %145)
  store %struct.hostent* %146, %struct.hostent** %8, align 8
  %147 = load %struct.hostent*, %struct.hostent** %8, align 8
  %148 = icmp eq %struct.hostent* %147, null
  br i1 %148, label %165, label %149

149:                                              ; preds = %144
  %150 = load %struct.hostent*, %struct.hostent** %8, align 8
  %151 = getelementptr inbounds %struct.hostent, %struct.hostent* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = icmp eq i8* %152, null
  br i1 %153, label %165, label %154

154:                                              ; preds = %149
  %155 = load %struct.hostent*, %struct.hostent** %8, align 8
  %156 = getelementptr inbounds %struct.hostent, %struct.hostent* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 0
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %154
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162, %154, %149, %144
  %166 = call i32 @bt_ntoa(i8* %7, i32* null)
  %167 = call i32 @asprintf(i8** %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %166)
  br label %173

168:                                              ; preds = %162
  %169 = load %struct.hostent*, %struct.hostent** %8, align 8
  %170 = getelementptr inbounds %struct.hostent, %struct.hostent* %169, i32 0, i32 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i8* @strdup(i8* %171)
  store i8* %172, i8** %19, align 8
  br label %173

173:                                              ; preds = %168, %165
  %174 = load i8*, i8** %19, align 8
  %175 = icmp eq i8* %174, null
  br i1 %175, label %176, label %178

176:                                              ; preds = %173
  %177 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %178

178:                                              ; preds = %176, %173
  %179 = load i32, i32* @PF_BLUETOOTH, align 4
  %180 = load i32, i32* @SOCK_RAW, align 4
  %181 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %182 = call i32 @socket(i32 %179, i32 %180, i32 %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %187

187:                                              ; preds = %185, %178
  %188 = call i32 @memset(%struct.sockaddr_l2cap* %10, i32 0, i32 16)
  %189 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 0
  store i32 16, i32* %189, align 8
  %190 = load i8*, i8** @AF_BLUETOOTH, align 8
  %191 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 2
  store i8* %190, i8** %191, align 8
  %192 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 1
  %193 = call i32 @memcpy(i8* %192, i8* %6, i32 1)
  %194 = load i32, i32* %12, align 4
  %195 = bitcast %struct.sockaddr_l2cap* %10 to %struct.sockaddr*
  %196 = call i64 @bind(i32 %194, %struct.sockaddr* %195, i32 16)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %187
  %199 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 1
  %200 = call i32 @bt_ntoa(i8* %199, i32* null)
  %201 = call i32 (i32, i8*, ...) @err(i32 3, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %200)
  br label %202

202:                                              ; preds = %198, %187
  %203 = call i32 @memset(%struct.sockaddr_l2cap* %10, i32 0, i32 16)
  %204 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 0
  store i32 16, i32* %204, align 8
  %205 = load i8*, i8** @AF_BLUETOOTH, align 8
  %206 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 2
  store i8* %205, i8** %206, align 8
  %207 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 1
  %208 = call i32 @memcpy(i8* %207, i8* %7, i32 1)
  %209 = load i32, i32* %12, align 4
  %210 = bitcast %struct.sockaddr_l2cap* %10 to %struct.sockaddr*
  %211 = call i64 @connect(i32 %209, %struct.sockaddr* %210, i32 16)
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %202
  %214 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %10, i32 0, i32 1
  %215 = call i32 @bt_ntoa(i8* %214, i32* null)
  %216 = call i32 (i32, i8*, ...) @err(i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0), i32 %215)
  br label %217

217:                                              ; preds = %213, %202
  store i32 0, i32* %11, align 4
  br label %218

218:                                              ; preds = %222, %217
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %238

222:                                              ; preds = %218
  %223 = load i32, i32* %16, align 4
  %224 = load i32, i32* %11, align 4
  %225 = sub nsw i32 %223, %224
  %226 = load i32, i32* @PATTERN_SIZE, align 4
  %227 = call i32 @min(i32 %225, i32 %226)
  store i32 %227, i32* %20, align 4
  %228 = load i8*, i8** %9, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %228, i64 %230
  %232 = load i8*, i8** @pattern, align 8
  %233 = load i32, i32* %20, align 4
  %234 = call i32 @memcpy(i8* %231, i8* %232, i32 %233)
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %11, align 4
  br label %218

238:                                              ; preds = %218
  store i32 0, i32* %11, align 4
  br label %239

239:                                              ; preds = %311, %238
  %240 = load i32, i32* %13, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %245, label %242

242:                                              ; preds = %239
  %243 = load i32, i32* %13, align 4
  %244 = icmp sgt i32 %243, 0
  br label %245

245:                                              ; preds = %242, %239
  %246 = phi i1 [ true, %239 ], [ %244, %242 ]
  br i1 %246, label %247, label %314

247:                                              ; preds = %245
  %248 = call i64 @gettimeofday(%struct.timeval* %22, i32* null)
  %249 = icmp slt i64 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = call i32 (i32, i8*, ...) @err(i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %252

252:                                              ; preds = %250, %247
  store i32 0, i32* %24, align 4
  %253 = load i32, i32* %11, align 4
  %254 = call i32 @htonl(i32 %253)
  %255 = load i8*, i8** %9, align 8
  %256 = bitcast i8* %255 to i32*
  store i32 %254, i32* %256, align 4
  %257 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 0, i32 0
  store i32 0, i32* %257, align 8
  %258 = load i32, i32* %16, align 4
  %259 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 0, i32 1
  store i32 %258, i32* %259, align 4
  %260 = load i8*, i8** %9, align 8
  %261 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 0, i32 2
  store i8* %260, i8** %261, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @SIOC_L2CAP_L2CA_PING, align 4
  %264 = call i64 @ioctl(i32 %262, i32 %263, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 16)
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %252
  %267 = load i32, i32* @errno, align 4
  %268 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 0, i32 0
  store i32 %267, i32* %268, align 8
  store i32 1, i32* %24, align 4
  br label %269

269:                                              ; preds = %266, %252
  %270 = call i64 @gettimeofday(%struct.timeval* %23, i32* null)
  %271 = icmp slt i64 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %269
  %273 = call i32 (i32, i8*, ...) @err(i32 7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0))
  br label %274

274:                                              ; preds = %272, %269
  %275 = call i32 @tv_sub(%struct.timeval* %23, %struct.timeval* %22)
  %276 = load i32, i32* @stdout, align 4
  %277 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = load i8*, i8** %19, align 8
  %280 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 0, i32 2
  %281 = load i8*, i8** %280, align 8
  %282 = bitcast i8* %281 to i32*
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @ntohl(i32 %283)
  %285 = call double @tv2msec(%struct.timeval* %23)
  %286 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_ping, %struct.ng_btsocket_l2cap_raw_ping* %21, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* %24, align 4
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %274
  br label %294

291:                                              ; preds = %274
  %292 = load i32, i32* @errno, align 4
  %293 = call i8* @strerror(i32 %292)
  br label %294

294:                                              ; preds = %291, %290
  %295 = phi i8* [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %290 ], [ %293, %291 ]
  %296 = call i32 (i32, i8*, ...) @fprintf(i32 %276, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %278, i8* %279, i32 %284, double %285, i32 %287, i8* %295)
  %297 = load i32, i32* %15, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %294
  %300 = load i32, i32* %14, align 4
  %301 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 0
  store i32 %300, i32* %301, align 8
  %302 = getelementptr inbounds %struct.timeval, %struct.timeval* %22, i32 0, i32 1
  store i64 0, i64* %302, align 8
  %303 = call i32 @select(i32 0, i32* null, i32* null, i32* null, %struct.timeval* %22)
  br label %304

304:                                              ; preds = %299, %294
  %305 = load i32, i32* %13, align 4
  %306 = icmp ne i32 %305, -1
  br i1 %306, label %307, label %310

307:                                              ; preds = %304
  %308 = load i32, i32* %13, align 4
  %309 = add nsw i32 %308, -1
  store i32 %309, i32* %13, align 4
  br label %310

310:                                              ; preds = %307, %304
  br label %311

311:                                              ; preds = %310
  %312 = load i32, i32* %11, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %11, align 4
  br label %239

314:                                              ; preds = %245
  %315 = load i8*, i8** %19, align 8
  %316 = call i32 @free(i8* %315)
  %317 = load i8*, i8** %9, align 8
  %318 = call i32 @free(i8* %317)
  %319 = load i32, i32* %12, align 4
  %320 = call i32 @close(i32 %319)
  ret i32 0
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @bt_aton(i32, i8*) #1

declare dso_local %struct.hostent* @bt_gethostbyname(i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @hstrerror(i32) #1

declare dso_local i32 @strtol(i32, i8**, i32) #1

declare dso_local i32 @usage(...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local %struct.hostent* @bt_gethostbyaddr(i8*, i32, i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i32) #1

declare dso_local i32 @bt_ntoa(i8*, i32*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.sockaddr_l2cap*, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_l2cap_raw_ping*, i32) #1

declare dso_local i32 @tv_sub(%struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local double @tv2msec(%struct.timeval*) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
