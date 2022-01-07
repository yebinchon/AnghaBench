; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.xencons_priv = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*)* @xencons_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_tx(%struct.tty* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.xencons_priv*, align 8
  store %struct.tty* %0, %struct.tty** %3, align 8
  %7 = load %struct.tty*, %struct.tty** %3, align 8
  %8 = call %struct.xencons_priv* @tty_softc(%struct.tty* %7)
  store %struct.xencons_priv* %8, %struct.xencons_priv** %6, align 8
  %9 = load %struct.tty*, %struct.tty** %3, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @tty_lock_assert(%struct.tty* %9, i32 %10)
  %12 = load %struct.xencons_priv*, %struct.xencons_priv** %6, align 8
  %13 = call i64 @xencons_tx_full(%struct.xencons_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

16:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %26, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %17
  %21 = load %struct.tty*, %struct.tty** %3, align 8
  %22 = call i32 @ttydisc_getc(%struct.tty* %21, i8* %5, i32 1)
  %23 = icmp eq i32 %22, 1
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load %struct.xencons_priv*, %struct.xencons_priv** %6, align 8
  %28 = load i8, i8* %5, align 1
  %29 = call i32 @xencons_putc(%struct.xencons_priv* %27, i8 signext %28, i32 0)
  store i32 %29, i32* %4, align 4
  br label %17

30:                                               ; preds = %24
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %15
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.xencons_priv* @tty_softc(%struct.tty*) #1

declare dso_local i32 @tty_lock_assert(%struct.tty*, i32) #1

declare dso_local i64 @xencons_tx_full(%struct.xencons_priv*) #1

declare dso_local i32 @ttydisc_getc(%struct.tty*, i8*, i32) #1

declare dso_local i32 @xencons_putc(%struct.xencons_priv*, i8 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
