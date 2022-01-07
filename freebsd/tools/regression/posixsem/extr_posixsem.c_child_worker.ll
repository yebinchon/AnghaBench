; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_child_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_child_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"pipe\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read(pipe)\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32 (i8*)*, i8*, i32*)* @child_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @child_worker(i32 (i8*)* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32, align 4
  store i32 (i8*)* %0, i32 (i8*)** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %12 = call i64 @pipe(i32* %11)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = call i32 @fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %68

16:                                               ; preds = %3
  %17 = call i32 (...) @fork()
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  switch i32 %18, label %35 [
    i32 -1, label %19
    i32 0, label %27
  ]

19:                                               ; preds = %16
  %20 = call i32 @fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %21 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @close(i32 %22)
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @close(i32 %25)
  store i32 -1, i32* %4, align 4
  br label %68

27:                                               ; preds = %16
  %28 = load i32 (i8*)*, i32 (i8*)** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 %28(i8* %29)
  store i32 %30, i32* %10, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @write(i32 %32, i32* %10, i32 4)
  %34 = call i32 @exit(i32 0) #3
  unreachable

35:                                               ; preds = %16
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i64 @read(i32 %37, i32* %38, i32 4)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %35
  %42 = call i32 @fail_errno(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @close(i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  store i32 -1, i32* %4, align 4
  br label %68

49:                                               ; preds = %35
  %50 = load i32, i32* %8, align 4
  %51 = call i64 @waitpid(i32 %50, i32* null, i32 0)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = call i32 @fail_errno(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @close(i32 %56)
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close(i32 %59)
  store i32 -1, i32* %4, align 4
  br label %68

61:                                               ; preds = %49
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @close(i32 %63)
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @close(i32 %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %61, %53, %41, %19, %14
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i64 @pipe(i32*) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @write(i32, i32*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @read(i32, i32*, i32) #1

declare dso_local i64 @waitpid(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
