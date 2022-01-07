; ModuleID = '/home/carl/AnghaBench/git/extr_column.c_stop_column_filter.c'
source_filename = "/home/carl/AnghaBench/git/extr_column.c_stop_column_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fd_out = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@column_process = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stop_column_filter() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @fd_out, align 4
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %14

5:                                                ; preds = %0
  %6 = load i32, i32* @stdout, align 4
  %7 = call i32 @fflush(i32 %6)
  %8 = call i32 @close(i32 1)
  %9 = call i32 @finish_command(i32* @column_process)
  %10 = load i32, i32* @fd_out, align 4
  %11 = call i32 @dup2(i32 %10, i32 1)
  %12 = load i32, i32* @fd_out, align 4
  %13 = call i32 @close(i32 %12)
  store i32 -1, i32* @fd_out, align 4
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %5, %4
  %15 = load i32, i32* %1, align 4
  ret i32 %15
}

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @finish_command(i32*) #1

declare dso_local i32 @dup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
