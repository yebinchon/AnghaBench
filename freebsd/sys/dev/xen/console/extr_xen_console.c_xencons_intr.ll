; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.xencons_priv = type { i32, i32 }

@kdb_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @xencons_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xencons_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tty*, align 8
  %4 = alloca %struct.xencons_priv*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.tty*
  store %struct.tty* %7, %struct.tty** %3, align 8
  %8 = load %struct.tty*, %struct.tty** %3, align 8
  %9 = call %struct.xencons_priv* @tty_softc(%struct.tty* %8)
  store %struct.xencons_priv* %9, %struct.xencons_priv** %4, align 8
  %10 = load i64, i64* @kdb_active, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %15 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %39

19:                                               ; preds = %13
  %20 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %21 = call i32 @xencons_rx(%struct.xencons_priv* %20)
  %22 = load %struct.tty*, %struct.tty** %3, align 8
  %23 = call i32 @tty_lock(%struct.tty* %22)
  br label %24

24:                                               ; preds = %28, %19
  %25 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %26 = call i32 @xencons_getc(%struct.xencons_priv* %25)
  store i32 %26, i32* %5, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.tty*, %struct.tty** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ttydisc_rint(%struct.tty* %29, i32 %30, i32 0)
  br label %24

32:                                               ; preds = %24
  %33 = load %struct.tty*, %struct.tty** %3, align 8
  %34 = call i32 @ttydisc_rint_done(%struct.tty* %33)
  %35 = load %struct.tty*, %struct.tty** %3, align 8
  %36 = call i32 @tty_unlock(%struct.tty* %35)
  %37 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %38 = call i32 @xencons_tx_flush(%struct.xencons_priv* %37, i32 0)
  br label %39

39:                                               ; preds = %32, %18, %12
  ret void
}

declare dso_local %struct.xencons_priv* @tty_softc(%struct.tty*) #1

declare dso_local i32 @xencons_rx(%struct.xencons_priv*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @xencons_getc(%struct.xencons_priv*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @xencons_tx_flush(%struct.xencons_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
