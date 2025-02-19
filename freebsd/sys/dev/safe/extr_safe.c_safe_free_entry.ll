; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_free_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/safe/extr_safe.c_safe_free_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.safe_softc = type { i32 }
%struct.safe_ringentry = type { %struct.TYPE_2__, i64, i32*, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.cryptop = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.safe_softc*, %struct.safe_ringentry*)* @safe_free_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @safe_free_entry(%struct.safe_softc* %0, %struct.safe_ringentry* %1) #0 {
  %3 = alloca %struct.safe_softc*, align 8
  %4 = alloca %struct.safe_ringentry*, align 8
  %5 = alloca %struct.cryptop*, align 8
  store %struct.safe_softc* %0, %struct.safe_softc** %3, align 8
  store %struct.safe_ringentry* %1, %struct.safe_ringentry** %4, align 8
  %6 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %7 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %12 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %15 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %13, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %20 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @m_freem(i32* %21)
  br label %23

23:                                               ; preds = %18, %10, %2
  %24 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %25 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.cryptop*
  store %struct.cryptop* %27, %struct.cryptop** %5, align 8
  %28 = load %struct.safe_ringentry*, %struct.safe_ringentry** %4, align 8
  %29 = getelementptr inbounds %struct.safe_ringentry, %struct.safe_ringentry* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* @EFAULT, align 4
  %32 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %33 = getelementptr inbounds %struct.cryptop, %struct.cryptop* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.cryptop*, %struct.cryptop** %5, align 8
  %35 = call i32 @crypto_done(%struct.cryptop* %34)
  ret i32 0
}

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @crypto_done(%struct.cryptop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
