; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3pic.c_ps3pic_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3pic.c_ps3pic_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }
%struct.ps3pic_softc = type { i64*, i64*, i32*, i32*, i32* }

@cpuid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.trapframe*)* @ps3pic_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3pic_dispatch(i32 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ps3pic_softc*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.ps3pic_softc* @device_get_softc(i32 %9)
  store %struct.ps3pic_softc* %10, %struct.ps3pic_softc** %8, align 8
  %11 = load i32, i32* @cpuid, align 4
  %12 = call i64 @PCPU_GET(i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %8, align 8
  %16 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = call i64 @atomic_readandclear_64(i32* %18)
  store i64 %19, i64* %5, align 8
  %20 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %8, align 8
  %21 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  br label %36

25:                                               ; preds = %2
  %26 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %8, align 8
  %27 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i64 @atomic_readandclear_64(i32* %29)
  store i64 %30, i64* %5, align 8
  %31 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %8, align 8
  %32 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  br label %36

36:                                               ; preds = %25, %14
  %37 = call i32 (...) @powerpc_sync()
  br label %38

38:                                               ; preds = %45, %36
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %39, %40
  %42 = call i32 @ffsl(i64 %41)
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* %7, align 4
  %44 = icmp ne i32 %43, -1
  br i1 %44, label %45, label %62

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = shl i64 1, %47
  %49 = xor i64 %48, -1
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %50, %49
  store i64 %51, i64* %5, align 8
  %52 = load %struct.ps3pic_softc*, %struct.ps3pic_softc** %8, align 8
  %53 = getelementptr inbounds %struct.ps3pic_softc, %struct.ps3pic_softc* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 63, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %61 = call i32 @powerpc_dispatch_intr(i32 %59, %struct.trapframe* %60)
  br label %38

62:                                               ; preds = %38
  ret void
}

declare dso_local %struct.ps3pic_softc* @device_get_softc(i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i64 @atomic_readandclear_64(i32*) #1

declare dso_local i32 @powerpc_sync(...) #1

declare dso_local i32 @ffsl(i64) #1

declare dso_local i32 @powerpc_dispatch_intr(i32, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
