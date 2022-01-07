; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_sigaction.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_sigaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@SIGALRM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"sigaction only implemented for SIGALRM\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"sigaction: param 3 != NULL not implemented\00", align 1
@timer_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sigaction(i32 %0, %struct.sigaction* %1, %struct.sigaction* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sigaction*, align 8
  %7 = alloca %struct.sigaction*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sigaction* %1, %struct.sigaction** %6, align 8
  store %struct.sigaction* %2, %struct.sigaction** %7, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @SIGALRM, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %3
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* @errno, align 4
  %13 = call i32 @error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %4, align 4
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.sigaction*, %struct.sigaction** %7, align 8
  %16 = icmp ne %struct.sigaction* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* @errno, align 4
  %19 = call i32 @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.sigaction*, %struct.sigaction** %6, align 8
  %22 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* @timer_fn, align 4
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %17, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
