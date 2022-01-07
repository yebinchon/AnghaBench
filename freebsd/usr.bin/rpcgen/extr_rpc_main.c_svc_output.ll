; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_svc_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_svc_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c".h\00", align 1
@fout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"#include <rpc/rpc.h>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*)* @svc_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @svc_output(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
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
  %13 = load i8*, i8** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @open_input(i8* %13, i8* %14)
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i8*, i8** %5, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i8* @extendfile(i8* %19, i8* %20)
  br label %24

22:                                               ; preds = %4
  %23 = load i8*, i8** %8, align 8
  br label %24

24:                                               ; preds = %22, %18
  %25 = phi i8* [ %21, %18 ], [ %23, %22 ]
  store i8* %25, i8** %11, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = call i32 @checkfiles(i8* %26, i8* %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @open_output(i8* %29, i8* %30)
  %32 = call i32 (...) @add_sample_msg()
  %33 = load i8*, i8** %5, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %24
  %36 = load i8*, i8** %5, align 8
  %37 = call i8* @extendfile(i8* %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* @fout, align 4
  %41 = load i8*, i8** %10, align 8
  %42 = call i32 (i32, i8*, ...) @f_print(i32 %40, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 @free(i8* %43)
  br label %48

45:                                               ; preds = %35, %24
  %46 = load i32, i32* @fout, align 4
  %47 = call i32 (i32, i8*, ...) @f_print(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %39
  %49 = load i32, i32* @fout, align 4
  %50 = call i64 @ftell(i32 %49)
  store i64 %50, i64* %12, align 8
  br label %51

51:                                               ; preds = %54, %48
  %52 = call i32* (...) @get_definition()
  store i32* %52, i32** %9, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32*, i32** %9, align 8
  %56 = call i32 @write_sample_svc(i32* %55)
  br label %51

57:                                               ; preds = %51
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %57
  %61 = load i64, i64* %12, align 8
  %62 = load i32, i32* @fout, align 4
  %63 = call i64 @ftell(i32 %62)
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i8*, i8** %11, align 8
  %67 = call i32 @unlink(i8* %66)
  br label %68

68:                                               ; preds = %65, %60, %57
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

declare dso_local i32 @write_sample_svc(i32*) #1

declare dso_local i32 @unlink(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
