; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_setaffinity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_intr.c_intr_setaffinity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 }

@NOCPU = common dso_local global i32 0, align 4
@cpuset_root = common dso_local global i32 0, align 4
@CPU_SETSIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_setaffinity(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.intr_event*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %9, align 8
  %14 = load i32, i32* @NOCPU, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* @cpuset_root, align 4
  %16 = load i32*, i32** %9, align 8
  %17 = call i64 @CPU_CMP(i32 %15, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %38, %19
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @CPU_SETSIZE, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @CPU_ISSET(i32 %25, i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @NOCPU, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %65

36:                                               ; preds = %30
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %10, align 4
  br label %38

38:                                               ; preds = %36, %29
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %20

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %5, align 4
  %44 = call %struct.intr_event* @intr_lookup(i32 %43)
  store %struct.intr_event* %44, %struct.intr_event** %8, align 8
  %45 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %46 = icmp eq %struct.intr_event* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ESRCH, align 4
  store i32 %48, i32* %4, align 4
  br label %65

49:                                               ; preds = %42
  %50 = load i32, i32* %6, align 4
  switch i32 %50, label %63 [
    i32 129, label %51
    i32 130, label %55
    i32 128, label %59
  ]

51:                                               ; preds = %49
  %52 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @intr_event_bind(%struct.intr_event* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %65

55:                                               ; preds = %49
  %56 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @intr_event_bind_irqonly(%struct.intr_event* %56, i32 %57)
  store i32 %58, i32* %4, align 4
  br label %65

59:                                               ; preds = %49
  %60 = load %struct.intr_event*, %struct.intr_event** %8, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @intr_event_bind_ithread(%struct.intr_event* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %59, %55, %51, %47, %34
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @CPU_CMP(i32, i32*) #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #1

declare dso_local %struct.intr_event* @intr_lookup(i32) #1

declare dso_local i32 @intr_event_bind(%struct.intr_event*, i32) #1

declare dso_local i32 @intr_event_bind_irqonly(%struct.intr_event*, i32) #1

declare dso_local i32 @intr_event_bind_ithread(%struct.intr_event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
