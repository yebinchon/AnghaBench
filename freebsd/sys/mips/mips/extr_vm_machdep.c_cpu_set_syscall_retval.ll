; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_vm_machdep.c_cpu_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_vm_machdep.c_cpu_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.TYPE_2__*, i32, %struct.trapframe* }
%struct.TYPE_2__ = type { i32 }
%struct.trapframe = type { i32, i32, i32, i32, i32, i32 }

@SYS___syscall = common dso_local global i32 0, align 4
@SYS_syscall = common dso_local global i32 0, align 4
@_QUAD_LOWWORD = common dso_local global i64 0, align 8
@SYS_lseek = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.thread*, %struct.thread** %3, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 3
  %10 = load %struct.trapframe*, %struct.trapframe** %9, align 8
  store %struct.trapframe* %10, %struct.trapframe** %5, align 8
  %11 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %12 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @SYS___syscall, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SYS_syscall, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  br label %52

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @SYS___syscall, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load i64, i64* @_QUAD_LOWWORD, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %38 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %42 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i32 [ %39, %36 ], [ %43, %40 ]
  store i32 %45, i32* %6, align 4
  br label %50

46:                                               ; preds = %30
  %47 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %46, %44
  br label %51

51:                                               ; preds = %50, %26
  br label %52

52:                                               ; preds = %51, %22
  %53 = load i32, i32* %4, align 4
  switch i32 %53, label %109 [
    i32 0, label %54
    i32 128, label %100
    i32 129, label %108
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %82

57:                                               ; preds = %54
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @SYS_lseek, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %82

61:                                               ; preds = %57
  %62 = load %struct.thread*, %struct.thread** %3, align 8
  %63 = getelementptr inbounds %struct.thread, %struct.thread* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %68 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i64, i64* @_QUAD_LOWWORD, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %61
  %72 = load %struct.thread*, %struct.thread** %3, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %78 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %71, %61
  %80 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 4
  store i32 0, i32* %81, align 4
  br label %99

82:                                               ; preds = %57, %54
  %83 = load %struct.thread*, %struct.thread** %3, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %89 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.thread*, %struct.thread** %3, align 8
  %91 = getelementptr inbounds %struct.thread, %struct.thread* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %96 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %98 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %97, i32 0, i32 4
  store i32 0, i32* %98, align 4
  br label %99

99:                                               ; preds = %82, %79
  br label %136

100:                                              ; preds = %52
  %101 = load %struct.thread*, %struct.thread** %3, align 8
  %102 = getelementptr inbounds %struct.thread, %struct.thread* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %107 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %106, i32 0, i32 5
  store i32 %105, i32* %107, align 4
  br label %136

108:                                              ; preds = %52
  br label %136

109:                                              ; preds = %52
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @SYS_lseek, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %112
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %119 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i64, i64* @_QUAD_LOWWORD, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* %4, align 4
  %124 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %125 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %116
  %127 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %128 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %127, i32 0, i32 4
  store i32 1, i32* %128, align 4
  br label %135

129:                                              ; preds = %112, %109
  %130 = load i32, i32* %4, align 4
  %131 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %132 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %131, i32 0, i32 0
  store i32 %130, i32* %132, align 4
  %133 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %134 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %133, i32 0, i32 4
  store i32 1, i32* %134, align 4
  br label %135

135:                                              ; preds = %129, %126
  br label %136

136:                                              ; preds = %135, %108, %100, %99
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
