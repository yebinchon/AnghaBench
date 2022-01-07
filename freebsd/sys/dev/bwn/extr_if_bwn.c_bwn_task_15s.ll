; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_task_15s.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_task_15s.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 (%struct.bwn_mac.0*)* }
%struct.bwn_mac.0 = type opaque
%struct.TYPE_3__ = type { i64 }

@BWN_SCRATCH = common dso_local global i32 0, align 4
@BWN_WATCHDOG_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"fw watchdog\00", align 1
@BWN_TXERROR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_task_15s to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_task_15s(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca i64, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %11 = load i32, i32* @BWN_SCRATCH, align 4
  %12 = load i32, i32* @BWN_WATCHDOG_REG, align 4
  %13 = call i64 @bwn_shm_read_2(%struct.bwn_mac* %10, i32 %11, i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %18 = call i32 @bwn_restart(%struct.bwn_mac* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %43

19:                                               ; preds = %9
  %20 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %21 = load i32, i32* @BWN_SCRATCH, align 4
  %22 = load i32, i32* @BWN_WATCHDOG_REG, align 4
  %23 = call i32 @bwn_shm_write_2(%struct.bwn_mac* %20, i32 %21, i32 %22, i32 1)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %26 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.0*)** %27, align 8
  %29 = icmp ne i32 (%struct.bwn_mac.0*)* %28, null
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %32 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32 (%struct.bwn_mac.0*)*, i32 (%struct.bwn_mac.0*)** %33, align 8
  %35 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %36 = bitcast %struct.bwn_mac* %35 to %struct.bwn_mac.0*
  %37 = call i32 %34(%struct.bwn_mac.0* %36)
  br label %38

38:                                               ; preds = %30, %24
  %39 = load i32, i32* @BWN_TXERROR_MAX, align 4
  %40 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %41 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 8
  br label %43

43:                                               ; preds = %38, %16
  ret void
}

declare dso_local i64 @bwn_shm_read_2(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @bwn_restart(%struct.bwn_mac*, i8*) #1

declare dso_local i32 @bwn_shm_write_2(%struct.bwn_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
