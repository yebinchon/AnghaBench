; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_atkbdc_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_atkbdc.c_atkbdc_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_BUS_SPACE_IO = common dso_local global i32* null, align 8
@IO_KBD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"atkbdc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"port\00", align 1
@KBD_STATUS_PORT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@atkbdc_softc = common dso_local global i32* null, align 8
@IO_KBDSIZE = common dso_local global i32 0, align 4
@KBD_DATA_PORT = common dso_local global i32 0, align 4
@atkbdc_bst_store = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @atkbdc_configure() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32*, i32** @X86_BUS_SPACE_IO, align 8
  store i32* %9, i32** %2, align 8
  %10 = load i32, i32* @IO_KBD, align 4
  store i32 %10, i32* %7, align 4
  %11 = call i32 @resource_int_value(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %12 = load i32, i32* @IO_KBD, align 4
  %13 = load i32, i32* @KBD_STATUS_PORT, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %3, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = call i32 (...) @intr_disable()
  store i32 %19, i32* %6, align 4
  store volatile i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %31, %0
  %21 = load volatile i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 65535
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load i32*, i32** %2, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i32 @bus_space_read_1(i32* %24, i64 %25, i32 0)
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %34

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30
  %32 = load volatile i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store volatile i32 %33, i32* %5, align 4
  br label %20

34:                                               ; preds = %29, %20
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @intr_restore(i32 %35)
  %37 = load volatile i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 65535
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %1, align 4
  br label %49

41:                                               ; preds = %34
  %42 = load i32*, i32** @atkbdc_softc, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** %2, align 8
  %46 = load i64, i64* %3, align 8
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @atkbdc_setup(i32 %44, i32* %45, i64 %46, i64 %47)
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %41, %39
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @resource_int_value(i8*, i32, i8*, i32*) #1

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @bus_space_read_1(i32*, i64, i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @atkbdc_setup(i32, i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
