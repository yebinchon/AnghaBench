; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_region_to_port_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_region_to_port_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }

@BHND_PORT_DEVICE = common dso_local global i32 0, align 4
@BHND_PORT_BRIDGE = common dso_local global i32 0, align 4
@BHND_PORT_AGENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"unsupported region type %hhx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, i32, i32*)* @bcma_erom_region_to_port_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_region_to_port_type(%struct.bcma_erom* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcma_erom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.bcma_erom* %0, %struct.bcma_erom** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %18 [
    i32 130, label %9
    i32 131, label %12
    i32 129, label %15
    i32 128, label %15
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @BHND_PORT_DEVICE, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 %10, i32* %11, align 4
  store i32 0, i32* %4, align 4
  br label %23

12:                                               ; preds = %3
  %13 = load i32, i32* @BHND_PORT_BRIDGE, align 4
  %14 = load i32*, i32** %7, align 8
  store i32 %13, i32* %14, align 4
  store i32 0, i32* %4, align 4
  br label %23

15:                                               ; preds = %3, %3
  %16 = load i32, i32* @BHND_PORT_AGENT, align 4
  %17 = load i32*, i32** %7, align 8
  store i32 %16, i32* %17, align 4
  store i32 0, i32* %4, align 4
  br label %23

18:                                               ; preds = %3
  %19 = load %struct.bcma_erom*, %struct.bcma_erom** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @EROM_LOG(%struct.bcma_erom* %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %18, %15, %12, %9
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @EROM_LOG(%struct.bcma_erom*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
