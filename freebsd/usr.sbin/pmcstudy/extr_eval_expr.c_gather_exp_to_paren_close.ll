; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_gather_exp_to_paren_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_gather_exp_to_paren_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { i64, %struct.expression* }

@TYPE_PARN_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expression* (%struct.expression*, double*)* @gather_exp_to_paren_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expression* @gather_exp_to_paren_close(%struct.expression* %0, double* %1) #0 {
  %3 = alloca %struct.expression*, align 8
  %4 = alloca double*, align 8
  %5 = alloca %struct.expression*, align 8
  %6 = alloca double, align 8
  store %struct.expression* %0, %struct.expression** %3, align 8
  store double* %1, double** %4, align 8
  %7 = load %struct.expression*, %struct.expression** %3, align 8
  %8 = getelementptr inbounds %struct.expression, %struct.expression* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @TYPE_PARN_OPEN, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.expression*, %struct.expression** %3, align 8
  %14 = getelementptr inbounds %struct.expression, %struct.expression* %13, i32 0, i32 1
  %15 = load %struct.expression*, %struct.expression** %14, align 8
  %16 = call %struct.expression* @gather_exp_to_paren_close(%struct.expression* %15, double* %6)
  store %struct.expression* %16, %struct.expression** %5, align 8
  %17 = load double, double* %6, align 8
  %18 = load double*, double** %4, align 8
  store double %17, double* %18, align 8
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.expression*, %struct.expression** %3, align 8
  %21 = call double @run_expr(%struct.expression* %20, i32 0, %struct.expression** %5)
  %22 = load double*, double** %4, align 8
  store double %21, double* %22, align 8
  br label %23

23:                                               ; preds = %19, %12
  %24 = load %struct.expression*, %struct.expression** %5, align 8
  ret %struct.expression* %24
}

declare dso_local double @run_expr(%struct.expression*, i32, %struct.expression**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
