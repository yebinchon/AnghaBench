; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_resolve_base.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_resolve_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_entry = type { i32 }
%struct.base_data = type { i32*, %struct.object_entry* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_entry*)* @resolve_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resolve_base(%struct.object_entry* %0) #0 {
  %2 = alloca %struct.object_entry*, align 8
  %3 = alloca %struct.base_data*, align 8
  store %struct.object_entry* %0, %struct.object_entry** %2, align 8
  %4 = call %struct.base_data* (...) @alloc_base_data()
  store %struct.base_data* %4, %struct.base_data** %3, align 8
  %5 = load %struct.object_entry*, %struct.object_entry** %2, align 8
  %6 = load %struct.base_data*, %struct.base_data** %3, align 8
  %7 = getelementptr inbounds %struct.base_data, %struct.base_data* %6, i32 0, i32 1
  store %struct.object_entry* %5, %struct.object_entry** %7, align 8
  %8 = load %struct.base_data*, %struct.base_data** %3, align 8
  %9 = getelementptr inbounds %struct.base_data, %struct.base_data* %8, i32 0, i32 0
  store i32* null, i32** %9, align 8
  %10 = load %struct.base_data*, %struct.base_data** %3, align 8
  %11 = call i32 @find_unresolved_deltas(%struct.base_data* %10)
  ret void
}

declare dso_local %struct.base_data* @alloc_base_data(...) #1

declare dso_local i32 @find_unresolved_deltas(%struct.base_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
