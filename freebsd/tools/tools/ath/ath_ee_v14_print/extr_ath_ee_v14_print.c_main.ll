; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_v14_print/extr_ath_ee_v14_print.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_v14_print/extr_ath_ee_v14_print.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"\0A2.4ghz:\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"\0A5ghz:\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  %7 = call i32* @calloc(i32 4096, i32 4)
  store i32* %7, i32** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 2
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8**, i8*** %5, align 8
  %12 = call i32 @usage(i8** %11)
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @load_eeprom_dump(i8* %16, i32* %17)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @eeprom_v14_base_print(i32* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @eeprom_v14_custdata_print(i32* %21)
  %23 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @eeprom_v14_modal_print(i32* %24, i32 1)
  %26 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @eeprom_v14_modal_print(i32* %27, i32 0)
  %29 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @eeprom_v14_calfreqpiers_print(i32* %30)
  %32 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @eeprom_v14_print_targets(i32* %33)
  %35 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @eeprom_v14_ctl_print(i32* %36)
  %38 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @eeprom_v14_print_edges(i32* %39)
  %41 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @free(i32* %42)
  %44 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @usage(i8**) #1

declare dso_local i32 @load_eeprom_dump(i8*, i32*) #1

declare dso_local i32 @eeprom_v14_base_print(i32*) #1

declare dso_local i32 @eeprom_v14_custdata_print(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @eeprom_v14_modal_print(i32*, i32) #1

declare dso_local i32 @eeprom_v14_calfreqpiers_print(i32*) #1

declare dso_local i32 @eeprom_v14_print_targets(i32*) #1

declare dso_local i32 @eeprom_v14_ctl_print(i32*) #1

declare dso_local i32 @eeprom_v14_print_edges(i32*) #1

declare dso_local i32 @free(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
