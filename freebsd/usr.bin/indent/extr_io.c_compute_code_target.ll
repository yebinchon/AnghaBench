; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_compute_code_target.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/indent/extr_io.c_compute_code_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i64 }

@opt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@ps = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@paren_target = common dso_local global i32 0, align 4
@s_code = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compute_code_target() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 0), align 8
  %6 = mul nsw i32 %4, %5
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %63

10:                                               ; preds = %0
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 4), align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %10
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 1), align 4
  %16 = mul nsw i32 2, %15
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 0), align 8
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %22

20:                                               ; preds = %13
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 1), align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i32 [ 1, %19 ], [ %21, %20 ]
  %24 = mul nsw i32 %14, %23
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, %24
  store i32 %26, i32* %1, align 4
  br label %62

27:                                               ; preds = %10
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 3), align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @paren_target, align 4
  store i32 %31, i32* %1, align 4
  br label %61

32:                                               ; preds = %27
  %33 = load i32, i32* @paren_target, align 4
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @s_code, align 4
  %36 = call i64 @count_spaces(i32 %34, i32 %35)
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 2), align 8
  %38 = sub nsw i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %2, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %32
  %42 = load i32, i32* %1, align 4
  %43 = load i32, i32* @s_code, align 4
  %44 = call i64 @count_spaces(i32 %42, i32 %43)
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 2), align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %41
  %48 = load i32, i32* %2, align 4
  %49 = add nsw i32 %48, 1
  %50 = load i32, i32* %3, align 4
  %51 = sub nsw i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %1, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  store i32 %56, i32* %1, align 4
  br label %57

57:                                               ; preds = %55, %47
  br label %60

58:                                               ; preds = %41, %32
  %59 = load i32, i32* %3, align 4
  store i32 %59, i32* %1, align 4
  br label %60

60:                                               ; preds = %58, %57
  br label %61

61:                                               ; preds = %60, %30
  br label %62

62:                                               ; preds = %61, %22
  br label %71

63:                                               ; preds = %0
  %64 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ps, i32 0, i32 2), align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @opt, i32 0, i32 1), align 4
  %68 = load i32, i32* %1, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %1, align 4
  br label %70

70:                                               ; preds = %66, %63
  br label %71

71:                                               ; preds = %70, %62
  %72 = load i32, i32* %1, align 4
  ret i32 %72
}

declare dso_local i64 @count_spaces(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
