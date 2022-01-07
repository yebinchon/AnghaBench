; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_if_fwsubr.c_firewire_busreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_if_fwsubr.c_firewire_busreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.fw_com = type { i32 }
%struct.fw_reass = type { %struct.mbuf* }
%struct.mbuf = type { %struct.mbuf* }

@fr_link = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @firewire_busreset(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.fw_com*, align 8
  %4 = alloca %struct.fw_reass*, align 8
  %5 = alloca %struct.mbuf*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = call %struct.fw_com* @IFP2FWC(%struct.ifnet* %6)
  store %struct.fw_com* %7, %struct.fw_com** %3, align 8
  br label %8

8:                                                ; preds = %34, %1
  %9 = load %struct.fw_com*, %struct.fw_com** %3, align 8
  %10 = getelementptr inbounds %struct.fw_com, %struct.fw_com* %9, i32 0, i32 0
  %11 = call %struct.fw_reass* @STAILQ_FIRST(i32* %10)
  store %struct.fw_reass* %11, %struct.fw_reass** %4, align 8
  %12 = icmp ne %struct.fw_reass* %11, null
  br i1 %12, label %13, label %38

13:                                               ; preds = %8
  %14 = load %struct.fw_com*, %struct.fw_com** %3, align 8
  %15 = getelementptr inbounds %struct.fw_com, %struct.fw_com* %14, i32 0, i32 0
  %16 = load i32, i32* @fr_link, align 4
  %17 = call i32 @STAILQ_REMOVE_HEAD(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %23, %13
  %19 = load %struct.fw_reass*, %struct.fw_reass** %4, align 8
  %20 = getelementptr inbounds %struct.fw_reass, %struct.fw_reass* %19, i32 0, i32 0
  %21 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %22 = icmp ne %struct.mbuf* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.fw_reass*, %struct.fw_reass** %4, align 8
  %25 = getelementptr inbounds %struct.fw_reass, %struct.fw_reass* %24, i32 0, i32 0
  %26 = load %struct.mbuf*, %struct.mbuf** %25, align 8
  store %struct.mbuf* %26, %struct.mbuf** %5, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load %struct.mbuf*, %struct.mbuf** %28, align 8
  %30 = load %struct.fw_reass*, %struct.fw_reass** %4, align 8
  %31 = getelementptr inbounds %struct.fw_reass, %struct.fw_reass* %30, i32 0, i32 0
  store %struct.mbuf* %29, %struct.mbuf** %31, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %33 = call i32 @m_freem(%struct.mbuf* %32)
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.fw_reass*, %struct.fw_reass** %4, align 8
  %36 = load i32, i32* @M_TEMP, align 4
  %37 = call i32 @free(%struct.fw_reass* %35, i32 %36)
  br label %8

38:                                               ; preds = %8
  ret void
}

declare dso_local %struct.fw_com* @IFP2FWC(%struct.ifnet*) #1

declare dso_local %struct.fw_reass* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @free(%struct.fw_reass*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
