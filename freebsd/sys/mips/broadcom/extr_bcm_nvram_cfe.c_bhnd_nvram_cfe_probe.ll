; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_cfe_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/broadcom/extr_bcm_nvram_cfe.c_bhnd_nvram_cfe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_platform = type { i32*, i32* }

@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"missing NVRAM class\00", align 1
@BUS_PROBE_NOWILDCARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bhnd_nvram_cfe_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_cfe_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_platform*, align 8
  store i32 %0, i32* %3, align 4
  %5 = call %struct.bcm_platform* (...) @bcm_get_platform()
  store %struct.bcm_platform* %5, %struct.bcm_platform** %4, align 8
  %6 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %7 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @ENXIO, align 4
  store i32 %11, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %14 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %3, align 4
  %20 = load %struct.bcm_platform*, %struct.bcm_platform** %4, align 8
  %21 = getelementptr inbounds %struct.bcm_platform, %struct.bcm_platform* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @bhnd_nvram_data_class_desc(i32* %22)
  %24 = call i32 @device_set_desc(i32 %19, i32 %23)
  %25 = load i32, i32* @BUS_PROBE_NOWILDCARD, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %12, %10
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.bcm_platform* @bcm_get_platform(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

declare dso_local i32 @bhnd_nvram_data_class_desc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
