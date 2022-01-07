; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/tscdrift/extr_tscdrift.c_thread_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/tscdrift/extr_tscdrift.c_thread_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TESTS = common dso_local global i32 0, align 4
@gate = common dso_local global i32 0, align 4
@thread_tsc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @thread_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @thread_main(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = ptrtoint i8* %5 to i64
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @bind_cpu(i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %30, %1
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @TESTS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %10
  store i32 1, i32* @gate, align 4
  br label %15

15:                                               ; preds = %18, %14
  %16 = load i32, i32* @gate, align 4
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = call i32 (...) @cpu_spinwait()
  br label %15

20:                                               ; preds = %15
  %21 = call i32 (...) @barrier()
  call void asm sideeffect "lfence", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %22 = call i32 (...) @rdtsc()
  store i32 %22, i32* @thread_tsc, align 4
  %23 = call i32 (...) @barrier()
  store i32 3, i32* @gate, align 4
  br label %24

24:                                               ; preds = %27, %20
  %25 = load i32, i32* @gate, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @cpu_spinwait()
  br label %24

29:                                               ; preds = %24
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %10

33:                                               ; preds = %10
  ret i8* null
}

declare dso_local i32 @bind_cpu(i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @rdtsc(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 484}
