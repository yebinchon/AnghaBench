; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_Abandon.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_Abandon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ngdevice = type { i32 }
%struct.physical = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (%struct.ngdevice*, %struct.physical*)* @ng_Abandon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @ng_Abandon(%struct.ngdevice* %0, %struct.physical* %1) #0 {
  %3 = alloca %struct.ngdevice*, align 8
  %4 = alloca %struct.physical*, align 8
  store %struct.ngdevice* %0, %struct.ngdevice** %3, align 8
  store %struct.physical* %1, %struct.physical** %4, align 8
  %5 = load %struct.ngdevice*, %struct.ngdevice** %3, align 8
  %6 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @close(i32 %7)
  %9 = load %struct.physical*, %struct.physical** %4, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @close(i32 %11)
  %13 = load %struct.physical*, %struct.physical** %4, align 8
  %14 = getelementptr inbounds %struct.physical, %struct.physical* %13, i32 0, i32 0
  store i32 -2, i32* %14, align 4
  %15 = load %struct.ngdevice*, %struct.ngdevice** %3, align 8
  %16 = call i32 @free(%struct.ngdevice* %15)
  ret %struct.device* null
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @free(%struct.ngdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
