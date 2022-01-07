; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_tty_outwakeup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_tty_outwakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.xencons_priv = type { i32 }

@XC_POLLTIME = common dso_local global i32 0, align 4
@xencons_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty*)* @xencons_tty_outwakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xencons_tty_outwakeup(%struct.tty* %0) #0 {
  %2 = alloca %struct.tty*, align 8
  %3 = alloca %struct.xencons_priv*, align 8
  store %struct.tty* %0, %struct.tty** %2, align 8
  %4 = load %struct.tty*, %struct.tty** %2, align 8
  %5 = call %struct.xencons_priv* @tty_softc(%struct.tty* %4)
  store %struct.xencons_priv* %5, %struct.xencons_priv** %3, align 8
  %6 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %7 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %6, i32 0, i32 0
  %8 = call i32 @callout_stop(i32* %7)
  %9 = load %struct.tty*, %struct.tty** %2, align 8
  %10 = call i32 @xencons_tx(%struct.tty* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %1
  %13 = load %struct.xencons_priv*, %struct.xencons_priv** %3, align 8
  %14 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %13, i32 0, i32 0
  %15 = load i32, i32* @XC_POLLTIME, align 4
  %16 = load i32, i32* @xencons_timeout, align 4
  %17 = load %struct.tty*, %struct.tty** %2, align 8
  %18 = call i32 @callout_reset(i32* %14, i32 %15, i32 %16, %struct.tty* %17)
  br label %19

19:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.xencons_priv* @tty_softc(%struct.tty*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @xencons_tx(%struct.tty*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
