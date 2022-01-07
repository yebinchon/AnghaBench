; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_process_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_sysmouse.c_sysmouse_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@sysmouse_process_event.buttonmap = internal constant [8 x i32] [i32 131, i32 129, i32 130, i32 128, i32 131, i32 129, i32 130, i32 0], align 16
@MOUSE_SYS_PACKETSIZE = common dso_local global i32 0, align 4
@RANDOM_MOUSE = common dso_local global i32 0, align 4
@sysmouse_lock = common dso_local global i32 0, align 4
@sysmouse_status = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@MOUSE_POSCHANGED = common dso_local global i32 0, align 4
@MOUSE_MSC_SYNC = common dso_local global i32 0, align 4
@MOUSE_STDBUTTONS = common dso_local global i64 0, align 8
@sysmouse_level = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sysmouse_process_event(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %10 = load i32, i32* @MOUSE_SYS_PACKETSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %3, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %4, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = load i32, i32* @RANDOM_MOUSE, align 4
  %16 = call i32 @random_harvest_queue(%struct.TYPE_11__* %14, i32 28, i32 %15)
  %17 = call i32 @mtx_lock(i32* @sysmouse_lock)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %68 [
    i32 133, label %21
    i32 131, label %27
    i32 132, label %43
  ]

21:                                               ; preds = %1
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  br label %27

27:                                               ; preds = %1, %21
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %8, align 4
  br label %69

43:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %43
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  br label %67

58:                                               ; preds = %43
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  br label %67

67:                                               ; preds = %58, %50
  br label %69

68:                                               ; preds = %1
  br label %181

69:                                               ; preds = %67, %27
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 1), align 4
  %72 = add nsw i32 %71, %70
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 1), align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 2), align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 2), align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 3), align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 3), align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %87, label %81

81:                                               ; preds = %69
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %81
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %84, %81, %69
  %88 = load i32, i32* @MOUSE_POSCHANGED, align 4
  br label %90

89:                                               ; preds = %84
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 5), align 4
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  %94 = xor i32 %92, %93
  %95 = or i32 %91, %94
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 4), align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 4), align 4
  %98 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 4), align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %181

101:                                              ; preds = %90
  %102 = load i32, i32* @MOUSE_MSC_SYNC, align 4
  %103 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @MOUSE_STDBUTTONS, align 8
  %106 = and i64 %104, %105
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* @sysmouse_process_event.buttonmap, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %102, %108
  %110 = trunc i32 %109 to i8
  %111 = getelementptr inbounds i8, i8* %13, i64 0
  store i8 %110, i8* %111, align 16
  %112 = load i32, i32* %5, align 4
  %113 = call i32 @imin(i32 %112, i32 255)
  %114 = call i32 @imax(i32 %113, i32 -256)
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = ashr i32 %115, 1
  %117 = trunc i32 %116 to i8
  %118 = getelementptr inbounds i8, i8* %13, i64 1
  store i8 %117, i8* %118, align 1
  %119 = load i32, i32* %5, align 4
  %120 = getelementptr inbounds i8, i8* %13, i64 1
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = sub nsw i32 %119, %122
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds i8, i8* %13, i64 3
  store i8 %124, i8* %125, align 1
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @imin(i32 %126, i32 255)
  %128 = call i32 @imax(i32 %127, i32 -256)
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = ashr i32 %130, 1
  %132 = trunc i32 %131 to i8
  %133 = getelementptr inbounds i8, i8* %13, i64 2
  store i8 %132, i8* %133, align 2
  %134 = load i32, i32* %7, align 4
  %135 = getelementptr inbounds i8, i8* %13, i64 2
  %136 = load i8, i8* %135, align 2
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %134, %137
  %139 = trunc i32 %138 to i8
  %140 = getelementptr inbounds i8, i8* %13, i64 4
  store i8 %139, i8* %140, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i32 @imin(i32 %141, i32 127)
  %143 = call i32 @imax(i32 %142, i32 -128)
  store i32 %143, i32* %8, align 4
  %144 = load i32, i32* %8, align 4
  %145 = ashr i32 %144, 1
  %146 = and i32 %145, 127
  %147 = trunc i32 %146 to i8
  %148 = getelementptr inbounds i8, i8* %13, i64 5
  store i8 %147, i8* %148, align 1
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = ashr i32 %150, 1
  %152 = sub nsw i32 %149, %151
  %153 = and i32 %152, 127
  %154 = trunc i32 %153 to i8
  %155 = getelementptr inbounds i8, i8* %13, i64 6
  store i8 %154, i8* %155, align 2
  %156 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @sysmouse_status, i32 0, i32 0), align 4
  %157 = xor i32 %156, -1
  %158 = ashr i32 %157, 3
  %159 = and i32 %158, 127
  %160 = trunc i32 %159 to i8
  %161 = getelementptr inbounds i8, i8* %13, i64 7
  store i8 %160, i8* %161, align 1
  %162 = call i32 @sysmouse_buf_store(i8* %13)
  %163 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @sysmouse_level, align 4
  %180 = call i32 @vt_mouse_event(i32 %166, i32 %167, i32 %168, i32 %173, i32 %178, i32 %179)
  store i32 1, i32* %9, align 4
  br label %183

181:                                              ; preds = %100, %68
  %182 = call i32 @mtx_unlock(i32* @sysmouse_lock)
  store i32 0, i32* %9, align 4
  br label %183

183:                                              ; preds = %181, %101
  %184 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %9, align 4
  switch i32 %185, label %187 [
    i32 0, label %186
    i32 1, label %186
  ]

186:                                              ; preds = %183, %183
  ret void

187:                                              ; preds = %183
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @random_harvest_queue(%struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @imax(i32, i32) #2

declare dso_local i32 @imin(i32, i32) #2

declare dso_local i32 @sysmouse_buf_store(i8*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @vt_mouse_event(i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
