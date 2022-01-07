; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/console/extr_xen_console.c_xencons_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xencons_priv = type { i64, i64, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xencons_priv*)* @xencons_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xencons_getc(%struct.xencons_priv* %0) #0 {
  %2 = alloca %struct.xencons_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.xencons_priv* %0, %struct.xencons_priv** %2, align 8
  %4 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %5 = call i32 @xencons_lock(%struct.xencons_priv* %4)
  %6 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %7 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %10 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %15 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %14, i32 0, i32 2
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %18 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @RBUF_MASK(i64 %19)
  %21 = getelementptr inbounds i64, i64* %16, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %25 = getelementptr inbounds %struct.xencons_priv, %struct.xencons_priv* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %25, align 8
  br label %29

28:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  br label %29

29:                                               ; preds = %28, %13
  %30 = load %struct.xencons_priv*, %struct.xencons_priv** %2, align 8
  %31 = call i32 @xencons_unlock(%struct.xencons_priv* %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @xencons_lock(%struct.xencons_priv*) #1

declare dso_local i64 @RBUF_MASK(i64) #1

declare dso_local i32 @xencons_unlock(%struct.xencons_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
