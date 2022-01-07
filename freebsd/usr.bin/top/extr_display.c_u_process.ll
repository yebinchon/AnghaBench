; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_u_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Header_lines = common dso_local global i32 0, align 4
@screenbuf = common dso_local global i8* null, align 8
@screen_width = common dso_local global i32 0, align 4
@last_hi = common dso_local global i32 0, align 4
@lastline = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @u_process(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @Header_lines, align 4
  %11 = add nsw i32 %9, %10
  store i32 %11, i32* %6, align 4
  %12 = load i8*, i8** @screenbuf, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @lineindex(i32 %13)
  %15 = getelementptr inbounds i8, i8* %12, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @strlen(i8* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @screen_width, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* @screen_width, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %22, i64 %24
  store i8 0, i8* %25, align 1
  br label %26

26:                                               ; preds = %21, %2
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @last_hi, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %71

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @lastline, align 4
  %33 = sub nsw i32 %31, %32
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @putchar(i8 signext 10)
  %37 = load i32, i32* @lastline, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @lastline, align 4
  br label %43

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @Move_to(i32 0, i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* @lastline, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i8*, i8** %4, align 8
  %45 = load i32, i32* @stdout, align 4
  %46 = call i32 @fputs(i8* %44, i32 %45)
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i8* @stpcpy(i8* %47, i8* %48)
  store i8* %49, i8** %5, align 8
  %50 = load i8*, i8** %5, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = ptrtoint i8* %50 to i64
  %53 = ptrtoint i8* %51 to i64
  %54 = sub i64 %52, %53
  %55 = load i32, i32* @screen_width, align 4
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %54, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %43
  %59 = load i8*, i8** %5, align 8
  %60 = load i32, i32* @screen_width, align 4
  %61 = sext i32 %60 to i64
  %62 = load i8*, i8** %5, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = ptrtoint i8* %62 to i64
  %65 = ptrtoint i8* %63 to i64
  %66 = sub i64 %64, %65
  %67 = sub nsw i64 %61, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memset(i8* %59, i32 0, i32 %68)
  br label %70

70:                                               ; preds = %58, %43
  br label %78

71:                                               ; preds = %26
  %72 = load i8*, i8** %7, align 8
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @Header_lines, align 4
  %76 = add nsw i32 %74, %75
  %77 = call i32 @line_update(i8* %72, i8* %73, i32 0, i32 %76)
  br label %78

78:                                               ; preds = %71, %70
  ret void
}

declare dso_local i64 @lineindex(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @Move_to(i32, i32) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i8* @stpcpy(i8*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @line_update(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
