; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_vars.c_printgroup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mail/extr_vars.c_printgroup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouphead = type { i8*, %struct.group* }
%struct.group = type { i8*, %struct.group* }

@.str = private unnamed_addr constant [19 x i8] c"\22%s\22: not a group\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\09\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printgroup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.grouphead*, align 8
  %4 = alloca %struct.group*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call %struct.grouphead* @findgroup(i8* %5)
  store %struct.grouphead* %6, %struct.grouphead** %3, align 8
  %7 = icmp eq %struct.grouphead* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %33

11:                                               ; preds = %1
  %12 = load %struct.grouphead*, %struct.grouphead** %3, align 8
  %13 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %14)
  %16 = load %struct.grouphead*, %struct.grouphead** %3, align 8
  %17 = getelementptr inbounds %struct.grouphead, %struct.grouphead* %16, i32 0, i32 1
  %18 = load %struct.group*, %struct.group** %17, align 8
  store %struct.group* %18, %struct.group** %4, align 8
  br label %19

19:                                               ; preds = %27, %11
  %20 = load %struct.group*, %struct.group** %4, align 8
  %21 = icmp ne %struct.group* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = load %struct.group*, %struct.group** %4, align 8
  %24 = getelementptr inbounds %struct.group, %struct.group* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %22
  %28 = load %struct.group*, %struct.group** %4, align 8
  %29 = getelementptr inbounds %struct.group, %struct.group* %28, i32 0, i32 1
  %30 = load %struct.group*, %struct.group** %29, align 8
  store %struct.group* %30, %struct.group** %4, align 8
  br label %19

31:                                               ; preds = %19
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %8
  ret void
}

declare dso_local %struct.grouphead* @findgroup(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
