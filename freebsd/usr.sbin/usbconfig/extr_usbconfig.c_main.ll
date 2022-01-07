; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_usbconfig.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/usbconfig/extr_usbconfig.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.options = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_2__, i32*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i8*, i8*, i8* }
%struct.libusb20_backend = type { i32 }

@options = common dso_local global %struct.options zeroinitializer, align 8
@.str = private unnamed_addr constant [30 x i8] c"could not access USB backend\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Vendor ID\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Product ID\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Low Revision\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"High Revision\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"cannot parse '%s'\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"busnum\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"cfg_index\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"str_index\00", align 1
@LIBUSB20_CONTROL_SETUP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c"bmReqTyp\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"bReq\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"wVal\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"wIndex\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"wLen\00", align 1
@LIBUSB20_ENDPOINT_IN = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c"request data missing\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"req_data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.libusb20_backend*, align 8
  %7 = alloca %struct.options*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.options* @options, %struct.options** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @usage()
  br label %17

17:                                               ; preds = %15, %2
  %18 = call %struct.libusb20_backend* (...) @libusb20_be_alloc_default()
  store %struct.libusb20_backend* %18, %struct.libusb20_backend** %6, align 8
  %19 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %20 = icmp eq %struct.libusb20_backend* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = call i32 @err(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17
  store i32 1, i32* %11, align 4
  br label %24

24:                                               ; preds = %994, %23
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %997

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sub nsw i32 %29, %30
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp sgt i32 %33, 255
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 255, i32* %12, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i8**, i8*** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @get_token(i8* %41, i32 %42)
  switch i32 %43, label %927 [
    i32 155, label %44
    i32 137, label %70
    i32 156, label %96
    i32 138, label %158
    i32 154, label %220
    i32 146, label %239
    i32 148, label %258
    i32 131, label %277
    i32 129, label %280
    i32 128, label %359
    i32 157, label %383
    i32 143, label %398
    i32 133, label %412
    i32 134, label %442
    i32 132, label %472
    i32 144, label %502
    i32 151, label %521
    i32 149, label %540
    i32 150, label %559
    i32 152, label %578
    i32 147, label %597
    i32 145, label %616
    i32 130, label %646
    i32 135, label %665
    i32 141, label %684
    i32 139, label %703
    i32 140, label %722
    i32 136, label %741
    i32 142, label %760
    i32 153, label %779
  ]

44:                                               ; preds = %36
  %45 = load %struct.options*, %struct.options** %7, align 8
  %46 = getelementptr inbounds %struct.options, %struct.options* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %51 = load %struct.options*, %struct.options** %7, align 8
  %52 = call i32 @flush_command(%struct.libusb20_backend* %50, %struct.options* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i8**, i8*** %5, align 8
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %54, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.options*, %struct.options** %7, align 8
  %61 = getelementptr inbounds %struct.options, %struct.options* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %11, align 4
  %64 = load %struct.options*, %struct.options** %7, align 8
  %65 = getelementptr inbounds %struct.options, %struct.options* %64, i32 0, i32 0
  store i32 1, i32* %65, align 8
  %66 = load %struct.options*, %struct.options** %7, align 8
  %67 = getelementptr inbounds %struct.options, %struct.options* %66, i32 0, i32 32
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %993

70:                                               ; preds = %36
  %71 = load %struct.options*, %struct.options** %7, align 8
  %72 = getelementptr inbounds %struct.options, %struct.options* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %77 = load %struct.options*, %struct.options** %7, align 8
  %78 = call i32 @flush_command(%struct.libusb20_backend* %76, %struct.options* %77)
  br label %79

79:                                               ; preds = %75, %70
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* %11, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8*, i8** %80, i64 %83
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.options*, %struct.options** %7, align 8
  %87 = getelementptr inbounds %struct.options, %struct.options* %86, i32 0, i32 1
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = load %struct.options*, %struct.options** %7, align 8
  %91 = getelementptr inbounds %struct.options, %struct.options* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load %struct.options*, %struct.options** %7, align 8
  %93 = getelementptr inbounds %struct.options, %struct.options* %92, i32 0, i32 32
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %993

96:                                               ; preds = %36
  %97 = load %struct.options*, %struct.options** %7, align 8
  %98 = getelementptr inbounds %struct.options, %struct.options* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %103 = load %struct.options*, %struct.options** %7, align 8
  %104 = call i32 @flush_command(%struct.libusb20_backend* %102, %struct.options* %103)
  br label %105

105:                                              ; preds = %101, %96
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %11, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  %112 = call i8* @num_id(i8* %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.options*, %struct.options** %7, align 8
  %114 = getelementptr inbounds %struct.options, %struct.options* %113, i32 0, i32 43
  store i8* %112, i8** %114, align 8
  %115 = load i8**, i8*** %5, align 8
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 2
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %115, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i8* @num_id(i8* %120, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.options*, %struct.options** %7, align 8
  %123 = getelementptr inbounds %struct.options, %struct.options* %122, i32 0, i32 42
  store i8* %121, i8** %123, align 8
  %124 = load i8**, i8*** %5, align 8
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 3
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8*, i8** %124, i64 %127
  %129 = load i8*, i8** %128, align 8
  %130 = call i8* @num_id(i8* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.options*, %struct.options** %7, align 8
  %132 = getelementptr inbounds %struct.options, %struct.options* %131, i32 0, i32 41
  store i8* %130, i8** %132, align 8
  %133 = load i8**, i8*** %5, align 8
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %133, i64 %136
  %138 = load i8*, i8** %137, align 8
  %139 = call i8* @num_id(i8* %138, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.options*, %struct.options** %7, align 8
  %141 = getelementptr inbounds %struct.options, %struct.options* %140, i32 0, i32 40
  store i8* %139, i8** %141, align 8
  %142 = load i8**, i8*** %5, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, 5
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8*, i8** %142, i64 %145
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.options*, %struct.options** %7, align 8
  %149 = getelementptr inbounds %struct.options, %struct.options* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 5
  store i32 %151, i32* %11, align 4
  %152 = load %struct.options*, %struct.options** %7, align 8
  %153 = getelementptr inbounds %struct.options, %struct.options* %152, i32 0, i32 3
  store i32 1, i32* %153, align 4
  %154 = load %struct.options*, %struct.options** %7, align 8
  %155 = getelementptr inbounds %struct.options, %struct.options* %154, i32 0, i32 32
  %156 = load i64, i64* %155, align 8
  %157 = add nsw i64 %156, 1
  store i64 %157, i64* %155, align 8
  br label %993

158:                                              ; preds = %36
  %159 = load %struct.options*, %struct.options** %7, align 8
  %160 = getelementptr inbounds %struct.options, %struct.options* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %158
  %164 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %165 = load %struct.options*, %struct.options** %7, align 8
  %166 = call i32 @flush_command(%struct.libusb20_backend* %164, %struct.options* %165)
  br label %167

167:                                              ; preds = %163, %158
  %168 = load i8**, i8*** %5, align 8
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8*, i8** %168, i64 %171
  %173 = load i8*, i8** %172, align 8
  %174 = call i8* @num_id(i8* %173, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %175 = load %struct.options*, %struct.options** %7, align 8
  %176 = getelementptr inbounds %struct.options, %struct.options* %175, i32 0, i32 43
  store i8* %174, i8** %176, align 8
  %177 = load i8**, i8*** %5, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 2
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %177, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = call i8* @num_id(i8* %182, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %184 = load %struct.options*, %struct.options** %7, align 8
  %185 = getelementptr inbounds %struct.options, %struct.options* %184, i32 0, i32 42
  store i8* %183, i8** %185, align 8
  %186 = load i8**, i8*** %5, align 8
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 3
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i8*, i8** %186, i64 %189
  %191 = load i8*, i8** %190, align 8
  %192 = call i8* @num_id(i8* %191, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %193 = load %struct.options*, %struct.options** %7, align 8
  %194 = getelementptr inbounds %struct.options, %struct.options* %193, i32 0, i32 41
  store i8* %192, i8** %194, align 8
  %195 = load i8**, i8*** %5, align 8
  %196 = load i32, i32* %11, align 4
  %197 = add nsw i32 %196, 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %195, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @num_id(i8* %200, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %202 = load %struct.options*, %struct.options** %7, align 8
  %203 = getelementptr inbounds %struct.options, %struct.options* %202, i32 0, i32 40
  store i8* %201, i8** %203, align 8
  %204 = load i8**, i8*** %5, align 8
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 5
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %204, i64 %207
  %209 = load i8*, i8** %208, align 8
  %210 = load %struct.options*, %struct.options** %7, align 8
  %211 = getelementptr inbounds %struct.options, %struct.options* %210, i32 0, i32 1
  store i8* %209, i8** %211, align 8
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 5
  store i32 %213, i32* %11, align 4
  %214 = load %struct.options*, %struct.options** %7, align 8
  %215 = getelementptr inbounds %struct.options, %struct.options* %214, i32 0, i32 4
  store i32 1, i32* %215, align 8
  %216 = load %struct.options*, %struct.options** %7, align 8
  %217 = getelementptr inbounds %struct.options, %struct.options* %216, i32 0, i32 32
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  br label %993

220:                                              ; preds = %36
  %221 = load %struct.options*, %struct.options** %7, align 8
  %222 = getelementptr inbounds %struct.options, %struct.options* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %232

225:                                              ; preds = %220
  %226 = load i8**, i8*** %5, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8*, i8** %226, i64 %228
  %230 = load i8*, i8** %229, align 8
  %231 = call i32 @duplicate_option(i8* %230)
  br label %232

232:                                              ; preds = %225, %220
  %233 = load %struct.options*, %struct.options** %7, align 8
  %234 = getelementptr inbounds %struct.options, %struct.options* %233, i32 0, i32 5
  store i32 1, i32* %234, align 4
  %235 = load %struct.options*, %struct.options** %7, align 8
  %236 = getelementptr inbounds %struct.options, %struct.options* %235, i32 0, i32 32
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 %237, 1
  store i64 %238, i64* %236, align 8
  br label %993

239:                                              ; preds = %36
  %240 = load %struct.options*, %struct.options** %7, align 8
  %241 = getelementptr inbounds %struct.options, %struct.options* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %251

244:                                              ; preds = %239
  %245 = load i8**, i8*** %5, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8*, i8** %245, i64 %247
  %249 = load i8*, i8** %248, align 8
  %250 = call i32 @duplicate_option(i8* %249)
  br label %251

251:                                              ; preds = %244, %239
  %252 = load %struct.options*, %struct.options** %7, align 8
  %253 = getelementptr inbounds %struct.options, %struct.options* %252, i32 0, i32 6
  store i32 1, i32* %253, align 8
  %254 = load %struct.options*, %struct.options** %7, align 8
  %255 = getelementptr inbounds %struct.options, %struct.options* %254, i32 0, i32 32
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %256, 1
  store i64 %257, i64* %255, align 8
  br label %993

258:                                              ; preds = %36
  %259 = load %struct.options*, %struct.options** %7, align 8
  %260 = getelementptr inbounds %struct.options, %struct.options* %259, i32 0, i32 7
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %270

263:                                              ; preds = %258
  %264 = load i8**, i8*** %5, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i8*, i8** %264, i64 %266
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 @duplicate_option(i8* %268)
  br label %270

270:                                              ; preds = %263, %258
  %271 = load %struct.options*, %struct.options** %7, align 8
  %272 = getelementptr inbounds %struct.options, %struct.options* %271, i32 0, i32 7
  store i32 1, i32* %272, align 4
  %273 = load %struct.options*, %struct.options** %7, align 8
  %274 = getelementptr inbounds %struct.options, %struct.options* %273, i32 0, i32 32
  %275 = load i64, i64* %274, align 8
  %276 = add nsw i64 %275, 1
  store i64 %276, i64* %274, align 8
  br label %993

277:                                              ; preds = %36
  %278 = load %struct.options*, %struct.options** %7, align 8
  %279 = getelementptr inbounds %struct.options, %struct.options* %278, i32 0, i32 8
  store i32 1, i32* %279, align 8
  br label %993

280:                                              ; preds = %36
  %281 = load %struct.options*, %struct.options** %7, align 8
  %282 = getelementptr inbounds %struct.options, %struct.options* %281, i32 0, i32 32
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %289

285:                                              ; preds = %280
  %286 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %287 = load %struct.options*, %struct.options** %7, align 8
  %288 = call i32 @flush_command(%struct.libusb20_backend* %286, %struct.options* %287)
  br label %289

289:                                              ; preds = %285, %280
  %290 = load i8**, i8*** %5, align 8
  %291 = load i32, i32* %11, align 4
  %292 = add nsw i32 %291, 1
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i8*, i8** %290, i64 %293
  %295 = load i8*, i8** %294, align 8
  store i8* %295, i8** %8, align 8
  %296 = load i8*, i8** %8, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 0
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = icmp eq i32 %299, 117
  br i1 %300, label %301, label %322

301:                                              ; preds = %289
  %302 = load i8*, i8** %8, align 8
  %303 = getelementptr inbounds i8, i8* %302, i64 1
  %304 = load i8, i8* %303, align 1
  %305 = sext i8 %304 to i32
  %306 = icmp eq i32 %305, 103
  br i1 %306, label %307, label %322

307:                                              ; preds = %301
  %308 = load i8*, i8** %8, align 8
  %309 = getelementptr inbounds i8, i8* %308, i64 2
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 101
  br i1 %312, label %313, label %322

313:                                              ; preds = %307
  %314 = load i8*, i8** %8, align 8
  %315 = getelementptr inbounds i8, i8* %314, i64 3
  %316 = load i8, i8* %315, align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %317, 110
  br i1 %318, label %319, label %322

319:                                              ; preds = %313
  %320 = load i8*, i8** %8, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 4
  store i8* %321, i8** %8, align 8
  br label %322

322:                                              ; preds = %319, %313, %307, %301, %289
  %323 = load i8*, i8** %8, align 8
  %324 = call i32 @sscanf(i8* %323, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32* %10)
  %325 = icmp ne i32 %324, 2
  br i1 %325, label %338, label %326

326:                                              ; preds = %322
  %327 = load i32, i32* %9, align 4
  %328 = icmp slt i32 %327, 0
  br i1 %328, label %338, label %329

329:                                              ; preds = %326
  %330 = load i32, i32* %9, align 4
  %331 = icmp sgt i32 %330, 65535
  br i1 %331, label %338, label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %10, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %338, label %335

335:                                              ; preds = %332
  %336 = load i32, i32* %10, align 4
  %337 = icmp sgt i32 %336, 65535
  br i1 %337, label %338, label %346

338:                                              ; preds = %335, %332, %329, %326, %322
  %339 = load i8**, i8*** %5, align 8
  %340 = load i32, i32* %11, align 4
  %341 = add nsw i32 %340, 1
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i8*, i8** %339, i64 %342
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @errx(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i8* %344)
  br label %346

346:                                              ; preds = %338, %335
  %347 = load i32, i32* %9, align 4
  %348 = load %struct.options*, %struct.options** %7, align 8
  %349 = getelementptr inbounds %struct.options, %struct.options* %348, i32 0, i32 9
  store i32 %347, i32* %349, align 4
  %350 = load i32, i32* %10, align 4
  %351 = load %struct.options*, %struct.options** %7, align 8
  %352 = getelementptr inbounds %struct.options, %struct.options* %351, i32 0, i32 10
  store i32 %350, i32* %352, align 8
  %353 = load %struct.options*, %struct.options** %7, align 8
  %354 = getelementptr inbounds %struct.options, %struct.options* %353, i32 0, i32 11
  store i32 1, i32* %354, align 4
  %355 = load %struct.options*, %struct.options** %7, align 8
  %356 = getelementptr inbounds %struct.options, %struct.options* %355, i32 0, i32 12
  store i32 1, i32* %356, align 8
  %357 = load i32, i32* %11, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %11, align 4
  br label %993

359:                                              ; preds = %36
  %360 = load %struct.options*, %struct.options** %7, align 8
  %361 = getelementptr inbounds %struct.options, %struct.options* %360, i32 0, i32 32
  %362 = load i64, i64* %361, align 8
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %359
  %365 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %366 = load %struct.options*, %struct.options** %7, align 8
  %367 = call i32 @flush_command(%struct.libusb20_backend* %365, %struct.options* %366)
  br label %368

368:                                              ; preds = %364, %359
  %369 = load i8**, i8*** %5, align 8
  %370 = load i32, i32* %11, align 4
  %371 = add nsw i32 %370, 1
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i8*, i8** %369, i64 %372
  %374 = load i8*, i8** %373, align 8
  %375 = call i8* @num_id(i8* %374, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %376 = ptrtoint i8* %375 to i32
  %377 = load %struct.options*, %struct.options** %7, align 8
  %378 = getelementptr inbounds %struct.options, %struct.options* %377, i32 0, i32 9
  store i32 %376, i32* %378, align 4
  %379 = load %struct.options*, %struct.options** %7, align 8
  %380 = getelementptr inbounds %struct.options, %struct.options* %379, i32 0, i32 11
  store i32 1, i32* %380, align 4
  %381 = load i32, i32* %11, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %11, align 4
  br label %993

383:                                              ; preds = %36
  %384 = load i8**, i8*** %5, align 8
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %385, 1
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i8*, i8** %384, i64 %387
  %389 = load i8*, i8** %388, align 8
  %390 = call i8* @num_id(i8* %389, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %391 = ptrtoint i8* %390 to i32
  %392 = load %struct.options*, %struct.options** %7, align 8
  %393 = getelementptr inbounds %struct.options, %struct.options* %392, i32 0, i32 10
  store i32 %391, i32* %393, align 8
  %394 = load %struct.options*, %struct.options** %7, align 8
  %395 = getelementptr inbounds %struct.options, %struct.options* %394, i32 0, i32 12
  store i32 1, i32* %395, align 8
  %396 = load i32, i32* %11, align 4
  %397 = add nsw i32 %396, 1
  store i32 %397, i32* %11, align 4
  br label %993

398:                                              ; preds = %36
  %399 = load i8**, i8*** %5, align 8
  %400 = load i32, i32* %11, align 4
  %401 = add nsw i32 %400, 1
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i8*, i8** %399, i64 %402
  %404 = load i8*, i8** %403, align 8
  %405 = call i8* @num_id(i8* %404, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %406 = load %struct.options*, %struct.options** %7, align 8
  %407 = getelementptr inbounds %struct.options, %struct.options* %406, i32 0, i32 39
  store i8* %405, i8** %407, align 8
  %408 = load %struct.options*, %struct.options** %7, align 8
  %409 = getelementptr inbounds %struct.options, %struct.options* %408, i32 0, i32 13
  store i32 1, i32* %409, align 4
  %410 = load i32, i32* %11, align 4
  %411 = add nsw i32 %410, 1
  store i32 %411, i32* %11, align 4
  br label %993

412:                                              ; preds = %36
  %413 = load %struct.options*, %struct.options** %7, align 8
  %414 = getelementptr inbounds %struct.options, %struct.options* %413, i32 0, i32 14
  %415 = load i32, i32* %414, align 8
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %424

417:                                              ; preds = %412
  %418 = load i8**, i8*** %5, align 8
  %419 = load i32, i32* %11, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i8*, i8** %418, i64 %420
  %422 = load i8*, i8** %421, align 8
  %423 = call i32 @duplicate_option(i8* %422)
  br label %424

424:                                              ; preds = %417, %412
  %425 = load i8**, i8*** %5, align 8
  %426 = load i32, i32* %11, align 4
  %427 = add nsw i32 %426, 1
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i8*, i8** %425, i64 %428
  %430 = load i8*, i8** %429, align 8
  %431 = call i8* @num_id(i8* %430, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %432 = load %struct.options*, %struct.options** %7, align 8
  %433 = getelementptr inbounds %struct.options, %struct.options* %432, i32 0, i32 38
  store i8* %431, i8** %433, align 8
  %434 = load %struct.options*, %struct.options** %7, align 8
  %435 = getelementptr inbounds %struct.options, %struct.options* %434, i32 0, i32 14
  store i32 1, i32* %435, align 8
  %436 = load %struct.options*, %struct.options** %7, align 8
  %437 = getelementptr inbounds %struct.options, %struct.options* %436, i32 0, i32 32
  %438 = load i64, i64* %437, align 8
  %439 = add nsw i64 %438, 1
  store i64 %439, i64* %437, align 8
  %440 = load i32, i32* %11, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %11, align 4
  br label %993

442:                                              ; preds = %36
  %443 = load %struct.options*, %struct.options** %7, align 8
  %444 = getelementptr inbounds %struct.options, %struct.options* %443, i32 0, i32 15
  %445 = load i32, i32* %444, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %442
  %448 = load i8**, i8*** %5, align 8
  %449 = load i32, i32* %11, align 4
  %450 = sext i32 %449 to i64
  %451 = getelementptr inbounds i8*, i8** %448, i64 %450
  %452 = load i8*, i8** %451, align 8
  %453 = call i32 @duplicate_option(i8* %452)
  br label %454

454:                                              ; preds = %447, %442
  %455 = load i8**, i8*** %5, align 8
  %456 = load i32, i32* %11, align 4
  %457 = add nsw i32 %456, 1
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds i8*, i8** %455, i64 %458
  %460 = load i8*, i8** %459, align 8
  %461 = call i8* @num_id(i8* %460, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %462 = load %struct.options*, %struct.options** %7, align 8
  %463 = getelementptr inbounds %struct.options, %struct.options* %462, i32 0, i32 37
  store i8* %461, i8** %463, align 8
  %464 = load %struct.options*, %struct.options** %7, align 8
  %465 = getelementptr inbounds %struct.options, %struct.options* %464, i32 0, i32 15
  store i32 1, i32* %465, align 4
  %466 = load %struct.options*, %struct.options** %7, align 8
  %467 = getelementptr inbounds %struct.options, %struct.options* %466, i32 0, i32 32
  %468 = load i64, i64* %467, align 8
  %469 = add nsw i64 %468, 1
  store i64 %469, i64* %467, align 8
  %470 = load i32, i32* %11, align 4
  %471 = add nsw i32 %470, 1
  store i32 %471, i32* %11, align 4
  br label %993

472:                                              ; preds = %36
  %473 = load %struct.options*, %struct.options** %7, align 8
  %474 = getelementptr inbounds %struct.options, %struct.options* %473, i32 0, i32 16
  %475 = load i32, i32* %474, align 8
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %484

477:                                              ; preds = %472
  %478 = load i8**, i8*** %5, align 8
  %479 = load i32, i32* %11, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds i8*, i8** %478, i64 %480
  %482 = load i8*, i8** %481, align 8
  %483 = call i32 @duplicate_option(i8* %482)
  br label %484

484:                                              ; preds = %477, %472
  %485 = load i8**, i8*** %5, align 8
  %486 = load i32, i32* %11, align 4
  %487 = add nsw i32 %486, 1
  %488 = sext i32 %487 to i64
  %489 = getelementptr inbounds i8*, i8** %485, i64 %488
  %490 = load i8*, i8** %489, align 8
  %491 = call i32 @get_int(i8* %490)
  %492 = load %struct.options*, %struct.options** %7, align 8
  %493 = getelementptr inbounds %struct.options, %struct.options* %492, i32 0, i32 36
  store i32 %491, i32* %493, align 8
  %494 = load %struct.options*, %struct.options** %7, align 8
  %495 = getelementptr inbounds %struct.options, %struct.options* %494, i32 0, i32 16
  store i32 1, i32* %495, align 8
  %496 = load %struct.options*, %struct.options** %7, align 8
  %497 = getelementptr inbounds %struct.options, %struct.options* %496, i32 0, i32 32
  %498 = load i64, i64* %497, align 8
  %499 = add nsw i64 %498, 1
  store i64 %499, i64* %497, align 8
  %500 = load i32, i32* %11, align 4
  %501 = add nsw i32 %500, 1
  store i32 %501, i32* %11, align 4
  br label %993

502:                                              ; preds = %36
  %503 = load %struct.options*, %struct.options** %7, align 8
  %504 = getelementptr inbounds %struct.options, %struct.options* %503, i32 0, i32 17
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %514

507:                                              ; preds = %502
  %508 = load i8**, i8*** %5, align 8
  %509 = load i32, i32* %11, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i8*, i8** %508, i64 %510
  %512 = load i8*, i8** %511, align 8
  %513 = call i32 @duplicate_option(i8* %512)
  br label %514

514:                                              ; preds = %507, %502
  %515 = load %struct.options*, %struct.options** %7, align 8
  %516 = getelementptr inbounds %struct.options, %struct.options* %515, i32 0, i32 17
  store i32 1, i32* %516, align 4
  %517 = load %struct.options*, %struct.options** %7, align 8
  %518 = getelementptr inbounds %struct.options, %struct.options* %517, i32 0, i32 32
  %519 = load i64, i64* %518, align 8
  %520 = add nsw i64 %519, 1
  store i64 %520, i64* %518, align 8
  br label %993

521:                                              ; preds = %36
  %522 = load %struct.options*, %struct.options** %7, align 8
  %523 = getelementptr inbounds %struct.options, %struct.options* %522, i32 0, i32 18
  %524 = load i32, i32* %523, align 8
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %533

526:                                              ; preds = %521
  %527 = load i8**, i8*** %5, align 8
  %528 = load i32, i32* %11, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i8*, i8** %527, i64 %529
  %531 = load i8*, i8** %530, align 8
  %532 = call i32 @duplicate_option(i8* %531)
  br label %533

533:                                              ; preds = %526, %521
  %534 = load %struct.options*, %struct.options** %7, align 8
  %535 = getelementptr inbounds %struct.options, %struct.options* %534, i32 0, i32 18
  store i32 1, i32* %535, align 8
  %536 = load %struct.options*, %struct.options** %7, align 8
  %537 = getelementptr inbounds %struct.options, %struct.options* %536, i32 0, i32 32
  %538 = load i64, i64* %537, align 8
  %539 = add nsw i64 %538, 1
  store i64 %539, i64* %537, align 8
  br label %993

540:                                              ; preds = %36
  %541 = load %struct.options*, %struct.options** %7, align 8
  %542 = getelementptr inbounds %struct.options, %struct.options* %541, i32 0, i32 19
  %543 = load i32, i32* %542, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %545, label %552

545:                                              ; preds = %540
  %546 = load i8**, i8*** %5, align 8
  %547 = load i32, i32* %11, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i8*, i8** %546, i64 %548
  %550 = load i8*, i8** %549, align 8
  %551 = call i32 @duplicate_option(i8* %550)
  br label %552

552:                                              ; preds = %545, %540
  %553 = load %struct.options*, %struct.options** %7, align 8
  %554 = getelementptr inbounds %struct.options, %struct.options* %553, i32 0, i32 19
  store i32 1, i32* %554, align 4
  %555 = load %struct.options*, %struct.options** %7, align 8
  %556 = getelementptr inbounds %struct.options, %struct.options* %555, i32 0, i32 32
  %557 = load i64, i64* %556, align 8
  %558 = add nsw i64 %557, 1
  store i64 %558, i64* %556, align 8
  br label %993

559:                                              ; preds = %36
  %560 = load %struct.options*, %struct.options** %7, align 8
  %561 = getelementptr inbounds %struct.options, %struct.options* %560, i32 0, i32 20
  %562 = load i32, i32* %561, align 8
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %571

564:                                              ; preds = %559
  %565 = load i8**, i8*** %5, align 8
  %566 = load i32, i32* %11, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i8*, i8** %565, i64 %567
  %569 = load i8*, i8** %568, align 8
  %570 = call i32 @duplicate_option(i8* %569)
  br label %571

571:                                              ; preds = %564, %559
  %572 = load %struct.options*, %struct.options** %7, align 8
  %573 = getelementptr inbounds %struct.options, %struct.options* %572, i32 0, i32 20
  store i32 1, i32* %573, align 8
  %574 = load %struct.options*, %struct.options** %7, align 8
  %575 = getelementptr inbounds %struct.options, %struct.options* %574, i32 0, i32 32
  %576 = load i64, i64* %575, align 8
  %577 = add nsw i64 %576, 1
  store i64 %577, i64* %575, align 8
  br label %993

578:                                              ; preds = %36
  %579 = load %struct.options*, %struct.options** %7, align 8
  %580 = getelementptr inbounds %struct.options, %struct.options* %579, i32 0, i32 21
  %581 = load i32, i32* %580, align 4
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %590

583:                                              ; preds = %578
  %584 = load i8**, i8*** %5, align 8
  %585 = load i32, i32* %11, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i8*, i8** %584, i64 %586
  %588 = load i8*, i8** %587, align 8
  %589 = call i32 @duplicate_option(i8* %588)
  br label %590

590:                                              ; preds = %583, %578
  %591 = load %struct.options*, %struct.options** %7, align 8
  %592 = getelementptr inbounds %struct.options, %struct.options* %591, i32 0, i32 21
  store i32 1, i32* %592, align 4
  %593 = load %struct.options*, %struct.options** %7, align 8
  %594 = getelementptr inbounds %struct.options, %struct.options* %593, i32 0, i32 32
  %595 = load i64, i64* %594, align 8
  %596 = add nsw i64 %595, 1
  store i64 %596, i64* %594, align 8
  br label %993

597:                                              ; preds = %36
  %598 = load %struct.options*, %struct.options** %7, align 8
  %599 = getelementptr inbounds %struct.options, %struct.options* %598, i32 0, i32 22
  %600 = load i32, i32* %599, align 8
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %609

602:                                              ; preds = %597
  %603 = load i8**, i8*** %5, align 8
  %604 = load i32, i32* %11, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i8*, i8** %603, i64 %605
  %607 = load i8*, i8** %606, align 8
  %608 = call i32 @duplicate_option(i8* %607)
  br label %609

609:                                              ; preds = %602, %597
  %610 = load %struct.options*, %struct.options** %7, align 8
  %611 = getelementptr inbounds %struct.options, %struct.options* %610, i32 0, i32 22
  store i32 1, i32* %611, align 8
  %612 = load %struct.options*, %struct.options** %7, align 8
  %613 = getelementptr inbounds %struct.options, %struct.options* %612, i32 0, i32 32
  %614 = load i64, i64* %613, align 8
  %615 = add nsw i64 %614, 1
  store i64 %615, i64* %613, align 8
  br label %993

616:                                              ; preds = %36
  %617 = load %struct.options*, %struct.options** %7, align 8
  %618 = getelementptr inbounds %struct.options, %struct.options* %617, i32 0, i32 23
  %619 = load i32, i32* %618, align 4
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %621, label %628

621:                                              ; preds = %616
  %622 = load i8**, i8*** %5, align 8
  %623 = load i32, i32* %11, align 4
  %624 = sext i32 %623 to i64
  %625 = getelementptr inbounds i8*, i8** %622, i64 %624
  %626 = load i8*, i8** %625, align 8
  %627 = call i32 @duplicate_option(i8* %626)
  br label %628

628:                                              ; preds = %621, %616
  %629 = load i8**, i8*** %5, align 8
  %630 = load i32, i32* %11, align 4
  %631 = add nsw i32 %630, 1
  %632 = sext i32 %631 to i64
  %633 = getelementptr inbounds i8*, i8** %629, i64 %632
  %634 = load i8*, i8** %633, align 8
  %635 = call i8* @num_id(i8* %634, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  %636 = load %struct.options*, %struct.options** %7, align 8
  %637 = getelementptr inbounds %struct.options, %struct.options* %636, i32 0, i32 35
  store i8* %635, i8** %637, align 8
  %638 = load %struct.options*, %struct.options** %7, align 8
  %639 = getelementptr inbounds %struct.options, %struct.options* %638, i32 0, i32 23
  store i32 1, i32* %639, align 4
  %640 = load %struct.options*, %struct.options** %7, align 8
  %641 = getelementptr inbounds %struct.options, %struct.options* %640, i32 0, i32 32
  %642 = load i64, i64* %641, align 8
  %643 = add nsw i64 %642, 1
  store i64 %643, i64* %641, align 8
  %644 = load i32, i32* %11, align 4
  %645 = add nsw i32 %644, 1
  store i32 %645, i32* %11, align 4
  br label %993

646:                                              ; preds = %36
  %647 = load %struct.options*, %struct.options** %7, align 8
  %648 = getelementptr inbounds %struct.options, %struct.options* %647, i32 0, i32 24
  %649 = load i32, i32* %648, align 8
  %650 = icmp ne i32 %649, 0
  br i1 %650, label %651, label %658

651:                                              ; preds = %646
  %652 = load i8**, i8*** %5, align 8
  %653 = load i32, i32* %11, align 4
  %654 = sext i32 %653 to i64
  %655 = getelementptr inbounds i8*, i8** %652, i64 %654
  %656 = load i8*, i8** %655, align 8
  %657 = call i32 @duplicate_option(i8* %656)
  br label %658

658:                                              ; preds = %651, %646
  %659 = load %struct.options*, %struct.options** %7, align 8
  %660 = getelementptr inbounds %struct.options, %struct.options* %659, i32 0, i32 24
  store i32 1, i32* %660, align 8
  %661 = load %struct.options*, %struct.options** %7, align 8
  %662 = getelementptr inbounds %struct.options, %struct.options* %661, i32 0, i32 32
  %663 = load i64, i64* %662, align 8
  %664 = add nsw i64 %663, 1
  store i64 %664, i64* %662, align 8
  br label %993

665:                                              ; preds = %36
  %666 = load %struct.options*, %struct.options** %7, align 8
  %667 = getelementptr inbounds %struct.options, %struct.options* %666, i32 0, i32 25
  %668 = load i32, i32* %667, align 4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %677

670:                                              ; preds = %665
  %671 = load i8**, i8*** %5, align 8
  %672 = load i32, i32* %11, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds i8*, i8** %671, i64 %673
  %675 = load i8*, i8** %674, align 8
  %676 = call i32 @duplicate_option(i8* %675)
  br label %677

677:                                              ; preds = %670, %665
  %678 = load %struct.options*, %struct.options** %7, align 8
  %679 = getelementptr inbounds %struct.options, %struct.options* %678, i32 0, i32 25
  store i32 1, i32* %679, align 4
  %680 = load %struct.options*, %struct.options** %7, align 8
  %681 = getelementptr inbounds %struct.options, %struct.options* %680, i32 0, i32 32
  %682 = load i64, i64* %681, align 8
  %683 = add nsw i64 %682, 1
  store i64 %683, i64* %681, align 8
  br label %993

684:                                              ; preds = %36
  %685 = load %struct.options*, %struct.options** %7, align 8
  %686 = getelementptr inbounds %struct.options, %struct.options* %685, i32 0, i32 26
  %687 = load i32, i32* %686, align 8
  %688 = icmp ne i32 %687, 0
  br i1 %688, label %689, label %696

689:                                              ; preds = %684
  %690 = load i8**, i8*** %5, align 8
  %691 = load i32, i32* %11, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds i8*, i8** %690, i64 %692
  %694 = load i8*, i8** %693, align 8
  %695 = call i32 @duplicate_option(i8* %694)
  br label %696

696:                                              ; preds = %689, %684
  %697 = load %struct.options*, %struct.options** %7, align 8
  %698 = getelementptr inbounds %struct.options, %struct.options* %697, i32 0, i32 26
  store i32 1, i32* %698, align 8
  %699 = load %struct.options*, %struct.options** %7, align 8
  %700 = getelementptr inbounds %struct.options, %struct.options* %699, i32 0, i32 32
  %701 = load i64, i64* %700, align 8
  %702 = add nsw i64 %701, 1
  store i64 %702, i64* %700, align 8
  br label %993

703:                                              ; preds = %36
  %704 = load %struct.options*, %struct.options** %7, align 8
  %705 = getelementptr inbounds %struct.options, %struct.options* %704, i32 0, i32 27
  %706 = load i32, i32* %705, align 4
  %707 = icmp ne i32 %706, 0
  br i1 %707, label %708, label %715

708:                                              ; preds = %703
  %709 = load i8**, i8*** %5, align 8
  %710 = load i32, i32* %11, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds i8*, i8** %709, i64 %711
  %713 = load i8*, i8** %712, align 8
  %714 = call i32 @duplicate_option(i8* %713)
  br label %715

715:                                              ; preds = %708, %703
  %716 = load %struct.options*, %struct.options** %7, align 8
  %717 = getelementptr inbounds %struct.options, %struct.options* %716, i32 0, i32 27
  store i32 1, i32* %717, align 4
  %718 = load %struct.options*, %struct.options** %7, align 8
  %719 = getelementptr inbounds %struct.options, %struct.options* %718, i32 0, i32 32
  %720 = load i64, i64* %719, align 8
  %721 = add nsw i64 %720, 1
  store i64 %721, i64* %719, align 8
  br label %993

722:                                              ; preds = %36
  %723 = load %struct.options*, %struct.options** %7, align 8
  %724 = getelementptr inbounds %struct.options, %struct.options* %723, i32 0, i32 28
  %725 = load i32, i32* %724, align 8
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %734

727:                                              ; preds = %722
  %728 = load i8**, i8*** %5, align 8
  %729 = load i32, i32* %11, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds i8*, i8** %728, i64 %730
  %732 = load i8*, i8** %731, align 8
  %733 = call i32 @duplicate_option(i8* %732)
  br label %734

734:                                              ; preds = %727, %722
  %735 = load %struct.options*, %struct.options** %7, align 8
  %736 = getelementptr inbounds %struct.options, %struct.options* %735, i32 0, i32 28
  store i32 1, i32* %736, align 8
  %737 = load %struct.options*, %struct.options** %7, align 8
  %738 = getelementptr inbounds %struct.options, %struct.options* %737, i32 0, i32 32
  %739 = load i64, i64* %738, align 8
  %740 = add nsw i64 %739, 1
  store i64 %740, i64* %738, align 8
  br label %993

741:                                              ; preds = %36
  %742 = load %struct.options*, %struct.options** %7, align 8
  %743 = getelementptr inbounds %struct.options, %struct.options* %742, i32 0, i32 29
  %744 = load i32, i32* %743, align 4
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %753

746:                                              ; preds = %741
  %747 = load i8**, i8*** %5, align 8
  %748 = load i32, i32* %11, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds i8*, i8** %747, i64 %749
  %751 = load i8*, i8** %750, align 8
  %752 = call i32 @duplicate_option(i8* %751)
  br label %753

753:                                              ; preds = %746, %741
  %754 = load %struct.options*, %struct.options** %7, align 8
  %755 = getelementptr inbounds %struct.options, %struct.options* %754, i32 0, i32 29
  store i32 1, i32* %755, align 4
  %756 = load %struct.options*, %struct.options** %7, align 8
  %757 = getelementptr inbounds %struct.options, %struct.options* %756, i32 0, i32 32
  %758 = load i64, i64* %757, align 8
  %759 = add nsw i64 %758, 1
  store i64 %759, i64* %757, align 8
  br label %993

760:                                              ; preds = %36
  %761 = load %struct.options*, %struct.options** %7, align 8
  %762 = getelementptr inbounds %struct.options, %struct.options* %761, i32 0, i32 30
  %763 = load i32, i32* %762, align 8
  %764 = icmp ne i32 %763, 0
  br i1 %764, label %765, label %772

765:                                              ; preds = %760
  %766 = load i8**, i8*** %5, align 8
  %767 = load i32, i32* %11, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i8*, i8** %766, i64 %768
  %770 = load i8*, i8** %769, align 8
  %771 = call i32 @duplicate_option(i8* %770)
  br label %772

772:                                              ; preds = %765, %760
  %773 = load %struct.options*, %struct.options** %7, align 8
  %774 = getelementptr inbounds %struct.options, %struct.options* %773, i32 0, i32 30
  store i32 1, i32* %774, align 8
  %775 = load %struct.options*, %struct.options** %7, align 8
  %776 = getelementptr inbounds %struct.options, %struct.options* %775, i32 0, i32 32
  %777 = load i64, i64* %776, align 8
  %778 = add nsw i64 %777, 1
  store i64 %778, i64* %776, align 8
  br label %993

779:                                              ; preds = %36
  %780 = load %struct.options*, %struct.options** %7, align 8
  %781 = getelementptr inbounds %struct.options, %struct.options* %780, i32 0, i32 31
  %782 = load i32, i32* %781, align 4
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %791

784:                                              ; preds = %779
  %785 = load i8**, i8*** %5, align 8
  %786 = load i32, i32* %11, align 4
  %787 = sext i32 %786 to i64
  %788 = getelementptr inbounds i8*, i8** %785, i64 %787
  %789 = load i8*, i8** %788, align 8
  %790 = call i32 @duplicate_option(i8* %789)
  br label %791

791:                                              ; preds = %784, %779
  %792 = load i32, i32* @LIBUSB20_CONTROL_SETUP, align 4
  %793 = load %struct.options*, %struct.options** %7, align 8
  %794 = getelementptr inbounds %struct.options, %struct.options* %793, i32 0, i32 33
  %795 = call i32 @LIBUSB20_INIT(i32 %792, %struct.TYPE_2__* %794)
  %796 = load i8**, i8*** %5, align 8
  %797 = load i32, i32* %11, align 4
  %798 = add nsw i32 %797, 1
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds i8*, i8** %796, i64 %799
  %801 = load i8*, i8** %800, align 8
  %802 = call i8* @num_id(i8* %801, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  %803 = ptrtoint i8* %802 to i32
  %804 = load %struct.options*, %struct.options** %7, align 8
  %805 = getelementptr inbounds %struct.options, %struct.options* %804, i32 0, i32 33
  %806 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %805, i32 0, i32 0
  store i32 %803, i32* %806, align 8
  %807 = load i8**, i8*** %5, align 8
  %808 = load i32, i32* %11, align 4
  %809 = add nsw i32 %808, 2
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i8*, i8** %807, i64 %810
  %812 = load i8*, i8** %811, align 8
  %813 = call i8* @num_id(i8* %812, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %814 = load %struct.options*, %struct.options** %7, align 8
  %815 = getelementptr inbounds %struct.options, %struct.options* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %815, i32 0, i32 4
  store i8* %813, i8** %816, align 8
  %817 = load i8**, i8*** %5, align 8
  %818 = load i32, i32* %11, align 4
  %819 = add nsw i32 %818, 3
  %820 = sext i32 %819 to i64
  %821 = getelementptr inbounds i8*, i8** %817, i64 %820
  %822 = load i8*, i8** %821, align 8
  %823 = call i8* @num_id(i8* %822, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %824 = load %struct.options*, %struct.options** %7, align 8
  %825 = getelementptr inbounds %struct.options, %struct.options* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %825, i32 0, i32 3
  store i8* %823, i8** %826, align 8
  %827 = load i8**, i8*** %5, align 8
  %828 = load i32, i32* %11, align 4
  %829 = add nsw i32 %828, 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds i8*, i8** %827, i64 %830
  %832 = load i8*, i8** %831, align 8
  %833 = call i8* @num_id(i8* %832, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0))
  %834 = load %struct.options*, %struct.options** %7, align 8
  %835 = getelementptr inbounds %struct.options, %struct.options* %834, i32 0, i32 33
  %836 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %835, i32 0, i32 2
  store i8* %833, i8** %836, align 8
  %837 = load i8**, i8*** %5, align 8
  %838 = load i32, i32* %11, align 4
  %839 = add nsw i32 %838, 5
  %840 = sext i32 %839 to i64
  %841 = getelementptr inbounds i8*, i8** %837, i64 %840
  %842 = load i8*, i8** %841, align 8
  %843 = call i8* @num_id(i8* %842, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  %844 = ptrtoint i8* %843 to i32
  %845 = load %struct.options*, %struct.options** %7, align 8
  %846 = getelementptr inbounds %struct.options, %struct.options* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %846, i32 0, i32 1
  store i32 %844, i32* %847, align 4
  %848 = load %struct.options*, %struct.options** %7, align 8
  %849 = getelementptr inbounds %struct.options, %struct.options* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %849, i32 0, i32 1
  %851 = load i32, i32* %850, align 4
  %852 = icmp ne i32 %851, 0
  br i1 %852, label %853, label %861

853:                                              ; preds = %791
  %854 = load %struct.options*, %struct.options** %7, align 8
  %855 = getelementptr inbounds %struct.options, %struct.options* %854, i32 0, i32 33
  %856 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %855, i32 0, i32 1
  %857 = load i32, i32* %856, align 4
  %858 = call i32* @malloc(i32 %857)
  %859 = load %struct.options*, %struct.options** %7, align 8
  %860 = getelementptr inbounds %struct.options, %struct.options* %859, i32 0, i32 34
  store i32* %858, i32** %860, align 8
  br label %864

861:                                              ; preds = %791
  %862 = load %struct.options*, %struct.options** %7, align 8
  %863 = getelementptr inbounds %struct.options, %struct.options* %862, i32 0, i32 34
  store i32* null, i32** %863, align 8
  br label %864

864:                                              ; preds = %861, %853
  %865 = load i32, i32* %11, align 4
  %866 = add nsw i32 %865, 5
  store i32 %866, i32* %11, align 4
  %867 = load %struct.options*, %struct.options** %7, align 8
  %868 = getelementptr inbounds %struct.options, %struct.options* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %868, i32 0, i32 0
  %870 = load i32, i32* %869, align 8
  %871 = load i32, i32* @LIBUSB20_ENDPOINT_IN, align 4
  %872 = and i32 %870, %871
  %873 = icmp ne i32 %872, 0
  br i1 %873, label %920, label %874

874:                                              ; preds = %864
  %875 = load i32, i32* %4, align 4
  %876 = load i32, i32* %11, align 4
  %877 = sub nsw i32 %875, %876
  %878 = sub nsw i32 %877, 1
  store i32 %878, i32* %12, align 4
  %879 = load i32, i32* %12, align 4
  %880 = load %struct.options*, %struct.options** %7, align 8
  %881 = getelementptr inbounds %struct.options, %struct.options* %880, i32 0, i32 33
  %882 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %881, i32 0, i32 1
  %883 = load i32, i32* %882, align 4
  %884 = icmp slt i32 %879, %883
  br i1 %884, label %885, label %887

885:                                              ; preds = %874
  %886 = call i32 @err(i32 1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0))
  br label %887

887:                                              ; preds = %885, %874
  %888 = load %struct.options*, %struct.options** %7, align 8
  %889 = getelementptr inbounds %struct.options, %struct.options* %888, i32 0, i32 33
  %890 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %889, i32 0, i32 1
  %891 = load i32, i32* %890, align 4
  store i32 %891, i32* %12, align 4
  br label %892

892:                                              ; preds = %896, %887
  %893 = load i32, i32* %12, align 4
  %894 = add nsw i32 %893, -1
  store i32 %894, i32* %12, align 4
  %895 = icmp ne i32 %893, 0
  br i1 %895, label %896, label %913

896:                                              ; preds = %892
  %897 = load i8**, i8*** %5, align 8
  %898 = load i32, i32* %11, align 4
  %899 = load i32, i32* %12, align 4
  %900 = add nsw i32 %898, %899
  %901 = add nsw i32 %900, 1
  %902 = sext i32 %901 to i64
  %903 = getelementptr inbounds i8*, i8** %897, i64 %902
  %904 = load i8*, i8** %903, align 8
  %905 = call i8* @num_id(i8* %904, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %906 = load %struct.options*, %struct.options** %7, align 8
  %907 = getelementptr inbounds %struct.options, %struct.options* %906, i32 0, i32 34
  %908 = load i32*, i32** %907, align 8
  %909 = bitcast i32* %908 to i8**
  %910 = load i32, i32* %12, align 4
  %911 = sext i32 %910 to i64
  %912 = getelementptr inbounds i8*, i8** %909, i64 %911
  store i8* %905, i8** %912, align 8
  br label %892

913:                                              ; preds = %892
  %914 = load %struct.options*, %struct.options** %7, align 8
  %915 = getelementptr inbounds %struct.options, %struct.options* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %915, i32 0, i32 1
  %917 = load i32, i32* %916, align 4
  %918 = load i32, i32* %11, align 4
  %919 = add nsw i32 %918, %917
  store i32 %919, i32* %11, align 4
  br label %920

920:                                              ; preds = %913, %864
  %921 = load %struct.options*, %struct.options** %7, align 8
  %922 = getelementptr inbounds %struct.options, %struct.options* %921, i32 0, i32 31
  store i32 1, i32* %922, align 4
  %923 = load %struct.options*, %struct.options** %7, align 8
  %924 = getelementptr inbounds %struct.options, %struct.options* %923, i32 0, i32 32
  %925 = load i64, i64* %924, align 8
  %926 = add nsw i64 %925, 1
  store i64 %926, i64* %924, align 8
  br label %993

927:                                              ; preds = %36
  %928 = load i32, i32* %11, align 4
  %929 = icmp eq i32 %928, 1
  br i1 %929, label %930, label %991

930:                                              ; preds = %927
  %931 = load i8**, i8*** %5, align 8
  %932 = load i32, i32* %11, align 4
  %933 = sext i32 %932 to i64
  %934 = getelementptr inbounds i8*, i8** %931, i64 %933
  %935 = load i8*, i8** %934, align 8
  store i8* %935, i8** %8, align 8
  %936 = load i8*, i8** %8, align 8
  %937 = getelementptr inbounds i8, i8* %936, i64 0
  %938 = load i8, i8* %937, align 1
  %939 = sext i8 %938 to i32
  %940 = icmp eq i32 %939, 117
  br i1 %940, label %941, label %962

941:                                              ; preds = %930
  %942 = load i8*, i8** %8, align 8
  %943 = getelementptr inbounds i8, i8* %942, i64 1
  %944 = load i8, i8* %943, align 1
  %945 = sext i8 %944 to i32
  %946 = icmp eq i32 %945, 103
  br i1 %946, label %947, label %962

947:                                              ; preds = %941
  %948 = load i8*, i8** %8, align 8
  %949 = getelementptr inbounds i8, i8* %948, i64 2
  %950 = load i8, i8* %949, align 1
  %951 = sext i8 %950 to i32
  %952 = icmp eq i32 %951, 101
  br i1 %952, label %953, label %962

953:                                              ; preds = %947
  %954 = load i8*, i8** %8, align 8
  %955 = getelementptr inbounds i8, i8* %954, i64 3
  %956 = load i8, i8* %955, align 1
  %957 = sext i8 %956 to i32
  %958 = icmp eq i32 %957, 110
  br i1 %958, label %959, label %962

959:                                              ; preds = %953
  %960 = load i8*, i8** %8, align 8
  %961 = getelementptr inbounds i8, i8* %960, i64 4
  store i8* %961, i8** %8, align 8
  br label %962

962:                                              ; preds = %959, %953, %947, %941, %930
  %963 = load i8*, i8** %8, align 8
  %964 = call i32 @sscanf(i8* %963, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32* %10)
  %965 = icmp ne i32 %964, 2
  br i1 %965, label %978, label %966

966:                                              ; preds = %962
  %967 = load i32, i32* %9, align 4
  %968 = icmp slt i32 %967, 0
  br i1 %968, label %978, label %969

969:                                              ; preds = %966
  %970 = load i32, i32* %9, align 4
  %971 = icmp sgt i32 %970, 65535
  br i1 %971, label %978, label %972

972:                                              ; preds = %969
  %973 = load i32, i32* %10, align 4
  %974 = icmp slt i32 %973, 0
  br i1 %974, label %978, label %975

975:                                              ; preds = %972
  %976 = load i32, i32* %10, align 4
  %977 = icmp sgt i32 %976, 65535
  br i1 %977, label %978, label %980

978:                                              ; preds = %975, %972, %969, %966, %962
  %979 = call i32 (...) @usage()
  br label %993

980:                                              ; preds = %975
  %981 = load i32, i32* %9, align 4
  %982 = load %struct.options*, %struct.options** %7, align 8
  %983 = getelementptr inbounds %struct.options, %struct.options* %982, i32 0, i32 9
  store i32 %981, i32* %983, align 4
  %984 = load i32, i32* %10, align 4
  %985 = load %struct.options*, %struct.options** %7, align 8
  %986 = getelementptr inbounds %struct.options, %struct.options* %985, i32 0, i32 10
  store i32 %984, i32* %986, align 8
  %987 = load %struct.options*, %struct.options** %7, align 8
  %988 = getelementptr inbounds %struct.options, %struct.options* %987, i32 0, i32 11
  store i32 1, i32* %988, align 4
  %989 = load %struct.options*, %struct.options** %7, align 8
  %990 = getelementptr inbounds %struct.options, %struct.options* %989, i32 0, i32 12
  store i32 1, i32* %990, align 8
  br label %993

991:                                              ; preds = %927
  %992 = call i32 (...) @usage()
  br label %993

993:                                              ; preds = %991, %980, %978, %920, %772, %753, %734, %715, %696, %677, %658, %628, %609, %590, %571, %552, %533, %514, %484, %454, %424, %398, %383, %368, %346, %277, %270, %251, %232, %167, %105, %79, %53
  br label %994

994:                                              ; preds = %993
  %995 = load i32, i32* %11, align 4
  %996 = add nsw i32 %995, 1
  store i32 %996, i32* %11, align 4
  br label %24

997:                                              ; preds = %24
  %998 = load %struct.options*, %struct.options** %7, align 8
  %999 = getelementptr inbounds %struct.options, %struct.options* %998, i32 0, i32 32
  %1000 = load i64, i64* %999, align 8
  %1001 = icmp ne i64 %1000, 0
  br i1 %1001, label %1002, label %1006

1002:                                             ; preds = %997
  %1003 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %1004 = load %struct.options*, %struct.options** %7, align 8
  %1005 = call i32 @flush_command(%struct.libusb20_backend* %1003, %struct.options* %1004)
  br label %1016

1006:                                             ; preds = %997
  %1007 = load %struct.options*, %struct.options** %7, align 8
  %1008 = getelementptr inbounds %struct.options, %struct.options* %1007, i32 0, i32 30
  store i32 1, i32* %1008, align 8
  %1009 = load %struct.options*, %struct.options** %7, align 8
  %1010 = getelementptr inbounds %struct.options, %struct.options* %1009, i32 0, i32 32
  %1011 = load i64, i64* %1010, align 8
  %1012 = add nsw i64 %1011, 1
  store i64 %1012, i64* %1010, align 8
  %1013 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %1014 = load %struct.options*, %struct.options** %7, align 8
  %1015 = call i32 @flush_command(%struct.libusb20_backend* %1013, %struct.options* %1014)
  br label %1016

1016:                                             ; preds = %1006, %1002
  %1017 = load %struct.libusb20_backend*, %struct.libusb20_backend** %6, align 8
  %1018 = call i32 @libusb20_be_free(%struct.libusb20_backend* %1017)
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local %struct.libusb20_backend* @libusb20_be_alloc_default(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @get_token(i8*, i32) #1

declare dso_local i32 @flush_command(%struct.libusb20_backend*, %struct.options*) #1

declare dso_local i8* @num_id(i8*, i8*) #1

declare dso_local i32 @duplicate_option(i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @get_int(i8*) #1

declare dso_local i32 @LIBUSB20_INIT(i32, %struct.TYPE_2__*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @libusb20_be_free(%struct.libusb20_backend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
