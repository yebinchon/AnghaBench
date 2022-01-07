; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_server.c_server_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_server.c_server_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i64, i64, i64, i64, i64 }
%struct.sockaddr_l2cap = type { i32, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_4__*, i64, i32, i32, i32, i32, i32 }
%struct.sockaddr = type { i32 }

@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Could not unlink(%s). %s (%d)\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Could not create control socket. %s (%d)\00", align 1
@AF_LOCAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Could not bind control socket. %s (%d)\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@S_IRGRP = common dso_local global i32 0, align 4
@S_IWGRP = common dso_local global i32 0, align 4
@S_IROTH = common dso_local global i32 0, align 4
@S_IWOTH = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Could not change permissions on control socket. %s (%d)\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Could not listen on control socket. %s (%d)\00", align 1
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i32 0, align 4
@BLUETOOTH_PROTO_L2CAP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"Could not create L2CAP socket. %s (%d)\00", align 1
@SOL_L2CAP = common dso_local global i32 0, align 4
@SO_L2CAP_IMTU = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"Could not get L2CAP IMTU. %s (%d)\00", align 1
@AF_BLUETOOTH = common dso_local global i32 0, align 4
@NG_HCI_BDADDR_ANY = common dso_local global i32 0, align 4
@NG_L2CAP_PSM_SDP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Could not bind L2CAP socket. %s (%d)\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Could not listen on L2CAP socket. %s (%d)\00", align 1
@SDP_LOCAL_MTU = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"Could not allocate request buffer\00", align 1
@FD_SETSIZE = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [28 x i8] c"Could not allocate fd index\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"Could not register Service Discovery profile\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @server_init(%struct.sockaddr_un* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_un*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr_un, align 8
  %7 = alloca %struct.sockaddr_l2cap, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %13 = icmp ne %struct.sockaddr_un* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i8*, i8** %5, align 8
  %17 = icmp ne i8* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %21 = call i32 @memset(%struct.sockaddr_un* %20, i32 0, i32 72)
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @unlink(i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i32, i32* @errno, align 4
  %27 = load i32, i32* @ENOENT, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %30, i32 %32, i32 %33)
  store i32 -1, i32* %3, align 4
  br label %383

35:                                               ; preds = %25, %2
  %36 = load i32, i32* @PF_LOCAL, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = call i32 @socket(i32 %36, i32 %37, i32 0)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @strerror(i32 %42)
  %44 = load i32, i32* @errno, align 4
  %45 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  store i32 -1, i32* %3, align 4
  br label %383

46:                                               ; preds = %35
  %47 = call i32 @memset(%struct.sockaddr_un* %6, i32 0, i32 72)
  %48 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 0
  store i32 72, i32* %48, align 8
  %49 = load i32, i32* @AF_LOCAL, align 4
  %50 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 11
  store i32 %49, i32* %50, align 8
  %51 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 10
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @strlcpy(i32 %52, i8* %53, i32 4)
  %55 = load i32, i32* %8, align 4
  %56 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %57 = call i64 @bind(i32 %55, %struct.sockaddr* %56, i32 72)
  %58 = icmp slt i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %46
  %60 = load i32, i32* @errno, align 4
  %61 = call i32 @strerror(i32 %60)
  %62 = load i32, i32* @errno, align 4
  %63 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @close(i32 %64)
  store i32 -1, i32* %3, align 4
  br label %383

66:                                               ; preds = %46
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* @S_IRUSR, align 4
  %69 = load i32, i32* @S_IWUSR, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @S_IRGRP, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @S_IWGRP, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @S_IROTH, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @S_IWOTH, align 4
  %78 = or i32 %76, %77
  %79 = call i64 @chmod(i8* %67, i32 %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %66
  %82 = load i32, i32* @errno, align 4
  %83 = call i32 @strerror(i32 %82)
  %84 = load i32, i32* @errno, align 4
  %85 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %84)
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @close(i32 %86)
  store i32 -1, i32* %3, align 4
  br label %383

88:                                               ; preds = %66
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @listen(i32 %89, i32 10)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %88
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @strerror(i32 %93)
  %95 = load i32, i32* @errno, align 4
  %96 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %95)
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @close(i32 %97)
  store i32 -1, i32* %3, align 4
  br label %383

99:                                               ; preds = %88
  %100 = load i32, i32* @PF_BLUETOOTH, align 4
  %101 = load i32, i32* @SOCK_SEQPACKET, align 4
  %102 = load i32, i32* @BLUETOOTH_PROTO_L2CAP, align 4
  %103 = call i32 @socket(i32 %100, i32 %101, i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %99
  %107 = load i32, i32* @errno, align 4
  %108 = call i32 @strerror(i32 %107)
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @close(i32 %111)
  store i32 -1, i32* %3, align 4
  br label %383

113:                                              ; preds = %99
  store i32 8, i32* %10, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @SOL_L2CAP, align 4
  %116 = load i32, i32* @SO_L2CAP_IMTU, align 4
  %117 = call i64 @getsockopt(i32 %114, i32 %115, i32 %116, i64* %11, i32* %10)
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load i32, i32* @errno, align 4
  %121 = call i32 @strerror(i32 %120)
  %122 = load i32, i32* @errno, align 4
  %123 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i32 %121, i32 %122)
  %124 = load i32, i32* %8, align 4
  %125 = call i32 @close(i32 %124)
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @close(i32 %126)
  store i32 -1, i32* %3, align 4
  br label %383

128:                                              ; preds = %113
  %129 = bitcast %struct.sockaddr_l2cap* %7 to %struct.sockaddr_un*
  %130 = call i32 @memset(%struct.sockaddr_un* %129, i32 0, i32 72)
  %131 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 1
  store i32 72, i32* %131, align 4
  %132 = load i32, i32* @AF_BLUETOOTH, align 4
  %133 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 9
  store i32 %132, i32* %133, align 8
  %134 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 8
  %135 = load i32, i32* @NG_HCI_BDADDR_ANY, align 4
  %136 = call i32 @memcpy(i32* %134, i32 %135, i32 4)
  %137 = load i32, i32* @NG_L2CAP_PSM_SDP, align 4
  %138 = call i32 @htole16(i32 %137)
  %139 = getelementptr inbounds %struct.sockaddr_l2cap, %struct.sockaddr_l2cap* %7, i32 0, i32 7
  store i32 %138, i32* %139, align 8
  %140 = load i32, i32* %9, align 4
  %141 = bitcast %struct.sockaddr_l2cap* %7 to %struct.sockaddr*
  %142 = call i64 @bind(i32 %140, %struct.sockaddr* %141, i32 72)
  %143 = icmp slt i64 %142, 0
  br i1 %143, label %144, label %153

144:                                              ; preds = %128
  %145 = load i32, i32* @errno, align 4
  %146 = call i32 @strerror(i32 %145)
  %147 = load i32, i32* @errno, align 4
  %148 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %146, i32 %147)
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @close(i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = call i32 @close(i32 %151)
  store i32 -1, i32* %3, align 4
  br label %383

153:                                              ; preds = %128
  %154 = load i32, i32* %9, align 4
  %155 = call i64 @listen(i32 %154, i32 10)
  %156 = icmp slt i64 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %153
  %158 = load i32, i32* @errno, align 4
  %159 = call i32 @strerror(i32 %158)
  %160 = load i32, i32* @errno, align 4
  %161 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %159, i32 %160)
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @close(i32 %162)
  %164 = load i32, i32* %9, align 4
  %165 = call i32 @close(i32 %164)
  store i32 -1, i32* %3, align 4
  br label %383

166:                                              ; preds = %153
  %167 = load i64, i64* %11, align 8
  %168 = load i64, i64* @SDP_LOCAL_MTU, align 8
  %169 = icmp sgt i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i64, i64* %11, align 8
  br label %174

172:                                              ; preds = %166
  %173 = load i64, i64* @SDP_LOCAL_MTU, align 8
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi i64 [ %171, %170 ], [ %173, %172 ]
  %176 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %177 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %176, i32 0, i32 6
  store i64 %175, i64* %177, align 8
  %178 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %179 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %178, i32 0, i32 6
  %180 = load i64, i64* %179, align 8
  %181 = call i64 @calloc(i64 %180, i32 64)
  %182 = inttoptr i64 %181 to %struct.TYPE_4__*
  %183 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %184 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %183, i32 0, i32 5
  store %struct.TYPE_4__* %182, %struct.TYPE_4__** %184, align 8
  %185 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %186 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %185, i32 0, i32 5
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = icmp eq %struct.TYPE_4__* %187, null
  br i1 %188, label %189, label %195

189:                                              ; preds = %174
  %190 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @close(i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = call i32 @close(i32 %193)
  store i32 -1, i32* %3, align 4
  br label %383

195:                                              ; preds = %174
  %196 = load i64, i64* @FD_SETSIZE, align 8
  %197 = call i64 @calloc(i64 %196, i32 64)
  %198 = inttoptr i64 %197 to %struct.TYPE_4__*
  %199 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %200 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %199, i32 0, i32 3
  store %struct.TYPE_4__* %198, %struct.TYPE_4__** %200, align 8
  %201 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %202 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %201, i32 0, i32 3
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = icmp eq %struct.TYPE_4__* %203, null
  br i1 %204, label %205, label %215

205:                                              ; preds = %195
  %206 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  %207 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %208 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %207, i32 0, i32 5
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %208, align 8
  %210 = call i32 @free(%struct.TYPE_4__* %209)
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @close(i32 %211)
  %213 = load i32, i32* %9, align 4
  %214 = call i32 @close(i32 %213)
  store i32 -1, i32* %3, align 4
  br label %383

215:                                              ; preds = %195
  %216 = load i32, i32* %8, align 4
  %217 = call i64 @provider_register_sd(i32 %216)
  %218 = icmp slt i64 %217, 0
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = call i32 (i8*, ...) @log_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0))
  %221 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %222 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %221, i32 0, i32 3
  %223 = load %struct.TYPE_4__*, %struct.TYPE_4__** %222, align 8
  %224 = call i32 @free(%struct.TYPE_4__* %223)
  %225 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %226 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %225, i32 0, i32 5
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %226, align 8
  %228 = call i32 @free(%struct.TYPE_4__* %227)
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @close(i32 %229)
  %231 = load i32, i32* %9, align 4
  %232 = call i32 @close(i32 %231)
  store i32 -1, i32* %3, align 4
  br label %383

233:                                              ; preds = %215
  %234 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %235 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %234, i32 0, i32 4
  %236 = call i32 @FD_ZERO(i32* %235)
  %237 = load i32, i32* %8, align 4
  %238 = load i32, i32* %9, align 4
  %239 = icmp sgt i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load i32, i32* %8, align 4
  br label %244

242:                                              ; preds = %233
  %243 = load i32, i32* %9, align 4
  br label %244

244:                                              ; preds = %242, %240
  %245 = phi i32 [ %241, %240 ], [ %243, %242 ]
  %246 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %247 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %246, i32 0, i32 2
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* %8, align 4
  %249 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %250 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %249, i32 0, i32 4
  %251 = call i32 @FD_SET(i32 %248, i32* %250)
  %252 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %253 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %252, i32 0, i32 3
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %257, i32 0, i32 0
  store i32 1, i32* %258, align 8
  %259 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %260 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %259, i32 0, i32 3
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 1
  store i32 1, i32* %265, align 4
  %266 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %267 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %266, i32 0, i32 3
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 2
  store i32 1, i32* %272, align 8
  %273 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %274 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %273, i32 0, i32 3
  %275 = load %struct.TYPE_4__*, %struct.TYPE_4__** %274, align 8
  %276 = load i32, i32* %8, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %275, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 8
  store i64 0, i64* %279, align 8
  %280 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %281 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %280, i32 0, i32 3
  %282 = load %struct.TYPE_4__*, %struct.TYPE_4__** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 7
  store i64 0, i64* %286, align 8
  %287 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %288 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %287, i32 0, i32 3
  %289 = load %struct.TYPE_4__*, %struct.TYPE_4__** %288, align 8
  %290 = load i32, i32* %8, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 6
  store i64 0, i64* %293, align 8
  %294 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %295 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %294, i32 0, i32 3
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %295, align 8
  %297 = load i32, i32* %8, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %296, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %299, i32 0, i32 5
  store i64 0, i64* %300, align 8
  %301 = load i64, i64* @SDP_LOCAL_MTU, align 8
  %302 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %303 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %302, i32 0, i32 3
  %304 = load %struct.TYPE_4__*, %struct.TYPE_4__** %303, align 8
  %305 = load i32, i32* %8, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %307, i32 0, i32 4
  store i64 %301, i64* %308, align 8
  %309 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %310 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %309, i32 0, i32 3
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %314, i32 0, i32 3
  store i32* null, i32** %315, align 8
  %316 = load i32, i32* %9, align 4
  %317 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %318 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %317, i32 0, i32 4
  %319 = call i32 @FD_SET(i32 %316, i32* %318)
  %320 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %321 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %320, i32 0, i32 3
  %322 = load %struct.TYPE_4__*, %struct.TYPE_4__** %321, align 8
  %323 = load i32, i32* %9, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 0
  store i32 1, i32* %326, align 8
  %327 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %328 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %327, i32 0, i32 3
  %329 = load %struct.TYPE_4__*, %struct.TYPE_4__** %328, align 8
  %330 = load i32, i32* %9, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %329, i64 %331
  %333 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %332, i32 0, i32 1
  store i32 1, i32* %333, align 4
  %334 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %335 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %334, i32 0, i32 3
  %336 = load %struct.TYPE_4__*, %struct.TYPE_4__** %335, align 8
  %337 = load i32, i32* %9, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %339, i32 0, i32 2
  store i32 0, i32* %340, align 8
  %341 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %342 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %341, i32 0, i32 3
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** %342, align 8
  %344 = load i32, i32* %9, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 8
  store i64 0, i64* %347, align 8
  %348 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %349 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %348, i32 0, i32 3
  %350 = load %struct.TYPE_4__*, %struct.TYPE_4__** %349, align 8
  %351 = load i32, i32* %9, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %350, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %353, i32 0, i32 7
  store i64 0, i64* %354, align 8
  %355 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %356 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %355, i32 0, i32 3
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  %358 = load i32, i32* %9, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 6
  store i64 0, i64* %361, align 8
  %362 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %363 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %362, i32 0, i32 3
  %364 = load %struct.TYPE_4__*, %struct.TYPE_4__** %363, align 8
  %365 = load i32, i32* %9, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 5
  store i64 0, i64* %368, align 8
  %369 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %370 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %369, i32 0, i32 3
  %371 = load %struct.TYPE_4__*, %struct.TYPE_4__** %370, align 8
  %372 = load i32, i32* %9, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 4
  store i64 0, i64* %375, align 8
  %376 = load %struct.sockaddr_un*, %struct.sockaddr_un** %4, align 8
  %377 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %376, i32 0, i32 3
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** %377, align 8
  %379 = load i32, i32* %9, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 3
  store i32* null, i32** %382, align 8
  store i32 0, i32* %3, align 4
  br label %383

383:                                              ; preds = %244, %219, %205, %189, %157, %144, %119, %106, %92, %81, %59, %41, %29
  %384 = load i32, i32* %3, align 4
  ret i32 %384
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_un*, i32, i32) #1

declare dso_local i64 @unlink(i8*) #1

declare dso_local i32 @log_crit(i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @chmod(i8*, i32) #1

declare dso_local i64 @listen(i32, i32) #1

declare dso_local i64 @getsockopt(i32, i32, i32, i64*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i64 @calloc(i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i64 @provider_register_sd(i32) #1

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
