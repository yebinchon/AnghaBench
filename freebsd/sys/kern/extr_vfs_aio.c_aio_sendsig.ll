; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_sendsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aio_sendsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.sigevent = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.thread = type { i32 }

@SI_ASYNCIO = common dso_local global i32 0, align 4
@KSI_EXT = common dso_local global i32 0, align 4
@KSI_INS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.proc*, %struct.sigevent*, %struct.TYPE_6__*)* @aio_sendsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aio_sendsig(%struct.proc* %0, %struct.sigevent* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.sigevent*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.sigevent* %1, %struct.sigevent** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  %10 = load %struct.proc*, %struct.proc** %5, align 8
  %11 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %12 = call i32 @sigev_findtd(%struct.proc* %10, %struct.sigevent* %11, %struct.thread** %8)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %3
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = call i32 @KSI_ONQ(%struct.TYPE_6__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %42, label %21

21:                                               ; preds = %17
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = load %struct.sigevent*, %struct.sigevent** %6, align 8
  %24 = call i32 @ksiginfo_set_sigev(%struct.TYPE_6__* %22, %struct.sigevent* %23)
  %25 = load i32, i32* @SI_ASYNCIO, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @KSI_EXT, align 4
  %29 = load i32, i32* @KSI_INS, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.proc*, %struct.proc** %5, align 8
  %36 = load %struct.thread*, %struct.thread** %8, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = call i32 @tdsendsignal(%struct.proc* %35, %struct.thread* %36, i32 %39, %struct.TYPE_6__* %40)
  br label %42

42:                                               ; preds = %21, %17
  %43 = load %struct.proc*, %struct.proc** %5, align 8
  %44 = call i32 @PROC_UNLOCK(%struct.proc* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %15
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @sigev_findtd(%struct.proc*, %struct.sigevent*, %struct.thread**) #1

declare dso_local i32 @KSI_ONQ(%struct.TYPE_6__*) #1

declare dso_local i32 @ksiginfo_set_sigev(%struct.TYPE_6__*, %struct.sigevent*) #1

declare dso_local i32 @tdsendsignal(%struct.proc*, %struct.thread*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
