; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_name-rev.c_is_better_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_name-rev.c_is_better_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_name = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_name*, i64, i32, i32)* @is_better_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_better_name(%struct.rev_name* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rev_name*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rev_name* %0, %struct.rev_name** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %40

12:                                               ; preds = %4
  %13 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %14 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %40

17:                                               ; preds = %12
  %18 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %19 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %17
  %24 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %25 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %23
  %30 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %31 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %32, %33
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi i1 [ false, %23 ], [ %34, %29 ]
  br label %37

37:                                               ; preds = %35, %17
  %38 = phi i1 [ true, %17 ], [ %36, %35 ]
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %5, align 4
  br label %75

40:                                               ; preds = %12, %4
  %41 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %42 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %5, align 4
  br label %75

48:                                               ; preds = %40
  %49 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %50 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %56 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %57, %58
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %5, align 4
  br label %75

61:                                               ; preds = %48
  %62 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %63 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load %struct.rev_name*, %struct.rev_name** %6, align 8
  %69 = getelementptr inbounds %struct.rev_name, %struct.rev_name* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = icmp sgt i64 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %5, align 4
  br label %75

74:                                               ; preds = %61
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %74, %67, %54, %46, %37
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
