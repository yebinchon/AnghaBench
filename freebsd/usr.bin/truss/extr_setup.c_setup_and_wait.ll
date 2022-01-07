; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_setup_and_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/truss/extr_setup.c_setup_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trussinfo = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"fork failed\00", align 1
@PT_TRACE_ME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"execvp %s\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"unexpect stop in waitpid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_and_wait(%struct.trussinfo* %0, i8** %1) #0 {
  %3 = alloca %struct.trussinfo*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  store %struct.trussinfo* %0, %struct.trussinfo** %3, align 8
  store i8** %1, i8*** %4, align 8
  %6 = call i32 @vfork() #3
  store i32 %6, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* @PT_TRACE_ME, align 4
  %16 = call i32 @ptrace(i32 %15, i32 0, i32 0, i32 0)
  %17 = load i8**, i8*** %4, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = call i32 @execvp(i8* %19, i8** %20)
  %22 = load i8**, i8*** %4, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %14, %11
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @waitpid(i32 %27, i32* null, i32 0)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %26
  %33 = load %struct.trussinfo*, %struct.trussinfo** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @new_proc(%struct.trussinfo* %33, i32 %34, i32 0)
  ret void
}

; Function Attrs: returns_twice
declare dso_local i32 @vfork() #1

declare dso_local i32 @err(i32, i8*, ...) #2

declare dso_local i32 @ptrace(i32, i32, i32, i32) #2

declare dso_local i32 @execvp(i8*, i8**) #2

declare dso_local i64 @waitpid(i32, i32*, i32) #2

declare dso_local i32 @new_proc(%struct.trussinfo*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
