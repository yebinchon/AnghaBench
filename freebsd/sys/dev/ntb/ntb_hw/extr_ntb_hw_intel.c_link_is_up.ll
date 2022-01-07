; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_link_is_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32, i64 }

@NTB_XEON = common dso_local global i64 0, align 8
@NTB_SB01BASE_LOCKUP = common dso_local global i32 0, align 4
@NTB_ATOM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"ntb type\00", align 1
@ATOM_CNTL_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_softc*)* @link_is_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @link_is_up(%struct.ntb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ntb_softc*, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %3, align 8
  %4 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %5 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NTB_XEON, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %11 = call i64 @_xeon_link_is_up(%struct.ntb_softc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %20 = load i32, i32* @NTB_SB01BASE_LOCKUP, align 4
  %21 = call i32 @HAS_FEATURE(%struct.ntb_softc* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i1 [ true, %13 ], [ %23, %18 ]
  br label %26

26:                                               ; preds = %24, %9
  %27 = phi i1 [ false, %9 ], [ %25, %24 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %2, align 4
  br label %44

29:                                               ; preds = %1
  %30 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @NTB_ATOM, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ntb_softc*, %struct.ntb_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ATOM_CNTL_LINK_DOWN, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %29, %26
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i64 @_xeon_link_is_up(%struct.ntb_softc*) #1

declare dso_local i32 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
