; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_set_parameters_to_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_log_sense.c_sati_set_parameters_to_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @sati_set_parameters_to_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_set_parameters_to_zero(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = call i32 @sati_set_data_byte(i32* %5, i8* %6, i32 8, i32 0)
  %8 = load i32*, i32** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @sati_set_data_byte(i32* %8, i8* %9, i32 9, i32 0)
  %11 = load i32*, i32** %3, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @sati_set_data_byte(i32* %11, i8* %12, i32 10, i32 0)
  %14 = load i32*, i32** %3, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @sati_set_data_byte(i32* %14, i8* %15, i32 11, i32 0)
  %17 = load i32*, i32** %3, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @sati_set_data_byte(i32* %17, i8* %18, i32 12, i32 0)
  %20 = load i32*, i32** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @sati_set_data_byte(i32* %20, i8* %21, i32 13, i32 0)
  %23 = load i32*, i32** %3, align 8
  %24 = load i8*, i8** %4, align 8
  %25 = call i32 @sati_set_data_byte(i32* %23, i8* %24, i32 14, i32 0)
  %26 = load i32*, i32** %3, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @sati_set_data_byte(i32* %26, i8* %27, i32 15, i32 0)
  %29 = load i32*, i32** %3, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 @sati_set_data_byte(i32* %29, i8* %30, i32 16, i32 0)
  %32 = load i32*, i32** %3, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @sati_set_data_byte(i32* %32, i8* %33, i32 17, i32 0)
  %35 = load i32*, i32** %3, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = call i32 @sati_set_data_byte(i32* %35, i8* %36, i32 18, i32 0)
  %38 = load i32*, i32** %3, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @sati_set_data_byte(i32* %38, i8* %39, i32 19, i32 0)
  %41 = load i32*, i32** %3, align 8
  %42 = load i8*, i8** %4, align 8
  %43 = call i32 @sati_set_data_byte(i32* %41, i8* %42, i32 20, i32 0)
  %44 = load i32*, i32** %3, align 8
  %45 = load i8*, i8** %4, align 8
  %46 = call i32 @sati_set_data_byte(i32* %44, i8* %45, i32 21, i32 0)
  %47 = load i32*, i32** %3, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @sati_set_data_byte(i32* %47, i8* %48, i32 22, i32 0)
  %50 = load i32*, i32** %3, align 8
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @sati_set_data_byte(i32* %50, i8* %51, i32 23, i32 0)
  ret void
}

declare dso_local i32 @sati_set_data_byte(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
