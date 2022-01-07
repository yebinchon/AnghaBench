; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_get_cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_get_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_audio20_cluster = type { i32, i32*, i32 }
%struct.uaudio_terminal_node = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_18__*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.usb_descriptor* }
%struct.TYPE_20__ = type { i64, i32* }
%struct.TYPE_19__ = type { i64, i32* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i64*, i32 }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32*, i32 }
%struct.usb_descriptor = type { i32 }

@UAUDIO_RECURSE_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"Bad data!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_audio20_cluster*, i64, %struct.uaudio_terminal_node*)* @uaudio20_mixer_get_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio20_mixer_get_cluster(%struct.usb_audio20_cluster* noalias sret %0, i64 %1, %struct.uaudio_terminal_node* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.uaudio_terminal_node*, align 8
  %6 = alloca %struct.usb_descriptor*, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  store %struct.uaudio_terminal_node* %2, %struct.uaudio_terminal_node** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %220, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @UAUDIO_RECURSE_LIMIT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %223

12:                                               ; preds = %8
  %13 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %13, i64 %14
  %16 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 9
  %18 = load %struct.usb_descriptor*, %struct.usb_descriptor** %17, align 8
  store %struct.usb_descriptor* %18, %struct.usb_descriptor** %6, align 8
  %19 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %20 = icmp eq %struct.usb_descriptor* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %224

22:                                               ; preds = %12
  %23 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %24 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %218 [
    i32 133, label %26
    i32 131, label %97
    i32 132, label %106
    i32 128, label %127
    i32 129, label %149
    i32 136, label %158
    i32 134, label %167
    i32 130, label %176
    i32 135, label %197
  ]

26:                                               ; preds = %22
  %27 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %27, i64 %28
  %30 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.usb_audio20_cluster, %struct.usb_audio20_cluster* %0, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %36, i64 %37
  %39 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.usb_audio20_cluster, %struct.usb_audio20_cluster* %0, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %49, i64 %50
  %52 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.usb_audio20_cluster, %struct.usb_audio20_cluster* %0, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %62, i64 %63
  %65 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.usb_audio20_cluster, %struct.usb_audio20_cluster* %0, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 %71, i32* %74, align 4
  %75 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %76 = load i64, i64* %4, align 8
  %77 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %75, i64 %76
  %78 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 8
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = getelementptr inbounds %struct.usb_audio20_cluster, %struct.usb_audio20_cluster* %0, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 3
  store i32 %84, i32* %87, align 4
  %88 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %88, i64 %89
  %91 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = getelementptr inbounds %struct.usb_audio20_cluster, %struct.usb_audio20_cluster* %0, i32 0, i32 0
  store i32 %95, i32* %96, align 8
  br label %227

97:                                               ; preds = %22
  %98 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %99 = load i64, i64* %4, align 8
  %100 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %98, i64 %99
  %101 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 7
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %4, align 8
  br label %219

106:                                              ; preds = %22
  %107 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %108 = load i64, i64* %4, align 8
  %109 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %107, i64 %108
  %110 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 6
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %116 = load i64, i64* %4, align 8
  %117 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %115, i64 %116
  %118 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 6
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i32, i32* %114, i64 %122
  %124 = bitcast i32* %123 to %struct.usb_audio20_cluster*
  %125 = bitcast %struct.usb_audio20_cluster* %0 to i8*
  %126 = bitcast %struct.usb_audio20_cluster* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %125, i8* align 8 %126, i64 24, i1 false)
  br label %227

127:                                              ; preds = %22
  %128 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %129 = load i64, i64* %4, align 8
  %130 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %128, i64 %129
  %131 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 5
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %127
  %138 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %139 = load i64, i64* %4, align 8
  %140 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %138, i64 %139
  %141 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 5
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 0
  %147 = load i64, i64* %146, align 8
  store i64 %147, i64* %4, align 8
  br label %148

148:                                              ; preds = %137, %127
  br label %219

149:                                              ; preds = %22
  %150 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %151 = load i64, i64* %4, align 8
  %152 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %150, i64 %151
  %153 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %4, align 8
  br label %219

158:                                              ; preds = %22
  %159 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %160 = load i64, i64* %4, align 8
  %161 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %159, i64 %160
  %162 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 3
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  store i64 %166, i64* %4, align 8
  br label %219

167:                                              ; preds = %22
  %168 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %169 = load i64, i64* %4, align 8
  %170 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %168, i64 %169
  %171 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  store i64 %175, i64* %4, align 8
  br label %219

176:                                              ; preds = %22
  %177 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %178 = load i64, i64* %4, align 8
  %179 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %177, i64 %178
  %180 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %186 = load i64, i64* %4, align 8
  %187 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %185, i64 %186
  %188 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i32, i32* %184, i64 %192
  %194 = bitcast i32* %193 to %struct.usb_audio20_cluster*
  %195 = bitcast %struct.usb_audio20_cluster* %0 to i8*
  %196 = bitcast %struct.usb_audio20_cluster* %194 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %195, i8* align 8 %196, i64 24, i1 false)
  br label %227

197:                                              ; preds = %22
  %198 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %199 = load i64, i64* %4, align 8
  %200 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %198, i64 %199
  %201 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %207 = load i64, i64* %4, align 8
  %208 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %206, i64 %207
  %209 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i32, i32* %205, i64 %213
  %215 = bitcast i32* %214 to %struct.usb_audio20_cluster*
  %216 = bitcast %struct.usb_audio20_cluster* %0 to i8*
  %217 = bitcast %struct.usb_audio20_cluster* %215 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %216, i8* align 8 %217, i64 24, i1 false)
  br label %227

218:                                              ; preds = %22
  br label %224

219:                                              ; preds = %167, %158, %149, %148, %97
  br label %220

220:                                              ; preds = %219
  %221 = load i64, i64* %7, align 8
  %222 = add nsw i64 %221, 1
  store i64 %222, i64* %7, align 8
  br label %8

223:                                              ; preds = %8
  br label %224

224:                                              ; preds = %223, %218, %21
  %225 = call i32 @DPRINTF(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %226 = call i32 @memset(%struct.usb_audio20_cluster* %0, i32 0, i32 24)
  br label %227

227:                                              ; preds = %224, %197, %176, %106, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @memset(%struct.usb_audio20_cluster*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
