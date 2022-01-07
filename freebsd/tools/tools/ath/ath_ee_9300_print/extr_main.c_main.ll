; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_9300_print/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_9300_print/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"\0A2GHz modal:\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"\0A5GHz modal:\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_2__*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %6, align 8
  %8 = call i32* @calloc(i32 4096, i32 4)
  store i32* %8, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @usage(i8** %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 1
  %17 = load i8*, i8** %16, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @load_eeprom_dump(i8* %17, i32* %18)
  %20 = load i32*, i32** %6, align 8
  %21 = bitcast i32* %20 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %21, %struct.TYPE_2__** %7, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @eeprom_9300_hdr_print(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @eeprom_9300_base_print(i32* %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i32 @eeprom_9300_modal_print(i32* %28)
  %30 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @eeprom_9300_modal_print(i32* %32)
  %34 = load i32*, i32** %6, align 8
  %35 = call i32 @free(i32* %34)
  %36 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @usage(i8**) #1

declare dso_local i32 @load_eeprom_dump(i8*, i32*) #1

declare dso_local i32 @eeprom_9300_hdr_print(i32*) #1

declare dso_local i32 @eeprom_9300_base_print(i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @eeprom_9300_modal_print(i32*) #1

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
