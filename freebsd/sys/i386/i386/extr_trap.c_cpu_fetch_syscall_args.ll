; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_trap.c_cpu_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_trap.c_cpu_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.syscall_args, %struct.trapframe*, %struct.proc* }
%struct.syscall_args = type { i64, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.trapframe = type { i32, i32, i32, i64, i32, i64 }
%struct.proc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.TYPE_4__* }

@SYS_syscall = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@SYS___syscall = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.trapframe*, align 8
  %6 = alloca %struct.syscall_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  %10 = load %struct.thread*, %struct.thread** %3, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 3
  %12 = load %struct.proc*, %struct.proc** %11, align 8
  store %struct.proc* %12, %struct.proc** %4, align 8
  %13 = load %struct.thread*, %struct.thread** %3, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 2
  %15 = load %struct.trapframe*, %struct.trapframe** %14, align 8
  store %struct.trapframe* %15, %struct.trapframe** %5, align 8
  %16 = load %struct.thread*, %struct.thread** %3, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 1
  store %struct.syscall_args* %17, %struct.syscall_args** %6, align 8
  %18 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %19 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %22 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  store i32* %27, i32** %7, align 8
  %28 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %29 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SYS_syscall, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %1
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @fueword(i32* %34, i64* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @EFAULT, align 4
  store i32 %39, i32* %2, align 4
  br label %143

40:                                               ; preds = %33
  %41 = load i64, i64* %8, align 8
  %42 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %43 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32* %45, i32** %7, align 8
  br label %66

46:                                               ; preds = %1
  %47 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %48 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SYS___syscall, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @fueword(i32* %53, i64* %8)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp eq i32 %55, -1
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* @EFAULT, align 4
  store i32 %58, i32* %2, align 4
  br label %143

59:                                               ; preds = %52
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %62 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 4
  store i32* %64, i32** %7, align 8
  br label %65

65:                                               ; preds = %59, %46
  br label %66

66:                                               ; preds = %65, %40
  %67 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %68 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.proc*, %struct.proc** %4, align 8
  %71 = getelementptr inbounds %struct.proc, %struct.proc* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sge i64 %69, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %66
  %77 = load %struct.proc*, %struct.proc** %4, align 8
  %78 = getelementptr inbounds %struct.proc, %struct.proc* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 0
  %83 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %84 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %83, i32 0, i32 3
  store %struct.TYPE_4__* %82, %struct.TYPE_4__** %84, align 8
  br label %97

85:                                               ; preds = %66
  %86 = load %struct.proc*, %struct.proc** %4, align 8
  %87 = getelementptr inbounds %struct.proc, %struct.proc* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %92 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %93
  %95 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %96 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %95, i32 0, i32 3
  store %struct.TYPE_4__* %94, %struct.TYPE_4__** %96, align 8
  br label %97

97:                                               ; preds = %85, %76
  %98 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %99 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %104 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %125

107:                                              ; preds = %97
  %108 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %109 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load i32*, i32** %7, align 8
  %114 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %115 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = inttoptr i64 %116 to i32*
  %118 = load %struct.syscall_args*, %struct.syscall_args** %6, align 8
  %119 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = trunc i64 %122 to i32
  %124 = call i32 @copyin(i32* %113, i32* %117, i32 %123)
  store i32 %124, i32* %9, align 4
  br label %126

125:                                              ; preds = %107, %97
  store i32 0, i32* %9, align 4
  br label %126

126:                                              ; preds = %125, %112
  %127 = load i32, i32* %9, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %141

129:                                              ; preds = %126
  %130 = load %struct.thread*, %struct.thread** %3, align 8
  %131 = getelementptr inbounds %struct.thread, %struct.thread* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  store i32 0, i32* %133, align 4
  %134 = load %struct.trapframe*, %struct.trapframe** %5, align 8
  %135 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.thread*, %struct.thread** %3, align 8
  %138 = getelementptr inbounds %struct.thread, %struct.thread* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 %136, i32* %140, align 4
  br label %141

141:                                              ; preds = %129, %126
  %142 = load i32, i32* %9, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %57, %38
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @fueword(i32*, i64*) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
