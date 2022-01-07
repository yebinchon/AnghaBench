; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_atom_link_hb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_atom_link_hb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32, i32, i32 }

@NTB_HB_TIMEOUT = common dso_local global i64 0, align 8
@hz = common dso_local global i64 0, align 8
@ticks = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atom_link_hb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_link_hb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ntb_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ntb_softc*
  store %struct.ntb_softc* %7, %struct.ntb_softc** %3, align 8
  %8 = load i64, i64* @NTB_HB_TIMEOUT, align 8
  %9 = load i64, i64* @hz, align 8
  %10 = mul nsw i64 %8, %9
  store i64 %10, i64* %4, align 8
  %11 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = add nsw i64 %13, %14
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* @ticks, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub nsw i64 %16, %17
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %22 = call i64 @link_is_up(%struct.ntb_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @ticks, align 8
  %27 = sub nsw i64 %25, %26
  store i64 %27, i64* %4, align 8
  br label %51

28:                                               ; preds = %20, %1
  %29 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %30 = call i64 @intel_ntb_poll_link(%struct.ntb_softc* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ntb_link_event(i32 %35)
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %39 = call i64 @link_is_up(%struct.ntb_softc* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %37
  %42 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %43 = call i64 @atom_link_is_err(%struct.ntb_softc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %47 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %46, i32 0, i32 2
  %48 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %49 = call i32 @callout_reset(i32* %47, i64 0, void (i8*)* @recover_atom_link, %struct.ntb_softc* %48)
  br label %57

50:                                               ; preds = %41, %37
  br label %51

51:                                               ; preds = %50, %24
  %52 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %52, i32 0, i32 1
  %54 = load i64, i64* %4, align 8
  %55 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %56 = call i32 @callout_reset(i32* %53, i64 %54, void (i8*)* @atom_link_hb, %struct.ntb_softc* %55)
  br label %57

57:                                               ; preds = %51, %45
  ret void
}

declare dso_local i64 @link_is_up(%struct.ntb_softc*) #1

declare dso_local i64 @intel_ntb_poll_link(%struct.ntb_softc*) #1

declare dso_local i32 @ntb_link_event(i32) #1

declare dso_local i64 @atom_link_is_err(%struct.ntb_softc*) #1

declare dso_local i32 @callout_reset(i32*, i64, void (i8*)*, %struct.ntb_softc*) #1

declare dso_local void @recover_atom_link(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
