; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/iconv/posix/extr_posix.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/iconv/posix/extr_posix.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@open_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"open_1\00", align 1
@open_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"open_2\00", align 1
@close_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"close_1\00", align 1
@conv_ret = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"conv_ret\00", align 1
@conv_ebadf = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"conv_ebadf\00", align 1
@conv_2big = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"conv_2big\00", align 1
@conv_einval = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"conv_einval\00", align 1
@conv_eilseq = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"conv_eilseq\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = load i32, i32* @open_1, align 4
  %2 = call i32 @test(i32 %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @open_2, align 4
  %4 = call i32 @test(i32 %3, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @close_1, align 4
  %6 = call i32 @test(i32 %5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %7 = load i32, i32* @conv_ret, align 4
  %8 = call i32 @test(i32 %7, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %9 = load i32, i32* @conv_ebadf, align 4
  %10 = call i32 @test(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %11 = load i32, i32* @conv_2big, align 4
  %12 = call i32 @test(i32 %11, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %13 = load i32, i32* @conv_einval, align 4
  %14 = call i32 @test(i32 %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %15 = load i32, i32* @conv_eilseq, align 4
  %16 = call i32 @test(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @test(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
