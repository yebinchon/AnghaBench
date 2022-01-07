; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_set_creds.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/priv/extr_main.c_set_creds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"test %s: setegid(%d)\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"test %s: setgroups(%d)\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"test %s: seteuid(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @set_creds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_creds(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @setgid(i32 %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %3
  %18 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %19 = call i64 @setgroups(i32 1, i32* %18)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i8*, i8** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @err(i32 -1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @setuid(i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @err(i32 -1, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8* %30, i32 %31)
  br label %33

33:                                               ; preds = %29, %25
  ret void
}

declare dso_local i64 @setgid(i32) #1

declare dso_local i32 @err(i32, i8*, i8*, i32) #1

declare dso_local i64 @setgroups(i32, i32*) #1

declare dso_local i64 @setuid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
