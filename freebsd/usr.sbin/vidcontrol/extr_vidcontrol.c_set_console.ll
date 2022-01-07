; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_console.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/vidcontrol/extr_vidcontrol.c_set_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"bad console number\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"console number out of range\00", align 1
@VT_ACTIVATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"switching vty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @set_console to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_console(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = icmp ne i8* %4, null
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strspn(i8* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load i8*, i8** %2, align 8
  %10 = call i64 @strlen(i8* %9)
  %11 = icmp ne i64 %8, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6, %1
  %13 = call i32 (...) @revert()
  %14 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %15

15:                                               ; preds = %12, %6
  %16 = load i8*, i8** %2, align 8
  %17 = call i32 @atoi(i8* %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = icmp sgt i32 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %15
  %24 = call i32 (...) @revert()
  %25 = call i32 @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %35

26:                                               ; preds = %20
  %27 = load i32, i32* @VT_ACTIVATE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ioctl(i32 0, i32 %27, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = call i32 (...) @revert()
  %33 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %23
  ret void
}

declare dso_local i64 @strspn(i8*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @revert(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @ioctl(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
