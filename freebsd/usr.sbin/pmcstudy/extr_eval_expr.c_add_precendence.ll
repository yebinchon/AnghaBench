; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_add_precendence.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_add_precendence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i64, %struct.expression* }

@TYPE_PARN_OPEN = common dso_local global i64 0, align 8
@TYPE_PARN_CLOSE = common dso_local global i64 0, align 8
@TYPE_OP_MULT = common dso_local global i64 0, align 8
@TYPE_OP_DIVIDE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.expression**, %struct.expression*, %struct.expression*)* @add_precendence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_precendence(%struct.expression** %0, %struct.expression* %1, %struct.expression* %2) #0 {
  %4 = alloca %struct.expression**, align 8
  %5 = alloca %struct.expression*, align 8
  %6 = alloca %struct.expression*, align 8
  %7 = alloca %struct.expression*, align 8
  %8 = alloca %struct.expression*, align 8
  %9 = alloca i32, align 4
  store %struct.expression** %0, %struct.expression*** %4, align 8
  store %struct.expression* %1, %struct.expression** %5, align 8
  store %struct.expression* %2, %struct.expression** %6, align 8
  %10 = load %struct.expression*, %struct.expression** %5, align 8
  store %struct.expression* %10, %struct.expression** %7, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %58, %48, %3
  %12 = load %struct.expression*, %struct.expression** %7, align 8
  %13 = load %struct.expression*, %struct.expression** %6, align 8
  %14 = icmp ne %struct.expression* %12, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %11
  %16 = load %struct.expression*, %struct.expression** %7, align 8
  %17 = getelementptr inbounds %struct.expression, %struct.expression* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @TYPE_PARN_OPEN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %9, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %15
  %25 = load %struct.expression*, %struct.expression** %7, align 8
  %26 = getelementptr inbounds %struct.expression, %struct.expression* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TYPE_PARN_CLOSE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %58

36:                                               ; preds = %33
  %37 = load %struct.expression*, %struct.expression** %7, align 8
  %38 = getelementptr inbounds %struct.expression, %struct.expression* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @TYPE_OP_MULT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.expression*, %struct.expression** %7, align 8
  %44 = getelementptr inbounds %struct.expression, %struct.expression* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TYPE_OP_DIVIDE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42, %36
  %49 = load %struct.expression**, %struct.expression*** %4, align 8
  %50 = load %struct.expression*, %struct.expression** %7, align 8
  %51 = call i32 @walk_back_and_insert_paren(%struct.expression** %49, %struct.expression* %50)
  %52 = load %struct.expression*, %struct.expression** %7, align 8
  %53 = call i32 @walk_fwd_and_insert_paren(%struct.expression* %52, %struct.expression** %8)
  %54 = load %struct.expression*, %struct.expression** %8, align 8
  %55 = getelementptr inbounds %struct.expression, %struct.expression* %54, i32 0, i32 1
  %56 = load %struct.expression*, %struct.expression** %55, align 8
  store %struct.expression* %56, %struct.expression** %7, align 8
  br label %11

57:                                               ; preds = %42
  br label %58

58:                                               ; preds = %57, %33
  %59 = load %struct.expression*, %struct.expression** %7, align 8
  %60 = getelementptr inbounds %struct.expression, %struct.expression* %59, i32 0, i32 1
  %61 = load %struct.expression*, %struct.expression** %60, align 8
  store %struct.expression* %61, %struct.expression** %7, align 8
  br label %11

62:                                               ; preds = %11
  ret void
}

declare dso_local i32 @walk_back_and_insert_paren(%struct.expression**, %struct.expression*) #1

declare dso_local i32 @walk_fwd_and_insert_paren(%struct.expression*, %struct.expression**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
