; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { i64, i64, i32* }

@WBUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xencons_priv*, i32, i32)* @xencons_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_putc(%struct.xencons_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.xencons_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xencons_priv* %0, %struct.xencons_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %8 = call i32 @xencons_lock(%struct.xencons_priv* %7)
  %9 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %10 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %13 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load i64, i64* @WBUF_SIZE, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %30

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %21 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %24 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = trunc i64 %25 to i32
  %28 = call i64 @WBUF_MASK(i32 %27)
  %29 = getelementptr inbounds i32, i32* %22, i64 %28
  store i32 %19, i32* %29, align 4
  br label %30

30:                                               ; preds = %18, %3
  %31 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %32 = call i32 @xencons_unlock(%struct.xencons_priv* %31)
  %33 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @xencons_tx_flush(%struct.xencons_priv* %33, i32 %34)
  %36 = load %struct.xencons_priv*, %struct.xencons_priv** %4, align 8
  %37 = call i32 @xencons_tx_full(%struct.xencons_priv* %36)
  ret i32 %37
}

declare dso_local i32 @xencons_lock(%struct.xencons_priv*) #1

declare dso_local i64 @WBUF_MASK(i32) #1

declare dso_local i32 @xencons_unlock(%struct.xencons_priv*) #1

declare dso_local i32 @xencons_tx_flush(%struct.xencons_priv*, i32) #1

declare dso_local i32 @xencons_tx_full(%struct.xencons_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
