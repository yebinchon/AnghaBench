; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_one_setup_partial.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_fetch_one_setup_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }
%struct.remote = type { i32 }

@filter_options = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.remote*)* @fetch_one_setup_partial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fetch_one_setup_partial(%struct.remote* %0) #0 {
  %2 = alloca %struct.remote*, align 8
  store %struct.remote* %0, %struct.remote** %2, align 8
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @filter_options, i32 0, i32 1), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %30

6:                                                ; preds = %1
  %7 = call i32 (...) @has_promisor_remote()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %6
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @filter_options, i32 0, i32 0), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  br label %30

13:                                               ; preds = %9, %6
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @filter_options, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.remote*, %struct.remote** %2, align 8
  %18 = getelementptr inbounds %struct.remote, %struct.remote* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @partial_clone_register(i32 %19, %struct.TYPE_4__* @filter_options)
  br label %30

21:                                               ; preds = %13
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @filter_options, i32 0, i32 0), align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.remote*, %struct.remote** %2, align 8
  %26 = getelementptr inbounds %struct.remote, %struct.remote* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @partial_clone_get_default_filter_spec(%struct.TYPE_4__* @filter_options, i32 %27)
  br label %29

29:                                               ; preds = %24, %21
  br label %30

30:                                               ; preds = %29, %16, %12, %5
  ret void
}

declare dso_local i32 @has_promisor_remote(...) #1

declare dso_local i32 @partial_clone_register(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @partial_clone_get_default_filter_spec(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
