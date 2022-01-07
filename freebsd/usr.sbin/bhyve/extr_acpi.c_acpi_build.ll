; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_acpi_build.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_acpi.c_acpi_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.vmctx = type { i32 }

@basl_ncpu = common dso_local global i32 0, align 4
@hpet_capabilities = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"BHYVE_ACPI_VERBOSE_IASL\00", align 1
@basl_verbose_iasl = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"BHYVE_ACPI_KEEPTMPS\00", align 1
@basl_keep_temps = common dso_local global i32 0, align 4
@basl_ftables = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_build(%struct.vmctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  store i32 %8, i32* @basl_ncpu, align 4
  %9 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %10 = call i32 @vm_get_hpet_capabilities(%struct.vmctx* %9, i32* @hpet_capabilities)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = call i64 @getenv(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* @basl_verbose_iasl, align 4
  br label %19

19:                                               ; preds = %18, %15
  %20 = call i64 @getenv(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* @basl_keep_temps, align 4
  br label %23

23:                                               ; preds = %22, %19
  store i32 0, i32* %7, align 4
  %24 = call i32 (...) @basl_make_templates()
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %38, %23
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @basl_ftables, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br label %36

36:                                               ; preds = %28, %25
  %37 = phi i1 [ false, %25 ], [ %35, %28 ]
  br i1 %37, label %38, label %55

38:                                               ; preds = %36
  %39 = load %struct.vmctx*, %struct.vmctx** %4, align 8
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @basl_ftables, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @basl_ftables, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @basl_compile(%struct.vmctx* %39, i32* %45, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %25

55:                                               ; preds = %36
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %13
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @vm_get_hpet_capabilities(%struct.vmctx*, i32*) #1

declare dso_local i64 @getenv(i8*) #1

declare dso_local i32 @basl_make_templates(...) #1

declare dso_local i32 @basl_compile(%struct.vmctx*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
