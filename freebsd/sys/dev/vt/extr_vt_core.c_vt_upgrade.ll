; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.vt_device = type { i32, i32, i32, i32, i32, %struct.vt_device**, %struct.vt_device*, i32, i32 }
%struct.vt_window = type { i32, i32, i32, i32, i32, %struct.vt_window**, %struct.vt_window*, i32, i32 }

@VTY_VT = common dso_local global i32 0, align 4
@main_vd = common dso_local global %struct.TYPE_2__* null, align 8
@VT_MAXWINDOWS = common dso_local global i32 0, align 4
@VWF_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"v%r\00", align 1
@VWF_CONSOLE = common dso_local global i32 0, align 4
@shutdown_pre_sync = common dso_local global i32 0, align 4
@vt_window_switch = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4
@VT_CONSWINDOW = common dso_local global i64 0, align 8
@VDF_ASYNC = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@VT_TIMERFREQ = common dso_local global i32 0, align 4
@vt_timer = common dso_local global i32 0, align 4
@power_suspend_early = common dso_local global i32 0, align 4
@vt_suspend_handler = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@power_resume = common dso_local global i32 0, align 4
@vt_resume_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_upgrade(%struct.vt_device* %0) #0 {
  %2 = alloca %struct.vt_device*, align 8
  %3 = alloca %struct.vt_window*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vt_device* %0, %struct.vt_device** %2, align 8
  %6 = load i32, i32* @VTY_VT, align 4
  %7 = call i32 @vty_enabled(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %148

10:                                               ; preds = %1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @main_vd, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  br label %148

16:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %73, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VT_MAXWINDOWS, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %23 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %22, i32 0, i32 5
  %24 = load %struct.vt_device**, %struct.vt_device*** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.vt_device*, %struct.vt_device** %24, i64 %26
  %28 = load %struct.vt_device*, %struct.vt_device** %27, align 8
  %29 = bitcast %struct.vt_device* %28 to %struct.vt_window*
  store %struct.vt_window* %29, %struct.vt_window** %3, align 8
  %30 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %31 = icmp eq %struct.vt_window* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %34 = bitcast %struct.vt_device* %33 to %struct.vt_window*
  %35 = load i32, i32* %4, align 4
  %36 = call %struct.vt_window* @vt_allocate_window(%struct.vt_window* %34, i32 %35)
  store %struct.vt_window* %36, %struct.vt_window** %3, align 8
  br label %37

37:                                               ; preds = %32, %21
  %38 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %39 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @VWF_READY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %37
  %45 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %46 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %45, i32 0, i32 8
  %47 = call i32 @callout_init(i32* %46, i32 0)
  %48 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %49 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %52 = call i32 @VT_UNIT(%struct.vt_window* %51)
  %53 = call i32 @terminal_maketty(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @VWF_READY, align 4
  %55 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %56 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %60 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VWF_CONSOLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %44
  %66 = load i32, i32* @shutdown_pre_sync, align 4
  %67 = load i32, i32* @vt_window_switch, align 4
  %68 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %69 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %70 = call i32 @EVENTHANDLER_REGISTER(i32 %66, i32 %67, %struct.vt_window* %68, i32 %69)
  br label %71

71:                                               ; preds = %65, %44
  br label %72

72:                                               ; preds = %71, %37
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %4, align 4
  br label %17

76:                                               ; preds = %17
  %77 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %78 = bitcast %struct.vt_device* %77 to %struct.vt_window*
  %79 = call i32 @VT_LOCK(%struct.vt_window* %78)
  %80 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %81 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %80, i32 0, i32 6
  %82 = load %struct.vt_device*, %struct.vt_device** %81, align 8
  %83 = icmp eq %struct.vt_device* %82, null
  br i1 %83, label %84, label %93

84:                                               ; preds = %76
  %85 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %86 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %85, i32 0, i32 5
  %87 = load %struct.vt_device**, %struct.vt_device*** %86, align 8
  %88 = load i64, i64* @VT_CONSWINDOW, align 8
  %89 = getelementptr inbounds %struct.vt_device*, %struct.vt_device** %87, i64 %88
  %90 = load %struct.vt_device*, %struct.vt_device** %89, align 8
  %91 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %92 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %91, i32 0, i32 6
  store %struct.vt_device* %90, %struct.vt_device** %92, align 8
  br label %93

93:                                               ; preds = %84, %76
  store i32 0, i32* %5, align 4
  %94 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %95 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @VDF_ASYNC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %126, label %100

100:                                              ; preds = %93
  %101 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %102 = bitcast %struct.vt_device* %101 to %struct.vt_window*
  %103 = call i32 @vt_allocate_keyboard(%struct.vt_window* %102)
  %104 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %105 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %104, i32 0, i32 2
  %106 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %107 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %106, i32 0, i32 4
  %108 = call i32 @callout_init_mtx(i32* %105, i32* %107, i32 0)
  %109 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %110 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %109, i32 0, i32 3
  %111 = call i32 @atomic_add_acq_int(i32* %110, i32 1)
  %112 = load i32, i32* @VDF_ASYNC, align 4
  %113 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %114 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %118 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %117, i32 0, i32 2
  %119 = load i32, i32* @hz, align 4
  %120 = load i32, i32* @VT_TIMERFREQ, align 4
  %121 = sdiv i32 %119, %120
  %122 = load i32, i32* @vt_timer, align 4
  %123 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %124 = bitcast %struct.vt_device* %123 to %struct.vt_window*
  %125 = call i32 @callout_reset(i32* %118, i32 %121, i32 %122, %struct.vt_window* %124)
  store i32 1, i32* %5, align 4
  br label %126

126:                                              ; preds = %100, %93
  %127 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %128 = bitcast %struct.vt_device* %127 to %struct.vt_window*
  %129 = call i32 @VT_UNLOCK(%struct.vt_window* %128)
  %130 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %131 = bitcast %struct.vt_device* %130 to %struct.vt_window*
  %132 = call i32 @vt_resize(%struct.vt_window* %131)
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %148

135:                                              ; preds = %126
  %136 = load i32, i32* @power_suspend_early, align 4
  %137 = load i32, i32* @vt_suspend_handler, align 4
  %138 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %139 = bitcast %struct.vt_device* %138 to %struct.vt_window*
  %140 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %141 = call i32 @EVENTHANDLER_REGISTER(i32 %136, i32 %137, %struct.vt_window* %139, i32 %140)
  %142 = load i32, i32* @power_resume, align 4
  %143 = load i32, i32* @vt_resume_handler, align 4
  %144 = load %struct.vt_device*, %struct.vt_device** %2, align 8
  %145 = bitcast %struct.vt_device* %144 to %struct.vt_window*
  %146 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %147 = call i32 @EVENTHANDLER_REGISTER(i32 %142, i32 %143, %struct.vt_window* %145, i32 %146)
  br label %148

148:                                              ; preds = %9, %15, %135, %126
  ret void
}

declare dso_local i32 @vty_enabled(i32) #1

declare dso_local %struct.vt_window* @vt_allocate_window(%struct.vt_window*, i32) #1

declare dso_local i32 @callout_init(i32*, i32) #1

declare dso_local i32 @terminal_maketty(i32, i8*, i32) #1

declare dso_local i32 @VT_UNIT(%struct.vt_window*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, %struct.vt_window*, i32) #1

declare dso_local i32 @VT_LOCK(%struct.vt_window*) #1

declare dso_local i32 @vt_allocate_keyboard(%struct.vt_window*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @atomic_add_acq_int(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.vt_window*) #1

declare dso_local i32 @VT_UNLOCK(%struct.vt_window*) #1

declare dso_local i32 @vt_resize(%struct.vt_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
