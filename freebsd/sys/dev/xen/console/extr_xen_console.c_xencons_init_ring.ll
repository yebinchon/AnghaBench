; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_init_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_init_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.xencons_priv = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tty*, i32)* @xencons_init_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_init_ring(i32 %0, %struct.tty* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xencons_priv*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.tty* %1, %struct.tty** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tty*, %struct.tty** %6, align 8
  %11 = call %struct.xencons_priv* @tty_softc(%struct.tty* %10)
  store %struct.xencons_priv* %11, %struct.xencons_priv** %8, align 8
  %12 = load %struct.xencons_priv*, %struct.xencons_priv** %8, align 8
  %13 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @ENODEV, align 4
  store i32 %17, i32* %4, align 4
  br label %36

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.xencons_priv*, %struct.xencons_priv** %8, align 8
  %21 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.tty*, %struct.tty** %6, align 8
  %25 = load i32, i32* @INTR_TYPE_TTY, align 4
  %26 = load i32, i32* @INTR_MPSAFE, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.xencons_priv*, %struct.xencons_priv** %8, align 8
  %29 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %28, i32 0, i32 1
  %30 = call i32 @xen_intr_bind_local_port(i32 %19, i64 %22, i32* null, i32 %23, %struct.tty* %24, i32 %27, i32* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %4, align 4
  br label %36

35:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %33, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.xencons_priv* @tty_softc(%struct.tty*) #1

declare dso_local i32 @xen_intr_bind_local_port(i32, i64, i32*, i32, %struct.tty*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
