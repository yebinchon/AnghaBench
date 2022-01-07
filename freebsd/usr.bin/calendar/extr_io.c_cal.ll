; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_cal.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_io.c_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAXCOUNT = common dso_local global i32 0, align 4
@extradata = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cal() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAXCOUNT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = call i64 @calloc(i32 1, i32 20)
  %10 = inttoptr i64 %9 to i8*
  %11 = load i8**, i8*** @extradata, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8*, i8** %11, i64 %13
  store i8* %10, i8** %14, align 8
  br label %15

15:                                               ; preds = %8
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4

18:                                               ; preds = %4
  %19 = call i32* (...) @opencalin()
  store i32* %19, i32** %1, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %39

22:                                               ; preds = %18
  %23 = call i32* (...) @opencalout()
  store i32* %23, i32** %2, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @fclose(i32* %26)
  br label %39

28:                                               ; preds = %22
  %29 = load i32*, i32** %1, align 8
  %30 = load i32*, i32** %2, align 8
  %31 = call i64 @cal_parse(i32* %29, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %39

34:                                               ; preds = %28
  %35 = load i32*, i32** %2, align 8
  %36 = call i32 @event_print_all(i32* %35)
  %37 = load i32*, i32** %2, align 8
  %38 = call i32 @closecal(i32* %37)
  br label %39

39:                                               ; preds = %34, %33, %25, %21
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32* @opencalin(...) #1

declare dso_local i32* @opencalout(...) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i64 @cal_parse(i32*, i32*) #1

declare dso_local i32 @event_print_all(i32*) #1

declare dso_local i32 @closecal(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
