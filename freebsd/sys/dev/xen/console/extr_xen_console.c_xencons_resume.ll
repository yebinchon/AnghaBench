; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (i32, %struct.tty*, i32)* }
%struct.tty = type { i32 }

@xencons_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Unable to resume the console (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @xencons_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.xencons_priv*, align 8
  %5 = alloca %struct.tty*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.tty* @device_get_softc(i32 %7)
  store %struct.tty* %8, %struct.tty** %5, align 8
  %9 = load %struct.tty*, %struct.tty** %5, align 8
  %10 = call %struct.xencons_priv* @tty_softc(%struct.tty* %9)
  store %struct.xencons_priv* %10, %struct.xencons_priv** %4, align 8
  %11 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %12 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %11, i32 0, i32 1
  %13 = call i32 @xen_intr_unbind(i32* %12)
  %14 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %15 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (i32, %struct.tty*, i32)*, i32 (i32, %struct.tty*, i32)** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.tty*, %struct.tty** %5, align 8
  %21 = load i32, i32* @xencons_intr, align 4
  %22 = call i32 %18(i32 %19, %struct.tty* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @device_printf(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %25
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.tty* @device_get_softc(i32) #1

declare dso_local %struct.xencons_priv* @tty_softc(%struct.tty*) #1

declare dso_local i32 @xen_intr_unbind(i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
