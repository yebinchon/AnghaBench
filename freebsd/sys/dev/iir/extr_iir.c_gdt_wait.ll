; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir.c_gdt_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i64 (%struct.gdt_softc*)*, i32 }
%struct.gdt_ccb = type { i64 }

@GDT_D_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"gdt_wait(%p, %p, %d)\0A\00", align 1
@GDT_POLL_WAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gdt_softc*, %struct.gdt_ccb*, i32)* @gdt_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdt_wait(%struct.gdt_softc* %0, %struct.gdt_ccb* %1, i32 %2) #0 {
  %4 = alloca %struct.gdt_softc*, align 8
  %5 = alloca %struct.gdt_ccb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gdt_softc* %0, %struct.gdt_softc** %4, align 8
  store %struct.gdt_ccb* %1, %struct.gdt_ccb** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @GDT_D_INIT, align 4
  %9 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %10 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @GDT_DPRINTF(i32 %8, i8* %13)
  %15 = load i32, i32* @GDT_POLL_WAIT, align 4
  %16 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %17 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %30, %3
  %21 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %22 = call i64 @iir_intr_locked(%struct.gdt_softc* %21)
  %23 = load %struct.gdt_ccb*, %struct.gdt_ccb** %5, align 8
  %24 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  store i32 1, i32* %7, align 4
  br label %34

28:                                               ; preds = %20
  %29 = call i32 @DELAY(i32 1)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %20, label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* @GDT_POLL_WAIT, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %38 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %48, %34
  %42 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %43 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %42, i32 0, i32 0
  %44 = load i64 (%struct.gdt_softc*)*, i64 (%struct.gdt_softc*)** %43, align 8
  %45 = load %struct.gdt_softc*, %struct.gdt_softc** %4, align 8
  %46 = call i64 %44(%struct.gdt_softc* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @DELAY(i32 1)
  br label %41

50:                                               ; preds = %41
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i64 @iir_intr_locked(%struct.gdt_softc*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
