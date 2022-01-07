; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l173.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_l173.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*)* @l173 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l173(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  store i8 0, i8* %3, align 1
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %14

9:                                                ; preds = %1
  %10 = load i8, i8* %3, align 1
  %11 = zext i8 %10 to i32
  %12 = or i32 %11, 65
  %13 = trunc i32 %12 to i8
  store i8 %13, i8* %3, align 1
  br label %59

14:                                               ; preds = %8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21, %14
  br label %42

27:                                               ; preds = %21
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %3, align 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %41

36:                                               ; preds = %27
  %37 = load i8, i8* %3, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, 32
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %3, align 1
  br label %41

41:                                               ; preds = %36, %35
  br label %58

42:                                               ; preds = %26
  %43 = load i8, i8* %3, align 1
  %44 = zext i8 %43 to i32
  %45 = or i32 %44, 9
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %3, align 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %57

52:                                               ; preds = %42
  %53 = load i8, i8* %3, align 1
  %54 = zext i8 %53 to i32
  %55 = or i32 %54, 32
  %56 = trunc i32 %55 to i8
  store i8 %56, i8* %3, align 1
  br label %57

57:                                               ; preds = %52, %51
  br label %58

58:                                               ; preds = %57, %41
  br label %59

59:                                               ; preds = %58, %9
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %61 = load i8, i8* %3, align 1
  %62 = call i32 @i(%struct.TYPE_6__* %60, i32 18, i8 zeroext %61)
  ret void
}

declare dso_local i32 @i(%struct.TYPE_6__*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
