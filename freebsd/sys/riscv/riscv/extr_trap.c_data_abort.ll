; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_data_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_data_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64, i64, %struct.proc*, %struct.pcb* }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vm_map }
%struct.vm_map = type { i32 }
%struct.pcb = type { i64 }
%struct.trapframe = type { i64, i64, i32*, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@WARN_SLEEPOK = common dso_local global i32 0, align 4
@WARN_GIANTOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Kernel page fault\00", align 1
@VM_MAX_USER_ADDRESS = common dso_local global i64 0, align 8
@kernel_map = common dso_local global %struct.vm_map* null, align 8
@EXCP_FAULT_STORE = common dso_local global i64 0, align 8
@EXCP_STORE_PAGE_FAULT = common dso_local global i64 0, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@EXCP_INST_PAGE_FAULT = common dso_local global i64 0, align 8
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_FAULT_NORMAL = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Fatal page fault at %#lx: %#016lx\00", align 1
@kdb_active = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trapframe*, i32)* @data_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @data_abort(%struct.trapframe* %0, i32 %1) #0 {
  %3 = alloca %struct.trapframe*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_map*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.pcb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.proc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %3, align 8
  store i32 %1, i32* %4, align 4
  %15 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %15, %struct.thread** %7, align 8
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 2
  %18 = load %struct.proc*, %struct.proc** %17, align 8
  store %struct.proc* %18, %struct.proc** %11, align 8
  %19 = load %struct.thread*, %struct.thread** %7, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 3
  %21 = load %struct.pcb*, %struct.pcb** %20, align 8
  store %struct.pcb* %21, %struct.pcb** %8, align 8
  %22 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %23 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %6, align 8
  %25 = load %struct.thread*, %struct.thread** %7, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %2
  %30 = load %struct.thread*, %struct.thread** %7, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @WARN_SLEEPOK, align 4
  %36 = load i32, i32* @WARN_GIANTOK, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @WITNESS_CHECK(i32 %37, i32* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34, %29, %2
  br label %153

41:                                               ; preds = %34
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %41
  %45 = load %struct.thread*, %struct.thread** %7, align 8
  %46 = getelementptr inbounds %struct.thread, %struct.thread* %45, i32 0, i32 2
  %47 = load %struct.proc*, %struct.proc** %46, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  store %struct.vm_map* %50, %struct.vm_map** %5, align 8
  br label %71

51:                                               ; preds = %41
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @VM_MAX_USER_ADDRESS, align 8
  %54 = icmp sge i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load %struct.vm_map*, %struct.vm_map** @kernel_map, align 8
  store %struct.vm_map* %56, %struct.vm_map** %5, align 8
  br label %70

57:                                               ; preds = %51
  %58 = load %struct.pcb*, %struct.pcb** %8, align 8
  %59 = getelementptr inbounds %struct.pcb, %struct.pcb* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %153

63:                                               ; preds = %57
  %64 = load %struct.thread*, %struct.thread** %7, align 8
  %65 = getelementptr inbounds %struct.thread, %struct.thread* %64, i32 0, i32 2
  %66 = load %struct.proc*, %struct.proc** %65, align 8
  %67 = getelementptr inbounds %struct.proc, %struct.proc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store %struct.vm_map* %69, %struct.vm_map** %5, align 8
  br label %70

70:                                               ; preds = %63, %55
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @trunc_page(i64 %72)
  store i32 %73, i32* %10, align 4
  %74 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %75 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EXCP_FAULT_STORE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %85, label %79

79:                                               ; preds = %71
  %80 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @EXCP_STORE_PAGE_FAULT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %79, %71
  %86 = load i32, i32* @VM_PROT_WRITE, align 4
  store i32 %86, i32* %9, align 4
  br label %98

87:                                               ; preds = %79
  %88 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @EXCP_INST_PAGE_FAULT, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @VM_PROT_EXECUTE, align 4
  store i32 %94, i32* %9, align 4
  br label %97

95:                                               ; preds = %87
  %96 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %95, %93
  br label %98

98:                                               ; preds = %97, %85
  %99 = load %struct.vm_map*, %struct.vm_map** %5, align 8
  %100 = getelementptr inbounds %struct.vm_map, %struct.vm_map* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i64 @pmap_fault_fixup(i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %98
  br label %145

107:                                              ; preds = %98
  %108 = load %struct.vm_map*, %struct.vm_map** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* @VM_FAULT_NORMAL, align 4
  %112 = call i32 @vm_fault_trap(%struct.vm_map* %108, i32 %109, i32 %110, i32 %111, i32* %13, i32* %14)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @KERN_SUCCESS, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %144

116:                                              ; preds = %107
  %117 = load i32, i32* %4, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.thread*, %struct.thread** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %14, align 4
  %123 = load i64, i64* %6, align 8
  %124 = inttoptr i64 %123 to i8*
  %125 = call i32 @call_trapsignal(%struct.thread* %120, i32 %121, i32 %122, i8* %124)
  br label %143

126:                                              ; preds = %116
  %127 = load %struct.pcb*, %struct.pcb** %8, align 8
  %128 = getelementptr inbounds %struct.pcb, %struct.pcb* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %126
  %132 = load i32, i32* %12, align 4
  %133 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %134 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %133, i32 0, i32 2
  %135 = load i32*, i32** %134, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.pcb*, %struct.pcb** %8, align 8
  %138 = getelementptr inbounds %struct.pcb, %struct.pcb* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %141 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  br label %161

142:                                              ; preds = %126
  br label %153

143:                                              ; preds = %119
  br label %144

144:                                              ; preds = %143, %107
  br label %145

145:                                              ; preds = %144, %106
  %146 = load i32, i32* %4, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load %struct.thread*, %struct.thread** %7, align 8
  %150 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %151 = call i32 @userret(%struct.thread* %149, %struct.trapframe* %150)
  br label %152

152:                                              ; preds = %148, %145
  br label %161

153:                                              ; preds = %142, %62, %40
  %154 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %155 = call i32 @dump_regs(%struct.trapframe* %154)
  %156 = load %struct.trapframe*, %struct.trapframe** %3, align 8
  %157 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %156, i32 0, i32 3
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* %6, align 8
  %160 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %158, i64 %159)
  br label %161

161:                                              ; preds = %153, %152, %131
  ret void
}

declare dso_local i64 @WITNESS_CHECK(i32, i32*, i8*) #1

declare dso_local i32 @trunc_page(i64) #1

declare dso_local i64 @pmap_fault_fixup(i32, i32, i32) #1

declare dso_local i32 @vm_fault_trap(%struct.vm_map*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @call_trapsignal(%struct.thread*, i32, i32, i8*) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

declare dso_local i32 @dump_regs(%struct.trapframe*) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
