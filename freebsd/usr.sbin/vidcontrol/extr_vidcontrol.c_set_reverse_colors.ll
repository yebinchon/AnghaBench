; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_reverse_colors.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_reverse_colors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"\1B[=%dH\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"\1B[=%dI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8**, i32*)* @set_reverse_colors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_reverse_colors(i32 %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i8**, i8*** %5, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i8*, i8** %8, i64 %12
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @get_color_number(i8* %14)
  store i32 %15, i32* %7, align 4
  %16 = icmp ne i32 %15, -1
  br i1 %16, label %17, label %42

17:                                               ; preds = %3
  %18 = load i32, i32* @stderr, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %41

25:                                               ; preds = %17
  %26 = load i8**, i8*** %5, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %26, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @get_color_number(i8* %31)
  store i32 %32, i32* %7, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %41

34:                                               ; preds = %25
  %35 = load i32*, i32** %6, align 8
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @stderr, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @fprintf(i32 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %34, %25, %17
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

declare dso_local i32 @get_color_number(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
