; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ruleset.c_pf_anchor_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/pf/extr_pf_ruleset.c_pf_anchor_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_rule = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@.str = private unnamed_addr constant [35 x i8] c"pf_anchor_remove: broken refcount\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pf_anchor_remove(%struct.pf_rule* %0) #0 {
  %2 = alloca %struct.pf_rule*, align 8
  store %struct.pf_rule* %0, %struct.pf_rule** %2, align 8
  %3 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %4 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = icmp eq %struct.TYPE_2__* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %10 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %18 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %17, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %18, align 8
  br label %36

19:                                               ; preds = %8
  %20 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %21 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %19
  %28 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %29 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = call i32 @pf_remove_if_empty_ruleset(i32* %31)
  br label %33

33:                                               ; preds = %27, %19
  %34 = load %struct.pf_rule*, %struct.pf_rule** %2, align 8
  %35 = getelementptr inbounds %struct.pf_rule, %struct.pf_rule* %34, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %35, align 8
  br label %36

36:                                               ; preds = %33, %15, %7
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @pf_remove_if_empty_ruleset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
