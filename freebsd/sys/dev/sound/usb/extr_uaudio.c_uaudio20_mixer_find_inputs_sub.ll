; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_find_inputs_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_find_inputs_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_terminal_node = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__* }
%struct.TYPE_20__ = type { i64*, i64 }
%struct.TYPE_19__ = type { i64*, i64 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64*, i64 }
%struct.TYPE_14__ = type { i64*, i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%struct.uaudio_search_result = type { i64, i32* }

@UAUDIO_RECURSE_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"avoided going into a circle at id=%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_terminal_node*, i64*, i64, %struct.uaudio_search_result*)* @uaudio20_mixer_find_inputs_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %0, i64* %1, i64 %2, %struct.uaudio_search_result* %3) #0 {
  %5 = alloca %struct.uaudio_terminal_node*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.uaudio_search_result*, align 8
  %9 = alloca %struct.uaudio_terminal_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.uaudio_terminal_node* %0, %struct.uaudio_terminal_node** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.uaudio_search_result* %3, %struct.uaudio_search_result** %8, align 8
  br label %13

13:                                               ; preds = %235, %204, %187, %170, %153, %122, %91, %74, %4
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %265, %13
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %268

18:                                               ; preds = %14
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %11, align 8
  %23 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %24 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UAUDIO_RECURSE_LIMIT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %268

31:                                               ; preds = %18
  %32 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %33 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %36, i64 %37
  store %struct.uaudio_terminal_node* %38, %struct.uaudio_terminal_node** %9, align 8
  %39 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %40 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 8
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %41, align 8
  %43 = icmp eq %struct.TYPE_12__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %265

45:                                               ; preds = %31
  %46 = load i64, i64* %10, align 8
  %47 = add i64 %46, 1
  %48 = load i64, i64* %7, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %12, align 8
  %52 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %53 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %263 [
    i32 133, label %58
    i32 131, label %71
    i32 132, label %88
    i32 128, label %119
    i32 129, label %150
    i32 136, label %167
    i32 134, label %184
    i32 130, label %201
    i32 135, label %232
  ]

58:                                               ; preds = %45
  %59 = load i64, i64* %11, align 8
  %60 = urem i64 %59, 8
  %61 = trunc i64 %60 to i32
  %62 = shl i32 1, %61
  %63 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %64 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = udiv i64 %66, 8
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %62
  store i32 %70, i32* %68, align 4
  br label %264

71:                                               ; preds = %45
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %76 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 7
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  store i64* %79, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %13

80:                                               ; preds = %71
  %81 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %82 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %83 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 7
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %81, i64* %86, i64 1, %struct.uaudio_search_result* %87)
  br label %264

88:                                               ; preds = %45
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %93 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  store i64* %97, i64** %6, align 8
  %98 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %99 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 6
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %7, align 8
  br label %13

104:                                              ; preds = %88
  %105 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %106 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %107 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 6
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %113 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 6
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %105, i64* %111, i64 %117, %struct.uaudio_search_result* %118)
  br label %264

119:                                              ; preds = %45
  %120 = load i64, i64* %12, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %119
  %123 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %124 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 5
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  store i64* %128, i64** %6, align 8
  %129 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %130 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  store i64 %134, i64* %7, align 8
  br label %13

135:                                              ; preds = %119
  %136 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %137 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %138 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 5
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %144 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %136, i64* %142, i64 %148, %struct.uaudio_search_result* %149)
  br label %264

150:                                              ; preds = %45
  %151 = load i64, i64* %12, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %155 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 4
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  store i64* %158, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %13

159:                                              ; preds = %150
  %160 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %161 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %162 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 4
  %164 = load %struct.TYPE_16__*, %struct.TYPE_16__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %164, i32 0, i32 0
  %166 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %160, i64* %165, i64 1, %struct.uaudio_search_result* %166)
  br label %264

167:                                              ; preds = %45
  %168 = load i64, i64* %12, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %172 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 3
  %174 = load %struct.TYPE_17__*, %struct.TYPE_17__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %174, i32 0, i32 0
  store i64* %175, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %13

176:                                              ; preds = %167
  %177 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %178 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %179 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 3
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %177, i64* %182, i64 1, %struct.uaudio_search_result* %183)
  br label %264

184:                                              ; preds = %45
  %185 = load i64, i64* %12, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %189 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 0
  store i64* %192, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %13

193:                                              ; preds = %184
  %194 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %195 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %196 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 2
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %194, i64* %199, i64 1, %struct.uaudio_search_result* %200)
  br label %264

201:                                              ; preds = %45
  %202 = load i64, i64* %12, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %217

204:                                              ; preds = %201
  %205 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %206 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 1
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  store i64* %210, i64** %6, align 8
  %211 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %212 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 1
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %7, align 8
  br label %13

217:                                              ; preds = %201
  %218 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %219 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %220 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %226 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_19__*, %struct.TYPE_19__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %218, i64* %224, i64 %230, %struct.uaudio_search_result* %231)
  br label %264

232:                                              ; preds = %45
  %233 = load i64, i64* %12, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %232
  %236 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %237 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_20__*, %struct.TYPE_20__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 0
  %241 = load i64*, i64** %240, align 8
  store i64* %241, i64** %6, align 8
  %242 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %243 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load %struct.TYPE_20__*, %struct.TYPE_20__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* %7, align 8
  br label %13

248:                                              ; preds = %232
  %249 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %250 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %251 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_20__*, %struct.TYPE_20__** %252, align 8
  %254 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %253, i32 0, i32 0
  %255 = load i64*, i64** %254, align 8
  %256 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %257 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %249, i64* %255, i64 %261, %struct.uaudio_search_result* %262)
  br label %264

263:                                              ; preds = %45
  br label %264

264:                                              ; preds = %263, %248, %217, %193, %176, %159, %135, %104, %80, %58
  br label %265

265:                                              ; preds = %264, %44
  %266 = load i64, i64* %10, align 8
  %267 = add i64 %266, 1
  store i64 %267, i64* %10, align 8
  br label %14

268:                                              ; preds = %28, %14
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
