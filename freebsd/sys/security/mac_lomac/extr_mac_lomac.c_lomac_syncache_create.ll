; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_syncache_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_syncache_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.label = type { i32 }
%struct.inpcb = type { %struct.label* }
%struct.mac_lomac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.label*, %struct.inpcb*)* @lomac_syncache_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lomac_syncache_create(%struct.label* %0, %struct.inpcb* %1) #0 {
  %3 = alloca %struct.label*, align 8
  %4 = alloca %struct.inpcb*, align 8
  %5 = alloca %struct.mac_lomac*, align 8
  %6 = alloca %struct.mac_lomac*, align 8
  store %struct.label* %0, %struct.label** %3, align 8
  store %struct.inpcb* %1, %struct.inpcb** %4, align 8
  %7 = load %struct.inpcb*, %struct.inpcb** %4, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 0
  %9 = load %struct.label*, %struct.label** %8, align 8
  %10 = call %struct.mac_lomac* @SLOT(%struct.label* %9)
  store %struct.mac_lomac* %10, %struct.mac_lomac** %5, align 8
  %11 = load %struct.label*, %struct.label** %3, align 8
  %12 = call %struct.mac_lomac* @SLOT(%struct.label* %11)
  store %struct.mac_lomac* %12, %struct.mac_lomac** %6, align 8
  %13 = load %struct.mac_lomac*, %struct.mac_lomac** %5, align 8
  %14 = load %struct.mac_lomac*, %struct.mac_lomac** %6, align 8
  %15 = call i32 @lomac_copy(%struct.mac_lomac* %13, %struct.mac_lomac* %14)
  ret void
}

declare dso_local %struct.mac_lomac* @SLOT(%struct.label*) #1

declare dso_local i32 @lomac_copy(%struct.mac_lomac*, %struct.mac_lomac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
