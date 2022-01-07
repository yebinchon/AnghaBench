; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sys___semctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_sem.c_sys___semctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.__semctl_args = type { i32, i32, i32, %union.semun* }
%union.semun = type { %union.semun* }
%struct.semid_ds = type { %struct.semid_ds*, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys___semctl(%struct.thread* %0, %struct.__semctl_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.__semctl_args*, align 8
  %6 = alloca %struct.semid_ds, align 8
  %7 = alloca %union.semun, align 8
  %8 = alloca %union.semun, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.__semctl_args* %1, %struct.__semctl_args** %5, align 8
  %11 = load %struct.__semctl_args*, %struct.__semctl_args** %5, align 8
  %12 = getelementptr inbounds %struct.__semctl_args, %struct.__semctl_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %24 [
    i32 130, label %14
    i32 132, label %14
    i32 131, label %14
    i32 133, label %14
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %2, %2, %2, %2, %2, %2
  %15 = load %struct.__semctl_args*, %struct.__semctl_args** %5, align 8
  %16 = getelementptr inbounds %struct.__semctl_args, %struct.__semctl_args* %15, i32 0, i32 3
  %17 = load %union.semun*, %union.semun** %16, align 8
  %18 = call i32 @copyin(%union.semun* %17, %union.semun* %7, i32 8)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %14
  br label %24

24:                                               ; preds = %2, %23
  %25 = load %struct.__semctl_args*, %struct.__semctl_args** %5, align 8
  %26 = getelementptr inbounds %struct.__semctl_args, %struct.__semctl_args* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %51 [
    i32 130, label %28
    i32 131, label %28
    i32 132, label %31
    i32 133, label %43
    i32 129, label %43
    i32 128, label %47
  ]

28:                                               ; preds = %24, %24
  %29 = bitcast %struct.semid_ds* %6 to %union.semun*
  %30 = bitcast %union.semun* %8 to %union.semun**
  store %union.semun* %29, %union.semun** %30, align 8
  br label %51

31:                                               ; preds = %24
  %32 = bitcast %union.semun* %7 to %union.semun**
  %33 = load %union.semun*, %union.semun** %32, align 8
  %34 = bitcast %struct.semid_ds* %6 to %union.semun*
  %35 = call i32 @copyin(%union.semun* %33, %union.semun* %34, i32 16)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  br label %87

40:                                               ; preds = %31
  %41 = bitcast %struct.semid_ds* %6 to %union.semun*
  %42 = bitcast %union.semun* %8 to %union.semun**
  store %union.semun* %41, %union.semun** %42, align 8
  br label %51

43:                                               ; preds = %24, %24
  %44 = bitcast %union.semun* %7 to i32*
  %45 = load i32, i32* %44, align 8
  %46 = bitcast %union.semun* %8 to i32*
  store i32 %45, i32* %46, align 8
  br label %51

47:                                               ; preds = %24
  %48 = bitcast %union.semun* %7 to i32*
  %49 = load i32, i32* %48, align 8
  %50 = bitcast %union.semun* %8 to i32*
  store i32 %49, i32* %50, align 8
  br label %51

51:                                               ; preds = %24, %47, %43, %40, %28
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = load %struct.__semctl_args*, %struct.__semctl_args** %5, align 8
  %54 = getelementptr inbounds %struct.__semctl_args, %struct.__semctl_args* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.__semctl_args*, %struct.__semctl_args** %5, align 8
  %57 = getelementptr inbounds %struct.__semctl_args, %struct.__semctl_args* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.__semctl_args*, %struct.__semctl_args** %5, align 8
  %60 = getelementptr inbounds %struct.__semctl_args, %struct.__semctl_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @kern_semctl(%struct.thread* %52, i32 %55, i32 %58, i32 %61, %union.semun* %8, i32* %9)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %3, align 4
  br label %87

67:                                               ; preds = %51
  %68 = load %struct.__semctl_args*, %struct.__semctl_args** %5, align 8
  %69 = getelementptr inbounds %struct.__semctl_args, %struct.__semctl_args* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  switch i32 %70, label %76 [
    i32 130, label %71
    i32 131, label %71
  ]

71:                                               ; preds = %67, %67
  %72 = bitcast %struct.semid_ds* %6 to %union.semun*
  %73 = bitcast %union.semun* %7 to %union.semun**
  %74 = load %union.semun*, %union.semun** %73, align 8
  %75 = call i32 @copyout(%union.semun* %72, %union.semun* %74, i32 16)
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %67, %71
  %77 = load i32, i32* %10, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.thread*, %struct.thread** %4, align 8
  %82 = getelementptr inbounds %struct.thread, %struct.thread* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %76
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %65, %38, %21
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @copyin(%union.semun*, %union.semun*, i32) #1

declare dso_local i32 @kern_semctl(%struct.thread*, i32, i32, i32, %union.semun*, i32*) #1

declare dso_local i32 @copyout(%union.semun*, %union.semun*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
