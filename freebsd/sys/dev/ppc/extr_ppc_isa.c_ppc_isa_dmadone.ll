; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_isa.c_ppc_isa_dmadone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppc/extr_ppc_isa.c_ppc_isa_dmadone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppc_data = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppc_data*)* @ppc_isa_dmadone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppc_isa_dmadone(%struct.ppc_data* %0) #0 {
  %2 = alloca %struct.ppc_data*, align 8
  store %struct.ppc_data* %0, %struct.ppc_data** %2, align 8
  %3 = load %struct.ppc_data*, %struct.ppc_data** %2, align 8
  %4 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ppc_data*, %struct.ppc_data** %2, align 8
  %7 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ppc_data*, %struct.ppc_data** %2, align 8
  %10 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ppc_data*, %struct.ppc_data** %2, align 8
  %13 = getelementptr inbounds %struct.ppc_data, %struct.ppc_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @isa_dmadone(i32 %5, i32 %8, i32 %11, i32 %14)
  ret void
}

declare dso_local i32 @isa_dmadone(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
