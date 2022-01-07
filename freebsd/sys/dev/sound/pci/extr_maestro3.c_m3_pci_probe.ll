; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro3.c_m3_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.m3_card_type = type { i64, i32 }

@CALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"m3_pci_probe(0x%x)\0A\00", align 1
@m3_card_types = common dso_local global %struct.m3_card_type* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @m3_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m3_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.m3_card_type*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @CALL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i64 @pci_get_devid(i32 %6)
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @M3_DEBUG(i32 %5, i8* %8)
  %10 = load %struct.m3_card_type*, %struct.m3_card_type** @m3_card_types, align 8
  store %struct.m3_card_type* %10, %struct.m3_card_type** %4, align 8
  br label %11

11:                                               ; preds = %31, %1
  %12 = load %struct.m3_card_type*, %struct.m3_card_type** %4, align 8
  %13 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %11
  %17 = load i32, i32* %3, align 4
  %18 = call i64 @pci_get_devid(i32 %17)
  %19 = load %struct.m3_card_type*, %struct.m3_card_type** %4, align 8
  %20 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %16
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.m3_card_type*, %struct.m3_card_type** %4, align 8
  %26 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @device_set_desc(i32 %24, i32 %27)
  %29 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %29, i32* %2, align 4
  br label %36

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load %struct.m3_card_type*, %struct.m3_card_type** %4, align 8
  %33 = getelementptr inbounds %struct.m3_card_type, %struct.m3_card_type* %32, i32 1
  store %struct.m3_card_type* %33, %struct.m3_card_type** %4, align 8
  br label %11

34:                                               ; preds = %11
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %23
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @M3_DEBUG(i32, i8*) #1

declare dso_local i64 @pci_get_devid(i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
