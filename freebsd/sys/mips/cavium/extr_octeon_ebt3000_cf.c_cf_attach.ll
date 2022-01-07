; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_octeon_ebt3000_cf.c_cf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_priv = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@CVMX_BOARD_TYPE_SIM = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cf_cmd_identify failed: %d\0A\00", align 1
@cf_attach_geom = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @cf_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cf_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cf_priv*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call %struct.TYPE_2__* (...) @cvmx_sysinfo_get()
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CVMX_BOARD_TYPE_SIM, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.cf_priv* @device_get_softc(i32 %14)
  store %struct.cf_priv* %15, %struct.cf_priv** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.cf_priv*, %struct.cf_priv** %4, align 8
  %18 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.cf_priv*, %struct.cf_priv** %4, align 8
  %20 = call i32 @cf_cmd_identify(%struct.cf_priv* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %36

28:                                               ; preds = %13
  %29 = load i32, i32* @cf_attach_geom, align 4
  %30 = load %struct.cf_priv*, %struct.cf_priv** %4, align 8
  %31 = load i32, i32* @M_WAITOK, align 4
  %32 = call i32 @g_post_event(i32 %29, %struct.cf_priv* %30, i32 %31, i32* null)
  %33 = load %struct.cf_priv*, %struct.cf_priv** %4, align 8
  %34 = getelementptr inbounds %struct.cf_priv, %struct.cf_priv* %33, i32 0, i32 0
  %35 = call i32 @bioq_init(i32* %34)
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %23, %11
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.TYPE_2__* @cvmx_sysinfo_get(...) #1

declare dso_local %struct.cf_priv* @device_get_softc(i32) #1

declare dso_local i32 @cf_cmd_identify(%struct.cf_priv*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.cf_priv*, i32, i32*) #1

declare dso_local i32 @bioq_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
