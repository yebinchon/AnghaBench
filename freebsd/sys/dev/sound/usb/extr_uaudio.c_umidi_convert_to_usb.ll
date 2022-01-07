; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_convert_to_usb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_umidi_convert_to_usb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umidi_sub_chan = type { i32*, i32*, i32*, i32 }

@UMIDI_ST_UNKNOWN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umidi_sub_chan*, i32, i32)* @umidi_convert_to_usb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umidi_convert_to_usb(%struct.umidi_sub_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.umidi_sub_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.umidi_sub_chan* %0, %struct.umidi_sub_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %6, align 4
  %10 = shl i32 %9, 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 248
  br i1 %12, label %13, label %38

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  %15 = or i32 %14, 15
  %16 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %17 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %22 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %26 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 0, i32* %28, align 4
  %29 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %30 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  store i32 0, i32* %32, align 4
  %33 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %34 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %37 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  store i32 1, i32* %4, align 4
  br label %339

38:                                               ; preds = %3
  %39 = load i32, i32* %7, align 4
  %40 = icmp sge i32 %39, 240
  br i1 %40, label %41, label %182

41:                                               ; preds = %38
  %42 = load i32, i32* %7, align 4
  switch i32 %42, label %181 [
    i32 240, label %43
    i32 241, label %51
    i32 243, label %51
    i32 242, label %59
    i32 244, label %67
    i32 245, label %67
    i32 246, label %72
    i32 247, label %100
  ]

43:                                               ; preds = %41
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %46 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %50 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %49, i32 0, i32 3
  store i32 129, i32* %50, align 8
  br label %181

51:                                               ; preds = %41, %41
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %54 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 %52, i32* %56, align 4
  %57 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %58 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %57, i32 0, i32 3
  store i32 133, i32* %58, align 8
  br label %181

59:                                               ; preds = %41
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %62 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 %60, i32* %64, align 4
  %65 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %66 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %65, i32 0, i32 3
  store i32 132, i32* %66, align 8
  br label %181

67:                                               ; preds = %41, %41
  %68 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %71 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 8
  br label %181

72:                                               ; preds = %41
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, 5
  %75 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %76 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 %74, i32* %78, align 4
  %79 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %80 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 246, i32* %82, align 4
  %83 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %84 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  store i32 0, i32* %86, align 4
  %87 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %88 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  store i32 0, i32* %90, align 4
  %91 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %92 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %91, i32 0, i32 2
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %95 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %94, i32 0, i32 1
  store i32* %93, i32** %95, align 8
  %96 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %99 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 8
  store i32 1, i32* %4, align 4
  br label %339

100:                                              ; preds = %41
  %101 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %102 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  switch i32 %103, label %176 [
    i32 130, label %104
    i32 129, label %132
    i32 128, label %156
  ]

104:                                              ; preds = %100
  %105 = load i32, i32* %8, align 4
  %106 = or i32 %105, 5
  %107 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %108 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %106, i32* %110, align 4
  %111 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %112 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 247, i32* %114, align 4
  %115 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %116 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32 0, i32* %118, align 4
  %119 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %120 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 3
  store i32 0, i32* %122, align 4
  %123 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %124 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %123, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %127 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %126, i32 0, i32 1
  store i32* %125, i32** %127, align 8
  %128 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %129 = ptrtoint i8* %128 to i32
  %130 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %131 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 8
  store i32 1, i32* %4, align 4
  br label %339

132:                                              ; preds = %100
  %133 = load i32, i32* %8, align 4
  %134 = or i32 %133, 6
  %135 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %136 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 %134, i32* %138, align 4
  %139 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %140 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %139, i32 0, i32 2
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 2
  store i32 247, i32* %142, align 4
  %143 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %144 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %143, i32 0, i32 2
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 3
  store i32 0, i32* %146, align 4
  %147 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %148 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %151 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %150, i32 0, i32 1
  store i32* %149, i32** %151, align 8
  %152 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %153 = ptrtoint i8* %152 to i32
  %154 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %155 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %154, i32 0, i32 3
  store i32 %153, i32* %155, align 8
  store i32 1, i32* %4, align 4
  br label %339

156:                                              ; preds = %100
  %157 = load i32, i32* %8, align 4
  %158 = or i32 %157, 7
  %159 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %160 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  store i32 %158, i32* %162, align 4
  %163 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %164 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %163, i32 0, i32 2
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 3
  store i32 247, i32* %166, align 4
  %167 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %168 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %171 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %170, i32 0, i32 1
  store i32* %169, i32** %171, align 8
  %172 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %173 = ptrtoint i8* %172 to i32
  %174 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %175 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 8
  store i32 1, i32* %4, align 4
  br label %339

176:                                              ; preds = %100
  %177 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %180 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %179, i32 0, i32 3
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %41, %176, %67, %59, %51, %43
  br label %337

182:                                              ; preds = %38
  %183 = load i32, i32* %7, align 4
  %184 = icmp sge i32 %183, 128
  br i1 %184, label %185, label %203

185:                                              ; preds = %182
  %186 = load i32, i32* %7, align 4
  %187 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %188 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %186, i32* %190, align 4
  %191 = load i32, i32* %7, align 4
  %192 = icmp sge i32 %191, 192
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load i32, i32* %7, align 4
  %195 = icmp sle i32 %194, 223
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %198 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %197, i32 0, i32 3
  store i32 133, i32* %198, align 8
  br label %202

199:                                              ; preds = %193, %185
  %200 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %201 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %200, i32 0, i32 3
  store i32 132, i32* %201, align 8
  br label %202

202:                                              ; preds = %199, %196
  br label %336

203:                                              ; preds = %182
  %204 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %205 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  switch i32 %206, label %334 [
    i32 133, label %207
    i32 132, label %250
    i32 131, label %258
    i32 130, label %299
    i32 129, label %307
    i32 128, label %315
  ]

207:                                              ; preds = %203
  %208 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %209 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = icmp slt i32 %212, 240
  br i1 %213, label %214, label %223

214:                                              ; preds = %207
  %215 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %216 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = ashr i32 %219, 4
  %221 = load i32, i32* %8, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %8, align 4
  br label %230

223:                                              ; preds = %207
  %224 = load i32, i32* %8, align 4
  %225 = or i32 %224, 2
  store i32 %225, i32* %8, align 4
  %226 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %229 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %228, i32 0, i32 3
  store i32 %227, i32* %229, align 8
  br label %230

230:                                              ; preds = %223, %214
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %233 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 0
  store i32 %231, i32* %235, align 4
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %238 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 2
  store i32 %236, i32* %240, align 4
  %241 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %242 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 3
  store i32 0, i32* %244, align 4
  %245 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %246 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %245, i32 0, i32 2
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %249 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %248, i32 0, i32 1
  store i32* %247, i32** %249, align 8
  store i32 1, i32* %4, align 4
  br label %339

250:                                              ; preds = %203
  %251 = load i32, i32* %7, align 4
  %252 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %253 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %252, i32 0, i32 2
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 2
  store i32 %251, i32* %255, align 4
  %256 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %257 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %256, i32 0, i32 3
  store i32 131, i32* %257, align 8
  br label %335

258:                                              ; preds = %203
  %259 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %260 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %259, i32 0, i32 2
  %261 = load i32*, i32** %260, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp slt i32 %263, 240
  br i1 %264, label %265, label %276

265:                                              ; preds = %258
  %266 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %267 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = ashr i32 %270, 4
  %272 = load i32, i32* %8, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %8, align 4
  %274 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %275 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %274, i32 0, i32 3
  store i32 132, i32* %275, align 8
  br label %283

276:                                              ; preds = %258
  %277 = load i32, i32* %8, align 4
  %278 = or i32 %277, 3
  store i32 %278, i32* %8, align 4
  %279 = load i8*, i8** @UMIDI_ST_UNKNOWN, align 8
  %280 = ptrtoint i8* %279 to i32
  %281 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %282 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %281, i32 0, i32 3
  store i32 %280, i32* %282, align 8
  br label %283

283:                                              ; preds = %276, %265
  %284 = load i32, i32* %8, align 4
  %285 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %286 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %285, i32 0, i32 2
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 0
  store i32 %284, i32* %288, align 4
  %289 = load i32, i32* %7, align 4
  %290 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %291 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %290, i32 0, i32 2
  %292 = load i32*, i32** %291, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 3
  store i32 %289, i32* %293, align 4
  %294 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %295 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %294, i32 0, i32 2
  %296 = load i32*, i32** %295, align 8
  %297 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %298 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %297, i32 0, i32 1
  store i32* %296, i32** %298, align 8
  store i32 1, i32* %4, align 4
  br label %339

299:                                              ; preds = %203
  %300 = load i32, i32* %7, align 4
  %301 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %302 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %301, i32 0, i32 2
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 1
  store i32 %300, i32* %304, align 4
  %305 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %306 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %305, i32 0, i32 3
  store i32 129, i32* %306, align 8
  br label %335

307:                                              ; preds = %203
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %310 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 2
  store i32 %308, i32* %312, align 4
  %313 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %314 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %313, i32 0, i32 3
  store i32 128, i32* %314, align 8
  br label %335

315:                                              ; preds = %203
  %316 = load i32, i32* %8, align 4
  %317 = or i32 %316, 4
  %318 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %319 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %318, i32 0, i32 2
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 0
  store i32 %317, i32* %321, align 4
  %322 = load i32, i32* %7, align 4
  %323 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %324 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %323, i32 0, i32 2
  %325 = load i32*, i32** %324, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 3
  store i32 %322, i32* %326, align 4
  %327 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %328 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %327, i32 0, i32 2
  %329 = load i32*, i32** %328, align 8
  %330 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %331 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %330, i32 0, i32 1
  store i32* %329, i32** %331, align 8
  %332 = load %struct.umidi_sub_chan*, %struct.umidi_sub_chan** %5, align 8
  %333 = getelementptr inbounds %struct.umidi_sub_chan, %struct.umidi_sub_chan* %332, i32 0, i32 3
  store i32 130, i32* %333, align 8
  store i32 1, i32* %4, align 4
  br label %339

334:                                              ; preds = %203
  br label %335

335:                                              ; preds = %334, %307, %299, %250
  br label %336

336:                                              ; preds = %335, %202
  br label %337

337:                                              ; preds = %336, %181
  br label %338

338:                                              ; preds = %337
  store i32 0, i32* %4, align 4
  br label %339

339:                                              ; preds = %338, %315, %283, %230, %156, %132, %104, %72, %13
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
