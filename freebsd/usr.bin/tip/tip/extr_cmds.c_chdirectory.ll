; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_chdirectory.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tip/tip/extr_cmds.c_chdirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"[cd] \00", align 1
@stoprompt = common dso_local global i64 0, align 8
@HOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: bad directory\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"!\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @chdirectory(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* @PATH_MAX, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  store i8* %10, i8** %5, align 8
  %11 = trunc i64 %8 to i32
  %12 = call i64 @prompt(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load i64, i64* @stoprompt, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 1, i32* %6, align 4
  br label %30

18:                                               ; preds = %14
  %19 = load i32, i32* @HOME, align 4
  %20 = call i8* @value(i32 %19)
  store i8* %20, i8** %5, align 8
  br label %21

21:                                               ; preds = %18, %1
  %22 = load i8*, i8** %5, align 8
  %23 = call i64 @chdir(i8* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %25, %21
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %28, %17
  %31 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %31)
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %34 [
    i32 0, label %33
    i32 1, label %33
  ]

33:                                               ; preds = %30, %30
  ret void

34:                                               ; preds = %30
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @prompt(i8*, i8*, i32) #2

declare dso_local i8* @value(i32) #2

declare dso_local i64 @chdir(i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
