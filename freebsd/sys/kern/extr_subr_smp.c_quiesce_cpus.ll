; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_smp.c_quiesce_cpus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_smp.c_quiesce_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAXCPU = common dso_local global i32 0, align 4
@mp_maxid = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quiesce_cpus(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcpu*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @MAXCPU, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %16

16:                                               ; preds = %40, %3
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @mp_maxid, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %16
  %21 = load i32, i32* %11, align 4
  %22 = call i32 @CPU_ISSET(i32 %21, i32* %4)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @CPU_ABSENT(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %20
  br label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %11, align 4
  %31 = call %struct.pcpu* @pcpu_find(i32 %30)
  store %struct.pcpu* %31, %struct.pcpu** %7, align 8
  %32 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %33 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %15, i64 %38
  store i64 %36, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %28
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %11, align 4
  br label %16

43:                                               ; preds = %16
  store i32 0, i32* %11, align 4
  br label %44

44:                                               ; preds = %88, %43
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @mp_maxid, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %91

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = call i32 @CPU_ISSET(i32 %49, i32* %4)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @CPU_ABSENT(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %52, %48
  br label %88

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  %59 = call %struct.pcpu* @pcpu_find(i32 %58)
  store %struct.pcpu* %59, %struct.pcpu** %7, align 8
  %60 = load i32, i32* @curthread, align 4
  %61 = call i32 @thread_lock(i32 %60)
  %62 = load i32, i32* @curthread, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @sched_bind(i32 %62, i32 %63)
  %65 = load i32, i32* @curthread, align 4
  %66 = call i32 @thread_unlock(i32 %65)
  br label %67

67:                                               ; preds = %86, %57
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %15, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.pcpu*, %struct.pcpu** %7, align 8
  %73 = getelementptr inbounds %struct.pcpu, %struct.pcpu* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %71, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %67
  %79 = load i32, i32* %6, align 4
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @tsleep(i32 (i32, i8*, i32)* @quiesce_cpus, i32 %79, i8* %80, i32 1)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @EWOULDBLOCK, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %92

86:                                               ; preds = %78
  store i32 0, i32* %10, align 4
  br label %67

87:                                               ; preds = %67
  br label %88

88:                                               ; preds = %87, %56
  %89 = load i32, i32* %11, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %11, align 4
  br label %44

91:                                               ; preds = %44
  br label %92

92:                                               ; preds = %91, %85
  %93 = load i32, i32* @curthread, align 4
  %94 = call i32 @thread_lock(i32 %93)
  %95 = load i32, i32* @curthread, align 4
  %96 = call i32 @sched_unbind(i32 %95)
  %97 = load i32, i32* @curthread, align 4
  %98 = call i32 @thread_unlock(i32 %97)
  %99 = load i32, i32* %10, align 4
  %100 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %100)
  ret i32 %99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CPU_ISSET(i32, i32*) #2

declare dso_local i64 @CPU_ABSENT(i32) #2

declare dso_local %struct.pcpu* @pcpu_find(i32) #2

declare dso_local i32 @thread_lock(i32) #2

declare dso_local i32 @sched_bind(i32, i32) #2

declare dso_local i32 @thread_unlock(i32) #2

declare dso_local i32 @tsleep(i32 (i32, i8*, i32)*, i32, i8*, i32) #2

declare dso_local i32 @sched_unbind(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
