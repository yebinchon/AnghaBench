; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetSyncMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetSyncMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TAU32_SetSyncMode(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %10 = call i32 @h2LrH3(i32* %9)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, -36
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %35 [
    i32 3, label %16
    i32 1, label %19
    i32 0, label %22
    i32 2, label %25
  ]

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = or i32 %17, 32
  store i32 %18, i32* %6, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, 2
  store i32 %21, i32* %6, align 4
  br label %39

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = or i32 %23, 1
  store i32 %24, i32* %6, align 4
  br label %39

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, 3
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %2, %34
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  %38 = call i32 @uYS5N2(i32* %37)
  store i32 0, i32* %3, align 4
  br label %60

39:                                               ; preds = %31, %22, %19, %16
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %42, %43
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %56

46:                                               ; preds = %39
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i64* %50, i64** %7, align 8
  %51 = load i64*, i64** %7, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = call i32 @AUUSL3(i64* %51, i32 0, i32 %52)
  br label %56

56:                                               ; preds = %46, %45
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = call i32 @uYS5N2(i32* %58)
  store i32 1, i32* %3, align 4
  br label %60

60:                                               ; preds = %56, %35
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @h2LrH3(i32*) #1

declare dso_local i32 @uYS5N2(i32*) #1

declare dso_local i32 @AUUSL3(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
