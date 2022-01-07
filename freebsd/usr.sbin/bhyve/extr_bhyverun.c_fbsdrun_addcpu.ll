; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_fbsdrun_addcpu.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_bhyverun.c_fbsdrun_addcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32, %struct.vmctx* }
%struct.vmctx = type { i32 }

@BSP = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not activate CPU %d\00", align 1
@cpumask = common dso_local global i32 0, align 4
@vmexit = common dso_local global %struct.TYPE_4__* null, align 8
@mt_vmm_info = common dso_local global %struct.TYPE_5__* null, align 8
@fbsdrun_start_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbsdrun_addcpu(%struct.vmctx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vmctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vmctx* %0, %struct.vmctx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @BSP, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @vm_activate_cpu(%struct.vmctx* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %4
  %21 = load i32, i32* @EX_OSERR, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @err(i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %20, %4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @CPU_SET_ATOMIC(i32 %25, i32* @cpumask)
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmexit, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** @vmexit, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.vmctx*, %struct.vmctx** %5, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt_vmm_info, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 2
  store %struct.vmctx* %38, %struct.vmctx** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt_vmm_info, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt_vmm_info, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* @fbsdrun_start_thread, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mt_vmm_info, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = call i32 @pthread_create(i32* %54, i32* null, i32 %55, %struct.TYPE_5__* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i32 @assert(i32 %63)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_activate_cpu(%struct.vmctx*, i32) #1

declare dso_local i32 @err(i32, i8*, i32) #1

declare dso_local i32 @CPU_SET_ATOMIC(i32, i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
