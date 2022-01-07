; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_open_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_open_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"<stdin>\00", align 1
@infilename = common dso_local global i8* null, align 8
@childpid = common dso_local global i32 0, align 4
@arglist = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"execvp %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@fin = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @open_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_input(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %11

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  br label %11

11:                                               ; preds = %9, %8
  %12 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %8 ], [ %10, %9 ]
  store i8* %12, i8** @infilename, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %14 = call i32 @pipe(i32* %13)
  %15 = call i32 (...) @fork()
  store i32 %15, i32* @childpid, align 4
  switch i32 %15, label %45 [
    i32 0, label %16
    i32 -1, label %43
  ]

16:                                               ; preds = %11
  %17 = call i32 (...) @prepend_cpp()
  %18 = load i8*, i8** %4, align 8
  %19 = call i32 @addarg(i8* %18)
  %20 = load i8*, i8** %3, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @addarg(i8* %23)
  br label %25

25:                                               ; preds = %22, %16
  %26 = call i32 @addarg(i8* null)
  %27 = call i32 @close(i32 1)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dup2(i32 %29, i32 1)
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @close(i32 %32)
  %34 = load i32*, i32** @arglist, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** @arglist, align 8
  %38 = call i32 @execvp(i32 %36, i32* %37)
  %39 = load i32*, i32** @arglist, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %11, %25
  %44 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %11
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @close(i32 %47)
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @fdopen(i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %51, i32** @fin, align 8
  %52 = load i32*, i32** @fin, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i8*, i8** @infilename, align 8
  %56 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* %55)
  %57 = call i32 (...) @crash()
  br label %58

58:                                               ; preds = %54, %45
  ret void
}

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @prepend_cpp(...) #1

declare dso_local i32 @addarg(i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @execvp(i32, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32* @fdopen(i32, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @crash(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
