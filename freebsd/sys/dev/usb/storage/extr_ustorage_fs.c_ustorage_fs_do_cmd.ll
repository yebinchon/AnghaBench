; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_do_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_ustorage_fs.c_ustorage_fs_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ustorage_fs_softc = type { %struct.TYPE_8__, %struct.TYPE_5__*, %struct.TYPE_7__*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__*, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_7__ = type { i32* }

@.str = private unnamed_addr constant [37 x i8] c"cmd_data[0]=0x%02x, data_rem=0x%08x\0A\00", align 1
@DIR_WRITE = common dso_local global i8* null, align 8
@DIR_READ = common dso_local global i8* null, align 8
@CSWSTATUS_FAILED = common dso_local global i8* null, align 8
@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ustorage_fs_softc*)* @ustorage_fs_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ustorage_fs_do_cmd(%struct.ustorage_fs_softc* %0) #0 {
  %2 = alloca %struct.ustorage_fs_softc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ustorage_fs_softc* %0, %struct.ustorage_fs_softc** %2, align 8
  store i64 1, i64* %3, align 8
  store i32 -512, i32* %6, align 4
  %7 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store i32 %9, i32* %12, align 4
  %13 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %14 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %13, i32 0, i32 2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DPRINTF(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %23)
  %25 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %26 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %502 [
    i32 149, label %32
    i32 147, label %58
    i32 148, label %84
    i32 145, label %110
    i32 146, label %136
    i32 144, label %162
    i32 141, label %177
    i32 143, label %214
    i32 142, label %242
    i32 140, label %280
    i32 139, label %293
    i32 137, label %319
    i32 134, label %345
    i32 133, label %360
    i32 132, label %375
    i32 131, label %384
    i32 128, label %399
    i32 130, label %436
    i32 129, label %464
    i32 150, label %501
    i32 138, label %501
    i32 136, label %501
    i32 135, label %501
  ]

32:                                               ; preds = %1
  %33 = load i8*, i8** @DIR_WRITE, align 8
  %34 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %35 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  store i8* %33, i8** %36, align 8
  %37 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %38 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %39 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %38, i32 0, i32 2
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %37, i32 %44, i32 -1)
  store i64 %45, i64* %3, align 8
  %46 = load i64, i64* %3, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %525

49:                                               ; preds = %32
  %50 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %51 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %50, i32 6, i32 17, i32 0)
  store i64 %51, i64* %3, align 8
  %52 = load i64, i64* %3, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %525

55:                                               ; preds = %49
  %56 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %57 = call i64 @ustorage_fs_inquiry(%struct.ustorage_fs_softc* %56)
  store i64 %57, i64* %3, align 8
  br label %525

58:                                               ; preds = %1
  %59 = load i8*, i8** @DIR_READ, align 8
  %60 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %61 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %64 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %65 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 4
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %63, i32 %70, i32 -1)
  store i64 %71, i64* %3, align 8
  %72 = load i64, i64* %3, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %58
  br label %525

75:                                               ; preds = %58
  %76 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %77 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %76, i32 6, i32 19, i32 0)
  store i64 %77, i64* %3, align 8
  %78 = load i64, i64* %3, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  br label %525

81:                                               ; preds = %75
  %82 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %83 = call i64 @ustorage_fs_mode_select(%struct.ustorage_fs_softc* %82)
  store i64 %83, i64* %3, align 8
  br label %525

84:                                               ; preds = %1
  %85 = load i8*, i8** @DIR_READ, align 8
  %86 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 2
  store i8* %85, i8** %88, align 8
  %89 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %90 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %90, i32 0, i32 2
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 7
  %96 = call i32 @get_be16(i32* %95)
  %97 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %89, i32 %96, i32 -1)
  store i64 %97, i64* %3, align 8
  %98 = load i64, i64* %3, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %84
  br label %525

101:                                              ; preds = %84
  %102 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %103 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %102, i32 10, i32 387, i32 0)
  store i64 %103, i64* %3, align 8
  %104 = load i64, i64* %3, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %525

107:                                              ; preds = %101
  %108 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %109 = call i64 @ustorage_fs_mode_select(%struct.ustorage_fs_softc* %108)
  store i64 %109, i64* %3, align 8
  br label %525

110:                                              ; preds = %1
  %111 = load i8*, i8** @DIR_WRITE, align 8
  %112 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %113 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %116 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %117 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %116, i32 0, i32 2
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 4
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %115, i32 %122, i32 -1)
  store i64 %123, i64* %3, align 8
  %124 = load i64, i64* %3, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %110
  br label %525

127:                                              ; preds = %110
  %128 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %129 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %128, i32 6, i32 23, i32 0)
  store i64 %129, i64* %3, align 8
  %130 = load i64, i64* %3, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  br label %525

133:                                              ; preds = %127
  %134 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %135 = call i64 @ustorage_fs_mode_sense(%struct.ustorage_fs_softc* %134)
  store i64 %135, i64* %3, align 8
  br label %525

136:                                              ; preds = %1
  %137 = load i8*, i8** @DIR_WRITE, align 8
  %138 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %139 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  store i8* %137, i8** %140, align 8
  %141 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %142 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %143 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %142, i32 0, i32 2
  %144 = load %struct.TYPE_7__*, %struct.TYPE_7__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 7
  %148 = call i32 @get_be16(i32* %147)
  %149 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %141, i32 %148, i32 -1)
  store i64 %149, i64* %3, align 8
  %150 = load i64, i64* %3, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %136
  br label %525

153:                                              ; preds = %136
  %154 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %155 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %154, i32 10, i32 391, i32 0)
  store i64 %155, i64* %3, align 8
  %156 = load i64, i64* %3, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %525

159:                                              ; preds = %153
  %160 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %161 = call i64 @ustorage_fs_mode_sense(%struct.ustorage_fs_softc* %160)
  store i64 %161, i64* %3, align 8
  br label %525

162:                                              ; preds = %1
  %163 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %164 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %163, i32 0, i32 -1)
  store i64 %164, i64* %3, align 8
  %165 = load i64, i64* %3, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %525

168:                                              ; preds = %162
  %169 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %170 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %169, i32 6, i32 17, i32 0)
  store i64 %170, i64* %3, align 8
  %171 = load i64, i64* %3, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %168
  br label %525

174:                                              ; preds = %168
  %175 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %176 = call i64 @ustorage_fs_prevent_allow(%struct.ustorage_fs_softc* %175)
  store i64 %176, i64* %3, align 8
  br label %525

177:                                              ; preds = %1
  %178 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %179 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %178, i32 0, i32 2
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 4
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  store i64 %185, i64* %4, align 8
  %186 = load i8*, i8** @DIR_WRITE, align 8
  %187 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %188 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 2
  store i8* %186, i8** %189, align 8
  %190 = load i64, i64* %4, align 8
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %177
  br label %195

193:                                              ; preds = %177
  %194 = load i64, i64* %4, align 8
  br label %195

195:                                              ; preds = %193, %192
  %196 = phi i64 [ 256, %192 ], [ %194, %193 ]
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %5, align 4
  %198 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %199 = load i32, i32* %5, align 4
  %200 = shl i32 %199, 9
  %201 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %198, i32 %200, i32 -512)
  store i64 %201, i64* %3, align 8
  %202 = load i64, i64* %3, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %195
  br label %525

205:                                              ; preds = %195
  %206 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %207 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %206, i32 6, i32 31, i32 1)
  store i64 %207, i64* %3, align 8
  %208 = load i64, i64* %3, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %205
  br label %525

211:                                              ; preds = %205
  %212 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %213 = call i64 @ustorage_fs_read(%struct.ustorage_fs_softc* %212)
  store i64 %213, i64* %3, align 8
  br label %525

214:                                              ; preds = %1
  %215 = load i8*, i8** @DIR_WRITE, align 8
  %216 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %217 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  store i8* %215, i8** %218, align 8
  %219 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %220 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %219, i32 0, i32 2
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 7
  %225 = call i32 @get_be16(i32* %224)
  store i32 %225, i32* %5, align 4
  %226 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %227 = load i32, i32* %5, align 4
  %228 = shl i32 %227, 9
  %229 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %226, i32 %228, i32 -512)
  store i64 %229, i64* %3, align 8
  %230 = load i64, i64* %3, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %214
  br label %525

233:                                              ; preds = %214
  %234 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %235 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %234, i32 10, i32 447, i32 1)
  store i64 %235, i64* %3, align 8
  %236 = load i64, i64* %3, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  br label %525

239:                                              ; preds = %233
  %240 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %241 = call i64 @ustorage_fs_read(%struct.ustorage_fs_softc* %240)
  store i64 %241, i64* %3, align 8
  br label %525

242:                                              ; preds = %1
  %243 = load i8*, i8** @DIR_WRITE, align 8
  %244 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %245 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 2
  store i8* %243, i8** %246, align 8
  %247 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %248 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %247, i32 0, i32 2
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 6
  %253 = call i32 @get_be32(i32* %252)
  store i32 %253, i32* %5, align 4
  %254 = load i32, i32* %5, align 4
  %255 = sext i32 %254 to i64
  %256 = icmp uge i64 %255, 8388608
  br i1 %256, label %257, label %263

257:                                              ; preds = %242
  %258 = load i8*, i8** @CSWSTATUS_FAILED, align 8
  %259 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %260 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %259, i32 0, i32 1
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 0
  store i8* %258, i8** %262, align 8
  store i64 1, i64* %3, align 8
  br label %525

263:                                              ; preds = %242
  %264 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %265 = load i32, i32* %5, align 4
  %266 = shl i32 %265, 9
  %267 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %264, i32 %266, i32 -512)
  store i64 %267, i64* %3, align 8
  %268 = load i64, i64* %3, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %271

270:                                              ; preds = %263
  br label %525

271:                                              ; preds = %263
  %272 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %273 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %272, i32 12, i32 1023, i32 1)
  store i64 %273, i64* %3, align 8
  %274 = load i64, i64* %3, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %271
  br label %525

277:                                              ; preds = %271
  %278 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %279 = call i64 @ustorage_fs_read(%struct.ustorage_fs_softc* %278)
  store i64 %279, i64* %3, align 8
  br label %525

280:                                              ; preds = %1
  %281 = load i8*, i8** @DIR_WRITE, align 8
  %282 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %283 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 2
  store i8* %281, i8** %284, align 8
  %285 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %286 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %285, i32 10, i32 317, i32 1)
  store i64 %286, i64* %3, align 8
  %287 = load i64, i64* %3, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %290

289:                                              ; preds = %280
  br label %525

290:                                              ; preds = %280
  %291 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %292 = call i64 @ustorage_fs_read_capacity(%struct.ustorage_fs_softc* %291)
  store i64 %292, i64* %3, align 8
  br label %525

293:                                              ; preds = %1
  %294 = load i8*, i8** @DIR_WRITE, align 8
  %295 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %296 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 2
  store i8* %294, i8** %297, align 8
  %298 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %299 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %300 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %299, i32 0, i32 2
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 7
  %305 = call i32 @get_be16(i32* %304)
  %306 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %298, i32 %305, i32 -1)
  store i64 %306, i64* %3, align 8
  %307 = load i64, i64* %3, align 8
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %293
  br label %525

310:                                              ; preds = %293
  %311 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %312 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %311, i32 10, i32 385, i32 1)
  store i64 %312, i64* %3, align 8
  %313 = load i64, i64* %3, align 8
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %316

315:                                              ; preds = %310
  br label %525

316:                                              ; preds = %310
  %317 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %318 = call i64 @ustorage_fs_read_format_capacities(%struct.ustorage_fs_softc* %317)
  store i64 %318, i64* %3, align 8
  br label %525

319:                                              ; preds = %1
  %320 = load i8*, i8** @DIR_WRITE, align 8
  %321 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %322 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 2
  store i8* %320, i8** %323, align 8
  %324 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %325 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %326 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %325, i32 0, i32 2
  %327 = load %struct.TYPE_7__*, %struct.TYPE_7__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %327, i32 0, i32 0
  %329 = load i32*, i32** %328, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 4
  %331 = load i32, i32* %330, align 4
  %332 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %324, i32 %331, i32 -1)
  store i64 %332, i64* %3, align 8
  %333 = load i64, i64* %3, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %336

335:                                              ; preds = %319
  br label %525

336:                                              ; preds = %319
  %337 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %338 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %337, i32 6, i32 17, i32 0)
  store i64 %338, i64* %3, align 8
  %339 = load i64, i64* %3, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %336
  br label %525

342:                                              ; preds = %336
  %343 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %344 = call i64 @ustorage_fs_request_sense(%struct.ustorage_fs_softc* %343)
  store i64 %344, i64* %3, align 8
  br label %525

345:                                              ; preds = %1
  %346 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %347 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %346, i32 0, i32 -1)
  store i64 %347, i64* %3, align 8
  %348 = load i64, i64* %3, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  br label %525

351:                                              ; preds = %345
  %352 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %353 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %352, i32 6, i32 19, i32 0)
  store i64 %353, i64* %3, align 8
  %354 = load i64, i64* %3, align 8
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %357

356:                                              ; preds = %351
  br label %525

357:                                              ; preds = %351
  %358 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %359 = call i64 @ustorage_fs_start_stop(%struct.ustorage_fs_softc* %358)
  store i64 %359, i64* %3, align 8
  br label %525

360:                                              ; preds = %1
  %361 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %362 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %361, i32 0, i32 -1)
  store i64 %362, i64* %3, align 8
  %363 = load i64, i64* %3, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  br label %525

366:                                              ; preds = %360
  %367 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %368 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %367, i32 10, i32 445, i32 1)
  store i64 %368, i64* %3, align 8
  %369 = load i64, i64* %3, align 8
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  br label %525

372:                                              ; preds = %366
  %373 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %374 = call i64 @ustorage_fs_synchronize_cache(%struct.ustorage_fs_softc* %373)
  store i64 %374, i64* %3, align 8
  br label %525

375:                                              ; preds = %1
  %376 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %377 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %376, i32 0, i32 -1)
  store i64 %377, i64* %3, align 8
  %378 = load i64, i64* %3, align 8
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %381

380:                                              ; preds = %375
  br label %525

381:                                              ; preds = %375
  %382 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %383 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %382, i32 6, i32 1, i32 1)
  store i64 %383, i64* %3, align 8
  br label %525

384:                                              ; preds = %1
  %385 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %386 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %385, i32 0, i32 -1)
  store i64 %386, i64* %3, align 8
  %387 = load i64, i64* %3, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %390

389:                                              ; preds = %384
  br label %525

390:                                              ; preds = %384
  %391 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %392 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %391, i32 10, i32 447, i32 1)
  store i64 %392, i64* %3, align 8
  %393 = load i64, i64* %3, align 8
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %396

395:                                              ; preds = %390
  br label %525

396:                                              ; preds = %390
  %397 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %398 = call i64 @ustorage_fs_verify(%struct.ustorage_fs_softc* %397)
  store i64 %398, i64* %3, align 8
  br label %525

399:                                              ; preds = %1
  %400 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %401 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %400, i32 0, i32 2
  %402 = load %struct.TYPE_7__*, %struct.TYPE_7__** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 0
  %404 = load i32*, i32** %403, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 4
  %406 = load i32, i32* %405, align 4
  %407 = sext i32 %406 to i64
  store i64 %407, i64* %4, align 8
  %408 = load i8*, i8** @DIR_READ, align 8
  %409 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %410 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %410, i32 0, i32 2
  store i8* %408, i8** %411, align 8
  %412 = load i64, i64* %4, align 8
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %399
  br label %417

415:                                              ; preds = %399
  %416 = load i64, i64* %4, align 8
  br label %417

417:                                              ; preds = %415, %414
  %418 = phi i64 [ 256, %414 ], [ %416, %415 ]
  %419 = trunc i64 %418 to i32
  store i32 %419, i32* %5, align 4
  %420 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %421 = load i32, i32* %5, align 4
  %422 = shl i32 %421, 9
  %423 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %420, i32 %422, i32 -512)
  store i64 %423, i64* %3, align 8
  %424 = load i64, i64* %3, align 8
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %427

426:                                              ; preds = %417
  br label %525

427:                                              ; preds = %417
  %428 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %429 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %428, i32 6, i32 31, i32 1)
  store i64 %429, i64* %3, align 8
  %430 = load i64, i64* %3, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %433

432:                                              ; preds = %427
  br label %525

433:                                              ; preds = %427
  %434 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %435 = call i64 @ustorage_fs_write(%struct.ustorage_fs_softc* %434)
  store i64 %435, i64* %3, align 8
  br label %525

436:                                              ; preds = %1
  %437 = load i8*, i8** @DIR_READ, align 8
  %438 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %439 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %439, i32 0, i32 2
  store i8* %437, i8** %440, align 8
  %441 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %442 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %441, i32 0, i32 2
  %443 = load %struct.TYPE_7__*, %struct.TYPE_7__** %442, align 8
  %444 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 7
  %447 = call i32 @get_be16(i32* %446)
  store i32 %447, i32* %5, align 4
  %448 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %449 = load i32, i32* %5, align 4
  %450 = shl i32 %449, 9
  %451 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %448, i32 %450, i32 -512)
  store i64 %451, i64* %3, align 8
  %452 = load i64, i64* %3, align 8
  %453 = icmp ne i64 %452, 0
  br i1 %453, label %454, label %455

454:                                              ; preds = %436
  br label %525

455:                                              ; preds = %436
  %456 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %457 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %456, i32 10, i32 447, i32 1)
  store i64 %457, i64* %3, align 8
  %458 = load i64, i64* %3, align 8
  %459 = icmp ne i64 %458, 0
  br i1 %459, label %460, label %461

460:                                              ; preds = %455
  br label %525

461:                                              ; preds = %455
  %462 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %463 = call i64 @ustorage_fs_write(%struct.ustorage_fs_softc* %462)
  store i64 %463, i64* %3, align 8
  br label %525

464:                                              ; preds = %1
  %465 = load i8*, i8** @DIR_READ, align 8
  %466 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %467 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %467, i32 0, i32 2
  store i8* %465, i8** %468, align 8
  %469 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %470 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %469, i32 0, i32 2
  %471 = load %struct.TYPE_7__*, %struct.TYPE_7__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %471, i32 0, i32 0
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 6
  %475 = call i32 @get_be32(i32* %474)
  store i32 %475, i32* %5, align 4
  %476 = load i32, i32* %5, align 4
  %477 = icmp sgt i32 %476, -1
  br i1 %477, label %478, label %484

478:                                              ; preds = %464
  %479 = load i8*, i8** @CSWSTATUS_FAILED, align 8
  %480 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %481 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %480, i32 0, i32 1
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** %481, align 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 0
  store i8* %479, i8** %483, align 8
  store i64 1, i64* %3, align 8
  br label %525

484:                                              ; preds = %464
  %485 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %486 = load i32, i32* %5, align 4
  %487 = shl i32 %486, 9
  %488 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %485, i32 %487, i32 -512)
  store i64 %488, i64* %3, align 8
  %489 = load i64, i64* %3, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %484
  br label %525

492:                                              ; preds = %484
  %493 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %494 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %493, i32 12, i32 1023, i32 1)
  store i64 %494, i64* %3, align 8
  %495 = load i64, i64* %3, align 8
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %498

497:                                              ; preds = %492
  br label %525

498:                                              ; preds = %492
  %499 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %500 = call i64 @ustorage_fs_write(%struct.ustorage_fs_softc* %499)
  store i64 %500, i64* %3, align 8
  br label %525

501:                                              ; preds = %1, %1, %1, %1
  br label %502

502:                                              ; preds = %1, %501
  %503 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %504 = call i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc* %503, i32 0, i32 -1)
  store i64 %504, i64* %3, align 8
  %505 = load i64, i64* %3, align 8
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %502
  br label %525

508:                                              ; preds = %502
  %509 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %510 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %511 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = call i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc* %509, i32 %513, i32 255, i32 0)
  store i64 %514, i64* %3, align 8
  %515 = load i64, i64* %3, align 8
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %518

517:                                              ; preds = %508
  br label %525

518:                                              ; preds = %508
  %519 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %520 = load %struct.ustorage_fs_softc*, %struct.ustorage_fs_softc** %2, align 8
  %521 = getelementptr inbounds %struct.ustorage_fs_softc, %struct.ustorage_fs_softc* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %521, i32 0, i32 1
  %523 = load %struct.TYPE_6__*, %struct.TYPE_6__** %522, align 8
  %524 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %523, i32 0, i32 0
  store i32 %519, i32* %524, align 4
  store i64 1, i64* %3, align 8
  br label %525

525:                                              ; preds = %518, %517, %507, %498, %497, %491, %478, %461, %460, %454, %433, %432, %426, %396, %395, %389, %381, %380, %372, %371, %365, %357, %356, %350, %342, %341, %335, %316, %315, %309, %290, %289, %277, %276, %270, %257, %239, %238, %232, %211, %210, %204, %174, %173, %167, %159, %158, %152, %133, %132, %126, %107, %106, %100, %81, %80, %74, %55, %54, %48
  %526 = load i64, i64* %3, align 8
  ret i64 %526
}

declare dso_local i32 @DPRINTF(i8*, i32, i32) #1

declare dso_local i64 @ustorage_fs_min_len(%struct.ustorage_fs_softc*, i32, i32) #1

declare dso_local i64 @ustorage_fs_check_cmd(%struct.ustorage_fs_softc*, i32, i32, i32) #1

declare dso_local i64 @ustorage_fs_inquiry(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_mode_select(%struct.ustorage_fs_softc*) #1

declare dso_local i32 @get_be16(i32*) #1

declare dso_local i64 @ustorage_fs_mode_sense(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_prevent_allow(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_read(%struct.ustorage_fs_softc*) #1

declare dso_local i32 @get_be32(i32*) #1

declare dso_local i64 @ustorage_fs_read_capacity(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_read_format_capacities(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_request_sense(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_start_stop(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_synchronize_cache(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_verify(%struct.ustorage_fs_softc*) #1

declare dso_local i64 @ustorage_fs_write(%struct.ustorage_fs_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
