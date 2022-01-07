; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_icr_assert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_icr_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"icr assert: 0x%x\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"icr assert: masked %x, ims %x\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"icr assert: throttled %x, ims %x\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"icr assert: lintr assert %x\0D\0A\00", align 1
@EVF_TIMER = common dso_local global i32 0, align 4
@e82545_itr_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32)* @e82545_icr_assert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_icr_assert(%struct.e82545_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.e82545_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %10 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = xor i32 %11, -1
  %13 = and i32 %8, %12
  %14 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %15 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %20 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %28 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  br label %75

31:                                               ; preds = %2
  %32 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %33 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %39 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40)
  br label %74

42:                                               ; preds = %31
  %43 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %44 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %73, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  %49 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  %50 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %51 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %50, i32 0, i32 2
  store i32 1, i32* %51, align 8
  %52 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %53 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @pci_lintr_assert(i32 %54)
  %56 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %57 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %47
  %61 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %62 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 3905
  %65 = sdiv i32 %64, 3906
  %66 = load i32, i32* @EVF_TIMER, align 4
  %67 = load i32, i32* @e82545_itr_callback, align 4
  %68 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %69 = call i32* @mevent_add(i32 %65, i32 %66, i32 %67, %struct.e82545_softc* %68)
  %70 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %71 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %70, i32 0, i32 4
  store i32* %69, i32** %71, align 8
  br label %72

72:                                               ; preds = %60, %47
  br label %73

73:                                               ; preds = %72, %42
  br label %74

74:                                               ; preds = %73, %36
  br label %75

75:                                               ; preds = %74, %25
  ret void
}

declare dso_local i32 @DPRINTF(i8*, i32, ...) #1

declare dso_local i32 @pci_lintr_assert(i32) #1

declare dso_local i32* @mevent_add(i32, i32, i32, %struct.e82545_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
