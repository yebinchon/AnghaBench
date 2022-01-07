; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i32, i32, i32, i32, i32, i32, i32 }

@ticks = common dso_local global i32 0, align 4
@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*, i32)* @intel_ntb_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_interrupt(%struct.ntb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @ticks, align 4
  %7 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 4
  %9 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @intel_ntb_vec_mask(%struct.ntb_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %14 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %20 = call i64 @intel_ntb_poll_link(%struct.ntb_softc* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntb_link_event(i32 %25)
  br label %27

27:                                               ; preds = %22, %18
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %30 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %31 = call i64 @HAS_FEATURE(%struct.ntb_softc* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %36 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %72

40:                                               ; preds = %33
  %41 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %42 = call i32 @DB_MASK_LOCK(%struct.ntb_softc* %41)
  %43 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %46, %49
  %51 = load i32, i32* %5, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %56 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %61 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %71 = call i32 @DB_MASK_UNLOCK(%struct.ntb_softc* %70)
  br label %72

72:                                               ; preds = %40, %33, %28
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %73, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @ntb_db_event(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %72
  ret void
}

declare dso_local i32 @intel_ntb_vec_mask(%struct.ntb_softc*, i32) #1

declare dso_local i64 @intel_ntb_poll_link(%struct.ntb_softc*) #1

declare dso_local i32 @ntb_link_event(i32) #1

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @DB_MASK_LOCK(%struct.ntb_softc*) #1

declare dso_local i32 @DB_MASK_UNLOCK(%struct.ntb_softc*) #1

declare dso_local i32 @ntb_db_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
