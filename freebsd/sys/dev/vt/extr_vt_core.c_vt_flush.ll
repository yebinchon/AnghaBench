; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { i32, i32, i64, i64, i64, i64, %struct.TYPE_15__*, %struct.vt_window* }
%struct.TYPE_15__ = type { i32 (%struct.vt_device*, %struct.vt_window*, %struct.TYPE_16__*)*, i32 (%struct.vt_device*, %struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.vt_window = type { i32, i32, i32, %struct.TYPE_12__*, %struct.vt_font* }
%struct.TYPE_12__ = type { i32 }
%struct.vt_font = type { i32 }
%struct.TYPE_17__ = type { i32 }

@VDF_SPLASH = common dso_local global i32 0, align 4
@VWF_BUSY = common dso_local global i32 0, align 4
@VDF_TEXTMODE = common dso_local global i32 0, align 4
@VDF_MOUSECURSOR = common dso_local global i32 0, align 4
@VWF_MOUSE_HIDE = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i32 0, align 4
@panicstr = common dso_local global i32* null, align 8
@VDF_INVALID = common dso_local global i32 0, align 4
@VDF_SUSPENDED = common dso_local global i32 0, align 4
@vt_draw_logo_cpus = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_device*)* @vt_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_flush(%struct.vt_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.vt_window*, align 8
  %5 = alloca %struct.vt_font*, align 8
  %6 = alloca %struct.TYPE_16__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  %10 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %11 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %10, i32 0, i32 7
  %12 = load %struct.vt_window*, %struct.vt_window** %11, align 8
  store %struct.vt_window* %12, %struct.vt_window** %4, align 8
  %13 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %14 = icmp eq %struct.vt_window* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %212

16:                                               ; preds = %1
  %17 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %18 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @VDF_SPLASH, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %16
  %24 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %25 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VWF_BUSY, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23, %16
  store i32 0, i32* %2, align 4
  br label %212

31:                                               ; preds = %23
  %32 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %33 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %32, i32 0, i32 4
  %34 = load %struct.vt_font*, %struct.vt_font** %33, align 8
  store %struct.vt_font* %34, %struct.vt_font** %5, align 8
  %35 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %36 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VDF_TEXTMODE, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %43 = icmp eq %struct.vt_font* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %212

45:                                               ; preds = %41, %31
  %46 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %47 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %46, i32 0, i32 1
  %48 = call i32 @vtbuf_lock(i32* %47)
  %49 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %50 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %7, align 4
  %52 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %53 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %56 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %67, label %59

59:                                               ; preds = %45
  %60 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %61 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %64 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %62, %65
  br label %67

67:                                               ; preds = %59, %45
  %68 = phi i1 [ true, %45 ], [ %66, %59 ]
  %69 = zext i1 %68 to i32
  store i32 %69, i32* %8, align 4
  %70 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %71 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @VDF_MOUSECURSOR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %67
  %77 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %78 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @VWF_MOUSE_HIDE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @kdb_active, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %83
  %87 = load i32*, i32** @panicstr, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %91 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %90, i32 0, i32 1
  store i32 1, i32* %91, align 4
  br label %95

92:                                               ; preds = %86, %83, %76, %67
  %93 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %94 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %98 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %95
  %102 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %103 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %106, %95
  %110 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %111 = call i32 @vt_mark_mouse_position_as_dirty(%struct.vt_device* %110, i32 1)
  br label %112

112:                                              ; preds = %109, %106, %101
  %113 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %114 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %117 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %119 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %122 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  %123 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %124 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %112
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %132 = call i32 @vt_mark_mouse_position_as_dirty(%struct.vt_device* %131, i32 1)
  br label %133

133:                                              ; preds = %130, %127, %112
  %134 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %135 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %134, i32 0, i32 1
  %136 = call i32 @vtbuf_undirty(i32* %135, %struct.TYPE_16__* %6)
  %137 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %138 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @VDF_INVALID, align 4
  %141 = load i32, i32* @VDF_SUSPENDED, align 4
  %142 = or i32 %140, %141
  %143 = and i32 %139, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %188

145:                                              ; preds = %133
  %146 = load i32, i32* @VDF_INVALID, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %149 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 8
  %152 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %153 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %152, i32 0, i32 3
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = call %struct.TYPE_17__* @teken_get_curattr(i32* %155)
  store %struct.TYPE_17__* %156, %struct.TYPE_17__** %9, align 8
  %157 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %158 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %159 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %158, i32 0, i32 2
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @vt_set_border(%struct.vt_device* %157, i32* %159, i32 %162)
  %164 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %165 = load %struct.vt_font*, %struct.vt_font** %5, align 8
  %166 = call i32 @vt_termrect(%struct.vt_device* %164, %struct.vt_font* %165, %struct.TYPE_16__* %6)
  %167 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %168 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %167, i32 0, i32 6
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 1
  %171 = load i32 (%struct.vt_device*, %struct.TYPE_16__*)*, i32 (%struct.vt_device*, %struct.TYPE_16__*)** %170, align 8
  %172 = icmp ne i32 (%struct.vt_device*, %struct.TYPE_16__*)* %171, null
  br i1 %172, label %173, label %181

173:                                              ; preds = %145
  %174 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %175 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %174, i32 0, i32 6
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 1
  %178 = load i32 (%struct.vt_device*, %struct.TYPE_16__*)*, i32 (%struct.vt_device*, %struct.TYPE_16__*)** %177, align 8
  %179 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %180 = call i32 %178(%struct.vt_device* %179, %struct.TYPE_16__* %6)
  br label %181

181:                                              ; preds = %173, %145
  %182 = load i64, i64* @vt_draw_logo_cpus, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %186 = call i32 @vtterm_draw_cpu_logos(%struct.vt_device* %185)
  br label %187

187:                                              ; preds = %184, %181
  br label %188

188:                                              ; preds = %187, %133
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = icmp slt i64 %191, %194
  br i1 %195, label %196, label %208

196:                                              ; preds = %188
  %197 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %198 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %197, i32 0, i32 6
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  %201 = load i32 (%struct.vt_device*, %struct.vt_window*, %struct.TYPE_16__*)*, i32 (%struct.vt_device*, %struct.vt_window*, %struct.TYPE_16__*)** %200, align 8
  %202 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %203 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %204 = call i32 %201(%struct.vt_device* %202, %struct.vt_window* %203, %struct.TYPE_16__* %6)
  %205 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %206 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %205, i32 0, i32 1
  %207 = call i32 @vtbuf_unlock(i32* %206)
  store i32 1, i32* %2, align 4
  br label %212

208:                                              ; preds = %188
  %209 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %210 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %209, i32 0, i32 1
  %211 = call i32 @vtbuf_unlock(i32* %210)
  store i32 0, i32* %2, align 4
  br label %212

212:                                              ; preds = %208, %196, %44, %30, %15
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @vtbuf_lock(i32*) #1

declare dso_local i32 @vt_mark_mouse_position_as_dirty(%struct.vt_device*, i32) #1

declare dso_local i32 @vtbuf_undirty(i32*, %struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_17__* @teken_get_curattr(i32*) #1

declare dso_local i32 @vt_set_border(%struct.vt_device*, i32*, i32) #1

declare dso_local i32 @vt_termrect(%struct.vt_device*, %struct.vt_font*, %struct.TYPE_16__*) #1

declare dso_local i32 @vtterm_draw_cpu_logos(%struct.vt_device*) #1

declare dso_local i32 @vtbuf_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
