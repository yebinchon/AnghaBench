; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbdisconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet6/extr_in6_pcb.c_in6_pcbdisconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { i32, i64, i32, i32 }

@IPV6_FLOWLABEL_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_pcbdisconnect(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %3 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %4 = call i32 @INP_WLOCK_ASSERT(%struct.inpcb* %3)
  %5 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %6 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @INP_HASH_WLOCK_ASSERT(i32 %7)
  %9 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %10 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %9, i32 0, i32 2
  %11 = ptrtoint i32* %10 to i32
  %12 = call i32 @bzero(i32 %11, i32 4)
  %13 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %14 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @IPV6_FLOWLABEL_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %18 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %22 = call i32 @in_pcbrehash(%struct.inpcb* %21)
  ret void
}

declare dso_local i32 @INP_WLOCK_ASSERT(%struct.inpcb*) #1

declare dso_local i32 @INP_HASH_WLOCK_ASSERT(i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @in_pcbrehash(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
