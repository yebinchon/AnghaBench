; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_db_iowrite_raw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_db_iowrite_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64 }

@NTB_ATOM = common dso_local global i64 0, align 8
@NTB_XEON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"bad ntb type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*, i64, i64)* @db_iowrite_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_iowrite_raw(%struct.ntb_softc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.ntb_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %8 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @NTB_ATOM, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @intel_ntb_reg_write(i32 8, i64 %13, i64 %14)
  br label %27

16:                                               ; preds = %3
  %17 = load %struct.ntb_softc*, %struct.ntb_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NTB_XEON, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @intel_ntb_reg_write(i32 2, i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %16, %12
  ret void
}

declare dso_local i32 @intel_ntb_reg_write(i32, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
