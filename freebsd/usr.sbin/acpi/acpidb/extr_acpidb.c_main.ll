; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/acpi/acpidb/extr_acpidb.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_DEBUG_DEFAULT = common dso_local global i32 0, align 4
@AcpiDbgLevel = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AcpiGbl_EnableInterpreterSlack = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"region.ini\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"region.dmp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = getelementptr inbounds i8*, i8** %7, i64 0
  %9 = load i8*, i8** %8, align 8
  store i8* %9, i8** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8*, i8** %6, align 8
  %14 = call i32 @usage(i8* %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @ACPI_DEBUG_DEFAULT, align 4
  store i32 %16, i32* @AcpiDbgLevel, align 4
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* @AcpiGbl_EnableInterpreterSlack, align 4
  %18 = call i32 @aml_simulation_regload(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i64 @load_dsdt(i8* %21)
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @aml_simulation_regdump(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %15
  ret i32 0
}

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @aml_simulation_regload(i8*) #1

declare dso_local i64 @load_dsdt(i8*) #1

declare dso_local i32 @aml_simulation_regdump(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
