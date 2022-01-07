; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_reset_epp_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc.c_ppc_reset_epp_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc_data*)* @ppc_reset_epp_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_reset_epp_timeout(%struct.ppc_data* %0) #0 {
  %2 = alloca %struct.ppc_data*, align 8
  %3 = alloca i8, align 1
  store %struct.ppc_data* %0, %struct.ppc_data** %2, align 8
  %4 = load %struct.ppc_data*, %struct.ppc_data** %2, align 8
  %5 = call signext i8 @r_str(%struct.ppc_data* %4)
  store i8 %5, i8* %3, align 1
  %6 = load %struct.ppc_data*, %struct.ppc_data** %2, align 8
  %7 = load i8, i8* %3, align 1
  %8 = sext i8 %7 to i32
  %9 = or i32 %8, 1
  %10 = trunc i32 %9 to i8
  %11 = call i32 @w_str(%struct.ppc_data* %6, i8 signext %10)
  %12 = load %struct.ppc_data*, %struct.ppc_data** %2, align 8
  %13 = load i8, i8* %3, align 1
  %14 = sext i8 %13 to i32
  %15 = and i32 %14, 254
  %16 = trunc i32 %15 to i8
  %17 = call i32 @w_str(%struct.ppc_data* %12, i8 signext %16)
  ret void
}

declare dso_local signext i8 @r_str(%struct.ppc_data*) #1

declare dso_local i32 @w_str(%struct.ppc_data*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
