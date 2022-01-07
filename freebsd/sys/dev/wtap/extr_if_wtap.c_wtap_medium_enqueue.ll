; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap.c_wtap_medium_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/extr_if_wtap.c_wtap_medium_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wtap_vap = type { i32, i32 }
%struct.mbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wtap_vap*, %struct.mbuf*)* @wtap_medium_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wtap_medium_enqueue(%struct.wtap_vap* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.wtap_vap*, align 8
  %4 = alloca %struct.mbuf*, align 8
  store %struct.wtap_vap* %0, %struct.wtap_vap** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %5 = load %struct.wtap_vap*, %struct.wtap_vap** %3, align 8
  %6 = getelementptr inbounds %struct.wtap_vap, %struct.wtap_vap* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.wtap_vap*, %struct.wtap_vap** %3, align 8
  %9 = getelementptr inbounds %struct.wtap_vap, %struct.wtap_vap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %12 = call i32 @medium_transmit(i32 %7, i32 %10, %struct.mbuf* %11)
  ret i32 %12
}

declare dso_local i32 @medium_transmit(i32, i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
