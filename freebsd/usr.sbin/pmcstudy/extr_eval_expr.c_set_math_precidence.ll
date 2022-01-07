; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_set_math_precidence.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_set_math_precidence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i64, %struct.expression* }

@TYPE_PARN_CLOSE = common dso_local global i64 0, align 8
@TYPE_PARN_OPEN = common dso_local global i64 0, align 8
@TYPE_OP_PLUS = common dso_local global i64 0, align 8
@TYPE_OP_MINUS = common dso_local global i64 0, align 8
@TYPE_OP_DIVIDE = common dso_local global i64 0, align 8
@TYPE_OP_MULT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expression**, %struct.expression*, %struct.expression**)* @set_math_precidence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_math_precidence(%struct.expression** %0, %struct.expression* %1, %struct.expression** %2) #0 {
  %4 = alloca %struct.expression**, align 8
  %5 = alloca %struct.expression*, align 8
  %6 = alloca %struct.expression**, align 8
  %7 = alloca %struct.expression*, align 8
  %8 = alloca %struct.expression*, align 8
  %9 = alloca %struct.expression*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.expression** %0, %struct.expression*** %4, align 8
  store %struct.expression* %1, %struct.expression** %5, align 8
  store %struct.expression** %2, %struct.expression*** %6, align 8
  store %struct.expression* null, %struct.expression** %9, align 8
  %12 = load %struct.expression*, %struct.expression** %5, align 8
  store %struct.expression* %12, %struct.expression** %7, align 8
  store %struct.expression* %12, %struct.expression** %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %84, %46, %3
  %14 = load %struct.expression*, %struct.expression** %7, align 8
  %15 = icmp ne %struct.expression* %14, null
  br i1 %15, label %16, label %88

16:                                               ; preds = %13
  %17 = load %struct.expression*, %struct.expression** %7, align 8
  %18 = getelementptr inbounds %struct.expression, %struct.expression* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TYPE_PARN_CLOSE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %40

22:                                               ; preds = %16
  %23 = load %struct.expression**, %struct.expression*** %6, align 8
  %24 = icmp ne %struct.expression** %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load %struct.expression*, %struct.expression** %7, align 8
  %27 = load %struct.expression**, %struct.expression*** %6, align 8
  store %struct.expression* %26, %struct.expression** %27, align 8
  br label %28

28:                                               ; preds = %25, %22
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load %struct.expression**, %struct.expression*** %4, align 8
  %36 = load %struct.expression*, %struct.expression** %8, align 8
  %37 = load %struct.expression*, %struct.expression** %9, align 8
  %38 = call i32 @add_precendence(%struct.expression** %35, %struct.expression* %36, %struct.expression* %37)
  br label %39

39:                                               ; preds = %34, %31, %28
  br label %98

40:                                               ; preds = %16
  %41 = load %struct.expression*, %struct.expression** %7, align 8
  %42 = getelementptr inbounds %struct.expression, %struct.expression* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TYPE_PARN_OPEN, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %40
  %47 = load %struct.expression**, %struct.expression*** %4, align 8
  %48 = load %struct.expression*, %struct.expression** %7, align 8
  %49 = getelementptr inbounds %struct.expression, %struct.expression* %48, i32 0, i32 1
  %50 = load %struct.expression*, %struct.expression** %49, align 8
  call void @set_math_precidence(%struct.expression** %47, %struct.expression* %50, %struct.expression** %9)
  %51 = load %struct.expression*, %struct.expression** %9, align 8
  store %struct.expression* %51, %struct.expression** %7, align 8
  br label %13

52:                                               ; preds = %40
  %53 = load %struct.expression*, %struct.expression** %7, align 8
  %54 = getelementptr inbounds %struct.expression, %struct.expression* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TYPE_OP_PLUS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.expression*, %struct.expression** %7, align 8
  %60 = getelementptr inbounds %struct.expression, %struct.expression* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TYPE_OP_MINUS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %58, %52
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %83

67:                                               ; preds = %58
  %68 = load %struct.expression*, %struct.expression** %7, align 8
  %69 = getelementptr inbounds %struct.expression, %struct.expression* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @TYPE_OP_DIVIDE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %79, label %73

73:                                               ; preds = %67
  %74 = load %struct.expression*, %struct.expression** %7, align 8
  %75 = getelementptr inbounds %struct.expression, %struct.expression* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @TYPE_OP_MULT, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %73, %67
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  br label %82

82:                                               ; preds = %79, %73
  br label %83

83:                                               ; preds = %82, %64
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.expression*, %struct.expression** %7, align 8
  %86 = getelementptr inbounds %struct.expression, %struct.expression* %85, i32 0, i32 1
  %87 = load %struct.expression*, %struct.expression** %86, align 8
  store %struct.expression* %87, %struct.expression** %7, align 8
  br label %13

88:                                               ; preds = %13
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %88
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.expression**, %struct.expression*** %4, align 8
  %96 = load %struct.expression*, %struct.expression** %8, align 8
  %97 = call i32 @add_precendence(%struct.expression** %95, %struct.expression* %96, %struct.expression* null)
  br label %98

98:                                               ; preds = %39, %94, %91, %88
  ret void
}

declare dso_local i32 @add_precendence(%struct.expression**, %struct.expression*, %struct.expression*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
