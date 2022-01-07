; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_find_inputs_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio_mixer_find_inputs_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_terminal_node = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_15__ = type { i64*, i64 }
%struct.TYPE_14__ = type { i64*, i64 }
%struct.TYPE_13__ = type { i64*, i64 }
%struct.TYPE_12__ = type { i64*, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.uaudio_search_result = type { i64, i32* }

@UAUDIO_RECURSE_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"avoided going into a circle at id=%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_terminal_node*, i64*, i64, %struct.uaudio_search_result*)* @uaudio_mixer_find_inputs_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %0, i64* %1, i64 %2, %struct.uaudio_search_result* %3) #0 {
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

13:                                               ; preds = %201, %170, %139, %108, %91, %74, %4
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %231, %13
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %234

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
  br label %234

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
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = icmp eq %struct.TYPE_9__* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %231

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
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 6
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  switch i32 %57, label %229 [
    i32 132, label %58
    i32 133, label %71
    i32 130, label %88
    i32 131, label %105
    i32 128, label %136
    i32 129, label %167
    i32 134, label %198
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
  br label %230

71:                                               ; preds = %45
  %72 = load i64, i64* %12, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %71
  %75 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %76 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 5
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store i64* %79, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %13

80:                                               ; preds = %71
  %81 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %82 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %83 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 5
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %81, i64* %86, i64 1, %struct.uaudio_search_result* %87)
  br label %230

88:                                               ; preds = %45
  %89 = load i64, i64* %12, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %93 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  store i64* %96, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %13

97:                                               ; preds = %88
  %98 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %99 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %100 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 4
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %98, i64* %103, i64 1, %struct.uaudio_search_result* %104)
  br label %230

105:                                              ; preds = %45
  %106 = load i64, i64* %12, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %105
  %109 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %110 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64*, i64** %113, align 8
  store i64* %114, i64** %6, align 8
  %115 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %116 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  store i64 %120, i64* %7, align 8
  br label %13

121:                                              ; preds = %105
  %122 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %123 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %124 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %130 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 3
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %122, i64* %128, i64 %134, %struct.uaudio_search_result* %135)
  br label %230

136:                                              ; preds = %45
  %137 = load i64, i64* %12, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %136
  %140 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %141 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 0
  %145 = load i64*, i64** %144, align 8
  store i64* %145, i64** %6, align 8
  %146 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %147 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %7, align 8
  br label %13

152:                                              ; preds = %136
  %153 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %154 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %155 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i64*, i64** %158, align 8
  %160 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %161 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %153, i64* %159, i64 %165, %struct.uaudio_search_result* %166)
  br label %230

167:                                              ; preds = %45
  %168 = load i64, i64* %12, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %183

170:                                              ; preds = %167
  %171 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %172 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  store i64* %176, i64** %6, align 8
  %177 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %178 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %7, align 8
  br label %13

183:                                              ; preds = %167
  %184 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %185 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %186 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 0
  %190 = load i64*, i64** %189, align 8
  %191 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %192 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %184, i64* %190, i64 %196, %struct.uaudio_search_result* %197)
  br label %230

198:                                              ; preds = %45
  %199 = load i64, i64* %12, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %214

201:                                              ; preds = %198
  %202 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %203 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 0
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %205, i32 0, i32 0
  %207 = load i64*, i64** %206, align 8
  store i64* %207, i64** %6, align 8
  %208 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %209 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load %struct.TYPE_15__*, %struct.TYPE_15__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  store i64 %213, i64* %7, align 8
  br label %13

214:                                              ; preds = %198
  %215 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %216 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %217 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %223 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 0
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio_mixer_find_inputs_sub(%struct.uaudio_terminal_node* %215, i64* %221, i64 %227, %struct.uaudio_search_result* %228)
  br label %230

229:                                              ; preds = %45
  br label %230

230:                                              ; preds = %229, %214, %183, %152, %121, %97, %80, %58
  br label %231

231:                                              ; preds = %230, %44
  %232 = load i64, i64* %10, align 8
  %233 = add i64 %232, 1
  store i64 %233, i64* %10, align 8
  br label %14

234:                                              ; preds = %28, %14
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
