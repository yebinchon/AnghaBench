; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_open_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_open_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32* null, align 8
@fout = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [39 x i8] c"%s already exists. No output generated\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"unable to open %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @open_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @open_output(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = icmp eq i8* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32*, i32** @stdout, align 8
  store i32* %8, i32** @fout, align 8
  br label %33

9:                                                ; preds = %2
  %10 = load i8*, i8** %3, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i8*, i8** %4, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = call i64 @streq(i8* %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i8*, i8** %3, align 8
  %19 = call i32 @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 (...) @crash()
  br label %21

21:                                               ; preds = %17, %12, %9
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @fopen(i8* %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %23, i32** @fout, align 8
  %24 = load i32*, i32** @fout, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @warn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %27)
  %29 = call i32 (...) @crash()
  br label %30

30:                                               ; preds = %26, %21
  %31 = load i8*, i8** %4, align 8
  %32 = call i32 @record_open(i8* %31)
  br label %33

33:                                               ; preds = %30, %7
  ret void
}

declare dso_local i64 @streq(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @crash(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @record_open(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
