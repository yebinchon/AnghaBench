; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_get_cluster.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_get_cluster.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_audio_cluster = type { i32, i32*, i32 }
%struct.uaudio_terminal_node = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.usb_descriptor* }
%struct.TYPE_15__ = type { i64, i32* }
%struct.TYPE_14__ = type { i64, i32* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64*, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.usb_descriptor = type { i32 }

@UAUDIO_RECURSE_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"bad data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_audio_cluster*, i64, %struct.uaudio_terminal_node*)* @uaudio_mixer_get_cluster to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_get_cluster(%struct.usb_audio_cluster* noalias sret %0, i64 %1, %struct.uaudio_terminal_node* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.uaudio_terminal_node*, align 8
  %6 = alloca %struct.usb_descriptor*, align 8
  %7 = alloca i64, align 8
  store i64 %1, i64* %4, align 8
  store %struct.uaudio_terminal_node* %2, %struct.uaudio_terminal_node** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %176, %3
  %9 = load i64, i64* %7, align 8
  %10 = load i64, i64* @UAUDIO_RECURSE_LIMIT, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %179

12:                                               ; preds = %8
  %13 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %13, i64 %14
  %16 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 7
  %18 = load %struct.usb_descriptor*, %struct.usb_descriptor** %17, align 8
  store %struct.usb_descriptor* %18, %struct.usb_descriptor** %6, align 8
  %19 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %20 = icmp eq %struct.usb_descriptor* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %180

22:                                               ; preds = %12
  %23 = load %struct.usb_descriptor*, %struct.usb_descriptor** %6, align 8
  %24 = getelementptr inbounds %struct.usb_descriptor, %struct.usb_descriptor* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %174 [
    i32 132, label %26
    i32 130, label %71
    i32 131, label %80
    i32 128, label %101
    i32 133, label %123
    i32 129, label %132
    i32 134, label %153
  ]

26:                                               ; preds = %22
  %27 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %27, i64 %28
  %30 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %30, i32 0, i32 6
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.usb_audio_cluster, %struct.usb_audio_cluster* %0, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %37 = load i64, i64* %4, align 8
  %38 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %36, i64 %37
  %39 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 6
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.usb_audio_cluster, %struct.usb_audio_cluster* %0, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %45, i32* %48, align 4
  %49 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %50 = load i64, i64* %4, align 8
  %51 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %49, i64 %50
  %52 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 6
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.usb_audio_cluster, %struct.usb_audio_cluster* %0, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %62, i64 %63
  %65 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 6
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.usb_audio_cluster, %struct.usb_audio_cluster* %0, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  br label %183

71:                                               ; preds = %22
  %72 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %73 = load i64, i64* %4, align 8
  %74 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %72, i64 %73
  %75 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 5
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %4, align 8
  br label %175

80:                                               ; preds = %22
  %81 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %81, i64 %82
  %84 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %90 = load i64, i64* %4, align 8
  %91 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %89, i64 %90
  %92 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i32, i32* %88, i64 %96
  %98 = bitcast i32* %97 to %struct.usb_audio_cluster*
  %99 = bitcast %struct.usb_audio_cluster* %0 to i8*
  %100 = bitcast %struct.usb_audio_cluster* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 24, i1 false)
  br label %183

101:                                              ; preds = %22
  %102 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %103 = load i64, i64* %4, align 8
  %104 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %102, i64 %103
  %105 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %101
  %112 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %113 = load i64, i64* %4, align 8
  %114 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %112, i64 %113
  %115 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  %119 = load i64*, i64** %118, align 8
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %4, align 8
  br label %122

122:                                              ; preds = %111, %101
  br label %175

123:                                              ; preds = %22
  %124 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %125 = load i64, i64* %4, align 8
  %126 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %124, i64 %125
  %127 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 2
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  store i64 %131, i64* %4, align 8
  br label %175

132:                                              ; preds = %22
  %133 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %134 = load i64, i64* %4, align 8
  %135 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %133, i64 %134
  %136 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %142 = load i64, i64* %4, align 8
  %143 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %141, i64 %142
  %144 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %140, i64 %148
  %150 = bitcast i32* %149 to %struct.usb_audio_cluster*
  %151 = bitcast %struct.usb_audio_cluster* %0 to i8*
  %152 = bitcast %struct.usb_audio_cluster* %150 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %151, i8* align 8 %152, i64 24, i1 false)
  br label %183

153:                                              ; preds = %22
  %154 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %155 = load i64, i64* %4, align 8
  %156 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %154, i64 %155
  %157 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %163 = load i64, i64* %4, align 8
  %164 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %162, i64 %163
  %165 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 0
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds i32, i32* %161, i64 %169
  %171 = bitcast i32* %170 to %struct.usb_audio_cluster*
  %172 = bitcast %struct.usb_audio_cluster* %0 to i8*
  %173 = bitcast %struct.usb_audio_cluster* %171 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %172, i8* align 8 %173, i64 24, i1 false)
  br label %183

174:                                              ; preds = %22
  br label %180

175:                                              ; preds = %123, %122, %71
  br label %176

176:                                              ; preds = %175
  %177 = load i64, i64* %7, align 8
  %178 = add nsw i64 %177, 1
  store i64 %178, i64* %7, align 8
  br label %8

179:                                              ; preds = %8
  br label %180

180:                                              ; preds = %179, %174, %21
  %181 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %182 = call i32 @memset(%struct.usb_audio_cluster* %0, i32 0, i32 24)
  br label %183

183:                                              ; preds = %180, %153, %132, %80, %26
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @DPRINTF(i8*) #2

declare dso_local i32 @memset(%struct.usb_audio_cluster*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
