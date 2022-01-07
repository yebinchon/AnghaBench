; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arprequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_if_ether.c_arprequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.in_addr = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arprequest(%struct.ifnet* %0, %struct.in_addr* %1, %struct.in_addr* %2, i32* %3) #0 {
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.in_addr*, align 8
  %7 = alloca %struct.in_addr*, align 8
  %8 = alloca i32*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.in_addr* %1, %struct.in_addr** %6, align 8
  store %struct.in_addr* %2, %struct.in_addr** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %10 = load %struct.in_addr*, %struct.in_addr** %6, align 8
  %11 = load %struct.in_addr*, %struct.in_addr** %7, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = call i32 @arprequest_internal(%struct.ifnet* %9, %struct.in_addr* %10, %struct.in_addr* %11, i32* %12)
  ret void
}

declare dso_local i32 @arprequest_internal(%struct.ifnet*, %struct.in_addr*, %struct.in_addr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
