; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testLoops.c_writeOutputs_z_int32.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/testfloat/extr_testLoops.c_writeOutputs_z_int32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@trueName = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@testName = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @writeOutputs_z_int32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writeOutputs_z_int32(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i8*, i8** @trueName, align 8
  %10 = load i32, i32* @stdout, align 4
  %11 = call i32 @fputs(i8* %9, i32 %10)
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @stdout, align 4
  %16 = call i32 @writeHex_bits32(i32 %14, i32 %15)
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 @fputc(i8 signext 32, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @writeHex_float_flags(i32 %19, i32 %20)
  %22 = load i32, i32* @stdout, align 4
  %23 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i8*, i8** @testName, align 8
  %25 = load i32, i32* @stdout, align 4
  %26 = call i32 @fputs(i8* %24, i32 %25)
  %27 = load i32, i32* @stdout, align 4
  %28 = call i32 @fputs(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @stdout, align 4
  %31 = call i32 @writeHex_bits32(i32 %29, i32 %30)
  %32 = load i32, i32* @stdout, align 4
  %33 = call i32 @fputc(i8 signext 32, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @stdout, align 4
  %36 = call i32 @writeHex_float_flags(i32 %34, i32 %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = call i32 @fputc(i8 signext 10, i32 %37)
  ret void
}

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @writeHex_bits32(i32, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @writeHex_float_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
