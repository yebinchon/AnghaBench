; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_fivesome_nothing.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_gc/extr_unix_gc.c_fivesome_nothing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"fivesome_nothing\00", align 1
@test = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fivesome_nothing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fivesome_nothing() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [2 x i32], align 4
  %5 = alloca [2 x i32], align 4
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** @test, align 8
  %6 = load i8*, i8** @test, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = call i32 @save_sysctls(i32* %1, i32* %2)
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %11 = call i32 @alloc5fds(i32* %3, i32* %9, i32* %10)
  %12 = load i32, i32* %3, align 4
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 0
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %4, i64 0, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @close5(i32 %12, i32 %14, i32 %16, i32 %18, i32 %20)
  %22 = load i32, i32* %1, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @test_sysctls(i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @save_sysctls(i32*, i32*) #1

declare dso_local i32 @alloc5fds(i32*, i32*, i32*) #1

declare dso_local i32 @close5(i32, i32, i32, i32, i32) #1

declare dso_local i32 @test_sysctls(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
