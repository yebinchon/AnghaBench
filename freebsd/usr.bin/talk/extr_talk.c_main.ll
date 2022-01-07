; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_talk.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_talk.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_CTYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* @LC_CTYPE, align 4
  %7 = call i32 @setlocale(i32 %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %4, align 4
  %9 = load i8**, i8*** %5, align 8
  %10 = call i32 @get_names(i32 %8, i8** %9)
  %11 = call i32 @setproctitle(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %12 = call i32 (...) @check_writeable()
  %13 = call i32 (...) @init_display()
  %14 = call i32 (...) @open_ctl()
  %15 = call i32 (...) @open_sockt()
  %16 = call i32 (...) @start_msgs()
  %17 = call i32 (...) @check_local()
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = call i32 (...) @invite_remote()
  br label %21

21:                                               ; preds = %19, %2
  %22 = call i32 (...) @end_msgs()
  %23 = call i32 (...) @set_edit_chars()
  %24 = call i32 (...) @talk()
  ret i32 0
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @get_names(i32, i8**) #1

declare dso_local i32 @setproctitle(i8*) #1

declare dso_local i32 @check_writeable(...) #1

declare dso_local i32 @init_display(...) #1

declare dso_local i32 @open_ctl(...) #1

declare dso_local i32 @open_sockt(...) #1

declare dso_local i32 @start_msgs(...) #1

declare dso_local i32 @check_local(...) #1

declare dso_local i32 @invite_remote(...) #1

declare dso_local i32 @end_msgs(...) #1

declare dso_local i32 @set_edit_chars(...) #1

declare dso_local i32 @talk(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
