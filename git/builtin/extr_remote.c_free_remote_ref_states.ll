; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_remote.c_free_remote_ref_states.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_remote.c_free_remote_ref_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_states = type { i32, i32, i32, i32, i32 }

@clear_push_info = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ref_states*)* @free_remote_ref_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_remote_ref_states(%struct.ref_states* %0) #0 {
  %2 = alloca %struct.ref_states*, align 8
  store %struct.ref_states* %0, %struct.ref_states** %2, align 8
  %3 = load %struct.ref_states*, %struct.ref_states** %2, align 8
  %4 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %3, i32 0, i32 4
  %5 = call i32 @string_list_clear(i32* %4, i32 0)
  %6 = load %struct.ref_states*, %struct.ref_states** %2, align 8
  %7 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %6, i32 0, i32 3
  %8 = call i32 @string_list_clear(i32* %7, i32 1)
  %9 = load %struct.ref_states*, %struct.ref_states** %2, align 8
  %10 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %9, i32 0, i32 2
  %11 = call i32 @string_list_clear(i32* %10, i32 0)
  %12 = load %struct.ref_states*, %struct.ref_states** %2, align 8
  %13 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %12, i32 0, i32 1
  %14 = call i32 @string_list_clear(i32* %13, i32 0)
  %15 = load %struct.ref_states*, %struct.ref_states** %2, align 8
  %16 = getelementptr inbounds %struct.ref_states, %struct.ref_states* %15, i32 0, i32 0
  %17 = load i32, i32* @clear_push_info, align 4
  %18 = call i32 @string_list_clear_func(i32* %16, i32 %17)
  ret void
}

declare dso_local i32 @string_list_clear(i32*, i32) #1

declare dso_local i32 @string_list_clear_func(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
