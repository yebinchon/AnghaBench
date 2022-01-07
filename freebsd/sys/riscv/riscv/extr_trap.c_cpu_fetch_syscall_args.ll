; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_cpu_fetch_syscall_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_cpu_fetch_syscall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, %struct.TYPE_4__*, %struct.syscall_args, %struct.proc* }
%struct.TYPE_4__ = type { i64*, i32* }
%struct.syscall_args = type { i64, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.proc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }

@NARGREG = common dso_local global i32 0, align 4
@SYS_syscall = common dso_local global i64 0, align 8
@SYS___syscall = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"TODO: Could we have more then %d args?\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_fetch_syscall_args(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.syscall_args*, align 8
  %6 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %7 = load i32, i32* @NARGREG, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 3
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %3, align 8
  %11 = load %struct.thread*, %struct.thread** %2, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 2
  store %struct.syscall_args* %12, %struct.syscall_args** %5, align 8
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32* %18, i32** %4, align 8
  %19 = load %struct.thread*, %struct.thread** %2, align 8
  %20 = getelementptr inbounds %struct.thread, %struct.thread* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %27 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %29 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SYS_syscall, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %39, label %33

33:                                               ; preds = %1
  %34 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %35 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SYS___syscall, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %33, %1
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  %42 = load i32, i32* %40, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %45 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %39, %33
  %49 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %50 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.proc*, %struct.proc** %3, align 8
  %53 = getelementptr inbounds %struct.proc, %struct.proc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp uge i64 %51, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load %struct.proc*, %struct.proc** %3, align 8
  %60 = getelementptr inbounds %struct.proc, %struct.proc* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 0
  %65 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %66 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %65, i32 0, i32 3
  store %struct.TYPE_6__* %64, %struct.TYPE_6__** %66, align 8
  br label %79

67:                                               ; preds = %48
  %68 = load %struct.proc*, %struct.proc** %3, align 8
  %69 = getelementptr inbounds %struct.proc, %struct.proc* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %74 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i64 %75
  %77 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %78 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %77, i32 0, i32 3
  store %struct.TYPE_6__* %76, %struct.TYPE_6__** %78, align 8
  br label %79

79:                                               ; preds = %67, %58
  %80 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %81 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %86 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %88 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i32*, i32** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = mul i64 %92, 4
  %94 = trunc i64 %93 to i32
  %95 = call i32 @memcpy(i32 %89, i32* %90, i32 %94)
  %96 = load %struct.syscall_args*, %struct.syscall_args** %5, align 8
  %97 = getelementptr inbounds %struct.syscall_args, %struct.syscall_args* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* %6, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %79
  %102 = load i32, i32* @NARGREG, align 4
  %103 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %101, %79
  %105 = load %struct.thread*, %struct.thread** %2, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 0
  %107 = load i64*, i64** %106, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.thread*, %struct.thread** %2, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 1
  store i64 0, i64* %112, align 8
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
