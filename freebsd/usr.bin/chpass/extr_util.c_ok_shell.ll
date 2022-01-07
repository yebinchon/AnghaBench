; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_util.c_ok_shell.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/chpass/extr_util.c_ok_shell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ok_shell(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %6 = call i32 (...) @setusershell()
  br label %7

7:                                                ; preds = %29, %1
  %8 = call i8* (...) @getusershell()
  store i8* %8, i8** %5, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %30

10:                                               ; preds = %7
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strcmp(i8* %11, i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = call i32 (...) @endusershell()
  store i32 1, i32* %2, align 4
  br label %32

17:                                               ; preds = %10
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strrchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %4, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load i8*, i8** %3, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 1
  %25 = call i64 @strcmp(i8* %22, i8* %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 (...) @endusershell()
  store i32 1, i32* %2, align 4
  br label %32

29:                                               ; preds = %21, %17
  br label %7

30:                                               ; preds = %7
  %31 = call i32 (...) @endusershell()
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %30, %27, %15
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @setusershell(...) #1

declare dso_local i8* @getusershell(...) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @endusershell(...) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
