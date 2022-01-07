; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_alloc_and_hook_expr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmcstudy/extr_eval_expr.c_alloc_and_hook_expr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.expression = type { %struct.expression*, %struct.expression* }

@.str = private unnamed_addr constant [33 x i8] c"Out of memory in exp allocation\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.expression* (%struct.expression**, %struct.expression**)* @alloc_and_hook_expr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.expression* @alloc_and_hook_expr(%struct.expression** %0, %struct.expression** %1) #0 {
  %3 = alloca %struct.expression**, align 8
  %4 = alloca %struct.expression**, align 8
  %5 = alloca %struct.expression*, align 8
  %6 = alloca %struct.expression*, align 8
  store %struct.expression** %0, %struct.expression*** %3, align 8
  store %struct.expression** %1, %struct.expression*** %4, align 8
  %7 = call %struct.expression* @malloc(i32 16)
  store %struct.expression* %7, %struct.expression** %5, align 8
  %8 = load %struct.expression*, %struct.expression** %5, align 8
  %9 = icmp eq %struct.expression* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @exit(i32 -2) #3
  unreachable

13:                                               ; preds = %2
  %14 = load %struct.expression*, %struct.expression** %5, align 8
  %15 = call i32 @memset(%struct.expression* %14, i32 0, i32 16)
  %16 = load %struct.expression**, %struct.expression*** %3, align 8
  %17 = load %struct.expression*, %struct.expression** %16, align 8
  %18 = icmp eq %struct.expression* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load %struct.expression*, %struct.expression** %5, align 8
  %21 = load %struct.expression**, %struct.expression*** %3, align 8
  store %struct.expression* %20, %struct.expression** %21, align 8
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.expression**, %struct.expression*** %4, align 8
  %24 = load %struct.expression*, %struct.expression** %23, align 8
  store %struct.expression* %24, %struct.expression** %6, align 8
  %25 = load %struct.expression*, %struct.expression** %6, align 8
  %26 = icmp eq %struct.expression* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.expression*, %struct.expression** %5, align 8
  %29 = load %struct.expression**, %struct.expression*** %4, align 8
  store %struct.expression* %28, %struct.expression** %29, align 8
  br label %39

30:                                               ; preds = %22
  %31 = load %struct.expression*, %struct.expression** %5, align 8
  %32 = load %struct.expression*, %struct.expression** %6, align 8
  %33 = getelementptr inbounds %struct.expression, %struct.expression* %32, i32 0, i32 1
  store %struct.expression* %31, %struct.expression** %33, align 8
  %34 = load %struct.expression*, %struct.expression** %6, align 8
  %35 = load %struct.expression*, %struct.expression** %5, align 8
  %36 = getelementptr inbounds %struct.expression, %struct.expression* %35, i32 0, i32 0
  store %struct.expression* %34, %struct.expression** %36, align 8
  %37 = load %struct.expression*, %struct.expression** %5, align 8
  %38 = load %struct.expression**, %struct.expression*** %4, align 8
  store %struct.expression* %37, %struct.expression** %38, align 8
  br label %39

39:                                               ; preds = %30, %27
  %40 = load %struct.expression*, %struct.expression** %5, align 8
  ret %struct.expression* %40
}

declare dso_local %struct.expression* @malloc(i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @memset(%struct.expression*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
