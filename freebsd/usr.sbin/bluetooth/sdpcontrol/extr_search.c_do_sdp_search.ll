; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_do_sdp_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/sdpcontrol/extr_search.c_do_sdp_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i32 }

@SDP_SERVICE_CLASS_COMMON_ISDN_ACCESS = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_CORDLESS_TELEPHONY = common dso_local global i32 0, align 4
@USAGE = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_DIALUP_NETWORKING = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_FAX = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_OBEX_FILE_TRANSFER = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_GN = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_HUMAN_INTERFACE_DEVICE = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_HEADSET = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_NAP = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_OBEX_OBJECT_PUSH = common dso_local global i32 0, align 4
@SDP_SERVICE_CLASS_SERIAL_PORT = common dso_local global i32 0, align 4
@values_len = common dso_local global i64 0, align 8
@SDP_ATTR_INVALID = common dso_local global i64 0, align 8
@values = common dso_local global %struct.TYPE_3__* null, align 8
@BSIZE = common dso_local global i32 0, align 4
@buffer = common dso_local global i32* null, align 8
@attrs_len = common dso_local global i32 0, align 4
@attrs = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SDP_ATTR_OK = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@SDP_DATA_UINT32 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Record Handle: %#8.8x\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Invalid type=%#x Record Handle attribute!\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Invalid size=%d for Record Handle attribute\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Service Class ID List:\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"Protocol Descriptor List:\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Bluetooth Profile Descriptor List:\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Unexpected attribute ID=%#4.4x\0A\00", align 1
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8**)* @do_sdp_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_sdp_search(i8* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i8* null, i8** %8, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %91 [
    i32 1, label %14
  ]

14:                                               ; preds = %3
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i64 @strtoul(i8* %17, i8** %8, i32 16)
  store i64 %18, i64* %9, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %87

23:                                               ; preds = %14
  %24 = load i8**, i8*** %7, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = call i32 @tolower(i8 signext %28)
  switch i32 %29, label %84 [
    i32 99, label %30
    i32 100, label %44
    i32 102, label %46
    i32 103, label %60
    i32 104, label %62
    i32 108, label %76
    i32 110, label %78
    i32 111, label %80
    i32 115, label %82
  ]

30:                                               ; preds = %23
  %31 = load i8**, i8*** %7, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = call i32 @tolower(i8 signext %35)
  switch i32 %36, label %41 [
    i32 105, label %37
    i32 116, label %39
  ]

37:                                               ; preds = %30
  %38 = load i32, i32* @SDP_SERVICE_CLASS_COMMON_ISDN_ACCESS, align 4
  store i32 %38, i32* %12, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* @SDP_SERVICE_CLASS_CORDLESS_TELEPHONY, align 4
  store i32 %40, i32* %12, align 4
  br label %43

41:                                               ; preds = %30
  %42 = load i32, i32* @USAGE, align 4
  store i32 %42, i32* %4, align 4
  br label %274

43:                                               ; preds = %39, %37
  br label %86

44:                                               ; preds = %23
  %45 = load i32, i32* @SDP_SERVICE_CLASS_DIALUP_NETWORKING, align 4
  store i32 %45, i32* %12, align 4
  br label %86

46:                                               ; preds = %23
  %47 = load i8**, i8*** %7, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 1
  %51 = load i8, i8* %50, align 1
  %52 = call i32 @tolower(i8 signext %51)
  switch i32 %52, label %57 [
    i32 97, label %53
    i32 116, label %55
  ]

53:                                               ; preds = %46
  %54 = load i32, i32* @SDP_SERVICE_CLASS_FAX, align 4
  store i32 %54, i32* %12, align 4
  br label %59

55:                                               ; preds = %46
  %56 = load i32, i32* @SDP_SERVICE_CLASS_OBEX_FILE_TRANSFER, align 4
  store i32 %56, i32* %12, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @USAGE, align 4
  store i32 %58, i32* %4, align 4
  br label %274

59:                                               ; preds = %55, %53
  br label %86

60:                                               ; preds = %23
  %61 = load i32, i32* @SDP_SERVICE_CLASS_GN, align 4
  store i32 %61, i32* %12, align 4
  br label %86

62:                                               ; preds = %23
  %63 = load i8**, i8*** %7, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 1
  %67 = load i8, i8* %66, align 1
  %68 = call i32 @tolower(i8 signext %67)
  switch i32 %68, label %73 [
    i32 105, label %69
    i32 115, label %71
  ]

69:                                               ; preds = %62
  %70 = load i32, i32* @SDP_SERVICE_CLASS_HUMAN_INTERFACE_DEVICE, align 4
  store i32 %70, i32* %12, align 4
  br label %75

71:                                               ; preds = %62
  %72 = load i32, i32* @SDP_SERVICE_CLASS_HEADSET, align 4
  store i32 %72, i32* %12, align 4
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @USAGE, align 4
  store i32 %74, i32* %4, align 4
  br label %274

75:                                               ; preds = %71, %69
  br label %86

76:                                               ; preds = %23
  %77 = load i32, i32* @SDP_SERVICE_CLASS_LAN_ACCESS_USING_PPP, align 4
  store i32 %77, i32* %12, align 4
  br label %86

78:                                               ; preds = %23
  %79 = load i32, i32* @SDP_SERVICE_CLASS_NAP, align 4
  store i32 %79, i32* %12, align 4
  br label %86

80:                                               ; preds = %23
  %81 = load i32, i32* @SDP_SERVICE_CLASS_OBEX_OBJECT_PUSH, align 4
  store i32 %81, i32* %12, align 4
  br label %86

82:                                               ; preds = %23
  %83 = load i32, i32* @SDP_SERVICE_CLASS_SERIAL_PORT, align 4
  store i32 %83, i32* %12, align 4
  br label %86

84:                                               ; preds = %23
  %85 = load i32, i32* @USAGE, align 4
  store i32 %85, i32* %4, align 4
  br label %274

86:                                               ; preds = %82, %80, %78, %76, %75, %60, %59, %44, %43
  br label %90

87:                                               ; preds = %14
  %88 = load i64, i64* %9, align 8
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %12, align 4
  br label %90

90:                                               ; preds = %87, %86
  br label %93

91:                                               ; preds = %3
  %92 = load i32, i32* @USAGE, align 4
  store i32 %92, i32* %4, align 4
  br label %274

93:                                               ; preds = %90
  store i64 0, i64* %9, align 8
  br label %94

94:                                               ; preds = %121, %93
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* @values_len, align 8
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %94
  %99 = load i64, i64* @SDP_ATTR_INVALID, align 8
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i64 %99, i64* %103, align 8
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %105 = load i64, i64* %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 1
  store i32 0, i32* %107, align 8
  %108 = load i32, i32* @BSIZE, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 2
  store i32 %108, i32* %112, align 4
  %113 = load i32*, i32** @buffer, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %118 = load i64, i64* %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 3
  store i32 %116, i32* %120, align 8
  br label %121

121:                                              ; preds = %98
  %122 = load i64, i64* %9, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %9, align 8
  br label %94

124:                                              ; preds = %94
  %125 = load i8*, i8** %5, align 8
  %126 = load i32, i32* @attrs_len, align 4
  %127 = load i32, i32* @attrs, align 4
  %128 = load i64, i64* @values_len, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %130 = call i64 @sdp_search(i8* %125, i32 1, i32* %12, i32 %126, i32 %127, i64 %128, %struct.TYPE_3__* %129)
  store i64 %130, i64* %9, align 8
  %131 = load i64, i64* %9, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %124
  %134 = load i32, i32* @ERROR, align 4
  store i32 %134, i32* %4, align 4
  br label %274

135:                                              ; preds = %124
  store i64 0, i64* %9, align 8
  br label %136

136:                                              ; preds = %269, %135
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @values_len, align 8
  %139 = icmp ult i64 %137, %138
  br i1 %139, label %140, label %272

140:                                              ; preds = %136
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @SDP_ATTR_OK, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %272

149:                                              ; preds = %140
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %151 = load i64, i64* %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %260 [
    i32 128, label %155
    i32 129, label %200
    i32 130, label %220
    i32 131, label %240
  ]

155:                                              ; preds = %149
  %156 = load i32, i32* @stdout, align 4
  %157 = call i32 (i32, i8*, ...) @fprintf(i32 %156, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %159 = load i64, i64* %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %162, 5
  br i1 %163, label %164, label %191

164:                                              ; preds = %155
  %165 = load i64, i64* %10, align 8
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %167 = load i64, i64* %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @SDP_GET8(i64 %165, i32 %170)
  %172 = load i64, i64* %10, align 8
  %173 = load i64, i64* @SDP_DATA_UINT32, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %164
  %176 = load i64, i64* %11, align 8
  %177 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %178 = load i64, i64* %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @SDP_GET32(i64 %176, i32 %181)
  %183 = load i32, i32* @stdout, align 4
  %184 = load i64, i64* %11, align 8
  %185 = call i32 (i32, i8*, ...) @fprintf(i32 %183, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %184)
  br label %190

186:                                              ; preds = %164
  %187 = load i32, i32* @stderr, align 4
  %188 = load i64, i64* %10, align 8
  %189 = call i32 (i32, i8*, ...) @fprintf(i32 %187, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %188)
  br label %190

190:                                              ; preds = %186, %175
  br label %199

191:                                              ; preds = %155
  %192 = load i32, i32* @stderr, align 4
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i64 %194
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i32, i8*, ...) @fprintf(i32 %192, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 %197)
  br label %199

199:                                              ; preds = %191, %190
  br label %268

200:                                              ; preds = %149
  %201 = load i32, i32* @stdout, align 4
  %202 = call i32 (i32, i8*, ...) @fprintf(i32 %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %203 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %204 = load i64, i64* %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %209 = load i64, i64* %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %214 = load i64, i64* %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %212, %217
  %219 = call i32 @print_service_class_id_list(i32 %207, i32 %218)
  br label %268

220:                                              ; preds = %149
  %221 = load i32, i32* @stdout, align 4
  %222 = call i32 (i32, i8*, ...) @fprintf(i32 %221, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %223 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %224 = load i64, i64* %9, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %229 = load i64, i64* %9, align 8
  %230 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %234 = load i64, i64* %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i64 %234
  %236 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %232, %237
  %239 = call i32 @print_protocol_descriptor_list(i32 %227, i32 %238)
  br label %268

240:                                              ; preds = %149
  %241 = load i32, i32* @stdout, align 4
  %242 = call i32 (i32, i8*, ...) @fprintf(i32 %241, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %243 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %244 = load i64, i64* %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %249 = load i64, i64* %9, align 8
  %250 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %248, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %254 = load i64, i64* %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %255, i32 0, i32 2
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %252, %257
  %259 = call i32 @print_bluetooth_profile_descriptor_list(i32 %247, i32 %258)
  br label %268

260:                                              ; preds = %149
  %261 = load i32, i32* @stderr, align 4
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** @values, align 8
  %263 = load i64, i64* %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 8
  %267 = call i32 (i32, i8*, ...) @fprintf(i32 %261, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %266)
  br label %268

268:                                              ; preds = %260, %240, %220, %200, %199
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %9, align 8
  %271 = add i64 %270, 1
  store i64 %271, i64* %9, align 8
  br label %136

272:                                              ; preds = %148, %136
  %273 = load i32, i32* @OK, align 4
  store i32 %273, i32* %4, align 4
  br label %274

274:                                              ; preds = %272, %133, %91, %84, %73, %57, %41
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i64 @sdp_search(i8*, i32, i32*, i32, i32, i64, %struct.TYPE_3__*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @SDP_GET8(i64, i32) #1

declare dso_local i32 @SDP_GET32(i64, i32) #1

declare dso_local i32 @print_service_class_id_list(i32, i32) #1

declare dso_local i32 @print_protocol_descriptor_list(i32, i32) #1

declare dso_local i32 @print_bluetooth_profile_descriptor_list(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
