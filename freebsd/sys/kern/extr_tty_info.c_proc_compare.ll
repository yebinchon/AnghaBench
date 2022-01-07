; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_info.c_proc_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty_info.c_proc_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i64, i64 }

@PRS_ZOMBIE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.proc*)* @proc_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_compare(%struct.proc* %0, %struct.proc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  %10 = load %struct.proc*, %struct.proc** %4, align 8
  %11 = icmp eq %struct.proc* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %68

13:                                               ; preds = %2
  %14 = load %struct.proc*, %struct.proc** %4, align 8
  %15 = call i32 @PROC_LOCK(%struct.proc* %14)
  %16 = load %struct.proc*, %struct.proc** %4, align 8
  %17 = call i32 @proc_sum(%struct.proc* %16, i64* %8)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.proc*, %struct.proc** %4, align 8
  %19 = call i32 @PROC_UNLOCK(%struct.proc* %18)
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = call i32 @PROC_LOCK(%struct.proc* %20)
  %22 = load %struct.proc*, %struct.proc** %5, align 8
  %23 = call i32 @proc_sum(%struct.proc* %22, i64* %9)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.proc*, %struct.proc** %5, align 8
  %25 = call i32 @PROC_UNLOCK(%struct.proc* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @TESTAB(i32 %26, i32 %27)
  switch i32 %28, label %32 [
    i32 129, label %29
    i32 128, label %30
    i32 130, label %31
  ]

29:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %68

30:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %68

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %13, %31
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %3, align 4
  br label %68

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %68

42:                                               ; preds = %37
  %43 = load %struct.proc*, %struct.proc** %4, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @PRS_ZOMBIE, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load %struct.proc*, %struct.proc** %5, align 8
  %50 = getelementptr inbounds %struct.proc, %struct.proc* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @PRS_ZOMBIE, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @TESTAB(i32 %48, i32 %54)
  switch i32 %55, label %59 [
    i32 129, label %56
    i32 128, label %57
    i32 130, label %58
  ]

56:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %68

57:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %68

58:                                               ; preds = %42
  br label %59

59:                                               ; preds = %42, %58
  %60 = load %struct.proc*, %struct.proc** %5, align 8
  %61 = getelementptr inbounds %struct.proc, %struct.proc* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.proc*, %struct.proc** %4, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %59, %57, %56, %41, %36, %30, %29, %12
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @proc_sum(%struct.proc*, i64*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @TESTAB(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
