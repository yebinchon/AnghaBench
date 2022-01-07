; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_l_output.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/rpcgen/extr_rpc_main.c_l_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@fout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"#include <string.h> /* for memset */\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c".h\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"#include \22%s\22\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"#include <rpc/rpc.h>\0A\00", align 1
@DEF_PROGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32, i8*)* @l_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l_output(i8* %0, i8* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %11, align 4
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
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @open_output(i8* %26, i8* %27)
  %29 = call i32 (...) @add_warning()
  %30 = load i32, i32* @fout, align 4
  %31 = call i32 (i32, i8*, ...) @f_print(i32 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load i8*, i8** %5, align 8
  %36 = call i8* @extendfile(i8* %35, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i8* %36, i8** %9, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32, i32* @fout, align 4
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i32, i8*, ...) @f_print(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @free(i8* %42)
  br label %47

44:                                               ; preds = %34, %24
  %45 = load i32, i32* @fout, align 4
  %46 = call i32 (i32, i8*, ...) @f_print(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %38
  br label %48

48:                                               ; preds = %51, %47
  %49 = call %struct.TYPE_3__* (...) @get_definition()
  store %struct.TYPE_3__* %49, %struct.TYPE_3__** %10, align 8
  %50 = icmp ne %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DEF_PROGRAM, align 8
  %56 = icmp eq i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %11, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %11, align 4
  br label %48

60:                                               ; preds = %48
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i8*, i8** %12, align 8
  %68 = call i32 @unlink(i8* %67)
  br label %71

69:                                               ; preds = %63, %60
  %70 = call i32 (...) @write_stubs()
  br label %71

71:                                               ; preds = %69, %66
  ret void
}

declare dso_local i32 @open_input(i8*, i8*) #1

declare dso_local i8* @extendfile(i8*, i8*) #1

declare dso_local i32 @open_output(i8*, i8*) #1

declare dso_local i32 @add_warning(...) #1

declare dso_local i32 @f_print(i32, i8*, ...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.TYPE_3__* @get_definition(...) #1

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @write_stubs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
