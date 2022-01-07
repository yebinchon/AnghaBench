; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_display_updatecpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_display.c_display_updatecpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statics = type { i32 }

@pcpu_stats = common dso_local global i64 0, align 8
@num_cpus = common dso_local global i32 0, align 4
@cpustates_column = common dso_local global i32 0, align 4
@num_cpustates = common dso_local global i32 0, align 4
@lcpustates = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @display_updatecpus(%struct.statics* %0) #0 {
  %2 = alloca %struct.statics*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.statics* %0, %struct.statics** %2, align 8
  %5 = call i32 (...) @display_resize()
  store i32 %5, i32* %3, align 4
  %6 = load i64, i64* @pcpu_stats, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.statics*, %struct.statics** %2, align 8
  %10 = getelementptr inbounds %struct.statics, %struct.statics* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* @num_cpus, align 4
  br label %13

12:                                               ; preds = %1
  store i32 1, i32* @num_cpus, align 4
  br label %13

13:                                               ; preds = %12, %8
  store i32 5, i32* @cpustates_column, align 4
  %14 = load i32, i32* @num_cpus, align 4
  %15 = icmp sgt i32 %14, 1
  br i1 %15, label %16, label %24

16:                                               ; preds = %13
  %17 = load i32, i32* @num_cpus, align 4
  %18 = call i64 @digits(i32 %17)
  %19 = add nsw i64 1, %18
  %20 = load i32, i32* @cpustates_column, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @cpustates_column, align 4
  br label %24

24:                                               ; preds = %16, %13
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %36, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @num_cpustates, align 4
  %28 = load i32, i32* @num_cpus, align 4
  %29 = mul nsw i32 %27, %28
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %39

31:                                               ; preds = %25
  %32 = load i32*, i32** @lcpustates, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32 -1, i32* %35, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %25

39:                                               ; preds = %25
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @display_resize(...) #1

declare dso_local i64 @digits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
