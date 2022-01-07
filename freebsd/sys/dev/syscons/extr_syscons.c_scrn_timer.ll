; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_scrn_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_scrn_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64, i64, i32, i32, %struct.TYPE_13__*, i64, i64, i64, i32*, i64 }
%struct.TYPE_13__ = type { i32, i32 }

@scrn_timer.kbd_time_stamp = internal global i64 0, align 8
@sc_console = common dso_local global %struct.TYPE_15__* null, align 8
@suspend_in_progress = common dso_local global i64 0, align 8
@SC_AUTODETECT_KBD = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i64 0, align 8
@KDSKBMODE = common dso_local global i32 0, align 4
@LOCK_MASK = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i64 0, align 8
@panicstr = common dso_local global i64 0, align 8
@shutdown_in_progress = common dso_local global i64 0, align 8
@run_scrn_saver = common dso_local global i64 0, align 8
@scrn_blank_time = common dso_local global i64 0, align 8
@SC_SCRN_IDLE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SC_SCRN_BLANKED = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@CONS_LKM_SAVER = common dso_local global i64 0, align 8
@saver_mode = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @scrn_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrn_timer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  %9 = zext i1 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i8*, i8** %2, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %3, align 8
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sc_console, align 8
  %17 = icmp ne %struct.TYPE_15__* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** @sc_console, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %20, align 8
  store %struct.TYPE_14__* %21, %struct.TYPE_14__** %3, align 8
  br label %23

22:                                               ; preds = %15
  br label %202

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %12
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 5
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  store %struct.TYPE_13__* %27, %struct.TYPE_13__** %4, align 8
  %28 = load i64, i64* @suspend_in_progress, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %24
  br label %177

36:                                               ; preds = %30
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 9
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %91

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SC_AUTODETECT_KBD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %41
  %49 = load i64, i64* @scrn_timer.kbd_time_stamp, align 8
  %50 = load i64, i64* @time_uptime, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %90

52:                                               ; preds = %48
  %53 = load i64, i64* @time_uptime, align 8
  store i64 %53, i64* @scrn_timer.kbd_time_stamp, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = call i64 @sc_allocate_keyboard(%struct.TYPE_14__* %54, i32 -1)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %89

62:                                               ; preds = %52
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32* @kbd_get_keyboard(i64 %65)
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 9
  store i32* %66, i32** %68, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 9
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* @KDSKBMODE, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 5
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 1
  %77 = ptrtoint i32* %76 to i32
  %78 = call i32 @kbdd_ioctl(i32* %71, i32 %72, i32 %77)
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @LOCK_MASK, align 4
  %88 = call i32 @update_kbd_state(%struct.TYPE_13__* %81, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %62, %52
  br label %90

90:                                               ; preds = %89, %48
  br label %91

91:                                               ; preds = %90, %41, %36
  %92 = load i64, i64* @kdb_active, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* @panicstr, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i64, i64* @shutdown_in_progress, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97, %94, %91
  %101 = call i32 (...) @sc_touch_scrn_saver()
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i64, i64* @run_scrn_saver, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %127

105:                                              ; preds = %102
  %106 = load i64, i64* @time_uptime, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @scrn_blank_time, align 8
  %111 = add nsw i64 %109, %110
  %112 = icmp sgt i64 %106, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %105
  %114 = load i32, i32* @SC_SCRN_IDLE, align 4
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %126

119:                                              ; preds = %105
  %120 = load i32, i32* @SC_SCRN_IDLE, align 4
  %121 = xor i32 %120, -1
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 8
  br label %126

126:                                              ; preds = %119, %113
  br label %142

127:                                              ; preds = %102
  %128 = load i64, i64* @time_uptime, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load i32, i32* @SC_SCRN_IDLE, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load i64, i64* @scrn_blank_time, align 8
  %138 = icmp sgt i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %127
  %140 = load i64, i64* @TRUE, align 8
  store i64 %140, i64* @run_scrn_saver, align 8
  br label %141

141:                                              ; preds = %139, %127
  br label %142

142:                                              ; preds = %141, %126
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 8
  %145 = load i64, i64* %144, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %157, label %147

147:                                              ; preds = %142
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %147
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 6
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152, %147, %142
  br label %177

158:                                              ; preds = %152
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 5
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %160, align 8
  store %struct.TYPE_13__* %161, %struct.TYPE_13__** %4, align 8
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %163 = call i64 @ISGRAPHSC(%struct.TYPE_13__* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %158
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @SC_SCRN_BLANKED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %176, label %172

172:                                              ; preds = %165
  %173 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %174 = load i64, i64* @TRUE, align 8
  %175 = call i32 @scrn_update(%struct.TYPE_13__* %173, i64 %174)
  br label %176

176:                                              ; preds = %172, %165, %158
  br label %177

177:                                              ; preds = %176, %157, %35
  %178 = load i32, i32* %5, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %202

180:                                              ; preds = %177
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = call i64 @ISGRAPHSC(%struct.TYPE_13__* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %180
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @SC_SCRN_BLANKED, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %184
  store i32 2, i32* %6, align 4
  br label %193

192:                                              ; preds = %184, %180
  store i32 30, i32* %6, align 4
  br label %193

193:                                              ; preds = %192, %191
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 4
  %196 = load i32, i32* @SBT_1S, align 4
  %197 = load i32, i32* %6, align 4
  %198 = sdiv i32 %196, %197
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %200 = call i32 @C_PREL(i32 1)
  %201 = call i32 @callout_reset_sbt(i32* %195, i32 %198, i32 0, void (i8*)* @scrn_timer, %struct.TYPE_14__* %199, i32 %200)
  br label %202

202:                                              ; preds = %22, %193, %177
  ret void
}

declare dso_local i64 @sc_allocate_keyboard(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @kbd_get_keyboard(i64) #1

declare dso_local i32 @kbdd_ioctl(i32*, i32, i32) #1

declare dso_local i32 @update_kbd_state(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @sc_touch_scrn_saver(...) #1

declare dso_local i64 @ISGRAPHSC(%struct.TYPE_13__*) #1

declare dso_local i32 @scrn_update(%struct.TYPE_13__*, i64) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, void (i8*)*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @C_PREL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
