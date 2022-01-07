; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_re_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/patch/extr_inp.c_re_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@using_plan_a = common dso_local global i32 0, align 4
@i_ptr = common dso_local global i32* null, align 8
@i_womp = common dso_local global i32* null, align 8
@i_size = common dso_local global i64 0, align 8
@tifd = common dso_local global i32 0, align 4
@tibuf = common dso_local global i32** null, align 8
@tiline = common dso_local global i32* null, align 8
@tireclen = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @re_input() #0 {
  %1 = load i32, i32* @using_plan_a, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32*, i32** @i_ptr, align 8
  %5 = call i32 @free(i32* %4)
  store i32* null, i32** @i_ptr, align 8
  %6 = load i32*, i32** @i_womp, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = load i32*, i32** @i_womp, align 8
  %10 = load i64, i64* @i_size, align 8
  %11 = call i32 @munmap(i32* %9, i64 %10)
  store i32* null, i32** @i_womp, align 8
  br label %12

12:                                               ; preds = %8, %3
  store i64 0, i64* @i_size, align 8
  br label %32

13:                                               ; preds = %0
  store i32 1, i32* @using_plan_a, align 4
  %14 = load i32, i32* @tifd, align 4
  %15 = call i32 @close(i32 %14)
  store i32 -1, i32* @tifd, align 4
  %16 = load i32**, i32*** @tibuf, align 8
  %17 = getelementptr inbounds i32*, i32** %16, i64 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @free(i32* %18)
  %20 = load i32**, i32*** @tibuf, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @free(i32* %22)
  %24 = load i32**, i32*** @tibuf, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  store i32* null, i32** %25, align 8
  %26 = load i32**, i32*** @tibuf, align 8
  %27 = getelementptr inbounds i32*, i32** %26, i64 0
  store i32* null, i32** %27, align 8
  %28 = load i32*, i32** @tiline, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  store i32 -1, i32* %29, align 4
  %30 = load i32*, i32** @tiline, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 -1, i32* %31, align 4
  store i64 0, i64* @tireclen, align 8
  br label %32

32:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @munmap(i32*, i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
