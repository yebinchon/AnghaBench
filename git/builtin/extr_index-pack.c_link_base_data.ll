; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_link_base_data.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_link_base_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base_data = type { i64, i64, %struct.base_data*, %struct.base_data* }
%struct.TYPE_2__ = type { i32, %struct.base_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.base_data*, %struct.base_data*)* @link_base_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @link_base_data(%struct.base_data* %0, %struct.base_data* %1) #0 {
  %3 = alloca %struct.base_data*, align 8
  %4 = alloca %struct.base_data*, align 8
  store %struct.base_data* %0, %struct.base_data** %3, align 8
  store %struct.base_data* %1, %struct.base_data** %4, align 8
  %5 = load %struct.base_data*, %struct.base_data** %3, align 8
  %6 = icmp ne %struct.base_data* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = load %struct.base_data*, %struct.base_data** %4, align 8
  %9 = load %struct.base_data*, %struct.base_data** %3, align 8
  %10 = getelementptr inbounds %struct.base_data, %struct.base_data* %9, i32 0, i32 2
  store %struct.base_data* %8, %struct.base_data** %10, align 8
  br label %15

11:                                               ; preds = %2
  %12 = load %struct.base_data*, %struct.base_data** %4, align 8
  %13 = call %struct.TYPE_2__* (...) @get_thread_data()
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store %struct.base_data* %12, %struct.base_data** %14, align 8
  br label %15

15:                                               ; preds = %11, %7
  %16 = load %struct.base_data*, %struct.base_data** %3, align 8
  %17 = load %struct.base_data*, %struct.base_data** %4, align 8
  %18 = getelementptr inbounds %struct.base_data, %struct.base_data* %17, i32 0, i32 3
  store %struct.base_data* %16, %struct.base_data** %18, align 8
  %19 = load %struct.base_data*, %struct.base_data** %4, align 8
  %20 = getelementptr inbounds %struct.base_data, %struct.base_data* %19, i32 0, i32 2
  store %struct.base_data* null, %struct.base_data** %20, align 8
  %21 = load %struct.base_data*, %struct.base_data** %4, align 8
  %22 = getelementptr inbounds %struct.base_data, %struct.base_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %15
  %26 = load %struct.base_data*, %struct.base_data** %4, align 8
  %27 = getelementptr inbounds %struct.base_data, %struct.base_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.TYPE_2__* (...) @get_thread_data()
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %28
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 8
  br label %35

35:                                               ; preds = %25, %15
  %36 = load %struct.base_data*, %struct.base_data** %4, align 8
  %37 = call i32 @prune_base_data(%struct.base_data* %36)
  ret void
}

declare dso_local %struct.TYPE_2__* @get_thread_data(...) #1

declare dso_local i32 @prune_base_data(%struct.base_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
