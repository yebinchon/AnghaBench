; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_atpic.c_atpic_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32 }
%struct.atpic_softc = type { i32* }

@ATPIC_MASTER = common dso_local global i32 0, align 4
@OCW3_SEL = common dso_local global i32 0, align 4
@OCW3_P = common dso_local global i32 0, align 4
@OCW3_RR = common dso_local global i32 0, align 4
@ATPIC_SLAVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.trapframe*)* @atpic_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atpic_dispatch(i32 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.atpic_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.atpic_softc* @device_get_softc(i32 %7)
  store %struct.atpic_softc* %8, %struct.atpic_softc** %5, align 8
  %9 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %10 = load i32, i32* @ATPIC_MASTER, align 4
  %11 = load i32, i32* @OCW3_SEL, align 4
  %12 = load i32, i32* @OCW3_P, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @atpic_write(%struct.atpic_softc* %9, i32 %10, i32 0, i32 %13)
  %15 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %16 = load i32, i32* @ATPIC_MASTER, align 4
  %17 = call i32 @atpic_read(%struct.atpic_softc* %15, i32 %16, i32 0)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %19 = load i32, i32* @ATPIC_MASTER, align 4
  %20 = load i32, i32* @OCW3_SEL, align 4
  %21 = load i32, i32* @OCW3_RR, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @atpic_write(%struct.atpic_softc* %18, i32 %19, i32 0, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 128
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %64

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 130
  br i1 %30, label %31, label %53

31:                                               ; preds = %28
  %32 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %33 = load i32, i32* @ATPIC_SLAVE, align 4
  %34 = load i32, i32* @OCW3_SEL, align 4
  %35 = load i32, i32* @OCW3_P, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @atpic_write(%struct.atpic_softc* %32, i32 %33, i32 0, i32 %36)
  %38 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %39 = load i32, i32* @ATPIC_SLAVE, align 4
  %40 = call i32 @atpic_read(%struct.atpic_softc* %38, i32 %39, i32 0)
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %6, align 4
  %42 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %43 = load i32, i32* @ATPIC_SLAVE, align 4
  %44 = load i32, i32* @OCW3_SEL, align 4
  %45 = load i32, i32* @OCW3_RR, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @atpic_write(%struct.atpic_softc* %42, i32 %43, i32 0, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 128
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %64

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %28
  %54 = load %struct.atpic_softc*, %struct.atpic_softc** %5, align 8
  %55 = getelementptr inbounds %struct.atpic_softc, %struct.atpic_softc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 15
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %63 = call i32 @powerpc_dispatch_intr(i32 %61, %struct.trapframe* %62)
  br label %64

64:                                               ; preds = %53, %51, %27
  ret void
}

declare dso_local %struct.atpic_softc* @device_get_softc(i32) #1

declare dso_local i32 @atpic_write(%struct.atpic_softc*, i32, i32, i32) #1

declare dso_local i32 @atpic_read(%struct.atpic_softc*, i32, i32) #1

declare dso_local i32 @powerpc_dispatch_intr(i32, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
