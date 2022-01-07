; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_udp_usrreq.c_udp_newudpcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_udp_usrreq.c_udp_newudpcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.udpcb* }
%struct.udpcb = type { i32 }

@V_udpcb_zone = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @udp_newudpcb(%struct.inpcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.udpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  %5 = load i32, i32* @V_udpcb_zone, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.udpcb* @uma_zalloc(i32 %5, i32 %8)
  store %struct.udpcb* %9, %struct.udpcb** %4, align 8
  %10 = load %struct.udpcb*, %struct.udpcb** %4, align 8
  %11 = icmp eq %struct.udpcb* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOBUFS, align 4
  store i32 %13, i32* %2, align 4
  br label %18

14:                                               ; preds = %1
  %15 = load %struct.udpcb*, %struct.udpcb** %4, align 8
  %16 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %17 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %16, i32 0, i32 0
  store %struct.udpcb* %15, %struct.udpcb** %17, align 8
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %14, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.udpcb* @uma_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
