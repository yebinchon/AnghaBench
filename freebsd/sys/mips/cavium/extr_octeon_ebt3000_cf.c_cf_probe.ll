; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"can't attach more devices\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Octeon Compact Flash Driver\00", align 1
@BUS_PROBE_NOWILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @device_get_unit(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %11
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_desc(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @BUS_PROBE_NOWILDCARD, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %17, %9
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
