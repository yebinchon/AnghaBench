; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_server.c_server_process_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpd/extr_server.c_server_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, %struct.TYPE_18__*, i32*, i32 }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i64, i64, i32*, i32 }
%struct.TYPE_20__ = type { i32, i64, i64 }

@NG_L2CAP_MTU_MINIMUM = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"Could not receive SDP request from %s socket. %s (%d)\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"control\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"L2CAP\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Client on %s socket has disconnected\00", align 1
@SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX = common dso_local global i64 0, align 8
@SDP_ERROR_CODE_INVALID_PDU_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [77 x i8] c"Could not send SDP response to %s socket, pdu->pid=%d, pdu->tid=%d, error=%d\00", align 1
@.str.5 = private unnamed_addr constant [102 x i8] c"Could not process SDP request from %s socket, pdu->pid=%d, pdu->tid=%d, pdu->len=%d, len=%d, error=%d\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"Could not send SDP error response to %s socket, pdu->pid=%d, pdu->tid=%d, error=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_19__*, i64)* @server_process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @server_process_request(%struct.TYPE_19__* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.TYPE_20__*
  store %struct.TYPE_20__* %12, %struct.TYPE_20__** %6, align 8
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 3
  %28 = call i32 @FD_ISSET(i64 %25, i32* %27)
  %29 = call i32 @assert(i32 %28)
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %60, align 8
  %62 = load i64, i64* %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NG_L2CAP_MTU_MINIMUM, align 8
  %67 = icmp sge i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  br label %70

70:                                               ; preds = %86, %2
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call i64 @read(i64 %71, i32* %74, i64 %77)
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %70
  %80 = load i64, i64* %7, align 8
  %81 = icmp ult i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i64, i64* @errno, align 8
  %84 = load i64, i64* @EINTR, align 8
  %85 = icmp eq i64 %83, %84
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i1 [ false, %79 ], [ %85, %82 ]
  br i1 %87, label %70, label %88

88:                                               ; preds = %86
  %89 = load i64, i64* %7, align 8
  %90 = icmp ult i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 1
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %102 = load i64, i64* @errno, align 8
  %103 = call i32 @strerror(i64 %102)
  %104 = load i64, i64* @errno, align 8
  %105 = call i32 (i8*, i8*, i32, i64, ...) @log_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i8* %101, i32 %103, i64 %104)
  store i64 -1, i64* %3, align 8
  br label %299

106:                                              ; preds = %88
  %107 = load i64, i64* %7, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  %118 = zext i1 %117 to i64
  %119 = select i1 %117, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %120 = call i32 @log_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %119)
  store i64 -1, i64* %3, align 8
  br label %299

121:                                              ; preds = %106
  %122 = load i64, i64* %7, align 8
  %123 = icmp uge i64 %122, 24
  br i1 %123, label %124, label %165

124:                                              ; preds = %121
  %125 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = call i64 @ntohs(i64 %127)
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = add i64 24, %128
  %132 = load i64, i64* %7, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %124
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  switch i32 %137, label %162 [
    i32 129, label %138
    i32 133, label %142
    i32 130, label %146
    i32 131, label %150
    i32 128, label %154
    i32 132, label %158
  ]

138:                                              ; preds = %134
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %140 = load i64, i64* %5, align 8
  %141 = call i64 @server_prepare_service_search_response(%struct.TYPE_19__* %139, i64 %140)
  store i64 %141, i64* %8, align 8
  br label %164

142:                                              ; preds = %134
  %143 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %144 = load i64, i64* %5, align 8
  %145 = call i64 @server_prepare_service_attribute_response(%struct.TYPE_19__* %143, i64 %144)
  store i64 %145, i64* %8, align 8
  br label %164

146:                                              ; preds = %134
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %148 = load i64, i64* %5, align 8
  %149 = call i64 @server_prepare_service_search_attribute_response(%struct.TYPE_19__* %147, i64 %148)
  store i64 %149, i64* %8, align 8
  br label %164

150:                                              ; preds = %134
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %152 = load i64, i64* %5, align 8
  %153 = call i64 @server_prepare_service_register_response(%struct.TYPE_19__* %151, i64 %152)
  store i64 %153, i64* %8, align 8
  br label %164

154:                                              ; preds = %134
  %155 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %156 = load i64, i64* %5, align 8
  %157 = call i64 @server_prepare_service_unregister_response(%struct.TYPE_19__* %155, i64 %156)
  store i64 %157, i64* %8, align 8
  br label %164

158:                                              ; preds = %134
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %160 = load i64, i64* %5, align 8
  %161 = call i64 @server_prepare_service_change_response(%struct.TYPE_19__* %159, i64 %160)
  store i64 %161, i64* %8, align 8
  br label %164

162:                                              ; preds = %134
  %163 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %163, i64* %8, align 8
  br label %164

164:                                              ; preds = %162, %158, %154, %150, %146, %142, %138
  br label %167

165:                                              ; preds = %124, %121
  %166 = load i64, i64* @SDP_ERROR_CODE_INVALID_PDU_SIZE, align 8
  store i64 %166, i64* %8, align 8
  br label %167

167:                                              ; preds = %165, %164
  %168 = load i64, i64* %8, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %224

170:                                              ; preds = %167
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  switch i32 %173, label %198 [
    i32 129, label %174
    i32 133, label %178
    i32 130, label %182
    i32 131, label %186
    i32 128, label %190
    i32 132, label %194
  ]

174:                                              ; preds = %170
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %176 = load i64, i64* %5, align 8
  %177 = call i64 @server_send_service_search_response(%struct.TYPE_19__* %175, i64 %176)
  store i64 %177, i64* %8, align 8
  br label %200

178:                                              ; preds = %170
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %180 = load i64, i64* %5, align 8
  %181 = call i64 @server_send_service_attribute_response(%struct.TYPE_19__* %179, i64 %180)
  store i64 %181, i64* %8, align 8
  br label %200

182:                                              ; preds = %170
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %184 = load i64, i64* %5, align 8
  %185 = call i64 @server_send_service_search_attribute_response(%struct.TYPE_19__* %183, i64 %184)
  store i64 %185, i64* %8, align 8
  br label %200

186:                                              ; preds = %170
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %188 = load i64, i64* %5, align 8
  %189 = call i64 @server_send_service_register_response(%struct.TYPE_19__* %187, i64 %188)
  store i64 %189, i64* %8, align 8
  br label %200

190:                                              ; preds = %170
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %192 = load i64, i64* %5, align 8
  %193 = call i64 @server_send_service_unregister_response(%struct.TYPE_19__* %191, i64 %192)
  store i64 %193, i64* %8, align 8
  br label %200

194:                                              ; preds = %170
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %196 = load i64, i64* %5, align 8
  %197 = call i64 @server_send_service_change_response(%struct.TYPE_19__* %195, i64 %196)
  store i64 %197, i64* %8, align 8
  br label %200

198:                                              ; preds = %170
  %199 = load i64, i64* @SDP_ERROR_CODE_INVALID_REQUEST_SYNTAX, align 8
  store i64 %199, i64* %8, align 8
  br label %200

200:                                              ; preds = %198, %194, %190, %186, %182, %178, %174
  %201 = load i64, i64* %8, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %223

203:                                              ; preds = %200
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 1
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %205, align 8
  %207 = load i64, i64* %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 5
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  %212 = zext i1 %211 to i64
  %213 = select i1 %211, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = call i64 @ntohs(i64 %219)
  %221 = load i64, i64* %8, align 8
  %222 = call i32 (i8*, i8*, i32, i64, ...) @log_err(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i8* %213, i32 %216, i64 %220, i64 %221)
  br label %223

223:                                              ; preds = %203, %200
  br label %275

224:                                              ; preds = %167
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_18__*, %struct.TYPE_18__** %226, align 8
  %228 = load i64, i64* %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %227, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %229, i32 0, i32 5
  %231 = load i64, i64* %230, align 8
  %232 = icmp ne i64 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = call i64 @ntohs(i64 %240)
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %7, align 8
  %246 = load i64, i64* %8, align 8
  %247 = call i32 (i8*, i8*, i32, i64, ...) @log_err(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.5, i64 0, i64 0), i8* %234, i32 %237, i64 %241, i64 %244, i64 %245, i64 %246)
  %248 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %249 = load i64, i64* %5, align 8
  %250 = load i64, i64* %8, align 8
  %251 = call i64 @server_send_error_response(%struct.TYPE_19__* %248, i64 %249, i64 %250)
  store i64 %251, i64* %8, align 8
  %252 = load i64, i64* %8, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %274

254:                                              ; preds = %224
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 1
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  %258 = load i64, i64* %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %257, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %259, i32 0, i32 5
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  %263 = zext i1 %262 to i64
  %264 = select i1 %262, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %265 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %269 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = call i64 @ntohs(i64 %270)
  %272 = load i64, i64* %8, align 8
  %273 = call i32 (i8*, i8*, i32, i64, ...) @log_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0), i8* %264, i32 %267, i64 %271, i64 %272)
  br label %274

274:                                              ; preds = %254, %224
  br label %275

275:                                              ; preds = %274, %223
  %276 = load i64, i64* %8, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %297

278:                                              ; preds = %275
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 1
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = load i64, i64* %5, align 8
  %283 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 4
  store i64 0, i64* %284, align 8
  %285 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %286 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %285, i32 0, i32 1
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %286, align 8
  %288 = load i64, i64* %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 3
  store i64 0, i64* %290, align 8
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 1
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = load i64, i64* %5, align 8
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %295, i32 0, i32 2
  store i64 0, i64* %296, align 8
  br label %297

297:                                              ; preds = %278, %275
  %298 = load i64, i64* %8, align 8
  store i64 %298, i64* %3, align 8
  br label %299

299:                                              ; preds = %297, %109, %91
  %300 = load i64, i64* %3, align 8
  ret i64 %300
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @FD_ISSET(i64, i32*) #1

declare dso_local i64 @read(i64, i32*, i64) #1

declare dso_local i32 @log_err(i8*, i8*, i32, i64, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @log_info(i8*, i8*) #1

declare dso_local i64 @ntohs(i64) #1

declare dso_local i64 @server_prepare_service_search_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_prepare_service_attribute_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_prepare_service_search_attribute_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_prepare_service_register_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_prepare_service_unregister_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_prepare_service_change_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_send_service_search_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_send_service_attribute_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_send_service_search_attribute_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_send_service_register_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_send_service_unregister_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_send_service_change_response(%struct.TYPE_19__*, i64) #1

declare dso_local i64 @server_send_error_response(%struct.TYPE_19__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
