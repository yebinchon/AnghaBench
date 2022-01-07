; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_export_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_export_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nat64lsn_cfg = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@NAT64LSN_FLAGSMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.nat64lsn_cfg*, %struct.TYPE_9__*)* @nat64lsn_export_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64lsn_export_config(%struct.ip_fw_chain* %0, %struct.nat64lsn_cfg* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.nat64lsn_cfg*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.nat64lsn_cfg* %1, %struct.nat64lsn_cfg** %5, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %6, align 8
  %7 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %8 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @NAT64LSN_FLAGSMASK, align 4
  %12 = and i32 %10, %11
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %15, i32 0, i32 12
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 15
  store i32 %17, i32* %19, align 4
  %20 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %20, i32 0, i32 11
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 14
  store i32 %22, i32* %24, align 4
  %25 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 13
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 12
  store i32 %32, i32* %34, align 4
  %35 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 11
  store i32 %37, i32* %39, align 4
  %40 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %41 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 10
  store i32 %42, i32* %44, align 4
  %45 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %46 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 9
  store i32 %47, i32* %49, align 4
  %50 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %51 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %61 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @htonl(i32 %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 6
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %68 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %74 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %79 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 3
  store i32 %81, i32* %83, align 4
  %84 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %85 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %5, align 8
  %94 = getelementptr inbounds %struct.nat64lsn_cfg, %struct.nat64lsn_cfg* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @strlcpy(i32 %92, i32 %96, i32 4)
  ret void
}

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
