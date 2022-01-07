; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_threesome_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_threesome_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"threesome_drop1\00", align 1
@test = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"threesome_drop2\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"threesome_drop3\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"threesome_drop4\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"threesome_drop5\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"threesome_drop6\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @threesome_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @threesome_drop() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** @test, align 8
  %5 = load i8*, i8** @test, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %5)
  %7 = call i32 @save_sysctls(i32* %1, i32* %2)
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %9 = call i32 @alloc3fds(i32* %3, i32* %8)
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @sendfd(i32 %11, i32 %12)
  %14 = load i32, i32* %3, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @close3(i32 %14, i32 %16, i32 %18)
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @test_sysctls(i32 %20, i32 %21)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** @test, align 8
  %23 = load i8*, i8** @test, align 8
  %24 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  %25 = call i32 @save_sysctls(i32* %1, i32* %2)
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %27 = call i32 @alloc3fds(i32* %3, i32* %26)
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @sendfd(i32 %29, i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @close3(i32 %32, i32 %34, i32 %36)
  %38 = load i32, i32* %1, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @test_sysctls(i32 %38, i32 %39)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** @test, align 8
  %41 = load i8*, i8** @test, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %41)
  %43 = call i32 @save_sysctls(i32* %1, i32* %2)
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %45 = call i32 @alloc3fds(i32* %3, i32* %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @sendfd(i32 %47, i32 %48)
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %3, align 4
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @close3(i32 %51, i32 %52, i32 %54)
  %56 = load i32, i32* %1, align 4
  %57 = load i32, i32* %2, align 4
  %58 = call i32 @test_sysctls(i32 %56, i32 %57)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** @test, align 8
  %59 = load i8*, i8** @test, align 8
  %60 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = call i32 @save_sysctls(i32* %1, i32* %2)
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %63 = call i32 @alloc3fds(i32* %3, i32* %62)
  %64 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @sendfd(i32 %65, i32 %66)
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %3, align 4
  %73 = call i32 @close3(i32 %69, i32 %71, i32 %72)
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @test_sysctls(i32 %74, i32 %75)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i8** @test, align 8
  %77 = load i8*, i8** @test, align 8
  %78 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %77)
  %79 = call i32 @save_sysctls(i32* %1, i32* %2)
  %80 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %81 = call i32 @alloc3fds(i32* %3, i32* %80)
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %3, align 4
  %85 = call i32 @sendfd(i32 %83, i32 %84)
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %3, align 4
  %91 = call i32 @close3(i32 %87, i32 %89, i32 %90)
  %92 = load i32, i32* %1, align 4
  %93 = load i32, i32* %2, align 4
  %94 = call i32 @test_sysctls(i32 %92, i32 %93)
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8** @test, align 8
  %95 = load i8*, i8** @test, align 8
  %96 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %95)
  %97 = call i32 @save_sysctls(i32* %1, i32* %2)
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %99 = call i32 @alloc3fds(i32* %3, i32* %98)
  %100 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %3, align 4
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @close3(i32 %101, i32 %102, i32 %104)
  %106 = load i32, i32* %1, align 4
  %107 = load i32, i32* %2, align 4
  %108 = call i32 @test_sysctls(i32 %106, i32 %107)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @save_sysctls(i32*, i32*) #1

declare dso_local i32 @alloc3fds(i32*, i32*) #1

declare dso_local i32 @sendfd(i32, i32) #1

declare dso_local i32 @close3(i32, i32, i32) #1

declare dso_local i32 @test_sysctls(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
