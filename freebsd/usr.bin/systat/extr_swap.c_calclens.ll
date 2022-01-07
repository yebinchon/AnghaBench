; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_calclens.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_swap.c_calclens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@dlen = common dso_local global i32 0, align 4
@kvnsw = common dso_local global i32 0, align 4
@kvmsw = common dso_local global %struct.TYPE_2__* null, align 8
@ulen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @calclens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calclens() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 5, i32* @dlen, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %22, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @kvnsw, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %10 = load i32, i32* %1, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strlen(i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* @dlen, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %8
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* @dlen, align 4
  br label %21

21:                                               ; preds = %19, %8
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %1, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %4

25:                                               ; preds = %4
  store i32 5, i32* @ulen, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvmsw, align 8
  %27 = load i32, i32* @kvnsw, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @CONVERT(i32 %31)
  store i32 %32, i32* %2, align 4
  store i32 2, i32* %3, align 4
  br label %33

33:                                               ; preds = %38, %25
  %34 = load i32, i32* %2, align 4
  %35 = sdiv i32 %34, 10
  store i32 %35, i32* %2, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %33

41:                                               ; preds = %33
  %42 = load i32, i32* @ulen, align 4
  %43 = load i32, i32* %3, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* %3, align 4
  store i32 %46, i32* @ulen, align 4
  br label %47

47:                                               ; preds = %45, %41
  ret void
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @CONVERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
