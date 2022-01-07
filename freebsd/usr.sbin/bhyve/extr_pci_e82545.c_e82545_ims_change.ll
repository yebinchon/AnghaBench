; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_ims_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_ims_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32, i32, i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [32 x i8] c"ims change: masked %x, ims %x\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"ims change: throttled %x, ims %x\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"ims change: lintr assert %x\0A\0D\00", align 1
@EVF_TIMER = common dso_local global i32 0, align 4
@e82545_itr_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, i32)* @e82545_ims_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_ims_change(%struct.e82545_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.e82545_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %8 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %6, %9
  %11 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %12 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %18 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %26 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  br label %73

29:                                               ; preds = %2
  %30 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %31 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %37 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %38)
  br label %72

40:                                               ; preds = %29
  %41 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %42 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %71, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = call i32 (i8*, i32, ...) @DPRINTF(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %49 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  %50 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %51 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pci_lintr_assert(i32 %52)
  %54 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %55 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %45
  %59 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %60 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 3905
  %63 = sdiv i32 %62, 3906
  %64 = load i32, i32* @EVF_TIMER, align 4
  %65 = load i32, i32* @e82545_itr_callback, align 4
  %66 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %67 = call i32* @mevent_add(i32 %63, i32 %64, i32 %65, %struct.e82545_softc* %66)
  %68 = load %struct.e82545_softc*, %struct.e82545_softc** %3, align 8
  %69 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %68, i32 0, i32 4
  store i32* %67, i32** %69, align 8
  br label %70

70:                                               ; preds = %58, %45
  br label %71

71:                                               ; preds = %70, %40
  br label %72

72:                                               ; preds = %71, %34
  br label %73

73:                                               ; preds = %72, %23
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
