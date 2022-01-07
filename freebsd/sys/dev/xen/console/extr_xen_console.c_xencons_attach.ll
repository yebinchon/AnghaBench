; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.tty*, i32)* }
%struct.tty = type { i32 }

@main_cons = common dso_local global %struct.xencons_priv zeroinitializer, align 8
@xencons_ttydevsw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s%r\00", align 1
@driver_name = common dso_local global i32 0, align 4
@xencons_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to initialize the console (%d)\0A\00", align 1
@shutdown_post_sync = common dso_local global i32 0, align 4
@xencons_shutdown = common dso_local global i32 0, align 4
@SHUTDOWN_PRI_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"shutdown event registration failed!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xencons_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.xencons_priv*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.xencons_priv* @main_cons, %struct.xencons_priv** %5, align 8
  %7 = load %struct.xencons_priv*, %struct.xencons_priv** %5, align 8
  %8 = call %struct.tty* @tty_alloc(i32* @xencons_ttydevsw, %struct.xencons_priv* %7)
  store %struct.tty* %8, %struct.tty** %4, align 8
  %9 = load %struct.tty*, %struct.tty** %4, align 8
  %10 = load i32, i32* @driver_name, align 4
  %11 = call i32 @tty_makedev(%struct.tty* %9, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %10, i32 0)
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.tty*, %struct.tty** %4, align 8
  %14 = call i32 @device_set_softc(i32 %12, %struct.tty* %13)
  %15 = load %struct.xencons_priv*, %struct.xencons_priv** %5, align 8
  %16 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %15, i32 0, i32 1
  %17 = load %struct.tty*, %struct.tty** %4, align 8
  %18 = call i32 @tty_getlock(%struct.tty* %17)
  %19 = call i32 @callout_init_mtx(i32* %16, i32 %18, i32 0)
  %20 = load %struct.xencons_priv*, %struct.xencons_priv** %5, align 8
  %21 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (i32, %struct.tty*, i32)*, i32 (i32, %struct.tty*, i32)** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.tty*, %struct.tty** %4, align 8
  %27 = load i32, i32* @xencons_intr, align 4
  %28 = call i32 %24(i32 %25, %struct.tty* %26, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %32, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %47

36:                                               ; preds = %1
  %37 = load i32, i32* @shutdown_post_sync, align 4
  %38 = load i32, i32* @xencons_shutdown, align 4
  %39 = load %struct.tty*, %struct.tty** %4, align 8
  %40 = load i32, i32* @SHUTDOWN_PRI_DEFAULT, align 4
  %41 = call i32* @EVENTHANDLER_REGISTER(i32 %37, i32 %38, %struct.tty* %39, i32 %40)
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %3, align 4
  %45 = call i32 (i32, i8*, ...) @device_printf(i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %31
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.tty* @tty_alloc(i32*, %struct.xencons_priv*) #1

declare dso_local i32 @tty_makedev(%struct.tty*, i32*, i8*, i32, i32) #1

declare dso_local i32 @device_set_softc(i32, %struct.tty*) #1

declare dso_local i32 @callout_init_mtx(i32*, i32, i32) #1

declare dso_local i32 @tty_getlock(%struct.tty*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32* @EVENTHANDLER_REGISTER(i32, i32, %struct.tty*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
