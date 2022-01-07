; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_gdt_mpr_copy_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iir/extr_iir_pci.c_gdt_mpr_copy_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gdt_softc = type { i32, i32, i32 }
%struct.gdt_ccb = type { i32, i64, i32 }

@GDT_D_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"gdt_mpr_copy_cmd(%p) \00", align 1
@GDT_MPR_IC = common dso_local global i32 0, align 4
@GDT_DPR_CMD = common dso_local global i32 0, align 4
@GDT_COMM_QUEUE = common dso_local global i32 0, align 4
@GDT_COMM_Q_SZ = common dso_local global i32 0, align 4
@GDT_OFFSET = common dso_local global i32 0, align 4
@GDT_DPMEM_COMMAND_OFFSET = common dso_local global i32 0, align 4
@GDT_SERV_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdt_mpr_copy_cmd(%struct.gdt_softc* %0, %struct.gdt_ccb* %1) #0 {
  %3 = alloca %struct.gdt_softc*, align 8
  %4 = alloca %struct.gdt_ccb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gdt_softc* %0, %struct.gdt_softc** %3, align 8
  store %struct.gdt_ccb* %1, %struct.gdt_ccb** %4, align 8
  %8 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %9 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @roundup(i32 %10, i32 4)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %13 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %16 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %19 = load i32, i32* @GDT_D_CMD, align 4
  %20 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %21 = bitcast %struct.gdt_softc* %20 to i8*
  %22 = call i32 @GDT_DPRINTF(i32 %19, i8* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %25 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %29 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GDT_MPR_IC, align 4
  %32 = load i32, i32* @GDT_DPR_CMD, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %37 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load i32, i32* %5, align 4
  %41 = ashr i32 %40, 2
  %42 = call i32 @bus_write_region_4(i32 %30, i32 %35, i32* %39, i32 %41)
  %43 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %44 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GDT_MPR_IC, align 4
  %47 = load i32, i32* @GDT_COMM_QUEUE, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @GDT_COMM_Q_SZ, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %48, %51
  %53 = load i32, i32* @GDT_OFFSET, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* @GDT_DPMEM_COMMAND_OFFSET, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = call i32 @htole16(i32 %57)
  %59 = call i32 @bus_write_2(i32 %45, i32 %54, i32 %58)
  %60 = load %struct.gdt_softc*, %struct.gdt_softc** %3, align 8
  %61 = getelementptr inbounds %struct.gdt_softc, %struct.gdt_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @GDT_MPR_IC, align 4
  %64 = load i32, i32* @GDT_COMM_QUEUE, align 4
  %65 = add nsw i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @GDT_COMM_Q_SZ, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %65, %68
  %70 = load i32, i32* @GDT_SERV_ID, align 4
  %71 = add nsw i32 %69, %70
  %72 = load %struct.gdt_ccb*, %struct.gdt_ccb** %4, align 8
  %73 = getelementptr inbounds %struct.gdt_ccb, %struct.gdt_ccb* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @htole16(i32 %74)
  %76 = call i32 @bus_write_2(i32 %62, i32 %71, i32 %75)
  ret void
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @GDT_DPRINTF(i32, i8*) #1

declare dso_local i32 @bus_write_region_4(i32, i32, i32*, i32) #1

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @htole16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
