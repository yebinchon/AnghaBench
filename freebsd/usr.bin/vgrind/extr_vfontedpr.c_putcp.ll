; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_putcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vgrind/extr_vfontedpr.c_putcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"\\*(+K{\\*(-K\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\\*(+K}\\*(-K\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\\e\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\\*_\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\\*-\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"\\`\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\\'\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\\&.\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"\\fI*\\fP\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"\\fI\\h'\\w' 'u-\\w'/'u'/\\fP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @putcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @putcp(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  switch i32 %3, label %27 [
    i32 0, label %4
    i32 12, label %5
    i32 13, label %6
    i32 123, label %7
    i32 125, label %9
    i32 92, label %11
    i32 95, label %13
    i32 45, label %15
    i32 96, label %17
    i32 39, label %19
    i32 46, label %21
    i32 42, label %23
    i32 47, label %25
    i32 9, label %35
    i32 10, label %35
  ]

4:                                                ; preds = %1
  br label %38

5:                                                ; preds = %1
  br label %38

6:                                                ; preds = %1
  br label %38

7:                                                ; preds = %1
  %8 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %38

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %38

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  br label %38

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  br label %38

15:                                               ; preds = %1
  %16 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %38

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  br label %38

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %38

21:                                               ; preds = %1
  %22 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  br label %38

23:                                               ; preds = %1
  %24 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %38

25:                                               ; preds = %1
  %26 = call i32 (i8*, ...) bitcast (i32 (...)* @ps to i32 (i8*, ...)*)(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  br label %38

27:                                               ; preds = %1
  %28 = load i32, i32* %2, align 4
  %29 = icmp slt i32 %28, 32
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 94)
  %32 = load i32, i32* %2, align 4
  %33 = or i32 %32, 64
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %1, %1, %34
  %36 = load i32, i32* %2, align 4
  %37 = call i32 (i32, ...) bitcast (i32 (...)* @putchar to i32 (i32, ...)*)(i32 %36)
  br label %38

38:                                               ; preds = %35, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7, %6, %5, %4
  ret void
}

declare dso_local i32 @ps(...) #1

declare dso_local i32 @putchar(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
