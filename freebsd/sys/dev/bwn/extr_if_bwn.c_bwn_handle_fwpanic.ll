; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_handle_fwpanic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_handle_fwpanic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@BWN_SCRATCH = common dso_local global i32 0, align 4
@BWN_FWPANIC_REASON_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"fw panic (%u)\0A\00", align 1
@BWN_FWPANIC_RESTART = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"ucode panic\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_handle_fwpanic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_handle_fwpanic(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %5 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %6 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %5, i32 0, i32 0
  %7 = load %struct.bwn_softc*, %struct.bwn_softc** %6, align 8
  store %struct.bwn_softc* %7, %struct.bwn_softc** %3, align 8
  %8 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %9 = load i32, i32* @BWN_SCRATCH, align 4
  %10 = load i32, i32* @BWN_FWPANIC_REASON_REG, align 4
  %11 = call i64 @bwn_shm_read_2(%struct.bwn_mac* %8, i32 %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %3, align 8
  %13 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @BWN_FWPANIC_RESTART, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %22 = call i32 @bwn_restart(%struct.bwn_mac* %21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %1
  ret void
}

declare dso_local i64 @bwn_shm_read_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @bwn_restart(%struct.bwn_mac*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
