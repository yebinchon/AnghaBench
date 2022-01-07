; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_alias_skinny_startmedia.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_alias_skinny_startmedia.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.StartMediaTransmission = type { i32 }
%struct.ip = type { i32 }
%struct.tcphdr = type { i32 }
%struct.alias_link = type { i32 }
%struct.in_addr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.StartMediaTransmission*, %struct.ip*, %struct.tcphdr*, %struct.alias_link*, i32, i32)* @alias_skinny_startmedia to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alias_skinny_startmedia(%struct.StartMediaTransmission* %0, %struct.ip* %1, %struct.tcphdr* %2, %struct.alias_link* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.StartMediaTransmission*, align 8
  %8 = alloca %struct.ip*, align 8
  %9 = alloca %struct.tcphdr*, align 8
  %10 = alloca %struct.alias_link*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.in_addr, align 4
  %14 = alloca %struct.in_addr, align 4
  store %struct.StartMediaTransmission* %0, %struct.StartMediaTransmission** %7, align 8
  store %struct.ip* %1, %struct.ip** %8, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %9, align 8
  store %struct.alias_link* %3, %struct.alias_link** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load %struct.ip*, %struct.ip** %8, align 8
  %16 = load %struct.tcphdr*, %struct.tcphdr** %9, align 8
  %17 = load %struct.alias_link*, %struct.alias_link** %10, align 8
  %18 = load i32, i32* %12, align 4
  %19 = load %struct.StartMediaTransmission*, %struct.StartMediaTransmission** %7, align 8
  %20 = getelementptr inbounds %struct.StartMediaTransmission, %struct.StartMediaTransmission* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %13, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %11, align 4
  %24 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %14, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
