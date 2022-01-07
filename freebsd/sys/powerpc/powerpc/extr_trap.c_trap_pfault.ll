; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_trap_pfault.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_trap.c_trap_pfault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.trapframe = type { i64, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@EXC_ISI = common dso_local global i64 0, align 8
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@SRR1_ISI_PFAULT = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@DSISR_STORE = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"trap_pfault: vmspace  NULL\00", align 1
@kernel_map = common dso_local global i32* null, align 8
@VM_FAULT_NORMAL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@ESR_ST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trapframe*, i32, i32*, i32*)* @trap_pfault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trap_pfault(%struct.trapframe* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.proc*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %17, %struct.thread** %11, align 8
  %18 = load %struct.thread*, %struct.thread** %11, align 8
  %19 = getelementptr inbounds %struct.thread, %struct.thread* %18, i32 0, i32 0
  %20 = load %struct.proc*, %struct.proc** %19, align 8
  store %struct.proc* %20, %struct.proc** %12, align 8
  %21 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %22 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EXC_ISI, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %4
  %27 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %28 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @VM_PROT_EXECUTE, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @SRR1_ISI_PFAULT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load i32, i32* @VM_PROT_READ, align 4
  %39 = load i32, i32* %14, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %37, %26
  br label %59

42:                                               ; preds = %4
  %43 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %44 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %47 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DSISR_STORE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* @VM_PROT_WRITE, align 4
  store i32 %55, i32* %14, align 4
  br label %58

56:                                               ; preds = %42
  %57 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %57, i32* %14, align 4
  br label %58

58:                                               ; preds = %56, %54
  br label %59

59:                                               ; preds = %58, %41
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %59
  %63 = load %struct.proc*, %struct.proc** %12, align 8
  %64 = getelementptr inbounds %struct.proc, %struct.proc* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = icmp ne %struct.TYPE_8__* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @KASSERT(i32 %67, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %69 = load %struct.proc*, %struct.proc** %12, align 8
  %70 = getelementptr inbounds %struct.proc, %struct.proc* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  store i32* %72, i32** %13, align 8
  br label %90

73:                                               ; preds = %59
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @pmap_decode_kernel_ptr(i32 %74, i32* %16, i32* %10)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %111

79:                                               ; preds = %73
  %80 = load i32, i32* %16, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.proc*, %struct.proc** %12, align 8
  %84 = getelementptr inbounds %struct.proc, %struct.proc* %83, i32 0, i32 0
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  store i32* %86, i32** %13, align 8
  br label %89

87:                                               ; preds = %79
  %88 = load i32*, i32** @kernel_map, align 8
  store i32* %88, i32** %13, align 8
  br label %89

89:                                               ; preds = %87, %82
  br label %90

90:                                               ; preds = %89, %62
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %14, align 4
  %94 = load i32, i32* @VM_FAULT_NORMAL, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = call i32 @vm_fault_trap(i32* %91, i32 %92, i32 %93, i32 %94, i32* %95, i32* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = load i32, i32* @KERN_SUCCESS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %90
  store i32 1, i32* %5, align 4
  br label %111

102:                                              ; preds = %90
  %103 = load i32, i32* %7, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %107 = call i64 @handle_onfault(%struct.trapframe* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  store i32 1, i32* %5, align 4
  br label %111

110:                                              ; preds = %105, %102
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %109, %101, %78
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_decode_kernel_ptr(i32, i32*, i32*) #1

declare dso_local i32 @vm_fault_trap(i32*, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @handle_onfault(%struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
