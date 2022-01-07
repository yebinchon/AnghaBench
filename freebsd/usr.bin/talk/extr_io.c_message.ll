; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_io.c_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_io.c_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@my_win = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@current_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[%s]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @message(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @my_win, i32 0, i32 1), align 4
  %4 = load i32, i32* @current_line, align 4
  %5 = call i32 @wmove(i32 %3, i32 %4, i32 0)
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @my_win, i32 0, i32 1), align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @wprintw(i32 %6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @current_line, align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @my_win, i32 0, i32 0), align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp slt i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @current_line, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* @current_line, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @my_win, i32 0, i32 1), align 4
  %18 = call i32 @wrefresh(i32 %17)
  ret void
}

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wprintw(i32, i8*, i8*) #1

declare dso_local i32 @wrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
