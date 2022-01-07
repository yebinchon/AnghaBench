; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_fivesome_drop_work.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_fivesome_drop_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@test = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @fivesome_drop_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fivesome_drop_work(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32], align 4
  %11 = alloca [2 x i32], align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %12)
  %14 = load i8*, i8** %4, align 8
  store i8* %14, i8** @test, align 8
  %15 = call i32 @save_sysctls(i32* %7, i32* %8)
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %18 = call i32 @alloc5fds(i32* %9, i32* %16, i32* %17)
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @sendfd(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @close(i32 %26)
  br label %28

28:                                               ; preds = %25, %3
  %29 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sendfd(i32 %30, i32 %32)
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sendfd(i32 %35, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %28
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @close2(i32 %43, i32 %45)
  br label %47

47:                                               ; preds = %41, %28
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @close2(i32 %49, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %47
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = getelementptr inbounds [2 x i32], [2 x i32]* %10, i64 0, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @close2(i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %55, %47
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @close(i32 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @test_sysctls(i32 %68, i32 %69)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @save_sysctls(i32*, i32*) #1

declare dso_local i32 @alloc5fds(i32*, i32*, i32*) #1

declare dso_local i32 @sendfd(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @close2(i32, i32) #1

declare dso_local i32 @test_sysctls(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
