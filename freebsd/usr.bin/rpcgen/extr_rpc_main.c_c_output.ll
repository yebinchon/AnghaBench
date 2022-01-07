; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_c_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_c_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c".h\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"#include <rpc/rpc.h>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*)* @c_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_output(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = call i32 (...) @c_initialize()
  %14 = load i8*, i8** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @open_input(i8* %14, i8* %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = call i8* @extendfile(i8* %20, i8* %21)
  br label %25

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = phi i8* [ %22, %19 ], [ %24, %23 ]
  store i8* %26, i8** %11, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @open_output(i8* %27, i8* %28)
  %30 = call i32 (...) @add_warning()
  %31 = load i8*, i8** %5, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load i8*, i8** %5, align 8
  %35 = call i8* @extendfile(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %10, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %33
  %38 = load i32, i32* @fout, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 (i32, i8*, ...) @f_print(i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %39)
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 @free(i8* %41)
  br label %46

43:                                               ; preds = %33, %25
  %44 = load i32, i32* @fout, align 4
  %45 = call i32 (i32, i8*, ...) @f_print(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* @fout, align 4
  %48 = call i64 @ftell(i32 %47)
  store i64 %48, i64* %12, align 8
  br label %49

49:                                               ; preds = %52, %46
  %50 = call i32* (...) @get_definition()
  store i32* %50, i32** %9, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @emit(i32* %53)
  br label %49

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load i64, i64* %12, align 8
  %60 = load i32, i32* @fout, align 4
  %61 = call i64 @ftell(i32 %60)
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i8*, i8** %11, align 8
  %65 = call i32 @unlink(i8* %64)
  br label %66

66:                                               ; preds = %63, %58, %55
  ret void
}

declare dso_local i32 @c_initialize(...) #1

declare dso_local i32 @open_input(i8*, i8*) #1

declare dso_local i8* @extendfile(i8*, i8*) #1

declare dso_local i32 @open_output(i8*, i8*) #1

declare dso_local i32 @add_warning(...) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ftell(i32) #1

declare dso_local i32* @get_definition(...) #1

declare dso_local i32 @emit(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
