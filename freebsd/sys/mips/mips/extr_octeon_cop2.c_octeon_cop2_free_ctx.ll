; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_octeon_cop2.c_octeon_cop2_free_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_octeon_cop2.c_octeon_cop2_free_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_cop2_state = type { i32 }

@ctxzone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @octeon_cop2_free_ctx(%struct.octeon_cop2_state* %0) #0 {
  %2 = alloca %struct.octeon_cop2_state*, align 8
  store %struct.octeon_cop2_state* %0, %struct.octeon_cop2_state** %2, align 8
  %3 = load i32, i32* @ctxzone, align 4
  %4 = load %struct.octeon_cop2_state*, %struct.octeon_cop2_state** %2, align 8
  %5 = call i32 @uma_zfree(i32 %3, %struct.octeon_cop2_state* %4)
  ret void
}

declare dso_local i32 @uma_zfree(i32, %struct.octeon_cop2_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
