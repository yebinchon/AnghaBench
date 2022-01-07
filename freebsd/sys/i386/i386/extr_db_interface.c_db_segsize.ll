; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_interface.c_db_segsize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_db_interface.c_db_segsize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.proc_ldt* }
%struct.proc_ldt = type { %struct.segment_descriptor }
%struct.segment_descriptor = type { i64 }
%struct.TYPE_8__ = type { %struct.segment_descriptor }
%struct.TYPE_9__ = type { %struct.segment_descriptor }
%struct.trapframe = type { i32, i32 }

@PSL_VM = common dso_local global i32 0, align 4
@GCODE_SEL = common dso_local global i32 0, align 4
@SEL_KPL = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_10__* null, align 8
@ldt = common dso_local global %struct.TYPE_8__* null, align 8
@gdt = common dso_local global %struct.TYPE_9__* null, align 8
@cpuid = common dso_local global i32 0, align 4
@NGDT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db_segsize(%struct.trapframe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca %struct.proc_ldt*, align 8
  %5 = alloca %struct.segment_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  %7 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %8 = icmp eq %struct.trapframe* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 32, i32* %2, align 4
  br label %69

10:                                               ; preds = %1
  %11 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %12 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PSL_VM, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %10
  store i32 16, i32* %2, align 4
  br label %69

18:                                               ; preds = %10
  %19 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 65535
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @GCODE_SEL, align 4
  %25 = load i32, i32* @SEL_KPL, align 4
  %26 = call i32 @GSEL(i32 %24, i32 %25)
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 32, i32* %2, align 4
  br label %69

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @ISLDT(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @curthread, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.proc_ldt*, %struct.proc_ldt** %38, align 8
  store %struct.proc_ldt* %39, %struct.proc_ldt** %4, align 8
  %40 = load %struct.proc_ldt*, %struct.proc_ldt** %4, align 8
  %41 = icmp ne %struct.proc_ldt* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.proc_ldt*, %struct.proc_ldt** %4, align 8
  %44 = getelementptr inbounds %struct.proc_ldt, %struct.proc_ldt* %43, i32 0, i32 0
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ldt, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  br label %49

49:                                               ; preds = %45, %42
  %50 = phi %struct.segment_descriptor* [ %44, %42 ], [ %48, %45 ]
  store %struct.segment_descriptor* %50, %struct.segment_descriptor** %5, align 8
  br label %59

51:                                               ; preds = %29
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @gdt, align 8
  %53 = load i32, i32* @cpuid, align 4
  %54 = call i64 @PCPU_GET(i32 %53)
  %55 = load i64, i64* @NGDT, align 8
  %56 = mul i64 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  store %struct.segment_descriptor* %58, %struct.segment_descriptor** %5, align 8
  br label %59

59:                                               ; preds = %51, %49
  %60 = load %struct.segment_descriptor*, %struct.segment_descriptor** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i64 @IDXSEL(i32 %61)
  %63 = getelementptr inbounds %struct.segment_descriptor, %struct.segment_descriptor* %60, i64 %62
  %64 = getelementptr inbounds %struct.segment_descriptor, %struct.segment_descriptor* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 16, i32 32
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %59, %28, %17, %9
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @GSEL(i32, i32) #1

declare dso_local i64 @ISLDT(i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i64 @IDXSEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
