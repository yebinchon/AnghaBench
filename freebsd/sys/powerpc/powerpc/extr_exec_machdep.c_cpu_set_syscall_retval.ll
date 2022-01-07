; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_cpu_set_syscall_retval.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_exec_machdep.c_cpu_set_syscall_retval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, %struct.trapframe*, %struct.proc* }
%struct.trapframe = type { i64*, i32, i32 }
%struct.proc = type { i32 }

@EJUSTRETURN = common dso_local global i32 0, align 4
@SYS___syscall = common dso_local global i64 0, align 8
@SV_ILP32 = common dso_local global i32 0, align 4
@FIRSTARG = common dso_local global i32 0, align 4
@SYS_lseek = common dso_local global i32 0, align 4
@SYS_freebsd6_lseek = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_set_syscall_retval(%struct.thread* %0, i32 %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.trapframe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @EJUSTRETURN, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %124

13:                                               ; preds = %2
  %14 = load %struct.thread*, %struct.thread** %3, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  %16 = load %struct.proc*, %struct.proc** %15, align 8
  store %struct.proc* %16, %struct.proc** %5, align 8
  %17 = load %struct.thread*, %struct.thread** %3, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 1
  %19 = load %struct.trapframe*, %struct.trapframe** %18, align 8
  store %struct.trapframe* %19, %struct.trapframe** %6, align 8
  %20 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SYS___syscall, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %47

27:                                               ; preds = %13
  %28 = load %struct.proc*, %struct.proc** %5, align 8
  %29 = load i32, i32* @SV_ILP32, align 4
  %30 = call i64 @SV_PROC_FLAG(%struct.proc* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %34 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = load i32, i32* @FIRSTARG, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %35, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @SYS_lseek, align 4
  %44 = icmp ne i32 %42, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %7, align 4
  br label %48

47:                                               ; preds = %27, %13
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %32
  %49 = load i32, i32* %4, align 4
  switch i32 %49, label %109 [
    i32 0, label %50
    i32 128, label %104
  ]

50:                                               ; preds = %48
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %55 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i32, i32* @FIRSTARG, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  store i64 0, i64* %59, align 8
  %60 = load %struct.thread*, %struct.thread** %3, align 8
  %61 = getelementptr inbounds %struct.thread, %struct.thread* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %67 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %66, i32 0, i32 0
  %68 = load i64*, i64** %67, align 8
  %69 = load i32, i32* @FIRSTARG, align 4
  %70 = add nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %68, i64 %71
  store i64 %65, i64* %72, align 8
  br label %99

73:                                               ; preds = %50
  %74 = load %struct.thread*, %struct.thread** %3, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %81 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* @FIRSTARG, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  store i64 %79, i64* %85, align 8
  %86 = load %struct.thread*, %struct.thread** %3, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %93 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %92, i32 0, i32 0
  %94 = load i64*, i64** %93, align 8
  %95 = load i32, i32* @FIRSTARG, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i64, i64* %94, i64 %97
  store i64 %91, i64* %98, align 8
  br label %99

99:                                               ; preds = %73, %53
  %100 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %101 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, -268435457
  store i32 %103, i32* %101, align 8
  br label %124

104:                                              ; preds = %48
  %105 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %106 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, 4
  store i32 %108, i32* %106, align 4
  br label %124

109:                                              ; preds = %48
  %110 = load %struct.proc*, %struct.proc** %5, align 8
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @SV_ABI_ERRNO(%struct.proc* %110, i32 %111)
  %113 = sext i32 %112 to i64
  %114 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %115 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %114, i32 0, i32 0
  %116 = load i64*, i64** %115, align 8
  %117 = load i32, i32* @FIRSTARG, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %113, i64* %119, align 8
  %120 = load %struct.trapframe*, %struct.trapframe** %6, align 8
  %121 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, 268435456
  store i32 %123, i32* %121, align 8
  br label %124

124:                                              ; preds = %12, %109, %104, %99
  ret void
}

declare dso_local i64 @SV_PROC_FLAG(%struct.proc*, i32) #1

declare dso_local i32 @SV_ABI_ERRNO(%struct.proc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
