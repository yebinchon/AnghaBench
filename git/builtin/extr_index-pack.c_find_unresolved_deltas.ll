; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_unresolved_deltas.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_unresolved_deltas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.base_data = type { %struct.base_data* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.base_data*)* @find_unresolved_deltas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_unresolved_deltas(%struct.base_data* %0) #0 {
  %2 = alloca %struct.base_data*, align 8
  %3 = alloca %struct.base_data*, align 8
  %4 = alloca %struct.base_data*, align 8
  store %struct.base_data* %0, %struct.base_data** %2, align 8
  store %struct.base_data* null, %struct.base_data** %4, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load %struct.base_data*, %struct.base_data** %2, align 8
  %7 = load %struct.base_data*, %struct.base_data** %4, align 8
  %8 = call %struct.base_data* @find_unresolved_deltas_1(%struct.base_data* %6, %struct.base_data* %7)
  store %struct.base_data* %8, %struct.base_data** %3, align 8
  %9 = load %struct.base_data*, %struct.base_data** %3, align 8
  %10 = icmp ne %struct.base_data* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load %struct.base_data*, %struct.base_data** %2, align 8
  store %struct.base_data* %12, %struct.base_data** %4, align 8
  %13 = load %struct.base_data*, %struct.base_data** %3, align 8
  store %struct.base_data* %13, %struct.base_data** %2, align 8
  br label %25

14:                                               ; preds = %5
  %15 = load %struct.base_data*, %struct.base_data** %2, align 8
  %16 = call i32 @free(%struct.base_data* %15)
  %17 = load %struct.base_data*, %struct.base_data** %4, align 8
  store %struct.base_data* %17, %struct.base_data** %2, align 8
  %18 = load %struct.base_data*, %struct.base_data** %2, align 8
  %19 = icmp ne %struct.base_data* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  ret void

21:                                               ; preds = %14
  %22 = load %struct.base_data*, %struct.base_data** %2, align 8
  %23 = getelementptr inbounds %struct.base_data, %struct.base_data* %22, i32 0, i32 0
  %24 = load %struct.base_data*, %struct.base_data** %23, align 8
  store %struct.base_data* %24, %struct.base_data** %4, align 8
  br label %25

25:                                               ; preds = %21, %11
  br label %5
}

declare dso_local %struct.base_data* @find_unresolved_deltas_1(%struct.base_data*, %struct.base_data*) #1

declare dso_local i32 @free(%struct.base_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
