; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_sense.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32, i32, i32 }
%struct.unpcb = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"uipc_sense: unp == NULL\00", align 1
@NODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.stat*)* @uipc_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_sense(%struct.socket* %0, %struct.stat* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.stat*, align 8
  %5 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.stat* %1, %struct.stat** %4, align 8
  %6 = load %struct.socket*, %struct.socket** %3, align 8
  %7 = call %struct.unpcb* @sotounpcb(%struct.socket* %6)
  store %struct.unpcb* %7, %struct.unpcb** %5, align 8
  %8 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %9 = icmp ne %struct.unpcb* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.socket*, %struct.socket** %3, align 8
  %13 = getelementptr inbounds %struct.socket, %struct.socket* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.stat*, %struct.stat** %4, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 2
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @NODEV, align 4
  %19 = load %struct.stat*, %struct.stat** %4, align 8
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %22 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.stat*, %struct.stat** %4, align 8
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret i32 0
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
