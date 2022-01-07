; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/sigpipe/extr_sigpipe.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/sigpipe/extr_sigpipe.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [55 x i8] c"sigpipe: SO_NOSIGPIPE not defined, skipping some tests\00", align 1
@PF_LOCAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"socketpair(PF_LOCAL, SOCK_STREAM)\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"test_send_wantsignal(PF_LOCAL)\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"test_write_wantsignal(PF_LOCAL)\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"test_send_wantsignal(PF_INET)\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"test_write_wantsignal(PF_INET)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"PASS\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @usage()
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load i8*, i8** %15, align 8
  %17 = call i64 @strtol(i8* %16, i8** %6, i32 10)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load i64, i64* %8, align 8
  %22 = icmp sgt i64 %21, 65535
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23, %20, %13
  %29 = call i32 (...) @usage()
  br label %30

30:                                               ; preds = %28, %23
  %31 = call i32 @warnx(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @PF_LOCAL, align 4
  %33 = load i32, i32* @SOCK_STREAM, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %35 = call i64 @socketpair(i32 %32, i32 %33, i32 0, i32* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @err(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %30
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @test_send_wantsignal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %43)
  %45 = load i32, i32* @PF_LOCAL, align 4
  %46 = load i32, i32* @SOCK_STREAM, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %48 = call i64 @socketpair(i32 %45, i32 %46, i32 0, i32* %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %39
  %51 = call i32 @err(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %39
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @test_write_wantsignal(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %54, i32 %56)
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @tcp_setup(i64 %58)
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %62 = call i32 @tcp_pair(i64 %60, i32* %61)
  %63 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @test_send_wantsignal(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 %66)
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %70 = call i32 @tcp_pair(i64 %68, i32* %69)
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @test_write_wantsignal(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %72, i32 %74)
  %76 = call i32 (...) @tcp_teardown()
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @usage(...) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @socketpair(i32, i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @test_send_wantsignal(i8*, i32, i32) #1

declare dso_local i32 @test_write_wantsignal(i8*, i32, i32) #1

declare dso_local i32 @tcp_setup(i64) #1

declare dso_local i32 @tcp_pair(i64, i32*) #1

declare dso_local i32 @tcp_teardown(...) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
