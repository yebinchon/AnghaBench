; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpinit_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_if_plip.c_lpinit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, %struct.lp_data* }
%struct.lp_data = type { i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@PPB_DONTWAIT = common dso_local global i32 0, align 4
@PPB_COMPATIBLE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@MLPIPHDRLEN = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@IRQENABLE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @lpinit_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpinit_locked(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.lp_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %9 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %8, i32 0, i32 1
  %10 = load %struct.lp_data*, %struct.lp_data** %9, align 8
  store %struct.lp_data* %10, %struct.lp_data** %4, align 8
  %11 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %12 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ppb_assert_locked(i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PPB_DONTWAIT, align 4
  %21 = call i32 @ppb_request_bus(i32 %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PPB_COMPATIBLE, align 4
  %29 = call i32 @ppb_set_mode(i32 %27, i32 %28)
  %30 = call i64 (...) @lpinittables()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @ppb_release_bus(i32 %33, i32 %34)
  %36 = load i32, i32* @ENOBUFS, align 4
  store i32 %36, i32* %2, align 4
  br label %74

37:                                               ; preds = %26
  %38 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %39 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MLPIPHDRLEN, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @M_DEVBUF, align 4
  %46 = load i32, i32* @M_NOWAIT, align 4
  %47 = call i32* @malloc(i64 %44, i32 %45, i32 %46)
  %48 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %49 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %48, i32 0, i32 0
  store i32* %47, i32** %49, align 8
  %50 = load %struct.lp_data*, %struct.lp_data** %4, align 8
  %51 = getelementptr inbounds %struct.lp_data, %struct.lp_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %37
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @ppb_release_bus(i32 %55, i32 %56)
  %58 = load i32, i32* @ENOBUFS, align 4
  store i32 %58, i32* %2, align 4
  br label %74

59:                                               ; preds = %37
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @IRQENABLE, align 4
  %62 = call i32 @ppb_wctr(i32 %60, i32 %61)
  %63 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %71 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %59, %54, %32, %24
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_assert_locked(i32) #1

declare dso_local i32 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

declare dso_local i64 @lpinittables(...) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

declare dso_local i32* @malloc(i64, i32, i32) #1

declare dso_local i32 @ppb_wctr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
