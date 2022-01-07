; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_exec_setregs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_machdep.c_exec_setregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.trapframe*, %struct.trapframe*, %struct.proc* }
%struct.trapframe = type { i32, i64, i64, i8** }
%struct.proc = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.image_params = type { i64 }
%struct.pcb = type { i32, i64, i64, i8** }

@SPOFF = common dso_local global i8* null, align 8
@TSTATE_IE = common dso_local global i32 0, align 4
@TSTATE_PEF = common dso_local global i32 0, align 4
@TSTATE_MM_TSO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exec_setregs(%struct.thread* %0, %struct.image_params* %1, i8* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.image_params*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.trapframe*, align 8
  %8 = alloca %struct.pcb*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.image_params* %1, %struct.image_params** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 2
  %13 = load %struct.proc*, %struct.proc** %12, align 8
  store %struct.proc* %13, %struct.proc** %9, align 8
  %14 = load %struct.proc*, %struct.proc** %9, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  store i32* null, i32** %16, align 8
  %17 = load %struct.proc*, %struct.proc** %9, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %3
  %23 = load %struct.proc*, %struct.proc** %9, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @utrap_free(i32* %26)
  %28 = load %struct.proc*, %struct.proc** %9, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.thread*, %struct.thread** %4, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 1
  %34 = load %struct.trapframe*, %struct.trapframe** %33, align 8
  %35 = bitcast %struct.trapframe* %34 to %struct.pcb*
  store %struct.pcb* %35, %struct.pcb** %8, align 8
  %36 = load %struct.thread*, %struct.thread** %4, align 8
  %37 = getelementptr inbounds %struct.thread, %struct.thread* %36, i32 0, i32 0
  %38 = load %struct.trapframe*, %struct.trapframe** %37, align 8
  store %struct.trapframe* %38, %struct.trapframe** %7, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i8* @rounddown(i8* %39, i32 16)
  store i8* %40, i8** %10, align 8
  %41 = load %struct.pcb*, %struct.pcb** %8, align 8
  %42 = bitcast %struct.pcb* %41 to %struct.trapframe*
  %43 = call i32 @bzero(%struct.trapframe* %42, i32 32)
  %44 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %45 = call i32 @bzero(%struct.trapframe* %44, i32 32)
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 3
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = load %struct.proc*, %struct.proc** %9, align 8
  %52 = getelementptr inbounds %struct.proc, %struct.proc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 3
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  store i8* %55, i8** %59, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** @SPOFF, align 8
  %62 = ptrtoint i8* %60 to i64
  %63 = ptrtoint i8* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sub i64 %64, 4
  %66 = inttoptr i64 %65 to i8*
  %67 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 3
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 6
  store i8* %66, i8** %70, align 8
  %71 = load %struct.image_params*, %struct.image_params** %5, align 8
  %72 = getelementptr inbounds %struct.image_params, %struct.image_params* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %73, 4
  %75 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %76 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.image_params*, %struct.image_params** %5, align 8
  %78 = getelementptr inbounds %struct.image_params, %struct.image_params* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @TSTATE_IE, align 4
  %83 = load i32, i32* @TSTATE_PEF, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @TSTATE_MM_TSO, align 4
  %86 = or i32 %84, %85
  %87 = load %struct.trapframe*, %struct.trapframe** %7, align 8
  %88 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  ret void
}

declare dso_local i32 @utrap_free(i32*) #1

declare dso_local i8* @rounddown(i8*, i32) #1

declare dso_local i32 @bzero(%struct.trapframe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
