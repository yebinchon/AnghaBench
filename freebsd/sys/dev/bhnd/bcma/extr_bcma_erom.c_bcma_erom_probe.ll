; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_erom_io = type { i32 }
%struct.bhnd_chipid = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bhnd_erom_io*, %struct.bhnd_chipid*, %struct.bhnd_chipid*)* @bcma_erom_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_probe(i32* %0, %struct.bhnd_erom_io* %1, %struct.bhnd_chipid* %2, %struct.bhnd_chipid* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bhnd_erom_io*, align 8
  %8 = alloca %struct.bhnd_chipid*, align 8
  %9 = alloca %struct.bhnd_chipid*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.bhnd_erom_io* %1, %struct.bhnd_erom_io** %7, align 8
  store %struct.bhnd_chipid* %2, %struct.bhnd_chipid** %8, align 8
  store %struct.bhnd_chipid* %3, %struct.bhnd_chipid** %9, align 8
  %11 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %8, align 8
  %12 = icmp ne %struct.bhnd_chipid* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %5, align 4
  br label %32

15:                                               ; preds = %4
  %16 = load %struct.bhnd_erom_io*, %struct.bhnd_erom_io** %7, align 8
  %17 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %9, align 8
  %18 = call i32 @bhnd_erom_read_chipid(%struct.bhnd_erom_io* %16, %struct.bhnd_chipid* %17)
  store i32 %18, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %32

22:                                               ; preds = %15
  %23 = load %struct.bhnd_chipid*, %struct.bhnd_chipid** %9, align 8
  %24 = getelementptr inbounds %struct.bhnd_chipid, %struct.bhnd_chipid* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %30 [
    i32 130, label %26
    i32 129, label %28
    i32 128, label %28
  ]

26:                                               ; preds = %22
  %27 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %22, %22
  %29 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %29, i32* %5, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %30, %28, %26, %20, %13
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @bhnd_erom_read_chipid(%struct.bhnd_erom_io*, %struct.bhnd_chipid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
