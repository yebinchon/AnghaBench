; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_kern_procctl_single.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_kern_procctl_single.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32, i8*)* @kern_procctl_single to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kern_procctl_single(%struct.thread* %0, %struct.proc* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.proc* %1, %struct.proc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.proc*, %struct.proc** %7, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %10, i32 %11)
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %104 [
    i32 143, label %14
    i32 142, label %21
    i32 134, label %26
    i32 141, label %33
    i32 140, label %40
    i32 133, label %45
    i32 132, label %52
    i32 139, label %57
    i32 136, label %61
    i32 135, label %65
    i32 138, label %70
    i32 137, label %75
    i32 131, label %80
    i32 130, label %87
    i32 129, label %92
    i32 128, label %99
  ]

14:                                               ; preds = %4
  %15 = load %struct.thread*, %struct.thread** %6, align 8
  %16 = load %struct.proc*, %struct.proc** %7, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @aslr_ctl(%struct.thread* %15, %struct.proc* %16, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %106

21:                                               ; preds = %4
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = load %struct.proc*, %struct.proc** %7, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @aslr_status(%struct.thread* %22, %struct.proc* %23, i8* %24)
  store i32 %25, i32* %5, align 4
  br label %106

26:                                               ; preds = %4
  %27 = load %struct.thread*, %struct.thread** %6, align 8
  %28 = load %struct.proc*, %struct.proc** %7, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @protect_set(%struct.thread* %27, %struct.proc* %28, i32 %31)
  store i32 %32, i32* %5, align 4
  br label %106

33:                                               ; preds = %4
  %34 = load %struct.thread*, %struct.thread** %6, align 8
  %35 = load %struct.proc*, %struct.proc** %7, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = bitcast i8* %36 to i32*
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @protmax_ctl(%struct.thread* %34, %struct.proc* %35, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %106

40:                                               ; preds = %4
  %41 = load %struct.thread*, %struct.thread** %6, align 8
  %42 = load %struct.proc*, %struct.proc** %7, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @protmax_status(%struct.thread* %41, %struct.proc* %42, i8* %43)
  store i32 %44, i32* %5, align 4
  br label %106

45:                                               ; preds = %4
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = load %struct.proc*, %struct.proc** %7, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @stackgap_ctl(%struct.thread* %46, %struct.proc* %47, i32 %50)
  store i32 %51, i32* %5, align 4
  br label %106

52:                                               ; preds = %4
  %53 = load %struct.thread*, %struct.thread** %6, align 8
  %54 = load %struct.proc*, %struct.proc** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @stackgap_status(%struct.thread* %53, %struct.proc* %54, i8* %55)
  store i32 %56, i32* %5, align 4
  br label %106

57:                                               ; preds = %4
  %58 = load %struct.thread*, %struct.thread** %6, align 8
  %59 = load %struct.proc*, %struct.proc** %7, align 8
  %60 = call i32 @reap_acquire(%struct.thread* %58, %struct.proc* %59)
  store i32 %60, i32* %5, align 4
  br label %106

61:                                               ; preds = %4
  %62 = load %struct.thread*, %struct.thread** %6, align 8
  %63 = load %struct.proc*, %struct.proc** %7, align 8
  %64 = call i32 @reap_release(%struct.thread* %62, %struct.proc* %63)
  store i32 %64, i32* %5, align 4
  br label %106

65:                                               ; preds = %4
  %66 = load %struct.thread*, %struct.thread** %6, align 8
  %67 = load %struct.proc*, %struct.proc** %7, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @reap_status(%struct.thread* %66, %struct.proc* %67, i8* %68)
  store i32 %69, i32* %5, align 4
  br label %106

70:                                               ; preds = %4
  %71 = load %struct.thread*, %struct.thread** %6, align 8
  %72 = load %struct.proc*, %struct.proc** %7, align 8
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @reap_getpids(%struct.thread* %71, %struct.proc* %72, i8* %73)
  store i32 %74, i32* %5, align 4
  br label %106

75:                                               ; preds = %4
  %76 = load %struct.thread*, %struct.thread** %6, align 8
  %77 = load %struct.proc*, %struct.proc** %7, align 8
  %78 = load i8*, i8** %9, align 8
  %79 = call i32 @reap_kill(%struct.thread* %76, %struct.proc* %77, i8* %78)
  store i32 %79, i32* %5, align 4
  br label %106

80:                                               ; preds = %4
  %81 = load %struct.thread*, %struct.thread** %6, align 8
  %82 = load %struct.proc*, %struct.proc** %7, align 8
  %83 = load i8*, i8** %9, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @trace_ctl(%struct.thread* %81, %struct.proc* %82, i32 %85)
  store i32 %86, i32* %5, align 4
  br label %106

87:                                               ; preds = %4
  %88 = load %struct.thread*, %struct.thread** %6, align 8
  %89 = load %struct.proc*, %struct.proc** %7, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = call i32 @trace_status(%struct.thread* %88, %struct.proc* %89, i8* %90)
  store i32 %91, i32* %5, align 4
  br label %106

92:                                               ; preds = %4
  %93 = load %struct.thread*, %struct.thread** %6, align 8
  %94 = load %struct.proc*, %struct.proc** %7, align 8
  %95 = load i8*, i8** %9, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @trapcap_ctl(%struct.thread* %93, %struct.proc* %94, i32 %97)
  store i32 %98, i32* %5, align 4
  br label %106

99:                                               ; preds = %4
  %100 = load %struct.thread*, %struct.thread** %6, align 8
  %101 = load %struct.proc*, %struct.proc** %7, align 8
  %102 = load i8*, i8** %9, align 8
  %103 = call i32 @trapcap_status(%struct.thread* %100, %struct.proc* %101, i8* %102)
  store i32 %103, i32* %5, align 4
  br label %106

104:                                              ; preds = %4
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %104, %99, %92, %87, %80, %75, %70, %65, %61, %57, %52, %45, %40, %33, %26, %21, %14
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @aslr_ctl(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @aslr_status(%struct.thread*, %struct.proc*, i8*) #1

declare dso_local i32 @protect_set(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @protmax_ctl(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @protmax_status(%struct.thread*, %struct.proc*, i8*) #1

declare dso_local i32 @stackgap_ctl(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @stackgap_status(%struct.thread*, %struct.proc*, i8*) #1

declare dso_local i32 @reap_acquire(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @reap_release(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @reap_status(%struct.thread*, %struct.proc*, i8*) #1

declare dso_local i32 @reap_getpids(%struct.thread*, %struct.proc*, i8*) #1

declare dso_local i32 @reap_kill(%struct.thread*, %struct.proc*, i8*) #1

declare dso_local i32 @trace_ctl(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @trace_status(%struct.thread*, %struct.proc*, i8*) #1

declare dso_local i32 @trapcap_ctl(%struct.thread*, %struct.proc*, i32) #1

declare dso_local i32 @trapcap_status(%struct.thread*, %struct.proc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
