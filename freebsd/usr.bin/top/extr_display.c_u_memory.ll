; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@u_memory.new = internal global i8* null, align 8
@memory_names = common dso_local global i32 0, align 4
@memory_buffer = common dso_local global i32 0, align 4
@x_mem = common dso_local global i32 0, align 4
@y_mem = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u_memory(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i8*, i8** @u_memory.new, align 8
  %4 = call i8* @setup_buffer(i8* %3, i32 0)
  store i8* %4, i8** @u_memory.new, align 8
  %5 = load i8*, i8** @u_memory.new, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* @memory_names, align 4
  %8 = call i32 @summary_format(i8* %5, i32* %6, i32 %7)
  %9 = load i32, i32* @memory_buffer, align 4
  %10 = load i8*, i8** @u_memory.new, align 8
  %11 = load i32, i32* @x_mem, align 4
  %12 = load i32, i32* @y_mem, align 4
  %13 = call i32 @line_update(i32 %9, i8* %10, i32 %11, i32 %12)
  ret void
}

declare dso_local i8* @setup_buffer(i8*, i32) #1

declare dso_local i32 @summary_format(i8*, i32*, i32) #1

declare dso_local i32 @line_update(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
