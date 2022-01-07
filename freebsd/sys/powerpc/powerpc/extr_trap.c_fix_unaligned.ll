; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_fix_unaligned.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_fix_unaligned.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { double }
%struct.TYPE_8__ = type { i32** }
%struct.trapframe = type { i64, %struct.TYPE_11__, i64, i32* }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@ESR_SPE = common dso_local global i32 0, align 4
@ESR_ST = common dso_local global i32 0, align 4
@vecthread = common dso_local global %struct.thread* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.trapframe*)* @fix_unaligned to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fix_unaligned(%struct.thread* %0, %struct.trapframe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca double*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.trapframe* %1, %struct.trapframe** %5, align 8
  %10 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %11 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @EXC_ALI_OPCODE_INDICATOR(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %76 [
    i32 129, label %17
    i32 128, label %17
  ]

17:                                               ; preds = %2, %2
  %18 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %19 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @EXC_ALI_RST(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.thread*, %struct.thread** %4, align 8
  %25 = getelementptr inbounds %struct.thread, %struct.thread* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  store double* %33, double** %9, align 8
  %34 = load %struct.thread*, %struct.thread** %6, align 8
  %35 = call %struct.thread* @PCPU_GET(%struct.thread* %34)
  store %struct.thread* %35, %struct.thread** %6, align 8
  %36 = load %struct.thread*, %struct.thread** %6, align 8
  %37 = load %struct.thread*, %struct.thread** %4, align 8
  %38 = icmp ne %struct.thread* %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %17
  %40 = load %struct.thread*, %struct.thread** %6, align 8
  %41 = icmp ne %struct.thread* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load %struct.thread*, %struct.thread** %6, align 8
  %44 = call i32 @save_fpu(%struct.thread* %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.thread*, %struct.thread** %4, align 8
  %47 = call i32 @enable_fpu(%struct.thread* %46)
  br label %48

48:                                               ; preds = %45, %17
  %49 = load %struct.thread*, %struct.thread** %4, align 8
  %50 = call i32 @save_fpu(%struct.thread* %49)
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %65

53:                                               ; preds = %48
  %54 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load double*, double** %9, align 8
  %59 = call i64 @copyin(i8* %57, double* %58, i32 8)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 -1, i32* %3, align 4
  br label %77

62:                                               ; preds = %53
  %63 = load %struct.thread*, %struct.thread** %4, align 8
  %64 = call i32 @enable_fpu(%struct.thread* %63)
  br label %75

65:                                               ; preds = %48
  %66 = load double*, double** %9, align 8
  %67 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = inttoptr i64 %69 to i8*
  %71 = call i64 @copyout(double* %66, i8* %70, i32 8)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  store i32 -1, i32* %3, align 4
  br label %77

74:                                               ; preds = %65
  br label %75

75:                                               ; preds = %74, %62
  store i32 0, i32* %3, align 4
  br label %77

76:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %75, %73, %61
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @EXC_ALI_OPCODE_INDICATOR(i32) #1

declare dso_local i32 @EXC_ALI_RST(i32) #1

declare dso_local %struct.thread* @PCPU_GET(%struct.thread*) #1

declare dso_local i32 @save_fpu(%struct.thread*) #1

declare dso_local i32 @enable_fpu(%struct.thread*) #1

declare dso_local i64 @copyin(i8*, double*, i32) #1

declare dso_local i64 @copyout(double*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
