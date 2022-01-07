; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_find_clocks_sub.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/usb/extr_uaudio.c_uaudio20_mixer_find_clocks_sub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uaudio_terminal_node = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64*, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.uaudio_search_result = type { i64, i32, i32*, i32* }

@UAUDIO_RECURSE_LIMIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"avoided going into a circle at id=%d!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uaudio_terminal_node*, i64*, i64, %struct.uaudio_search_result*)* @uaudio20_mixer_find_clocks_sub to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uaudio20_mixer_find_clocks_sub(%struct.uaudio_terminal_node* %0, i64* %1, i64 %2, %struct.uaudio_search_result* %3) #0 {
  %5 = alloca %struct.uaudio_terminal_node*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.uaudio_search_result*, align 8
  %9 = alloca %struct.uaudio_terminal_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.uaudio_terminal_node* %0, %struct.uaudio_terminal_node** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.uaudio_search_result* %3, %struct.uaudio_search_result** %8, align 8
  br label %14

14:                                               ; preds = %131, %100, %83, %64, %4
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %185, %14
  %16 = load i64, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %188

19:                                               ; preds = %15
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %25 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UAUDIO_RECURSE_LIMIT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @DPRINTF(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %30)
  br label %188

32:                                               ; preds = %19
  %33 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %34 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %35, 1
  store i64 %36, i64* %34, align 8
  %37 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %37, i64 %38
  store %struct.uaudio_terminal_node* %39, %struct.uaudio_terminal_node** %9, align 8
  %40 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %41 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = icmp eq %struct.TYPE_8__* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %185

46:                                               ; preds = %32
  %47 = load i64, i64* %10, align 8
  %48 = add i64 %47, 1
  %49 = load i64, i64* %7, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %12, align 8
  %53 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %54 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 5
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %183 [
    i32 129, label %59
    i32 128, label %78
    i32 131, label %97
    i32 132, label %128
    i32 130, label %145
  ]

59:                                               ; preds = %46
  %60 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %61 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %60, i32 0, i32 1
  store i32 1, i32* %61, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %66 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i64* %69, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %14

70:                                               ; preds = %59
  %71 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %72 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %73 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_clocks_sub(%struct.uaudio_terminal_node* %71, i64* %76, i64 1, %struct.uaudio_search_result* %77)
  br label %184

78:                                               ; preds = %46
  %79 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %80 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %79, i32 0, i32 1
  store i32 0, i32* %80, align 8
  %81 = load i64, i64* %12, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %85 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 3
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  store i64* %88, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %14

89:                                               ; preds = %78
  %90 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %91 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %92 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_clocks_sub(%struct.uaudio_terminal_node* %90, i64* %95, i64 1, %struct.uaudio_search_result* %96)
  br label %184

97:                                               ; preds = %46
  %98 = load i64, i64* %12, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %113

100:                                              ; preds = %97
  %101 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %102 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  store i64* %106, i64** %6, align 8
  %107 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %108 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %7, align 8
  br label %14

113:                                              ; preds = %97
  %114 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %115 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %116 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %122 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_clocks_sub(%struct.uaudio_terminal_node* %114, i64* %120, i64 %126, %struct.uaudio_search_result* %127)
  br label %184

128:                                              ; preds = %46
  %129 = load i64, i64* %12, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %128
  %132 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %133 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i64* %136, i64** %6, align 8
  store i64 1, i64* %7, align 8
  br label %14

137:                                              ; preds = %128
  %138 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %5, align 8
  %139 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %140 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 1
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  call void @uaudio20_mixer_find_clocks_sub(%struct.uaudio_terminal_node* %138, i64* %143, i64 1, %struct.uaudio_search_result* %144)
  br label %184

145:                                              ; preds = %46
  %146 = load %struct.uaudio_terminal_node*, %struct.uaudio_terminal_node** %9, align 8
  %147 = getelementptr inbounds %struct.uaudio_terminal_node, %struct.uaudio_terminal_node* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  store i64 %151, i64* %13, align 8
  %152 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %153 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  switch i32 %154, label %181 [
    i32 0, label %155
    i32 1, label %168
  ]

155:                                              ; preds = %145
  %156 = load i64, i64* %13, align 8
  %157 = urem i64 %156, 8
  %158 = trunc i64 %157 to i32
  %159 = shl i32 1, %158
  %160 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %161 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %160, i32 0, i32 2
  %162 = load i32*, i32** %161, align 8
  %163 = load i64, i64* %13, align 8
  %164 = udiv i64 %163, 8
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %159
  store i32 %167, i32* %165, align 4
  br label %182

168:                                              ; preds = %145
  %169 = load i64, i64* %13, align 8
  %170 = urem i64 %169, 8
  %171 = trunc i64 %170 to i32
  %172 = shl i32 1, %171
  %173 = load %struct.uaudio_search_result*, %struct.uaudio_search_result** %8, align 8
  %174 = getelementptr inbounds %struct.uaudio_search_result, %struct.uaudio_search_result* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* %13, align 8
  %177 = udiv i64 %176, 8
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %179, %172
  store i32 %180, i32* %178, align 4
  br label %182

181:                                              ; preds = %145
  br label %182

182:                                              ; preds = %181, %168, %155
  br label %184

183:                                              ; preds = %46
  br label %184

184:                                              ; preds = %183, %182, %137, %113, %89, %70
  br label %185

185:                                              ; preds = %184, %45
  %186 = load i64, i64* %10, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %10, align 8
  br label %15

188:                                              ; preds = %29, %15
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
