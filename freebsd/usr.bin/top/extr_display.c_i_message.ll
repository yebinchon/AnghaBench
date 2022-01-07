; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_i_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@next_msg = common dso_local global i8* null, align 8
@NEXT_MSG_ADDLEN = common dso_local global i32 0, align 4
@lastline = common dso_local global i64 0, align 8
@y_message = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@msglen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i_message() #0 {
  %1 = load i8*, i8** @next_msg, align 8
  %2 = load i32, i32* @NEXT_MSG_ADDLEN, align 4
  %3 = call i8* @setup_buffer(i8* %1, i32 %2)
  store i8* %3, i8** @next_msg, align 8
  br label %4

4:                                                ; preds = %8, %0
  %5 = load i64, i64* @lastline, align 8
  %6 = load i64, i64* @y_message, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %4
  %9 = load i32, i32* @stdout, align 4
  %10 = call i32 @fputc(i8 signext 10, i32 %9)
  %11 = load i64, i64* @lastline, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* @lastline, align 8
  br label %4

13:                                               ; preds = %4
  %14 = load i8*, i8** @next_msg, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i8*, i8** @next_msg, align 8
  %21 = call i32 @top_standout(i8* %20)
  %22 = load i8*, i8** @next_msg, align 8
  %23 = call i64 @strlen(i8* %22)
  store i64 %23, i64* @msglen, align 8
  %24 = load i8*, i8** @next_msg, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 0
  store i8 0, i8* %25, align 1
  br label %33

26:                                               ; preds = %13
  %27 = load i64, i64* @msglen, align 8
  %28 = icmp sgt i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* @msglen, align 8
  %31 = call i32 @clear_eol(i64 %30)
  store i64 0, i64* @msglen, align 8
  br label %32

32:                                               ; preds = %29, %26
  br label %33

33:                                               ; preds = %32, %19
  ret void
}

declare dso_local i8* @setup_buffer(i8*, i32) #1

declare dso_local i32 @fputc(i8 signext, i32) #1

declare dso_local i32 @top_standout(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @clear_eol(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
