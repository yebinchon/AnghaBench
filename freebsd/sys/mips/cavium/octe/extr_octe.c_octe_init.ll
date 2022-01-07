; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_octe.c_octe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32 (%struct.ifnet*)*, %struct.ifnet* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @octe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octe_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 3
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %18 = call i32 @octe_stop(%struct.TYPE_3__* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %21, align 8
  %23 = icmp ne i32 (%struct.ifnet*)* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32 (%struct.ifnet*)*, i32 (%struct.ifnet*)** %26, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = call i32 %27(%struct.ifnet* %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %32 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = xor i32 %33, %36
  %38 = load i32, i32* @IFF_ALLMULTI, align 4
  %39 = load i32, i32* @IFF_MULTICAST, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IFF_PROMISC, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %47 = call i32 @cvm_oct_common_set_multicast_list(%struct.ifnet* %46)
  br label %48

48:                                               ; preds = %45, %30
  %49 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %50 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %51 = call i32 @IF_LLADDR(%struct.ifnet* %50)
  %52 = call i32 @cvm_oct_common_set_mac_address(%struct.ifnet* %49, i32 %51)
  %53 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %54 = call i32 @cvm_oct_common_poll(%struct.ifnet* %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %48
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @device_get_softc(i32* %62)
  %64 = call i32 @mii_mediachg(i32 %63)
  br label %65

65:                                               ; preds = %59, %48
  %66 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %67 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, %72
  store i32 %76, i32* %74, align 4
  ret void
}

declare dso_local i32 @octe_stop(%struct.TYPE_3__*) #1

declare dso_local i32 @cvm_oct_common_set_multicast_list(%struct.ifnet*) #1

declare dso_local i32 @cvm_oct_common_set_mac_address(%struct.ifnet*, i32) #1

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @cvm_oct_common_poll(%struct.ifnet*) #1

declare dso_local i32 @mii_mediachg(i32) #1

declare dso_local i32 @device_get_softc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
