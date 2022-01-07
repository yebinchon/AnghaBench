; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetGeneratorFrequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetGeneratorFrequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TAU32_SetGeneratorFrequency(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = lshr i64 %9, 32
  store i64 %10, i64* %8, align 8
  %11 = load i64, i64* %8, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp sle i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %16

15:                                               ; preds = %2
  br label %64

16:                                               ; preds = %14
  %17 = load i64, i64* %8, align 8
  %18 = icmp ult i64 %17, 2043000
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %21

20:                                               ; preds = %16
  br label %65

21:                                               ; preds = %19
  %22 = load i64, i64* %8, align 8
  %23 = icmp uge i64 %22, 2053000
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  br label %26

25:                                               ; preds = %21
  br label %66

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %66, %65, %64, %28
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %30, 4096000
  store i64 %31, i64* %4, align 8
  %32 = load i64, i64* %4, align 8
  %33 = lshr i64 %32, 16
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* %4, align 8
  %35 = call { i64, i64 } asm "divl $3", "={ax}|{ax},={dx}|{dx},A|A,r|m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %34, i32 125) #2, !srcloc !2
  %36 = extractvalue { i64, i64 } %35, 0
  %37 = extractvalue { i64, i64 } %35, 1
  store i64 %36, i64* %6, align 8
  store i64 %37, i64* %7, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = call i32 @h2LrH3(i32* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %6, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %29
  br label %58

47:                                               ; preds = %29
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64* %54, i64** %5, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @LzuvP2(i64* %55, i64 %56)
  br label %58

58:                                               ; preds = %47, %46
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = call i32 @uYS5N2(i32* %60)
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @kD2ag4(i64 %62, i32 8192000)
  ret i64 %63

64:                                               ; preds = %15
  store i64 8796093022208000, i64* %4, align 8
  br label %29

65:                                               ; preds = %20
  store i64 8774618185728000, i64* %4, align 8
  br label %29

66:                                               ; preds = %25
  store i64 8817567858688000, i64* %4, align 8
  br label %29
}

declare dso_local i32 @h2LrH3(i32*) #1

declare dso_local i32 @LzuvP2(i64*, i64) #1

declare dso_local i32 @uYS5N2(i32*) #1

declare dso_local i64 @kD2ag4(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 991}
