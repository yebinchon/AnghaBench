; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_machdep.c_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcb = type { i32, i32, i64, i64, i64, i64, i64, i64, i8* }
%struct.TYPE_8__ = type { i64 }
%struct.thread = type { %struct.TYPE_7__*, %struct.pcb*, %struct.trapframe* }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32* }
%struct.trapframe = type { i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32 }
%struct.image_params = type { i32, i32 }

@_udatasel = common dso_local global i8* null, align 8
@dt_lock = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@PSL_USER = common dso_local global i32 0, align 4
@_ucodesel = common dso_local global i32 0, align 4
@PCB_DBREGS = common dso_local global i32 0, align 4
@curpcb = common dso_local global %struct.pcb* null, align 8
@__INITIAL_NPXCW__ = common dso_local global i32 0, align 4
@elf32_freebsd_sysvec = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_setregs(%struct.thread* %0, %struct.image_params* %1, i32 %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.pcb*, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 2
  %12 = load %struct.trapframe*, %struct.trapframe** %11, align 8
  store %struct.trapframe* %12, %struct.trapframe** %7, align 8
  %13 = load %struct.thread*, %struct.thread** %4, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.pcb*, %struct.pcb** %14, align 8
  store %struct.pcb* %15, %struct.pcb** %8, align 8
  %16 = load i8*, i8** @_udatasel, align 8
  %17 = load %struct.pcb*, %struct.pcb** %8, align 8
  %18 = getelementptr inbounds %struct.pcb, %struct.pcb* %17, i32 0, i32 8
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @_udatasel, align 8
  %20 = call i32 @load_gs(i8* %19)
  %21 = call i32 @mtx_lock_spin(i32* @dt_lock)
  %22 = load %struct.thread*, %struct.thread** %4, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.thread*, %struct.thread** %4, align 8
  %31 = call i32 @user_ldt_free(%struct.thread* %30)
  br label %34

32:                                               ; preds = %3
  %33 = call i32 @mtx_unlock_spin(i32* @dt_lock)
  br label %34

34:                                               ; preds = %32, %29
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = call i32 @set_fsbase(%struct.thread* %35, i32 0)
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = call i32 @set_gsbase(%struct.thread* %37, i32 0)
  %39 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %40 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PSL_T, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %9, align 4
  %44 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %45 = bitcast %struct.trapframe* %44 to i8*
  %46 = call i32 @bzero(i8* %45, i32 56)
  %47 = load %struct.image_params*, %struct.image_params** %5, align 8
  %48 = getelementptr inbounds %struct.image_params, %struct.image_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 8
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @PSL_USER, align 4
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %59 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i8*, i8** @_udatasel, align 8
  %61 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %62 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i8*, i8** @_udatasel, align 8
  %64 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %65 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %64, i32 0, i32 5
  store i8* %63, i8** %65, align 8
  %66 = load i8*, i8** @_udatasel, align 8
  %67 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @_udatasel, align 8
  %70 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %71 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @_ucodesel, align 4
  %73 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %74 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.image_params*, %struct.image_params** %5, align 8
  %76 = getelementptr inbounds %struct.image_params, %struct.image_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %79 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.pcb*, %struct.pcb** %8, align 8
  %81 = getelementptr inbounds %struct.pcb, %struct.pcb* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @PCB_DBREGS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %111

86:                                               ; preds = %34
  %87 = load %struct.pcb*, %struct.pcb** %8, align 8
  %88 = getelementptr inbounds %struct.pcb, %struct.pcb* %87, i32 0, i32 7
  store i64 0, i64* %88, align 8
  %89 = load %struct.pcb*, %struct.pcb** %8, align 8
  %90 = getelementptr inbounds %struct.pcb, %struct.pcb* %89, i32 0, i32 6
  store i64 0, i64* %90, align 8
  %91 = load %struct.pcb*, %struct.pcb** %8, align 8
  %92 = getelementptr inbounds %struct.pcb, %struct.pcb* %91, i32 0, i32 5
  store i64 0, i64* %92, align 8
  %93 = load %struct.pcb*, %struct.pcb** %8, align 8
  %94 = getelementptr inbounds %struct.pcb, %struct.pcb* %93, i32 0, i32 4
  store i64 0, i64* %94, align 8
  %95 = load %struct.pcb*, %struct.pcb** %8, align 8
  %96 = getelementptr inbounds %struct.pcb, %struct.pcb* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.pcb*, %struct.pcb** %8, align 8
  %98 = getelementptr inbounds %struct.pcb, %struct.pcb* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load %struct.pcb*, %struct.pcb** %8, align 8
  %100 = load %struct.pcb*, %struct.pcb** @curpcb, align 8
  %101 = icmp eq %struct.pcb* %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %86
  %103 = call i32 (...) @reset_dbregs()
  br label %104

104:                                              ; preds = %102, %86
  %105 = load i32, i32* @PCB_DBREGS, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.pcb*, %struct.pcb** %8, align 8
  %108 = getelementptr inbounds %struct.pcb, %struct.pcb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %104, %34
  %112 = load i32, i32* @__INITIAL_NPXCW__, align 4
  %113 = load %struct.pcb*, %struct.pcb** %8, align 8
  %114 = getelementptr inbounds %struct.pcb, %struct.pcb* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load %struct.thread*, %struct.thread** %4, align 8
  %116 = call i32 @fpstate_drop(%struct.thread* %115)
  ret void
}

declare dso_local i32 @load_gs(i8*) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @user_ldt_free(%struct.thread*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @set_fsbase(%struct.thread*, i32) #1

declare dso_local i32 @set_gsbase(%struct.thread*, i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @reset_dbregs(...) #1

declare dso_local i32 @fpstate_drop(%struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
