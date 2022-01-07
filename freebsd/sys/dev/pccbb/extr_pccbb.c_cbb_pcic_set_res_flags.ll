; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_pcic_set_res_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_pcic_set_res_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32* }
%struct.resource = type { i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"set_res_flags: specified rid not found\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cbb_pcic_set_res_flags(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cbb_softc*, align 8
  %13 = alloca %struct.resource*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.cbb_softc* @device_get_softc(i32 %14)
  store %struct.cbb_softc* %15, %struct.cbb_softc** %12, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SYS_RES_MEMORY, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %5
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %6, align 4
  br label %40

21:                                               ; preds = %5
  %22 = load %struct.cbb_softc*, %struct.cbb_softc** %12, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call %struct.resource* @cbb_find_res(%struct.cbb_softc* %22, i32 %23, i32 %24)
  store %struct.resource* %25, %struct.resource** %13, align 8
  %26 = load %struct.resource*, %struct.resource** %13, align 8
  %27 = icmp eq %struct.resource* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %6, align 4
  br label %40

32:                                               ; preds = %21
  %33 = load %struct.cbb_softc*, %struct.cbb_softc** %12, align 8
  %34 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load %struct.resource*, %struct.resource** %13, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @exca_mem_set_flags(i32* %36, %struct.resource* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %32, %28, %19
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local %struct.resource* @cbb_find_res(%struct.cbb_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @exca_mem_set_flags(i32*, %struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
