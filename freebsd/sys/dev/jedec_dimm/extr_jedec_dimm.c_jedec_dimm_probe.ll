; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JEDEC_DTI_SPD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [94 x i8] c"invalid \22addr\22 hint; address must start with \220x%x\22, and the least-significant bit must be 0\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@SPD_OFFSET_DRAM_TYPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to read dram_type\0A\00", align 1
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"DDR3 DIMM\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"DDR4 DIMM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @jedec_dimm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jedec_dimm_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @smbus_get_addr(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, 240
  %14 = load i32, i32* @JEDEC_DTI_SPD, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 1
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %16, %1
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @JEDEC_DTI_SPD, align 4
  %23 = call i32 (i32, i8*, ...) @device_printf(i32 %21, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %5, align 4
  br label %49

25:                                               ; preds = %16
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SPD_OFFSET_DRAM_TYPE, align 4
  %29 = call i32 @smbus_readb(i32 %26, i32 %27, i32 %28, i32* %4)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %2, align 4
  %34 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %49

35:                                               ; preds = %25
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %46 [
    i32 129, label %38
    i32 128, label %42
  ]

38:                                               ; preds = %35
  %39 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %2, align 4
  %41 = call i32 @device_set_desc(i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @device_set_desc(i32 %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %46, %42, %38
  br label %49

49:                                               ; preds = %48, %32, %20
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @smbus_get_addr(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @smbus_readb(i32, i32, i32, i32*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
