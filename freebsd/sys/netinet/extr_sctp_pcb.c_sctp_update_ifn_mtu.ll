; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_update_ifn_mtu.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_update_ifn_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ifn = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_update_ifn_mtu(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sctp_ifn*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.sctp_ifn* @sctp_find_ifn(i8* null, i32 %6)
  store %struct.sctp_ifn* %7, %struct.sctp_ifn** %5, align 8
  %8 = load %struct.sctp_ifn*, %struct.sctp_ifn** %5, align 8
  %9 = icmp ne %struct.sctp_ifn* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.sctp_ifn*, %struct.sctp_ifn** %5, align 8
  %13 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %2
  ret void
}

declare dso_local %struct.sctp_ifn* @sctp_find_ifn(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
