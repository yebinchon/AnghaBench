; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_twa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@twa_probe.first_ctlr = internal global i32 1, align 4
@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSLI_DEVICE_NAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"3ware device driver for 9000 series storage controllers, version: %s\0A\00", align 1
@TW_OSL_DRIVER_VERSION_STRING = common dso_local global i8* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @twa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twa_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = call i32 @tw_osli_dbg_printf(i32 3, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @pci_get_vendor(i32 %5)
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @pci_get_device(i32 %7)
  %9 = call i64 @tw_cl_ctlr_supported(i32 %6, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TW_OSLI_DEVICE_NAME, align 4
  %14 = call i32 @device_set_desc(i32 %12, i32 %13)
  %15 = load i32, i32* @twa_probe.first_ctlr, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i8*, i8** @TW_OSL_DRIVER_VERSION_STRING, align 8
  %19 = call i32 @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 0, i32* @twa_probe.first_ctlr, align 4
  br label %20

20:                                               ; preds = %17, %11
  store i32 0, i32* %2, align 4
  br label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @tw_osli_dbg_printf(i32, i8*) #1

declare dso_local i64 @tw_cl_ctlr_supported(i32, i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
