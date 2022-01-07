; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_vm_forkproc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_glue.c_vm_forkproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { %struct.vmspace* }
%struct.thread = type { %struct.TYPE_2__, %struct.proc* }
%struct.TYPE_2__ = type { %struct.domainset* }
%struct.domainset = type { i32 }
%struct.vmspace = type { i32, i64 }

@RFPROC = common dso_local global i32 0, align 4
@RFMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_forkproc(%struct.thread* %0, %struct.proc* %1, %struct.thread* %2, %struct.vmspace* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.vmspace*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.proc*, align 8
  %13 = alloca %struct.domainset*, align 8
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store %struct.proc* %1, %struct.proc** %8, align 8
  store %struct.thread* %2, %struct.thread** %9, align 8
  store %struct.vmspace* %3, %struct.vmspace** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.thread*, %struct.thread** %7, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 1
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %12, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @RFPROC, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @RFMEM, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.proc*, %struct.proc** %12, align 8
  %29 = getelementptr inbounds %struct.proc, %struct.proc* %28, i32 0, i32 0
  %30 = load %struct.vmspace*, %struct.vmspace** %29, align 8
  %31 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 1
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load %struct.proc*, %struct.proc** %12, align 8
  %36 = call i32 @vmspace_unshare(%struct.proc* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  store i32 %40, i32* %6, align 4
  br label %105

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %22
  %44 = load %struct.thread*, %struct.thread** %7, align 8
  %45 = load %struct.proc*, %struct.proc** %8, align 8
  %46 = load %struct.thread*, %struct.thread** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @cpu_fork(%struct.thread* %44, %struct.proc* %45, %struct.thread* %46, i32 %47)
  store i32 0, i32* %6, align 4
  br label %105

49:                                               ; preds = %5
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @RFMEM, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load %struct.proc*, %struct.proc** %12, align 8
  %56 = getelementptr inbounds %struct.proc, %struct.proc* %55, i32 0, i32 0
  %57 = load %struct.vmspace*, %struct.vmspace** %56, align 8
  %58 = load %struct.proc*, %struct.proc** %8, align 8
  %59 = getelementptr inbounds %struct.proc, %struct.proc* %58, i32 0, i32 0
  store %struct.vmspace* %57, %struct.vmspace** %59, align 8
  %60 = load %struct.proc*, %struct.proc** %12, align 8
  %61 = getelementptr inbounds %struct.proc, %struct.proc* %60, i32 0, i32 0
  %62 = load %struct.vmspace*, %struct.vmspace** %61, align 8
  %63 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %62, i32 0, i32 0
  %64 = call i32 @atomic_add_int(i32* %63, i32 1)
  br label %65

65:                                               ; preds = %54, %49
  %66 = load %struct.thread*, %struct.thread** %9, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.domainset*, %struct.domainset** %68, align 8
  store %struct.domainset* %69, %struct.domainset** %13, align 8
  br label %70

70:                                               ; preds = %75, %65
  %71 = load %struct.domainset*, %struct.domainset** %13, align 8
  %72 = getelementptr inbounds %struct.domainset, %struct.domainset* %71, i32 0, i32 0
  %73 = call i64 @vm_page_count_severe_set(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.domainset*, %struct.domainset** %13, align 8
  %77 = getelementptr inbounds %struct.domainset, %struct.domainset* %76, i32 0, i32 0
  %78 = call i32 @vm_wait_doms(i32* %77)
  br label %70

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @RFMEM, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %99

84:                                               ; preds = %79
  %85 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  %86 = load %struct.proc*, %struct.proc** %8, align 8
  %87 = getelementptr inbounds %struct.proc, %struct.proc* %86, i32 0, i32 0
  store %struct.vmspace* %85, %struct.vmspace** %87, align 8
  %88 = load %struct.proc*, %struct.proc** %12, align 8
  %89 = getelementptr inbounds %struct.proc, %struct.proc* %88, i32 0, i32 0
  %90 = load %struct.vmspace*, %struct.vmspace** %89, align 8
  %91 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %84
  %95 = load %struct.proc*, %struct.proc** %12, align 8
  %96 = load %struct.proc*, %struct.proc** %8, align 8
  %97 = call i32 @shmfork(%struct.proc* %95, %struct.proc* %96)
  br label %98

98:                                               ; preds = %94, %84
  br label %99

99:                                               ; preds = %98, %79
  %100 = load %struct.thread*, %struct.thread** %7, align 8
  %101 = load %struct.proc*, %struct.proc** %8, align 8
  %102 = load %struct.thread*, %struct.thread** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @cpu_fork(%struct.thread* %100, %struct.proc* %101, %struct.thread* %102, i32 %103)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %99, %43, %39
  %106 = load i32, i32* %6, align 4
  ret i32 %106
}

declare dso_local i32 @vmspace_unshare(%struct.proc*) #1

declare dso_local i32 @cpu_fork(%struct.thread*, %struct.proc*, %struct.thread*, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

declare dso_local i64 @vm_page_count_severe_set(i32*) #1

declare dso_local i32 @vm_wait_doms(i32*) #1

declare dso_local i32 @shmfork(%struct.proc*, %struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
