; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_spppsubr.c_sppp_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sppp = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sppp_flush(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.sppp*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %4 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %5 = call %struct.sppp* @IFP2SP(%struct.ifnet* %4)
  store %struct.sppp* %5, %struct.sppp** %3, align 8
  %6 = load %struct.sppp*, %struct.sppp** %3, align 8
  %7 = call i32 @SPPP_LOCK(%struct.sppp* %6)
  %8 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %9 = call i32 @sppp_flush_unlocked(%struct.ifnet* %8)
  %10 = load %struct.sppp*, %struct.sppp** %3, align 8
  %11 = call i32 @SPPP_UNLOCK(%struct.sppp* %10)
  ret void
}

declare dso_local %struct.sppp* @IFP2SP(%struct.ifnet*) #1

declare dso_local i32 @SPPP_LOCK(%struct.sppp*) #1

declare dso_local i32 @sppp_flush_unlocked(%struct.ifnet*) #1

declare dso_local i32 @SPPP_UNLOCK(%struct.sppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
