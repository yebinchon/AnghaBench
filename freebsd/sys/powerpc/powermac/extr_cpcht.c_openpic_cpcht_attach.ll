; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_cpcht.c_openpic_cpcht_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.openpic_cpcht_softc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"htpic\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@root_pic = common dso_local global i64 0, align 8
@cpcht_msipic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @openpic_cpcht_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @openpic_cpcht_attach(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.openpic_cpcht_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @ofw_bus_get_node(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @openpic_common_attach(i64 %10, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load i64, i64* %3, align 8
  %19 = call %struct.openpic_cpcht_softc* @device_get_softc(i64 %18)
  store %struct.openpic_cpcht_softc* %19, %struct.openpic_cpcht_softc** %4, align 8
  %20 = load %struct.openpic_cpcht_softc*, %struct.openpic_cpcht_softc** %4, align 8
  %21 = getelementptr inbounds %struct.openpic_cpcht_softc, %struct.openpic_cpcht_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @MTX_SPIN, align 4
  %23 = call i32 @mtx_init(i32* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* null, i32 %22)
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %33, %17
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 4
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load i64, i64* %3, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %31 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %32 = call i32 @openpic_config(i64 %28, i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %24

36:                                               ; preds = %24
  store i32 4, i32* %7, align 4
  br label %37

37:                                               ; preds = %46, %36
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 124
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i64, i64* %3, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %44 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %45 = call i32 @openpic_config(i64 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %37

49:                                               ; preds = %37
  %50 = load i64, i64* %3, align 8
  %51 = load i64, i64* @root_pic, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* @cpcht_msipic, align 4
  br label %55

55:                                               ; preds = %53, %49
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %15
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @ofw_bus_get_node(i64) #1

declare dso_local i32 @openpic_common_attach(i64, i32) #1

declare dso_local %struct.openpic_cpcht_softc* @device_get_softc(i64) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @openpic_config(i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
