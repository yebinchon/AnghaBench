; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_alias_skinny_reg_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_alias_skinny_reg_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.RegisterMessage = type { i64 }
%struct.ip = type { i32 }
%struct.tcphdr = type { i32, i64 }
%struct.alias_link = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.RegisterMessage*, %struct.ip*, %struct.tcphdr*, %struct.alias_link*, i32)* @alias_skinny_reg_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alias_skinny_reg_msg(%struct.RegisterMessage* %0, %struct.ip* %1, %struct.tcphdr* %2, %struct.alias_link* %3, i32 %4) #0 {
  %6 = alloca %struct.RegisterMessage*, align 8
  %7 = alloca %struct.ip*, align 8
  %8 = alloca %struct.tcphdr*, align 8
  %9 = alloca %struct.alias_link*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_2__, align 8
  store %struct.RegisterMessage* %0, %struct.RegisterMessage** %6, align 8
  store %struct.ip* %1, %struct.ip** %7, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %8, align 8
  store %struct.alias_link* %3, %struct.alias_link** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.alias_link*, %struct.alias_link** %9, align 8
  %14 = call i64 @GetAliasAddress(%struct.alias_link* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.RegisterMessage*, %struct.RegisterMessage** %6, align 8
  %19 = getelementptr inbounds %struct.RegisterMessage, %struct.RegisterMessage* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %21 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.ip*, %struct.ip** %7, align 8
  %23 = call i64 @TcpChecksum(%struct.ip* %22)
  %24 = load %struct.tcphdr*, %struct.tcphdr** %8, align 8
  %25 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %24, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  ret i32 0
}

declare dso_local i64 @GetAliasAddress(%struct.alias_link*) #1

declare dso_local i64 @TcpChecksum(%struct.ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
