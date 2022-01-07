; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap_module.c_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap_module.c_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wtap_hal = type { i32 }
%struct.visibility_plugin = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.wtap_hal* }
%struct.wtap_plugin = type { i32 }

@wtap_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"wtapctl\00", align 1
@sdev = common dso_local global i32 0, align 4
@M_WTAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@hal = common dso_local global %struct.wtap_hal* null, align 8
@M_WTAP_PLUGIN = common dso_local global i32 0, align 4
@visibility_init = common dso_local global i32 0, align 4
@visibility_deinit = common dso_local global i32 0, align 4
@visibility_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Loaded wtap wireless simulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Unloading wtap wireless simulator\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.visibility_plugin*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %62 [
    i32 129, label %10
    i32 128, label %51
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @UID_ROOT, align 4
  %12 = load i32, i32* @GID_WHEEL, align 4
  %13 = call i32 @make_dev(i32* @wtap_cdevsw, i32 0, i32 %11, i32 %12, i32 384, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* @sdev, align 4
  %14 = load i32, i32* @M_WTAP, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = load i32, i32* @M_ZERO, align 4
  %17 = or i32 %15, %16
  %18 = call i64 @malloc(i32 4, i32 %14, i32 %17)
  %19 = inttoptr i64 %18 to %struct.wtap_hal*
  store %struct.wtap_hal* %19, %struct.wtap_hal** @hal, align 8
  %20 = load %struct.wtap_hal*, %struct.wtap_hal** @hal, align 8
  %21 = call i32 @bzero(%struct.wtap_hal* %20, i32 4)
  %22 = load %struct.wtap_hal*, %struct.wtap_hal** @hal, align 8
  %23 = call i32 @init_hal(%struct.wtap_hal* %22)
  %24 = load i32, i32* @M_WTAP_PLUGIN, align 4
  %25 = load i32, i32* @M_NOWAIT, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @malloc(i32 24, i32 %24, i32 %27)
  %29 = inttoptr i64 %28 to %struct.visibility_plugin*
  store %struct.visibility_plugin* %29, %struct.visibility_plugin** %7, align 8
  %30 = load %struct.wtap_hal*, %struct.wtap_hal** @hal, align 8
  %31 = load %struct.visibility_plugin*, %struct.visibility_plugin** %7, align 8
  %32 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 3
  store %struct.wtap_hal* %30, %struct.wtap_hal** %33, align 8
  %34 = load i32, i32* @visibility_init, align 4
  %35 = load %struct.visibility_plugin*, %struct.visibility_plugin** %7, align 8
  %36 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 8
  %38 = load i32, i32* @visibility_deinit, align 4
  %39 = load %struct.visibility_plugin*, %struct.visibility_plugin** %7, align 8
  %40 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @visibility_work, align 4
  %43 = load %struct.visibility_plugin*, %struct.visibility_plugin** %7, align 8
  %44 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 8
  %46 = load %struct.wtap_hal*, %struct.wtap_hal** @hal, align 8
  %47 = load %struct.visibility_plugin*, %struct.visibility_plugin** %7, align 8
  %48 = bitcast %struct.visibility_plugin* %47 to %struct.wtap_plugin*
  %49 = call i32 @register_plugin(%struct.wtap_hal* %46, %struct.wtap_plugin* %48)
  %50 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %64

51:                                               ; preds = %3
  %52 = load i32, i32* @sdev, align 4
  %53 = call i32 @destroy_dev(i32 %52)
  %54 = load %struct.wtap_hal*, %struct.wtap_hal** @hal, align 8
  %55 = call i32 @deregister_plugin(%struct.wtap_hal* %54)
  %56 = load %struct.wtap_hal*, %struct.wtap_hal** @hal, align 8
  %57 = call i32 @deinit_hal(%struct.wtap_hal* %56)
  %58 = load %struct.wtap_hal*, %struct.wtap_hal** @hal, align 8
  %59 = load i32, i32* @M_WTAP, align 4
  %60 = call i32 @free(%struct.wtap_hal* %58, i32 %59)
  %61 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %64

62:                                               ; preds = %3
  %63 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %62, %51, %10
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.wtap_hal*, i32) #1

declare dso_local i32 @init_hal(%struct.wtap_hal*) #1

declare dso_local i32 @register_plugin(%struct.wtap_hal*, %struct.wtap_plugin*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @deregister_plugin(%struct.wtap_hal*) #1

declare dso_local i32 @deinit_hal(%struct.wtap_hal*) #1

declare dso_local i32 @free(%struct.wtap_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
