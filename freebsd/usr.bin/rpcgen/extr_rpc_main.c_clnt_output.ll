; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_clnt_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_clnt_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c".h\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"#include <rpc/rpc.h>\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"#include <stdio.h>\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"#include <stdlib.h>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*)* @clnt_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clnt_output(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %13, align 4
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
  %29 = call i32 @checkfiles(i8* %27, i8* %28)
  %30 = load i8*, i8** %5, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @open_output(i8* %30, i8* %31)
  %33 = call i32 (...) @add_sample_msg()
  %34 = load i8*, i8** %5, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %25
  %37 = load i8*, i8** %5, align 8
  %38 = call i8* @extendfile(i8* %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %38, i8** %10, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @fout, align 4
  %42 = load i8*, i8** %10, align 8
  %43 = call i32 (i32, i8*, ...) @f_print(i32 %41, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @free(i8* %44)
  br label %49

46:                                               ; preds = %36, %25
  %47 = load i32, i32* @fout, align 4
  %48 = call i32 (i32, i8*, ...) @f_print(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %49

49:                                               ; preds = %46, %40
  %50 = load i32, i32* @fout, align 4
  %51 = call i32 (i32, i8*, ...) @f_print(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @fout, align 4
  %53 = call i32 (i32, i8*, ...) @f_print(i32 %52, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @fout, align 4
  %55 = call i64 @ftell(i32 %54)
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %59, %49
  %57 = call i32* (...) @get_definition()
  store i32* %57, i32** %9, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %56
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @write_sample_clnt(i32* %60)
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %13, align 4
  br label %56

66:                                               ; preds = %56
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = call i32 (...) @write_sample_clnt_main()
  br label %71

71:                                               ; preds = %69, %66
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i64, i64* %12, align 8
  %76 = load i32, i32* @fout, align 4
  %77 = call i64 @ftell(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** %11, align 8
  %81 = call i32 @unlink(i8* %80)
  br label %82

82:                                               ; preds = %79, %74, %71
  ret void
}

declare dso_local i32 @open_input(i8*, i8*) #1

declare dso_local i8* @extendfile(i8*, i8*) #1

declare dso_local i32 @checkfiles(i8*, i8*) #1

declare dso_local i32 @open_output(i8*, i8*) #1

declare dso_local i32 @add_sample_msg(...) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @ftell(i32) #1

declare dso_local i32* @get_definition(...) #1

declare dso_local i64 @write_sample_clnt(i32*) #1

declare dso_local i32 @write_sample_clnt_main(...) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
