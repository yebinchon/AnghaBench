; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_plus_or_minus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/at/extr_parsetime.c_plus_or_minus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32 }

@sc_tokid = common dso_local global i32 0, align 4
@sc_tokplur = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"pluralization is wrong\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tm*, i32)* @plus_or_minus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @plus_or_minus(%struct.tm* %0, i32 %1) #0 {
  %3 = alloca %struct.tm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tm* %0, %struct.tm** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, -1
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ false, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 1, i32 0
  store i32 %14, i32* %5, align 4
  %15 = call i32 (...) @token()
  switch i32 %15, label %49 [
    i32 128, label %16
    i32 130, label %22
    i32 129, label %28
    i32 133, label %31
    i32 132, label %37
    i32 131, label %43
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.tm*, %struct.tm** %3, align 8
  %19 = getelementptr inbounds %struct.tm, %struct.tm* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, %17
  store i32 %21, i32* %19, align 4
  br label %52

22:                                               ; preds = %11
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.tm*, %struct.tm** %3, align 8
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %52

28:                                               ; preds = %11
  %29 = load i32, i32* %4, align 4
  %30 = mul nsw i32 %29, 7
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %11, %28
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.tm*, %struct.tm** %3, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %52

37:                                               ; preds = %11
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.tm*, %struct.tm** %3, align 8
  %40 = getelementptr inbounds %struct.tm, %struct.tm* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %52

43:                                               ; preds = %11
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.tm*, %struct.tm** %3, align 8
  %46 = getelementptr inbounds %struct.tm, %struct.tm* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %52

49:                                               ; preds = %11
  %50 = load i32, i32* @sc_tokid, align 4
  %51 = call i32 @plonk(i32 %50)
  br label %52

52:                                               ; preds = %49, %43, %37, %31, %22, %16
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @sc_tokplur, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @warnx(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  %59 = load %struct.tm*, %struct.tm** %3, align 8
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %59, i32 0, i32 5
  store i32 -1, i32* %60, align 4
  %61 = load %struct.tm*, %struct.tm** %3, align 8
  %62 = call i64 @mktime(%struct.tm* %61)
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* @sc_tokid, align 4
  %66 = call i32 @plonk(i32 %65)
  br label %67

67:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @token(...) #1

declare dso_local i32 @plonk(i32) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
