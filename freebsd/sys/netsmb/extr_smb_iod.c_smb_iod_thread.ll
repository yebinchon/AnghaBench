; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netsmb/extr_smb_iod.c_smb_iod_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbiod = type { i32, i32, i32, i32, i32, i32 }

@Giant = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@SMBIOD_SHUTDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"going to sleep for %d ticks\0A\00", align 1
@PWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"90idle\00", align 1
@M_SMBIOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smb_iod_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.smbiod*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.smbiod*
  store %struct.smbiod* %5, %struct.smbiod** %3, align 8
  %6 = call i32 @mtx_lock(i32* @Giant)
  %7 = load i32, i32* @curthread, align 4
  %8 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %9 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %11 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %10, i32 0, i32 5
  %12 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %13 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @smb_makescred(i32* %11, i32 %14, i32* null)
  br label %16

16:                                               ; preds = %37, %1
  %17 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %18 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SMBIOD_SHUTDOWN, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %16
  %24 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %25 = call i32 @smb_iod_main(%struct.smbiod* %24)
  %26 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %27 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SMBIODEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %31 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SMBIOD_SHUTDOWN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %23
  br label %45

37:                                               ; preds = %23
  %38 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %39 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %38, i32 0, i32 0
  %40 = load i32, i32* @PWAIT, align 4
  %41 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %42 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tsleep(i32* %39, i32 %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %16

45:                                               ; preds = %36, %16
  %46 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %47 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %46, i32 0, i32 2
  %48 = call i32 @smb_sl_destroy(i32* %47)
  %49 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %50 = getelementptr inbounds %struct.smbiod, %struct.smbiod* %49, i32 0, i32 1
  %51 = call i32 @smb_sl_destroy(i32* %50)
  %52 = load %struct.smbiod*, %struct.smbiod** %3, align 8
  %53 = load i32, i32* @M_SMBIOD, align 4
  %54 = call i32 @free(%struct.smbiod* %52, i32 %53)
  %55 = call i32 @mtx_unlock(i32* @Giant)
  %56 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @smb_makescred(i32*, i32, i32*) #1

declare dso_local i32 @smb_iod_main(%struct.smbiod*) #1

declare dso_local i32 @SMBIODEBUG(i8*, i32) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @smb_sl_destroy(i32*) #1

declare dso_local i32 @free(%struct.smbiod*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
