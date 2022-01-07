; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_thread_userret.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac_lomac/extr_mac_lomac.c_lomac_thread_userret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.ucred*, i32 }
%struct.ucred = type { i32 }
%struct.mac_lomac_proc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAC_LOMAC_FLAG_UPDATE = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*)* @lomac_thread_userret to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lomac_thread_userret(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca %struct.mac_lomac_proc*, align 8
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %2, align 8
  %8 = load %struct.thread*, %struct.thread** %2, align 8
  %9 = getelementptr inbounds %struct.thread, %struct.thread* %8, i32 0, i32 0
  %10 = load %struct.proc*, %struct.proc** %9, align 8
  store %struct.proc* %10, %struct.proc** %3, align 8
  %11 = load %struct.proc*, %struct.proc** %3, align 8
  %12 = getelementptr inbounds %struct.proc, %struct.proc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.mac_lomac_proc* @PSLOT(i32 %13)
  store %struct.mac_lomac_proc* %14, %struct.mac_lomac_proc** %4, align 8
  %15 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %16 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %15, i32 0, i32 0
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %19 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MAC_LOMAC_FLAG_UPDATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %80

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %26 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %27 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = call %struct.ucred* (...) @crget()
  store %struct.ucred* %29, %struct.ucred** %5, align 8
  %30 = call i32 @mtx_lock(i32* @Giant)
  %31 = load %struct.proc*, %struct.proc** %3, align 8
  %32 = call i32 @PROC_LOCK(%struct.proc* %31)
  %33 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %34 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %33, i32 0, i32 0
  %35 = call i32 @mtx_lock(i32* %34)
  %36 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %37 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAC_LOMAC_FLAG_UPDATE, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %25
  %44 = load %struct.ucred*, %struct.ucred** %5, align 8
  %45 = call i32 @crfree(%struct.ucred* %44)
  br label %67

46:                                               ; preds = %25
  %47 = load %struct.proc*, %struct.proc** %3, align 8
  %48 = getelementptr inbounds %struct.proc, %struct.proc* %47, i32 0, i32 0
  %49 = load %struct.ucred*, %struct.ucred** %48, align 8
  store %struct.ucred* %49, %struct.ucred** %6, align 8
  %50 = load %struct.ucred*, %struct.ucred** %5, align 8
  %51 = load %struct.ucred*, %struct.ucred** %6, align 8
  %52 = call i32 @crcopy(%struct.ucred* %50, %struct.ucred* %51)
  %53 = load %struct.ucred*, %struct.ucred** %5, align 8
  %54 = call i32 @crhold(%struct.ucred* %53)
  %55 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %56 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %55, i32 0, i32 1
  %57 = load %struct.ucred*, %struct.ucred** %5, align 8
  %58 = getelementptr inbounds %struct.ucred, %struct.ucred* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @SLOT(i32 %59)
  %61 = call i32 @lomac_copy(%struct.TYPE_2__* %56, i32 %60)
  %62 = load %struct.proc*, %struct.proc** %3, align 8
  %63 = load %struct.ucred*, %struct.ucred** %5, align 8
  %64 = call i32 @proc_set_cred(%struct.proc* %62, %struct.ucred* %63)
  %65 = load %struct.ucred*, %struct.ucred** %6, align 8
  %66 = call i32 @crfree(%struct.ucred* %65)
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %46, %43
  %68 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %69 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %68, i32 0, i32 0
  %70 = call i32 @mtx_unlock(i32* %69)
  %71 = load %struct.proc*, %struct.proc** %3, align 8
  %72 = call i32 @PROC_UNLOCK(%struct.proc* %71)
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load i32, i32* @curthread, align 4
  %77 = call i32 @mac_proc_vm_revoke(i32 %76)
  br label %78

78:                                               ; preds = %75, %67
  %79 = call i32 @mtx_unlock(i32* @Giant)
  br label %84

80:                                               ; preds = %1
  %81 = load %struct.mac_lomac_proc*, %struct.mac_lomac_proc** %4, align 8
  %82 = getelementptr inbounds %struct.mac_lomac_proc, %struct.mac_lomac_proc* %81, i32 0, i32 0
  %83 = call i32 @mtx_unlock(i32* %82)
  br label %84

84:                                               ; preds = %80, %78
  ret void
}

declare dso_local %struct.mac_lomac_proc* @PSLOT(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.ucred* @crget(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @crcopy(%struct.ucred*, %struct.ucred*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @lomac_copy(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @SLOT(i32) #1

declare dso_local i32 @proc_set_cred(%struct.proc*, %struct.ucred*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @mac_proc_vm_revoke(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
