; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_disable_promisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_if_em.c_em_disable_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.ifnet = type { i32 }

@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_RCTL_UPE = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAX_NUM_MULTICAST_ADDRESSES = common dso_local global i32 0, align 4
@E1000_RCTL_MPE = common dso_local global i32 0, align 4
@E1000_RCTL_SBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @em_disable_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @em_disable_promisc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = call %struct.ifnet* @iflib_get_ifp(i32 %9)
  store %struct.ifnet* %10, %struct.ifnet** %4, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load i32, i32* @E1000_RCTL, align 4
  %14 = call i32 @E1000_READ_REG(i32* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @E1000_RCTL_UPE, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %20 = call i32 @if_getflags(%struct.ifnet* %19)
  %21 = load i32, i32* @IFF_ALLMULTI, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %1
  %27 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %28 = call i32 @if_llmaddr_count(%struct.ifnet* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @MAX_NUM_MULTICAST_ADDRESSES, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* @E1000_RCTL_MPE, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @E1000_RCTL_SBP, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %5, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %5, align 4
  %43 = load %struct.adapter*, %struct.adapter** %3, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load i32, i32* @E1000_RCTL, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @E1000_WRITE_REG(i32* %44, i32 %45, i32 %46)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local %struct.ifnet* @iflib_get_ifp(i32) #1

declare dso_local i32 @E1000_READ_REG(i32*, i32) #1

declare dso_local i32 @if_getflags(%struct.ifnet*) #1

declare dso_local i32 @if_llmaddr_count(%struct.ifnet*) #1

declare dso_local i32 @E1000_WRITE_REG(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
