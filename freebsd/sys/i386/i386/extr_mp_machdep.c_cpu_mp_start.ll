; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_machdep.c_cpu_mp_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_mp_machdep.c_cpu_mp_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@MAXCPU = common dso_local global i32 0, align 4
@cpu_apic_ids = common dso_local global i32* null, align 8
@IPI_INVLTLB = common dso_local global i32 0, align 4
@invltlb = common dso_local global i32 0, align 4
@SDT_SYS386IGT = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@GCODE_SEL = common dso_local global i32 0, align 4
@IPI_INVLPG = common dso_local global i32 0, align 4
@invlpg = common dso_local global i32 0, align 4
@IPI_INVLRNG = common dso_local global i32 0, align 4
@invlrng = common dso_local global i32 0, align 4
@IPI_INVLCACHE = common dso_local global i32 0, align 4
@invlcache = common dso_local global i32 0, align 4
@IPI_RENDEZVOUS = common dso_local global i32 0, align 4
@rendezvous = common dso_local global i32 0, align 4
@IPI_BITMAP_VECTOR = common dso_local global i32 0, align 4
@ipi_intr_bitmap_handler = common dso_local global i32 0, align 4
@IPI_STOP = common dso_local global i32 0, align 4
@cpustop = common dso_local global i32 0, align 4
@IPI_SUSPEND = common dso_local global i32 0, align 4
@cpususpend = common dso_local global i32 0, align 4
@boot_cpu_id = common dso_local global i32 0, align 4
@apic_id = common dso_local global i32 0, align 4
@cpu_info = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"BSP's APIC ID doesn't match boot_cpu_id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_mp_start() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %11, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @MAXCPU, align 4
  %5 = icmp slt i32 %3, %4
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load i32*, i32** @cpu_apic_ids, align 8
  %8 = load i32, i32* %1, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  store i32 -1, i32* %10, align 4
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %1, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %2

14:                                               ; preds = %2
  %15 = load i32, i32* @IPI_INVLTLB, align 4
  %16 = load i32, i32* @invltlb, align 4
  %17 = call i32 @IDTVEC(i32 %16)
  %18 = load i32, i32* @SDT_SYS386IGT, align 4
  %19 = load i32, i32* @SEL_KPL, align 4
  %20 = load i32, i32* @GCODE_SEL, align 4
  %21 = load i32, i32* @SEL_KPL, align 4
  %22 = call i32 @GSEL(i32 %20, i32 %21)
  %23 = call i32 @setidt(i32 %15, i32 %17, i32 %18, i32 %19, i32 %22)
  %24 = load i32, i32* @IPI_INVLPG, align 4
  %25 = load i32, i32* @invlpg, align 4
  %26 = call i32 @IDTVEC(i32 %25)
  %27 = load i32, i32* @SDT_SYS386IGT, align 4
  %28 = load i32, i32* @SEL_KPL, align 4
  %29 = load i32, i32* @GCODE_SEL, align 4
  %30 = load i32, i32* @SEL_KPL, align 4
  %31 = call i32 @GSEL(i32 %29, i32 %30)
  %32 = call i32 @setidt(i32 %24, i32 %26, i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* @IPI_INVLRNG, align 4
  %34 = load i32, i32* @invlrng, align 4
  %35 = call i32 @IDTVEC(i32 %34)
  %36 = load i32, i32* @SDT_SYS386IGT, align 4
  %37 = load i32, i32* @SEL_KPL, align 4
  %38 = load i32, i32* @GCODE_SEL, align 4
  %39 = load i32, i32* @SEL_KPL, align 4
  %40 = call i32 @GSEL(i32 %38, i32 %39)
  %41 = call i32 @setidt(i32 %33, i32 %35, i32 %36, i32 %37, i32 %40)
  %42 = load i32, i32* @IPI_INVLCACHE, align 4
  %43 = load i32, i32* @invlcache, align 4
  %44 = call i32 @IDTVEC(i32 %43)
  %45 = load i32, i32* @SDT_SYS386IGT, align 4
  %46 = load i32, i32* @SEL_KPL, align 4
  %47 = load i32, i32* @GCODE_SEL, align 4
  %48 = load i32, i32* @SEL_KPL, align 4
  %49 = call i32 @GSEL(i32 %47, i32 %48)
  %50 = call i32 @setidt(i32 %42, i32 %44, i32 %45, i32 %46, i32 %49)
  %51 = load i32, i32* @IPI_RENDEZVOUS, align 4
  %52 = load i32, i32* @rendezvous, align 4
  %53 = call i32 @IDTVEC(i32 %52)
  %54 = load i32, i32* @SDT_SYS386IGT, align 4
  %55 = load i32, i32* @SEL_KPL, align 4
  %56 = load i32, i32* @GCODE_SEL, align 4
  %57 = load i32, i32* @SEL_KPL, align 4
  %58 = call i32 @GSEL(i32 %56, i32 %57)
  %59 = call i32 @setidt(i32 %51, i32 %53, i32 %54, i32 %55, i32 %58)
  %60 = load i32, i32* @IPI_BITMAP_VECTOR, align 4
  %61 = load i32, i32* @ipi_intr_bitmap_handler, align 4
  %62 = call i32 @IDTVEC(i32 %61)
  %63 = load i32, i32* @SDT_SYS386IGT, align 4
  %64 = load i32, i32* @SEL_KPL, align 4
  %65 = load i32, i32* @GCODE_SEL, align 4
  %66 = load i32, i32* @SEL_KPL, align 4
  %67 = call i32 @GSEL(i32 %65, i32 %66)
  %68 = call i32 @setidt(i32 %60, i32 %62, i32 %63, i32 %64, i32 %67)
  %69 = load i32, i32* @IPI_STOP, align 4
  %70 = load i32, i32* @cpustop, align 4
  %71 = call i32 @IDTVEC(i32 %70)
  %72 = load i32, i32* @SDT_SYS386IGT, align 4
  %73 = load i32, i32* @SEL_KPL, align 4
  %74 = load i32, i32* @GCODE_SEL, align 4
  %75 = load i32, i32* @SEL_KPL, align 4
  %76 = call i32 @GSEL(i32 %74, i32 %75)
  %77 = call i32 @setidt(i32 %69, i32 %71, i32 %72, i32 %73, i32 %76)
  %78 = load i32, i32* @IPI_SUSPEND, align 4
  %79 = load i32, i32* @cpususpend, align 4
  %80 = call i32 @IDTVEC(i32 %79)
  %81 = load i32, i32* @SDT_SYS386IGT, align 4
  %82 = load i32, i32* @SEL_KPL, align 4
  %83 = load i32, i32* @GCODE_SEL, align 4
  %84 = load i32, i32* @SEL_KPL, align 4
  %85 = call i32 @GSEL(i32 %83, i32 %84)
  %86 = call i32 @setidt(i32 %78, i32 %80, i32 %81, i32 %82, i32 %85)
  %87 = load i32, i32* @boot_cpu_id, align 4
  %88 = icmp eq i32 %87, -1
  br i1 %88, label %89, label %97

89:                                               ; preds = %14
  %90 = load i32, i32* @apic_id, align 4
  %91 = call i32 @PCPU_GET(i32 %90)
  store i32 %91, i32* @boot_cpu_id, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_info, align 8
  %93 = load i32, i32* @boot_cpu_id, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  br label %104

97:                                               ; preds = %14
  %98 = load i32, i32* @boot_cpu_id, align 4
  %99 = load i32, i32* @apic_id, align 4
  %100 = call i32 @PCPU_GET(i32 %99)
  %101 = icmp eq i32 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @KASSERT(i32 %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %104

104:                                              ; preds = %97, %89
  %105 = call i32 (...) @topo_probe()
  %106 = call i32 (...) @assign_cpu_ids()
  %107 = call i32 (...) @start_all_aps()
  %108 = call i32 (...) @set_interrupt_apic_ids()
  ret void
}

declare dso_local i32 @setidt(i32, i32, i32, i32, i32) #1

declare dso_local i32 @IDTVEC(i32) #1

declare dso_local i32 @GSEL(i32, i32) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @topo_probe(...) #1

declare dso_local i32 @assign_cpu_ids(...) #1

declare dso_local i32 @start_all_aps(...) #1

declare dso_local i32 @set_interrupt_apic_ids(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
