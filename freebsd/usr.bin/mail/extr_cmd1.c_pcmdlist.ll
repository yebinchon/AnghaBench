; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_pcmdlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_cmd1.c_pcmdlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i8* }

@.str = private unnamed_addr constant [15 x i8] c"Commands are:\0A\00", align 1
@cmdtab = external dso_local constant [0 x %struct.cmd], align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%s, \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcmdlist() #0 {
  %1 = alloca %struct.cmd*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store %struct.cmd* getelementptr inbounds ([0 x %struct.cmd], [0 x %struct.cmd]* @cmdtab, i64 0, i64 0), %struct.cmd** %1, align 8
  br label %4

4:                                                ; preds = %43, %0
  %5 = load %struct.cmd*, %struct.cmd** %1, align 8
  %6 = getelementptr inbounds %struct.cmd, %struct.cmd* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %46

9:                                                ; preds = %4
  %10 = load %struct.cmd*, %struct.cmd** %1, align 8
  %11 = getelementptr inbounds %struct.cmd, %struct.cmd* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = add nsw i32 %13, 2
  %15 = load i32, i32* %2, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %2, align 4
  %17 = load i32, i32* %2, align 4
  %18 = icmp sgt i32 %17, 72
  br i1 %18, label %19, label %26

19:                                               ; preds = %9
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.cmd*, %struct.cmd** %1, align 8
  %22 = getelementptr inbounds %struct.cmd, %struct.cmd* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 2
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %19, %9
  %27 = load %struct.cmd*, %struct.cmd** %1, align 8
  %28 = getelementptr inbounds %struct.cmd, %struct.cmd* %27, i64 1
  %29 = getelementptr inbounds %struct.cmd, %struct.cmd* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load %struct.cmd*, %struct.cmd** %1, align 8
  %34 = getelementptr inbounds %struct.cmd, %struct.cmd* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %35)
  br label %42

37:                                               ; preds = %26
  %38 = load %struct.cmd*, %struct.cmd** %1, align 8
  %39 = getelementptr inbounds %struct.cmd, %struct.cmd* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %37, %32
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.cmd*, %struct.cmd** %1, align 8
  %45 = getelementptr inbounds %struct.cmd, %struct.cmd* %44, i32 1
  store %struct.cmd* %45, %struct.cmd** %1, align 8
  br label %4

46:                                               ; preds = %4
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
