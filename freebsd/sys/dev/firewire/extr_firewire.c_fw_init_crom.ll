; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_init_crom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_firewire.c_fw_init_crom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firewire_comm = type { %struct.TYPE_10__*, i32*, %struct.crom_src*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.crom_src }
%struct.crom_src = type { i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@CSR_BUS_NAME_IEEE1394 = common dso_local global i32 0, align 4
@MAXROM_4 = common dso_local global i32 0, align 4
@FW_GENERATION_CHANGEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firewire_comm*)* @fw_init_crom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_init_crom(%struct.firewire_comm* %0) #0 {
  %2 = alloca %struct.firewire_comm*, align 8
  %3 = alloca %struct.crom_src*, align 8
  store %struct.firewire_comm* %0, %struct.firewire_comm** %2, align 8
  %4 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %5 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %4, i32 0, i32 0
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store %struct.crom_src* %7, %struct.crom_src** %3, align 8
  %8 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %9 = call i32 @bzero(%struct.crom_src* %8, i32 80)
  %10 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %11 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store i32 4, i32* %12, align 8
  %13 = load i32, i32* @CSR_BUS_NAME_IEEE1394, align 4
  %14 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %15 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 11
  store i32 %13, i32* %16, align 8
  %17 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %18 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %21 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  store i32 1, i32* %22, align 4
  %23 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %24 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 2
  store i32 1, i32* %25, align 8
  %26 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %27 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i32 1, i32* %28, align 4
  %29 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %30 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 10
  store i64 0, i64* %31, align 8
  %32 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %33 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  store i32 100, i32* %34, align 8
  %35 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %36 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %39 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 9
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @MAXROM_4, align 4
  %42 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %43 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 8
  store i32 %41, i32* %44, align 4
  %45 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %46 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 7
  store i32 2, i32* %47, align 8
  %48 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %49 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %52 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 6
  store i32 %50, i32* %53, align 4
  %54 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %55 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %59 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  store i32 %57, i32* %61, align 4
  %62 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %63 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %67 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 5
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %71 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %70, i32 0, i32 0
  %72 = call i32 @STAILQ_INIT(i32* %71)
  %73 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %74 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %75 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %74, i32 0, i32 2
  store %struct.crom_src* %73, %struct.crom_src** %75, align 8
  %76 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %77 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load %struct.firewire_comm*, %struct.firewire_comm** %2, align 8
  %81 = getelementptr inbounds %struct.firewire_comm, %struct.firewire_comm* %80, i32 0, i32 1
  store i32* %79, i32** %81, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.crom_src*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
