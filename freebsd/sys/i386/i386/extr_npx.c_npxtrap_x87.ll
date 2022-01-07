; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxtrap_x87.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_npx.c_npxtrap_x87.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hw_float = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"npxtrap_x87: fpcurthread = %p, curthread = %p, hw_float = %d\0A\00", align 1
@fpcurthread = common dso_local global i32 0, align 4
@curthread = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"npxtrap from nowhere\00", align 1
@fpetable = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @npxtrap_x87() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @hw_float, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @fpcurthread, align 4
  %7 = call i64 @PCPU_GET(i32 %6)
  %8 = load i64, i64* @curthread, align 8
  %9 = load i32, i32* @hw_float, align 4
  %10 = call i32 @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %8, i32 %9)
  %11 = call i32 @panic(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %12

12:                                               ; preds = %5, %0
  %13 = call i32 (...) @critical_enter()
  %14 = load i32, i32* @fpcurthread, align 4
  %15 = call i64 @PCPU_GET(i32 %14)
  %16 = load i64, i64* @curthread, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load i64, i64* @curthread, align 8
  %20 = call i32 @GET_FPU_CW(i64 %19)
  store i32 %20, i32* %1, align 4
  %21 = load i64, i64* @curthread, align 8
  %22 = call i32 @GET_FPU_SW(i64 %21)
  store i32 %22, i32* %2, align 4
  br label %26

23:                                               ; preds = %12
  %24 = call i32 @fnstcw(i32* %1)
  %25 = call i32 @fnstsw(i32* %2)
  br label %26

26:                                               ; preds = %23, %18
  %27 = call i32 (...) @critical_exit()
  %28 = load i32*, i32** @fpetable, align 8
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* %1, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %31, 63
  %33 = or i32 %32, 64
  %34 = and i32 %29, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %28, i64 %35
  %37 = load i32, i32* %36, align 4
  ret i32 %37
}

declare dso_local i32 @printf(i8*, i64, i64, i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @GET_FPU_CW(i64) #1

declare dso_local i32 @GET_FPU_SW(i64) #1

declare dso_local i32 @fnstcw(i32*) #1

declare dso_local i32 @fnstsw(i32*) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
