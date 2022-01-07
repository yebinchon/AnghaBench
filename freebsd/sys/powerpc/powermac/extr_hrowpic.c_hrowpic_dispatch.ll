; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_hrowpic.c_hrowpic_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }
%struct.hrowpic_softc = type { i32* }

@HPIC_STATUS = common dso_local global i32 0, align 4
@HPIC_SECONDARY = common dso_local global i32 0, align 4
@HPIC_PRIMARY = common dso_local global i32 0, align 4
@HROWPIC_IRQMAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.trapframe*)* @hrowpic_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hrowpic_dispatch(i32 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.hrowpic_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.hrowpic_softc* @device_get_softc(i32 %9)
  store %struct.hrowpic_softc* %10, %struct.hrowpic_softc** %5, align 8
  br label %11

11:                                               ; preds = %2, %50
  %12 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %5, align 8
  %13 = load i32, i32* @HPIC_STATUS, align 4
  %14 = load i32, i32* @HPIC_SECONDARY, align 4
  %15 = call i32 @hrowpic_read_reg(%struct.hrowpic_softc* %12, i32 %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %5, align 8
  %17 = load i32, i32* @HPIC_STATUS, align 4
  %18 = load i32, i32* @HPIC_PRIMARY, align 4
  %19 = call i32 @hrowpic_read_reg(%struct.hrowpic_softc* %16, i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %6, align 4
  %21 = shl i32 %20, 32
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %11
  br label %51

27:                                               ; preds = %11
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %45, %27
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @HROWPIC_IRQMAX, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %28
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = load %struct.hrowpic_softc*, %struct.hrowpic_softc** %5, align 8
  %38 = getelementptr inbounds %struct.hrowpic_softc, %struct.hrowpic_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %44 = call i32 @powerpc_dispatch_intr(i32 %42, %struct.trapframe* %43)
  br label %45

45:                                               ; preds = %36, %32
  %46 = load i32, i32* %6, align 4
  %47 = ashr i32 %46, 1
  store i32 %47, i32* %6, align 4
  %48 = load i64, i64* %8, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %8, align 8
  br label %28

50:                                               ; preds = %28
  br label %11

51:                                               ; preds = %26
  ret void
}

declare dso_local %struct.hrowpic_softc* @device_get_softc(i32) #1

declare dso_local i32 @hrowpic_read_reg(%struct.hrowpic_softc*, i32, i32) #1

declare dso_local i32 @powerpc_dispatch_intr(i32, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
