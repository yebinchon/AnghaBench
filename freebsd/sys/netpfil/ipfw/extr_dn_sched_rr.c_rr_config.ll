; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_rr.c_rr_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dn_schk = type { i32 }
%struct.rr_schk = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"called\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_schk*)* @rr_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr_config(%struct.dn_schk* %0) #0 {
  %2 = alloca %struct.dn_schk*, align 8
  %3 = alloca %struct.rr_schk*, align 8
  store %struct.dn_schk* %0, %struct.dn_schk** %2, align 8
  %4 = load %struct.dn_schk*, %struct.dn_schk** %2, align 8
  %5 = getelementptr inbounds %struct.dn_schk, %struct.dn_schk* %4, i64 1
  %6 = bitcast %struct.dn_schk* %5 to %struct.rr_schk*
  store %struct.rr_schk* %6, %struct.rr_schk** %3, align 8
  %7 = call i32 @ND(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.rr_schk*, %struct.rr_schk** %3, align 8
  %9 = getelementptr inbounds %struct.rr_schk, %struct.rr_schk* %8, i32 0, i32 0
  store i32 64, i32* %9, align 4
  %10 = load %struct.rr_schk*, %struct.rr_schk** %3, align 8
  %11 = getelementptr inbounds %struct.rr_schk, %struct.rr_schk* %10, i32 0, i32 1
  store i32 2048, i32* %11, align 4
  %12 = load %struct.rr_schk*, %struct.rr_schk** %3, align 8
  %13 = getelementptr inbounds %struct.rr_schk, %struct.rr_schk* %12, i32 0, i32 2
  store i32 1500, i32* %13, align 4
  ret i32 0
}

declare dso_local i32 @ND(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
