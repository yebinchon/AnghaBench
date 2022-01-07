; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/netinet/msocket/extr_msocket.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"FAIL: root privilege required\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"FAIL: socket(PF_INET, SOCK_RAW)\00", align 1
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"FAIL: socket(PF_INET, SOCK_STREAM)\00", align 1
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"FAIL: socket(PF_INET, SOCK_DGRAM)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = call i64 (...) @geteuid()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @errx(i32 -1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %2
  %14 = load i32, i32* @PF_INET, align 4
  %15 = load i32, i32* @SOCK_RAW, align 4
  %16 = call i32 @socket(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = call i32 @err(i32 -1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  %22 = load i32, i32* @PF_INET, align 4
  %23 = load i32, i32* @SOCK_STREAM, align 4
  %24 = call i32 @socket(i32 %22, i32 %23, i32 0)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = call i32 @err(i32 -1, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %21
  %30 = load i32, i32* @PF_INET, align 4
  %31 = load i32, i32* @SOCK_DGRAM, align 4
  %32 = call i32 @socket(i32 %30, i32 %31, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = call i32 @err(i32 -1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %29
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @test_ttl(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @test_loop(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @test_if(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @test_addr(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @close(i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @close(i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @close(i32 %58)
  %60 = call i32 (...) @test_udp()
  ret i32 0
}

declare dso_local i64 @geteuid(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @test_ttl(i32, i32, i32) #1

declare dso_local i32 @test_loop(i32, i32, i32) #1

declare dso_local i32 @test_if(i32, i32, i32) #1

declare dso_local i32 @test_addr(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @test_udp(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
