; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_get_item.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hid.c_hid_get_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_data = type { i64, i64, i64, i64, i64, i64*, i64, i64, i64*, i32, i32, i64, i64, i32, i32, %struct.hid_item* }
%struct.hid_item = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__, i64, i64, i64, i64, i64, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Using last usage\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%u,%u,%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"bad length %u (data=0x%02x)\0A\00", align 1
@hid_input = common dso_local global i32 0, align 4
@HIO_VARIABLE = common dso_local global i32 0, align 4
@MAXLOCCNT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"Number of items(%u) truncated to %u\0A\00", align 1
@hid_output = common dso_local global i32 0, align 4
@hid_collection = common dso_local global i32 0, align 4
@hid_feature = common dso_local global i32 0, align 4
@hid_endcollection = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"invalid end collection\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"Main bTag=%d\0A\00", align 1
@MAXPUSH = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [23 x i8] c"Cannot push item @ %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Cannot pop item @ %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"Global bTag=%d\0A\00", align 1
@MAXUSAGE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"max usage reached\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"Usage set dropped\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Local bTag=%d\0A\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"default bType=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hid_get_item(%struct.hid_data* %0, %struct.hid_item* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hid_data*, align 8
  %5 = alloca %struct.hid_item*, align 8
  %6 = alloca %struct.hid_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.hid_data* %0, %struct.hid_data** %4, align 8
  store %struct.hid_item* %1, %struct.hid_item** %5, align 8
  %13 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %14 = icmp eq %struct.hid_data* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %673

16:                                               ; preds = %2
  %17 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %18 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %17, i32 0, i32 15
  %19 = load %struct.hid_item*, %struct.hid_item** %18, align 8
  %20 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %21 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %19, i64 %22
  store %struct.hid_item* %23, %struct.hid_item** %6, align 8
  br label %24

24:                                               ; preds = %296, %16
  %25 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %26 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %29 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %134

32:                                               ; preds = %24
  %33 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %34 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %37 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = icmp ult i64 %35, %38
  br i1 %39, label %40, label %82

40:                                               ; preds = %32
  %41 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %42 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %41, i32 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %45 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i64, i64* %43, i64 %46
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %50 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %49, i32 0, i32 6
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  store i64 %52, i64* %12, align 8
  %53 = load i64, i64* %12, align 8
  %54 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %55 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %58 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %57, i32 0, i32 7
  store i64 %56, i64* %58, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %61 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %60, i32 0, i32 8
  %62 = load i64*, i64** %61, align 8
  %63 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %64 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i64, i64* %62, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %59, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %40
  %70 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %71 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %75 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %74, i32 0, i32 6
  store i64 0, i64* %75, align 8
  br label %81

76:                                               ; preds = %40
  %77 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %78 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %77, i32 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  br label %81

81:                                               ; preds = %76, %69
  br label %87

82:                                               ; preds = %32
  %83 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %84 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %85 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  br label %87

87:                                               ; preds = %82, %81
  %88 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %89 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %93 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %92, i32 0, i32 9
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %96 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = shl i32 1, %97
  %99 = and i32 %94, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %133

101:                                              ; preds = %87
  %102 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %103 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %104 = bitcast %struct.hid_item* %102 to i8*
  %105 = bitcast %struct.hid_item* %103 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %104, i8* align 8 %105, i64 176, i1 false)
  %106 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %107 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %106, i32 0, i32 13
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %111 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %110, i32 0, i32 13
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %115 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %114, i32 0, i32 13
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %113, i32 %117)
  %119 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %120 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %119, i32 0, i32 13
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %124 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %123, i32 0, i32 13
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = mul nsw i32 %122, %126
  %128 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %129 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %128, i32 0, i32 13
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 %131, %127
  store i32 %132, i32* %130, align 8
  store i32 1, i32* %3, align 4
  br label %673

133:                                              ; preds = %87
  br label %134

134:                                              ; preds = %133, %24
  %135 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %136 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %135, i32 0, i32 1
  store i64 0, i64* %136, align 8
  %137 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %138 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %137, i32 0, i32 2
  store i64 0, i64* %138, align 8
  %139 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %140 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %139, i32 0, i32 3
  store i64 0, i64* %140, align 8
  %141 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %142 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %141, i32 0, i32 4
  store i64 0, i64* %142, align 8
  %143 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %144 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %143, i32 0, i32 10
  store i32 0, i32* %144, align 4
  %145 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %146 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %145, i32 0, i32 6
  store i64 0, i64* %146, align 8
  %147 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %148 = call i32 @hid_clear_local(%struct.hid_item* %147)
  br label %149

149:                                              ; preds = %671, %224, %134
  %150 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %151 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %150, i32 0, i32 11
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %154 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %153, i32 0, i32 12
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %152, %155
  br i1 %156, label %157, label %672

157:                                              ; preds = %149
  %158 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %159 = call i32 @hid_get_byte(%struct.hid_data* %158, i32 1)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp eq i32 %160, 254
  br i1 %161, label %162, label %172

162:                                              ; preds = %157
  %163 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %164 = call i32 @hid_get_byte(%struct.hid_data* %163, i32 1)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %166 = call i32 @hid_get_byte(%struct.hid_data* %165, i32 1)
  %167 = shl i32 %166, 8
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  %170 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %171 = call i32 @hid_get_byte(%struct.hid_data* %170, i32 1)
  store i32 %171, i32* %7, align 4
  store i32 255, i32* %8, align 4
  br label %184

172:                                              ; preds = %157
  %173 = load i32, i32* %9, align 4
  %174 = lshr i32 %173, 4
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %9, align 4
  %176 = lshr i32 %175, 2
  %177 = and i32 %176, 3
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %9, align 4
  %179 = and i32 %178, 3
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %9, align 4
  %181 = icmp eq i32 %180, 3
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  store i32 4, i32* %9, align 4
  br label %183

183:                                              ; preds = %182, %172
  br label %184

184:                                              ; preds = %183, %162
  %185 = load i32, i32* %9, align 4
  switch i32 %185, label %224 [
    i32 0, label %186
    i32 1, label %187
    i32 2, label %191
    i32 4, label %202
  ]

186:                                              ; preds = %184
  store i64 0, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %232

187:                                              ; preds = %184
  %188 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %189 = call i32 @hid_get_byte(%struct.hid_data* %188, i32 1)
  %190 = sext i32 %189 to i64
  store i64 %190, i64* %12, align 8
  store i64 255, i64* %11, align 8
  br label %232

191:                                              ; preds = %184
  %192 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %193 = call i32 @hid_get_byte(%struct.hid_data* %192, i32 1)
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %12, align 8
  %195 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %196 = call i32 @hid_get_byte(%struct.hid_data* %195, i32 1)
  %197 = shl i32 %196, 8
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %12, align 8
  %200 = or i64 %199, %198
  store i64 %200, i64* %12, align 8
  %201 = load i64, i64* %12, align 8
  store i64 %201, i64* %12, align 8
  store i64 65535, i64* %11, align 8
  br label %232

202:                                              ; preds = %184
  %203 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %204 = call i32 @hid_get_byte(%struct.hid_data* %203, i32 1)
  %205 = sext i32 %204 to i64
  store i64 %205, i64* %12, align 8
  %206 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %207 = call i32 @hid_get_byte(%struct.hid_data* %206, i32 1)
  %208 = shl i32 %207, 8
  %209 = sext i32 %208 to i64
  %210 = load i64, i64* %12, align 8
  %211 = or i64 %210, %209
  store i64 %211, i64* %12, align 8
  %212 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %213 = call i32 @hid_get_byte(%struct.hid_data* %212, i32 1)
  %214 = shl i32 %213, 16
  %215 = sext i32 %214 to i64
  %216 = load i64, i64* %12, align 8
  %217 = or i64 %216, %215
  store i64 %217, i64* %12, align 8
  %218 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %219 = call i32 @hid_get_byte(%struct.hid_data* %218, i32 1)
  %220 = shl i32 %219, 24
  %221 = sext i32 %220 to i64
  %222 = load i64, i64* %12, align 8
  %223 = or i64 %222, %221
  store i64 %223, i64* %12, align 8
  store i64 4294967295, i64* %11, align 8
  br label %232

224:                                              ; preds = %184
  %225 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %226 = load i32, i32* %9, align 4
  %227 = call i32 @hid_get_byte(%struct.hid_data* %225, i32 %226)
  %228 = sext i32 %227 to i64
  store i64 %228, i64* %12, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i64, i64* %12, align 8
  %231 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %229, i64 %230)
  br label %149

232:                                              ; preds = %202, %191, %187, %186
  %233 = load i32, i32* %8, align 4
  switch i32 %233, label %668 [
    i32 0, label %234
    i32 1, label %348
    i32 2, label %500
  ]

234:                                              ; preds = %232
  %235 = load i32, i32* %7, align 4
  switch i32 %235, label %344 [
    i32 8, label %236
    i32 9, label %297
    i32 10, label %301
    i32 11, label %321
    i32 12, label %325
  ]

236:                                              ; preds = %234
  %237 = load i32, i32* @hid_input, align 4
  %238 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %239 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 8
  br label %240

240:                                              ; preds = %321, %297, %236
  %241 = load i64, i64* %12, align 8
  %242 = trunc i64 %241 to i32
  %243 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %244 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %243, i32 0, i32 2
  store i32 %242, i32* %244, align 4
  %245 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %246 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %245, i32 0, i32 13
  %247 = load i32, i32* %246, align 8
  %248 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %249 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %248, i32 0, i32 13
  %250 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %249, i32 0, i32 2
  store i32 %247, i32* %250, align 8
  %251 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %252 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %251, i32 0, i32 14
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %255 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %254, i32 0, i32 13
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 1
  store i32 %253, i32* %256, align 4
  %257 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %258 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @HIO_VARIABLE, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %293

263:                                              ; preds = %240
  %264 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %265 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %264, i32 0, i32 13
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = sext i32 %267 to i64
  %269 = load i64, i64* @MAXLOCCNT, align 8
  %270 = icmp sgt i64 %268, %269
  br i1 %270, label %271, label %281

271:                                              ; preds = %263
  %272 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %273 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %272, i32 0, i32 13
  %274 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i64, i64* @MAXLOCCNT, align 8
  %277 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %275, i64 %276)
  %278 = load i64, i64* @MAXLOCCNT, align 8
  %279 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %280 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %279, i32 0, i32 2
  store i64 %278, i64* %280, align 8
  br label %289

281:                                              ; preds = %263
  %282 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %283 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %282, i32 0, i32 13
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 2
  %285 = load i32, i32* %284, align 8
  %286 = sext i32 %285 to i64
  %287 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %288 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %287, i32 0, i32 2
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %281, %271
  %290 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %291 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %290, i32 0, i32 13
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 2
  store i32 1, i32* %292, align 8
  br label %296

293:                                              ; preds = %240
  %294 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %295 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %294, i32 0, i32 2
  store i64 1, i64* %295, align 8
  br label %296

296:                                              ; preds = %293, %289
  br label %24

297:                                              ; preds = %234
  %298 = load i32, i32* @hid_output, align 4
  %299 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %300 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 8
  br label %240

301:                                              ; preds = %234
  %302 = load i32, i32* @hid_collection, align 4
  %303 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %304 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 8
  %305 = load i64, i64* %12, align 8
  %306 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %307 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %306, i32 0, i32 21
  store i64 %305, i64* %307, align 8
  %308 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %309 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %308, i32 0, i32 20
  %310 = load i32, i32* %309, align 8
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %309, align 8
  %312 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %313 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %312, i32 0, i32 7
  %314 = load i64, i64* %313, align 8
  %315 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %316 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %315, i32 0, i32 0
  store i64 %314, i64* %316, align 8
  %317 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %318 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %319 = bitcast %struct.hid_item* %317 to i8*
  %320 = bitcast %struct.hid_item* %318 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %319, i8* align 8 %320, i64 176, i1 false)
  store i32 1, i32* %3, align 4
  br label %673

321:                                              ; preds = %234
  %322 = load i32, i32* @hid_feature, align 4
  %323 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %324 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 8
  br label %240

325:                                              ; preds = %234
  %326 = load i32, i32* @hid_endcollection, align 4
  %327 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %328 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %327, i32 0, i32 1
  store i32 %326, i32* %328, align 8
  %329 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %330 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %329, i32 0, i32 20
  %331 = load i32, i32* %330, align 8
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %325
  %334 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %673

335:                                              ; preds = %325
  %336 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %337 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %336, i32 0, i32 20
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, -1
  store i32 %339, i32* %337, align 8
  %340 = load %struct.hid_item*, %struct.hid_item** %5, align 8
  %341 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %342 = bitcast %struct.hid_item* %340 to i8*
  %343 = bitcast %struct.hid_item* %341 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %342, i8* align 8 %343, i64 176, i1 false)
  store i32 1, i32* %3, align 4
  br label %673

344:                                              ; preds = %234
  %345 = load i32, i32* %7, align 4
  %346 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %344
  br label %671

348:                                              ; preds = %232
  %349 = load i32, i32* %7, align 4
  switch i32 %349, label %496 [
    i32 0, label %350
    i32 1, label %355
    i32 2, label %359
    i32 3, label %363
    i32 4, label %367
    i32 5, label %371
    i32 6, label %375
    i32 7, label %379
    i32 8, label %386
    i32 9, label %393
    i32 10, label %400
    i32 11, label %446
  ]

350:                                              ; preds = %348
  %351 = load i64, i64* %12, align 8
  %352 = shl i64 %351, 16
  %353 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %354 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %353, i32 0, i32 3
  store i64 %352, i64* %354, align 8
  br label %499

355:                                              ; preds = %348
  %356 = load i64, i64* %12, align 8
  %357 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %358 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %357, i32 0, i32 19
  store i64 %356, i64* %358, align 8
  br label %499

359:                                              ; preds = %348
  %360 = load i64, i64* %12, align 8
  %361 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %362 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %361, i32 0, i32 18
  store i64 %360, i64* %362, align 8
  br label %499

363:                                              ; preds = %348
  %364 = load i64, i64* %12, align 8
  %365 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %366 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %365, i32 0, i32 17
  store i64 %364, i64* %366, align 8
  br label %499

367:                                              ; preds = %348
  %368 = load i64, i64* %12, align 8
  %369 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %370 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %369, i32 0, i32 16
  store i64 %368, i64* %370, align 8
  br label %499

371:                                              ; preds = %348
  %372 = load i64, i64* %12, align 8
  %373 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %374 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %373, i32 0, i32 15
  store i64 %372, i64* %374, align 8
  br label %499

375:                                              ; preds = %348
  %376 = load i64, i64* %12, align 8
  %377 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %378 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %377, i32 0, i32 14
  store i64 %376, i64* %378, align 8
  br label %499

379:                                              ; preds = %348
  %380 = load i64, i64* %12, align 8
  %381 = load i64, i64* %11, align 8
  %382 = and i64 %380, %381
  %383 = trunc i64 %382 to i32
  %384 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %385 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %384, i32 0, i32 14
  store i32 %383, i32* %385, align 4
  br label %499

386:                                              ; preds = %348
  %387 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %388 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %389 = load i64, i64* %12, align 8
  %390 = load i64, i64* %11, align 8
  %391 = and i64 %389, %390
  %392 = call i32 @hid_switch_rid(%struct.hid_data* %387, %struct.hid_item* %388, i64 %391)
  br label %499

393:                                              ; preds = %348
  %394 = load i64, i64* %12, align 8
  %395 = load i64, i64* %11, align 8
  %396 = and i64 %394, %395
  %397 = trunc i64 %396 to i32
  %398 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %399 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %398, i32 0, i32 13
  store i32 %397, i32* %399, align 8
  br label %499

400:                                              ; preds = %348
  %401 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %402 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = add i64 %403, 1
  store i64 %404, i64* %402, align 8
  %405 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %406 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @MAXPUSH, align 8
  %409 = icmp ult i64 %407, %408
  br i1 %409, label %410, label %440

410:                                              ; preds = %400
  %411 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %412 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %411, i32 0, i32 15
  %413 = load %struct.hid_item*, %struct.hid_item** %412, align 8
  %414 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %415 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %414, i32 0, i32 0
  %416 = load i64, i64* %415, align 8
  %417 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %413, i64 %416
  %418 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %419 = bitcast %struct.hid_item* %417 to i8*
  %420 = bitcast %struct.hid_item* %418 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %419, i8* align 8 %420, i64 176, i1 false)
  %421 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %422 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %421, i32 0, i32 14
  %423 = load i32, i32* %422, align 4
  %424 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %425 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %424, i32 0, i32 13
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 1
  store i32 %423, i32* %426, align 4
  %427 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %428 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %427, i32 0, i32 13
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %431 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %430, i32 0, i32 13
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 2
  store i32 %429, i32* %432, align 8
  %433 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %434 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %433, i32 0, i32 15
  %435 = load %struct.hid_item*, %struct.hid_item** %434, align 8
  %436 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %437 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %435, i64 %438
  store %struct.hid_item* %439, %struct.hid_item** %6, align 8
  br label %445

440:                                              ; preds = %400
  %441 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %442 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  %444 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i64 %443)
  br label %445

445:                                              ; preds = %440, %410
  br label %499

446:                                              ; preds = %348
  %447 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %448 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %447, i32 0, i32 0
  %449 = load i64, i64* %448, align 8
  %450 = add i64 %449, -1
  store i64 %450, i64* %448, align 8
  %451 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %452 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @MAXPUSH, align 8
  %455 = icmp ult i64 %453, %454
  br i1 %455, label %456, label %490

456:                                              ; preds = %446
  %457 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %458 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %457, i32 0, i32 13
  %459 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %458, i32 0, i32 0
  %460 = load i32, i32* %459, align 8
  store i32 %460, i32* %10, align 4
  %461 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %462 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %461, i32 0, i32 15
  %463 = load %struct.hid_item*, %struct.hid_item** %462, align 8
  %464 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %465 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %463, i64 %466
  store %struct.hid_item* %467, %struct.hid_item** %6, align 8
  %468 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %469 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %468, i32 0, i32 13
  %470 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 4
  %472 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %473 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %472, i32 0, i32 14
  store i32 %471, i32* %473, align 4
  %474 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %475 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %474, i32 0, i32 13
  %476 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %475, i32 0, i32 2
  %477 = load i32, i32* %476, align 8
  %478 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %479 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %478, i32 0, i32 13
  store i32 %477, i32* %479, align 8
  %480 = load i32, i32* %10, align 4
  %481 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %482 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %481, i32 0, i32 13
  %483 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %482, i32 0, i32 0
  store i32 %480, i32* %483, align 8
  %484 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %485 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %484, i32 0, i32 13
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i32 0, i32 1
  store i32 0, i32* %486, align 4
  %487 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %488 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %487, i32 0, i32 13
  %489 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %488, i32 0, i32 2
  store i32 0, i32* %489, align 8
  br label %495

490:                                              ; preds = %446
  %491 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %492 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %491, i32 0, i32 0
  %493 = load i64, i64* %492, align 8
  %494 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %493)
  br label %495

495:                                              ; preds = %490, %456
  br label %499

496:                                              ; preds = %348
  %497 = load i32, i32* %7, align 4
  %498 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32 %497)
  br label %499

499:                                              ; preds = %496, %495, %445, %393, %386, %379, %375, %371, %367, %363, %359, %355, %350
  br label %671

500:                                              ; preds = %232
  %501 = load i32, i32* %7, align 4
  switch i32 %501, label %664 [
    i32 0, label %502
    i32 1, label %548
    i32 2, label %567
    i32 3, label %636
    i32 4, label %640
    i32 5, label %644
    i32 7, label %648
    i32 8, label %652
    i32 9, label %656
    i32 10, label %660
  ]

502:                                              ; preds = %500
  %503 = load i32, i32* %9, align 4
  %504 = icmp ne i32 %503, 4
  br i1 %504, label %505, label %513

505:                                              ; preds = %502
  %506 = load i64, i64* %12, align 8
  %507 = load i64, i64* %11, align 8
  %508 = and i64 %506, %507
  %509 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %510 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %509, i32 0, i32 3
  %511 = load i64, i64* %510, align 8
  %512 = or i64 %508, %511
  store i64 %512, i64* %12, align 8
  br label %513

513:                                              ; preds = %505, %502
  %514 = load i64, i64* %12, align 8
  %515 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %516 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %515, i32 0, i32 7
  store i64 %514, i64* %516, align 8
  %517 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %518 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %517, i32 0, i32 4
  %519 = load i64, i64* %518, align 8
  %520 = load i64, i64* @MAXUSAGE, align 8
  %521 = icmp ult i64 %519, %520
  br i1 %521, label %522, label %543

522:                                              ; preds = %513
  %523 = load i64, i64* %12, align 8
  %524 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %525 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %524, i32 0, i32 5
  %526 = load i64*, i64** %525, align 8
  %527 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %528 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %527, i32 0, i32 4
  %529 = load i64, i64* %528, align 8
  %530 = getelementptr inbounds i64, i64* %526, i64 %529
  store i64 %523, i64* %530, align 8
  %531 = load i64, i64* %12, align 8
  %532 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %533 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %532, i32 0, i32 8
  %534 = load i64*, i64** %533, align 8
  %535 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %536 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %535, i32 0, i32 4
  %537 = load i64, i64* %536, align 8
  %538 = getelementptr inbounds i64, i64* %534, i64 %537
  store i64 %531, i64* %538, align 8
  %539 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %540 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %539, i32 0, i32 4
  %541 = load i64, i64* %540, align 8
  %542 = add i64 %541, 1
  store i64 %542, i64* %540, align 8
  br label %545

543:                                              ; preds = %513
  %544 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0))
  br label %545

545:                                              ; preds = %543, %522
  %546 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %547 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %546, i32 0, i32 10
  store i32 0, i32* %547, align 4
  br label %667

548:                                              ; preds = %500
  %549 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %550 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %549, i32 0, i32 10
  %551 = load i32, i32* %550, align 4
  %552 = or i32 %551, 1
  store i32 %552, i32* %550, align 4
  %553 = load i32, i32* %9, align 4
  %554 = icmp ne i32 %553, 4
  br i1 %554, label %555, label %563

555:                                              ; preds = %548
  %556 = load i64, i64* %12, align 8
  %557 = load i64, i64* %11, align 8
  %558 = and i64 %556, %557
  %559 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %560 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %559, i32 0, i32 3
  %561 = load i64, i64* %560, align 8
  %562 = or i64 %558, %561
  store i64 %562, i64* %12, align 8
  br label %563

563:                                              ; preds = %555, %548
  %564 = load i64, i64* %12, align 8
  %565 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %566 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %565, i32 0, i32 4
  store i64 %564, i64* %566, align 8
  br label %586

567:                                              ; preds = %500
  %568 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %569 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %568, i32 0, i32 10
  %570 = load i32, i32* %569, align 4
  %571 = or i32 %570, 2
  store i32 %571, i32* %569, align 4
  %572 = load i32, i32* %9, align 4
  %573 = icmp ne i32 %572, 4
  br i1 %573, label %574, label %582

574:                                              ; preds = %567
  %575 = load i64, i64* %12, align 8
  %576 = load i64, i64* %11, align 8
  %577 = and i64 %575, %576
  %578 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %579 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %578, i32 0, i32 3
  %580 = load i64, i64* %579, align 8
  %581 = or i64 %577, %580
  store i64 %581, i64* %12, align 8
  br label %582

582:                                              ; preds = %574, %567
  %583 = load i64, i64* %12, align 8
  %584 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %585 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %584, i32 0, i32 5
  store i64 %583, i64* %585, align 8
  br label %586

586:                                              ; preds = %582, %563
  %587 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %588 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %587, i32 0, i32 10
  %589 = load i32, i32* %588, align 4
  %590 = icmp ne i32 %589, 3
  br i1 %590, label %591, label %592

591:                                              ; preds = %586
  br label %667

592:                                              ; preds = %586
  %593 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %594 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %593, i32 0, i32 4
  %595 = load i64, i64* %594, align 8
  %596 = load i64, i64* @MAXUSAGE, align 8
  %597 = icmp ult i64 %595, %596
  br i1 %597, label %598, label %631

598:                                              ; preds = %592
  %599 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %600 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %599, i32 0, i32 4
  %601 = load i64, i64* %600, align 8
  %602 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %603 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %602, i32 0, i32 5
  %604 = load i64, i64* %603, align 8
  %605 = icmp sle i64 %601, %604
  br i1 %605, label %606, label %631

606:                                              ; preds = %598
  %607 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %608 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %607, i32 0, i32 4
  %609 = load i64, i64* %608, align 8
  %610 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %611 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %610, i32 0, i32 5
  %612 = load i64*, i64** %611, align 8
  %613 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %614 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %613, i32 0, i32 4
  %615 = load i64, i64* %614, align 8
  %616 = getelementptr inbounds i64, i64* %612, i64 %615
  store i64 %609, i64* %616, align 8
  %617 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %618 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %617, i32 0, i32 5
  %619 = load i64, i64* %618, align 8
  %620 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %621 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %620, i32 0, i32 8
  %622 = load i64*, i64** %621, align 8
  %623 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %624 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %623, i32 0, i32 4
  %625 = load i64, i64* %624, align 8
  %626 = getelementptr inbounds i64, i64* %622, i64 %625
  store i64 %619, i64* %626, align 8
  %627 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %628 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %627, i32 0, i32 4
  %629 = load i64, i64* %628, align 8
  %630 = add i64 %629, 1
  store i64 %630, i64* %628, align 8
  br label %633

631:                                              ; preds = %598, %592
  %632 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %633

633:                                              ; preds = %631, %606
  %634 = load %struct.hid_data*, %struct.hid_data** %4, align 8
  %635 = getelementptr inbounds %struct.hid_data, %struct.hid_data* %634, i32 0, i32 10
  store i32 0, i32* %635, align 4
  br label %667

636:                                              ; preds = %500
  %637 = load i64, i64* %12, align 8
  %638 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %639 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %638, i32 0, i32 12
  store i64 %637, i64* %639, align 8
  br label %667

640:                                              ; preds = %500
  %641 = load i64, i64* %12, align 8
  %642 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %643 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %642, i32 0, i32 11
  store i64 %641, i64* %643, align 8
  br label %667

644:                                              ; preds = %500
  %645 = load i64, i64* %12, align 8
  %646 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %647 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %646, i32 0, i32 10
  store i64 %645, i64* %647, align 8
  br label %667

648:                                              ; preds = %500
  %649 = load i64, i64* %12, align 8
  %650 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %651 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %650, i32 0, i32 9
  store i64 %649, i64* %651, align 8
  br label %667

652:                                              ; preds = %500
  %653 = load i64, i64* %12, align 8
  %654 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %655 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %654, i32 0, i32 8
  store i64 %653, i64* %655, align 8
  br label %667

656:                                              ; preds = %500
  %657 = load i64, i64* %12, align 8
  %658 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %659 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %658, i32 0, i32 7
  store i64 %657, i64* %659, align 8
  br label %667

660:                                              ; preds = %500
  %661 = load i64, i64* %12, align 8
  %662 = load %struct.hid_item*, %struct.hid_item** %6, align 8
  %663 = getelementptr inbounds %struct.hid_item, %struct.hid_item* %662, i32 0, i32 6
  store i64 %661, i64* %663, align 8
  br label %667

664:                                              ; preds = %500
  %665 = load i32, i32* %7, align 4
  %666 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %665)
  br label %667

667:                                              ; preds = %664, %660, %656, %652, %648, %644, %640, %636, %633, %591, %545
  br label %671

668:                                              ; preds = %232
  %669 = load i32, i32* %8, align 4
  %670 = call i32 (i32, i8*, ...) @DPRINTFN(i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %669)
  br label %671

671:                                              ; preds = %668, %667, %499, %347
  br label %149

672:                                              ; preds = %149
  store i32 0, i32* %3, align 4
  br label %673

673:                                              ; preds = %672, %335, %333, %301, %101, %15
  %674 = load i32, i32* %3, align 4
  ret i32 %674
}

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hid_clear_local(%struct.hid_item*) #1

declare dso_local i32 @hid_get_byte(%struct.hid_data*, i32) #1

declare dso_local i32 @hid_switch_rid(%struct.hid_data*, %struct.hid_item*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
