; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memory_buffer = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"\0AMem: \00", align 1
@stdout = common dso_local global i32 0, align 4
@lastline = common dso_local global i32 0, align 4
@memory_names = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_memory(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i8*, i8** @memory_buffer, align 8
  %4 = call i8* @setup_buffer(i8* %3, i32 0)
  store i8* %4, i8** @memory_buffer, align 8
  %5 = load i32, i32* @stdout, align 4
  %6 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load i32, i32* @lastline, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @lastline, align 4
  %9 = load i8*, i8** @memory_buffer, align 8
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @memory_names, align 4
  %12 = call i32 @summary_format(i8* %9, i32* %10, i32 %11)
  %13 = load i8*, i8** @memory_buffer, align 8
  %14 = load i32, i32* @stdout, align 4
  %15 = call i32 @fputs(i8* %13, i32 %14)
  ret void
}

declare dso_local i8* @setup_buffer(i8*, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @summary_format(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
