; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_thunder_bgx_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_thunder_bgx.c_thunder_bgx_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { %struct.bgx* }
%struct.bgx = type { i64, i64, i32 }

@bgx_vnic = common dso_local global i32** null, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@M_BGX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @thunder_bgx_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_bgx_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lmac*, align 8
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.lmac* @device_get_softc(i32 %6)
  store %struct.lmac* %7, %struct.lmac** %3, align 8
  %8 = load %struct.lmac*, %struct.lmac** %3, align 8
  %9 = getelementptr inbounds %struct.lmac, %struct.lmac* %8, i32 0, i32 0
  %10 = load %struct.bgx*, %struct.bgx** %9, align 8
  store %struct.bgx* %10, %struct.bgx** %4, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %21, %1
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.bgx*, %struct.bgx** %4, align 8
  %14 = getelementptr inbounds %struct.bgx, %struct.bgx* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %12, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.bgx*, %struct.bgx** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @bgx_lmac_disable(%struct.bgx* %18, i64 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %5, align 8
  br label %11

24:                                               ; preds = %11
  %25 = load i32**, i32*** @bgx_vnic, align 8
  %26 = load %struct.bgx*, %struct.bgx** %4, align 8
  %27 = getelementptr inbounds %struct.bgx, %struct.bgx* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %25, i64 %28
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* %2, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load %struct.bgx*, %struct.bgx** %4, align 8
  %33 = getelementptr inbounds %struct.bgx, %struct.bgx* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @rman_get_rid(i32 %34)
  %36 = load %struct.bgx*, %struct.bgx** %4, align 8
  %37 = getelementptr inbounds %struct.bgx, %struct.bgx* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bus_release_resource(i32 %30, i32 %31, i32 %35, i32 %38)
  %40 = load %struct.bgx*, %struct.bgx** %4, align 8
  %41 = load i32, i32* @M_BGX, align 4
  %42 = call i32 @free(%struct.bgx* %40, i32 %41)
  %43 = load i32, i32* %2, align 4
  %44 = call i32 @pci_disable_busmaster(i32 %43)
  ret i32 0
}

declare dso_local %struct.lmac* @device_get_softc(i32) #1

declare dso_local i32 @bgx_lmac_disable(%struct.bgx*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_rid(i32) #1

declare dso_local i32 @free(%struct.bgx*, i32) #1

declare dso_local i32 @pci_disable_busmaster(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
