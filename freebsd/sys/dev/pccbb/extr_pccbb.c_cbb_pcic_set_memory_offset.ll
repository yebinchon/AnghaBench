; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_pcic_set_memory_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_pcic_set_memory_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32* }
%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"set_memory_offset: specified rid not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cbb_pcic_set_memory_offset(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.cbb_softc*, align 8
  %13 = alloca %struct.resource*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.cbb_softc* @device_get_softc(i32 %14)
  store %struct.cbb_softc* %15, %struct.cbb_softc** %12, align 8
  %16 = load %struct.cbb_softc*, %struct.cbb_softc** %12, align 8
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.resource* @cbb_find_res(%struct.cbb_softc* %16, i32 %17, i32 %18)
  store %struct.resource* %19, %struct.resource** %13, align 8
  %20 = load %struct.resource*, %struct.resource** %13, align 8
  %21 = icmp eq %struct.resource* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOENT, align 4
  store i32 %25, i32* %6, align 4
  br label %35

26:                                               ; preds = %5
  %27 = load %struct.cbb_softc*, %struct.cbb_softc** %12, align 8
  %28 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load %struct.resource*, %struct.resource** %13, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @exca_mem_set_offset(i32* %30, %struct.resource* %31, i32 %32, i32* %33)
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %26, %22
  %36 = load i32, i32* %6, align 4
  ret i32 %36
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @cbb_find_res(%struct.cbb_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @exca_mem_set_offset(i32*, %struct.resource*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
