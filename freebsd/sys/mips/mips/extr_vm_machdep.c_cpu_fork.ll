; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_vm_machdep.c_cpu_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_vm_machdep.c_cpu_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.thread = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.pcb* }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i64, i8*, i8*, i32, i32, i32 }
%struct.pcb = type { i32* }

@RFPROC = common dso_local global i32 0, align 4
@MDTD_FPUSED = common dso_local global i32 0, align 4
@fpcurthread = common dso_local global i32 0, align 4
@fork_trampoline = common dso_local global i64 0, align 8
@PCB_REG_RA = common dso_local global i64 0, align 8
@CALLFRAME_SIZ = common dso_local global i32 0, align 4
@PCB_REG_SP = common dso_local global i64 0, align 8
@fork_return = common dso_local global i64 0, align 8
@PCB_REG_S0 = common dso_local global i64 0, align 8
@PCB_REG_S1 = common dso_local global i64 0, align 8
@PCB_REG_S2 = common dso_local global i64 0, align 8
@MIPS_SR_KX = common dso_local global i32 0, align 4
@MIPS_SR_UX = common dso_local global i32 0, align 4
@MIPS_SR_INT_MASK = common dso_local global i32 0, align 4
@PCB_REG_SR = common dso_local global i64 0, align 8
@MIPS_SR_INT_IE = common dso_local global i32 0, align 4
@COP2_OWNER_USERLAND = common dso_local global i64 0, align 8
@MDTD_COP2USED = common dso_local global i32 0, align 4
@MIPS_SR_COP_2_BIT = common dso_local global i32 0, align 4
@MIPS_SR_PX = common dso_local global i32 0, align 4
@MIPS_SR_SX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_fork(%struct.thread* %0, %struct.proc* %1, %struct.thread* %2, i32 %3) #0 {
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @RFPROC, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  br label %138

15:                                               ; preds = %4
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  %18 = load %struct.pcb*, %struct.pcb** %17, align 8
  store %struct.pcb* %18, %struct.pcb** %9, align 8
  %19 = load %struct.thread*, %struct.thread** %5, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 2
  %21 = load %struct.pcb*, %struct.pcb** %20, align 8
  %22 = load %struct.pcb*, %struct.pcb** %9, align 8
  %23 = call i32 @bcopy(%struct.pcb* %21, %struct.pcb* %22, i32 8)
  %24 = load %struct.thread*, %struct.thread** %5, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MDTD_FPUSED, align 4
  %29 = and i32 %27, %28
  %30 = load %struct.thread*, %struct.thread** %7, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.thread*, %struct.thread** %7, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = load %struct.thread*, %struct.thread** %7, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  %41 = load %struct.thread*, %struct.thread** %7, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.thread*, %struct.thread** %5, align 8
  %46 = load i32, i32* @fpcurthread, align 4
  %47 = call %struct.thread* @PCPU_GET(i32 %46)
  %48 = icmp eq %struct.thread* %45, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %15
  %50 = load %struct.thread*, %struct.thread** %5, align 8
  %51 = call i32 @MipsSaveCurFPState(%struct.thread* %50)
  br label %52

52:                                               ; preds = %49, %15
  %53 = load i64, i64* @fork_trampoline, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.pcb*, %struct.pcb** %9, align 8
  %57 = getelementptr inbounds %struct.pcb, %struct.pcb* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* @PCB_REG_RA, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %55, i32* %60, align 4
  %61 = load %struct.thread*, %struct.thread** %7, align 8
  %62 = getelementptr inbounds %struct.thread, %struct.thread* %61, i32 0, i32 2
  %63 = load %struct.pcb*, %struct.pcb** %62, align 8
  %64 = ptrtoint %struct.pcb* %63 to i32
  %65 = sext i32 %64 to i64
  %66 = and i64 %65, -4
  %67 = load i32, i32* @CALLFRAME_SIZ, align 4
  %68 = sext i32 %67 to i64
  %69 = sub i64 %66, %68
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.pcb*, %struct.pcb** %9, align 8
  %73 = getelementptr inbounds %struct.pcb, %struct.pcb* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* @PCB_REG_SP, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %71, i32* %76, align 4
  %77 = load i64, i64* @fork_return, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.pcb*, %struct.pcb** %9, align 8
  %81 = getelementptr inbounds %struct.pcb, %struct.pcb* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i64, i64* @PCB_REG_S0, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %79, i32* %84, align 4
  %85 = load %struct.thread*, %struct.thread** %7, align 8
  %86 = ptrtoint %struct.thread* %85 to i64
  %87 = inttoptr i64 %86 to i8*
  %88 = ptrtoint i8* %87 to i32
  %89 = load %struct.pcb*, %struct.pcb** %9, align 8
  %90 = getelementptr inbounds %struct.pcb, %struct.pcb* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @PCB_REG_S1, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %88, i32* %93, align 4
  %94 = load %struct.thread*, %struct.thread** %7, align 8
  %95 = getelementptr inbounds %struct.thread, %struct.thread* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = ptrtoint %struct.TYPE_4__* %96 to i64
  %98 = inttoptr i64 %97 to i8*
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.pcb*, %struct.pcb** %9, align 8
  %101 = getelementptr inbounds %struct.pcb, %struct.pcb* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @PCB_REG_S2, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = call i32 (...) @mips_rd_status()
  %106 = load i32, i32* @MIPS_SR_KX, align 4
  %107 = load i32, i32* @MIPS_SR_UX, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @MIPS_SR_INT_MASK, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %105, %110
  %112 = load %struct.pcb*, %struct.pcb** %9, align 8
  %113 = getelementptr inbounds %struct.pcb, %struct.pcb* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i64, i64* @PCB_REG_SR, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %111, i32* %116, align 4
  %117 = load %struct.thread*, %struct.thread** %5, align 8
  %118 = getelementptr inbounds %struct.thread, %struct.thread* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 7
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.thread*, %struct.thread** %7, align 8
  %122 = getelementptr inbounds %struct.thread, %struct.thread* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 7
  store i32 %120, i32* %123, align 8
  %124 = load %struct.thread*, %struct.thread** %5, align 8
  %125 = getelementptr inbounds %struct.thread, %struct.thread* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.thread*, %struct.thread** %7, align 8
  %129 = getelementptr inbounds %struct.thread, %struct.thread* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 6
  store i32 %127, i32* %130, align 4
  %131 = load i32, i32* @MIPS_SR_INT_IE, align 4
  %132 = load %struct.thread*, %struct.thread** %7, align 8
  %133 = getelementptr inbounds %struct.thread, %struct.thread* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 5
  store i32 %131, i32* %134, align 8
  %135 = load %struct.thread*, %struct.thread** %7, align 8
  %136 = getelementptr inbounds %struct.thread, %struct.thread* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  store i32 1, i32* %137, align 4
  br label %138

138:                                              ; preds = %52, %14
  ret void
}

declare dso_local i32 @bcopy(%struct.pcb*, %struct.pcb*, i32) #1

declare dso_local %struct.thread* @PCPU_GET(i32) #1

declare dso_local i32 @MipsSaveCurFPState(%struct.thread*) #1

declare dso_local i32 @mips_rd_status(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
