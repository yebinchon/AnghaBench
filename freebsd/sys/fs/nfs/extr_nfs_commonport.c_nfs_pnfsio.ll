; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonport.c_nfs_pnfsio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonport.c_nfs_pnfsio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.taskqueue = type { i32 }
%struct.pnfsio = type { i32, i32 }

@nfs_pnfsio.pnfsioq = internal global %struct.taskqueue* null, align 8
@nfs_pnfsiothreads = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@mp_ncpus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"pnfsioq\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@taskqueue_thread_enqueue = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"pnfsiot\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_pnfsio(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pnfsio*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.pnfsio*
  store %struct.pnfsio* %9, %struct.pnfsio** %6, align 8
  %10 = load %struct.taskqueue*, %struct.taskqueue** @nfs_pnfsio.pnfsioq, align 8
  %11 = icmp eq %struct.taskqueue* %10, null
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i32, i32* @nfs_pnfsiothreads, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = load i32, i32* @EPERM, align 4
  store i32 %16, i32* %3, align 4
  br label %60

17:                                               ; preds = %12
  %18 = load i32, i32* @nfs_pnfsiothreads, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @mp_ncpus, align 4
  %22 = mul nsw i32 %21, 4
  store i32 %22, i32* @nfs_pnfsiothreads, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @taskqueue_thread_enqueue, align 4
  %26 = call %struct.taskqueue* @taskqueue_create(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, %struct.taskqueue** @nfs_pnfsio.pnfsioq)
  store %struct.taskqueue* %26, %struct.taskqueue** @nfs_pnfsio.pnfsioq, align 8
  %27 = load %struct.taskqueue*, %struct.taskqueue** @nfs_pnfsio.pnfsioq, align 8
  %28 = icmp eq %struct.taskqueue* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  store i32 %30, i32* %3, align 4
  br label %60

31:                                               ; preds = %23
  %32 = load i32, i32* @nfs_pnfsiothreads, align 4
  %33 = call i32 @taskqueue_start_threads(%struct.taskqueue** @nfs_pnfsio.pnfsioq, i32 %32, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.taskqueue*, %struct.taskqueue** @nfs_pnfsio.pnfsioq, align 8
  %38 = call i32 @taskqueue_free(%struct.taskqueue* %37)
  store %struct.taskqueue* null, %struct.taskqueue** @nfs_pnfsio.pnfsioq, align 8
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %60

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.pnfsio*, %struct.pnfsio** %6, align 8
  %43 = getelementptr inbounds %struct.pnfsio, %struct.pnfsio* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.pnfsio*, %struct.pnfsio** %6, align 8
  %45 = getelementptr inbounds %struct.pnfsio, %struct.pnfsio* %44, i32 0, i32 1
  %46 = load i32*, i32** %4, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @TASK_INIT(i32* %45, i32 0, i32* %46, i8* %47)
  %49 = load %struct.taskqueue*, %struct.taskqueue** @nfs_pnfsio.pnfsioq, align 8
  %50 = load %struct.pnfsio*, %struct.pnfsio** %6, align 8
  %51 = getelementptr inbounds %struct.pnfsio, %struct.pnfsio* %50, i32 0, i32 1
  %52 = call i32 @taskqueue_enqueue(%struct.taskqueue* %49, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.pnfsio*, %struct.pnfsio** %6, align 8
  %57 = getelementptr inbounds %struct.pnfsio, %struct.pnfsio* %56, i32 0, i32 0
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %41
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %36, %29, %15
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local %struct.taskqueue* @taskqueue_create(i8*, i32, i32, %struct.taskqueue**) #1

declare dso_local i32 @taskqueue_start_threads(%struct.taskqueue**, i32, i32, i8*) #1

declare dso_local i32 @taskqueue_free(%struct.taskqueue*) #1

declare dso_local i32 @TASK_INIT(i32*, i32, i32*, i8*) #1

declare dso_local i32 @taskqueue_enqueue(%struct.taskqueue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
