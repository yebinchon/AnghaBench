; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_TcpMonitorOut.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias.c_TcpMonitorOut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_link = type { i32 }

@TH_RST = common dso_local global i32 0, align 4
@ALIAS_TCP_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@TH_SYN = common dso_local global i32 0, align 4
@TH_FIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.alias_link*)* @TcpMonitorOut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TcpMonitorOut(i32 %0, %struct.alias_link* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.alias_link*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.alias_link* %1, %struct.alias_link** %4, align 8
  %5 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %6 = call i32 @GetStateOut(%struct.alias_link* %5)
  switch i32 %6, label %38 [
    i32 128, label %7
    i32 129, label %26
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TH_RST, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %14 = load i32, i32* @ALIAS_TCP_STATE_DISCONNECTED, align 4
  %15 = call i32 @SetStateOut(%struct.alias_link* %13, i32 %14)
  br label %25

16:                                               ; preds = %7
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TH_SYN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %23 = call i32 @SetStateOut(%struct.alias_link* %22, i32 129)
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24, %12
  br label %38

26:                                               ; preds = %2
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @TH_FIN, align 4
  %29 = load i32, i32* @TH_RST, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.alias_link*, %struct.alias_link** %4, align 8
  %35 = load i32, i32* @ALIAS_TCP_STATE_DISCONNECTED, align 4
  %36 = call i32 @SetStateOut(%struct.alias_link* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %26
  br label %38

38:                                               ; preds = %2, %37, %25
  ret void
}

declare dso_local i32 @GetStateOut(%struct.alias_link*) #1

declare dso_local i32 @SetStateOut(%struct.alias_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
