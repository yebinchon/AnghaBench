; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_labeliostat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_iostat.c_labeliostat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wnd = common dso_local global i32 0, align 4
@INSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"/0%  /10  /20  /30  /40  /50  /60  /70  /80  /90  /100\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"cpu  user|\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"     nice|\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"   system|\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"interrupt|\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"     idle|\00", align 1
@numbers = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labeliostat() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32, i32* @wnd, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @wmove(i32 %2, i32 %3, i32 0)
  %5 = load i32, i32* @wnd, align 4
  %6 = call i32 @wclrtobot(i32 %5)
  %7 = load i32, i32* @wnd, align 4
  %8 = load i32, i32* %1, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @INSET, align 4
  %11 = call i32 @mvwaddstr(i32 %7, i32 %8, i32 %10, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @wnd, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %1, align 4
  %15 = call i32 @mvwaddstr(i32 %12, i32 %13, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @wnd, align 4
  %17 = load i32, i32* %1, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %1, align 4
  %19 = call i32 @mvwaddstr(i32 %16, i32 %17, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %20 = load i32, i32* @wnd, align 4
  %21 = load i32, i32* %1, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %1, align 4
  %23 = call i32 @mvwaddstr(i32 %20, i32 %21, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @wnd, align 4
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  %27 = call i32 @mvwaddstr(i32 %24, i32 %25, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  %28 = load i32, i32* @wnd, align 4
  %29 = load i32, i32* %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %1, align 4
  %31 = call i32 @mvwaddstr(i32 %28, i32 %29, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %32 = load i64, i64* @numbers, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %0
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 @numlabels(i32 %36)
  store i32 %37, i32* %1, align 4
  br label %42

38:                                               ; preds = %0
  %39 = load i32, i32* %1, align 4
  %40 = add nsw i32 %39, 1
  %41 = call i32 @barlabels(i32 %40)
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wclrtobot(i32) #1

declare dso_local i32 @mvwaddstr(i32, i32, i32, i8*) #1

declare dso_local i32 @numlabels(i32) #1

declare dso_local i32 @barlabels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
