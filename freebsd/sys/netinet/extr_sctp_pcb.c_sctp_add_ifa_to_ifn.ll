; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_add_ifa_to_ifn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_sctp_pcb.c_sctp_add_ifa_to_ifn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_ifn = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sctp_ifa = type { %struct.TYPE_4__, %struct.sctp_ifn* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@next_ifa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_ifn*, %struct.sctp_ifa*)* @sctp_add_ifa_to_ifn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_add_ifa_to_ifn(%struct.sctp_ifn* %0, %struct.sctp_ifa* %1) #0 {
  %3 = alloca %struct.sctp_ifn*, align 8
  %4 = alloca %struct.sctp_ifa*, align 8
  %5 = alloca i32, align 4
  store %struct.sctp_ifn* %0, %struct.sctp_ifn** %3, align 8
  store %struct.sctp_ifa* %1, %struct.sctp_ifa** %4, align 8
  %6 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %7 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %6, i32 0, i32 6
  %8 = load %struct.sctp_ifa*, %struct.sctp_ifa** %4, align 8
  %9 = load i32, i32* @next_ifa, align 4
  %10 = call i32 @LIST_INSERT_HEAD(i32* %7, %struct.sctp_ifa* %8, i32 %9)
  %11 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %12 = load %struct.sctp_ifa*, %struct.sctp_ifa** %4, align 8
  %13 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %12, i32 0, i32 1
  store %struct.sctp_ifn* %11, %struct.sctp_ifn** %13, align 8
  %14 = load %struct.sctp_ifa*, %struct.sctp_ifa** %4, align 8
  %15 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %14, i32 0, i32 1
  %16 = load %struct.sctp_ifn*, %struct.sctp_ifn** %15, align 8
  %17 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %16, i32 0, i32 5
  %18 = call i32 @atomic_add_int(i32* %17, i32 1)
  %19 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sctp_ifa*, %struct.sctp_ifa** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_ifa, %struct.sctp_ifa* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  switch i32 %28, label %29 [
  ]

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %32 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %37 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @SCTP_REGISTER_INTERFACE(i32 %38, i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.sctp_ifn*, %struct.sctp_ifn** %3, align 8
  %43 = getelementptr inbounds %struct.sctp_ifn, %struct.sctp_ifn* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %30
  ret void
}

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.sctp_ifa*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i32 @SCTP_REGISTER_INTERFACE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
