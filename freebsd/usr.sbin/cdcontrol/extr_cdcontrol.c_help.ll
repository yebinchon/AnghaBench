; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_help.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cdcontrol/extr_cdcontrol.c_help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdtab = type { i8*, i8*, i32 }

@cmdtab = common dso_local global %struct.cmdtab* null, align 8
@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"\0A\09The word \22play\22 is not required for the play commands.\0A\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"\09The plain target address is taken as a synonym for play.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @help() #0 {
  %1 = alloca %struct.cmdtab*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = load %struct.cmdtab*, %struct.cmdtab** @cmdtab, align 8
  store %struct.cmdtab* %5, %struct.cmdtab** %1, align 8
  br label %6

6:                                                ; preds = %60, %0
  %7 = load %struct.cmdtab*, %struct.cmdtab** %1, align 8
  %8 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %63

11:                                               ; preds = %6
  %12 = load %struct.cmdtab*, %struct.cmdtab** %1, align 8
  %13 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %12, i32 0, i32 1
  %14 = load i8*, i8** %13, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %60

17:                                               ; preds = %11
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cmdtab*, %struct.cmdtab** %1, align 8
  %20 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %4, align 4
  %22 = load %struct.cmdtab*, %struct.cmdtab** %1, align 8
  %23 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %2, align 8
  br label %25

25:                                               ; preds = %42, %17
  %26 = load i8*, i8** %2, align 8
  %27 = load i8, i8* %26, align 1
  %28 = icmp ne i8 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %25
  %30 = load i32, i32* %4, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %2, align 8
  %34 = load i8, i8* %33, align 1
  %35 = call signext i8 @toupper(i8 signext %34)
  store i8 %35, i8* %3, align 1
  br label %39

36:                                               ; preds = %29
  %37 = load i8*, i8** %2, align 8
  %38 = load i8, i8* %37, align 1
  store i8 %38, i8* %3, align 1
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i8, i8* %3, align 1
  %41 = call i32 @putchar(i8 signext %40)
  br label %42

42:                                               ; preds = %39
  %43 = load i8*, i8** %2, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, -1
  store i32 %46, i32* %4, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load %struct.cmdtab*, %struct.cmdtab** %1, align 8
  %49 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = load i8, i8* %50, align 1
  %52 = icmp ne i8 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.cmdtab*, %struct.cmdtab** %1, align 8
  %55 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %53, %47
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %16
  %61 = load %struct.cmdtab*, %struct.cmdtab** %1, align 8
  %62 = getelementptr inbounds %struct.cmdtab, %struct.cmdtab* %61, i32 1
  store %struct.cmdtab* %62, %struct.cmdtab** %1, align 8
  br label %6

63:                                               ; preds = %6
  %64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0))
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local signext i8 @toupper(i8 signext) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
