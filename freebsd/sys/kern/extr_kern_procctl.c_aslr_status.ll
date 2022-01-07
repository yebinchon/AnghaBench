; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_aslr_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_procctl.c_aslr_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i32, i32 }
%struct.vmspace = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PROC_ASLR_NOFORCE = common dso_local global i32 0, align 4
@PROC_ASLR_FORCE_ENABLE = common dso_local global i32 0, align 4
@PROC_ASLR_FORCE_DISABLE = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@MAP_ASLR = common dso_local global i32 0, align 4
@PROC_ASLR_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.proc*, i32*)* @aslr_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aslr_status(%struct.thread* %0, %struct.proc* %1, i32* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.vmspace*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.proc*, %struct.proc** %5, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 129
  switch i32 %12, label %19 [
    i32 0, label %13
    i32 128, label %15
    i32 129, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @PROC_ASLR_NOFORCE, align 4
  store i32 %14, i32* %8, align 4
  br label %19

15:                                               ; preds = %3
  %16 = load i32, i32* @PROC_ASLR_FORCE_ENABLE, align 4
  store i32 %16, i32* %8, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @PROC_ASLR_FORCE_DISABLE, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %3, %17, %15, %13
  %20 = load %struct.proc*, %struct.proc** %5, align 8
  %21 = getelementptr inbounds %struct.proc, %struct.proc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @P_WEXIT, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %54

26:                                               ; preds = %19
  %27 = load %struct.proc*, %struct.proc** %5, align 8
  %28 = call i32 @_PHOLD(%struct.proc* %27)
  %29 = load %struct.proc*, %struct.proc** %5, align 8
  %30 = call i32 @PROC_UNLOCK(%struct.proc* %29)
  %31 = load %struct.proc*, %struct.proc** %5, align 8
  %32 = call %struct.vmspace* @vmspace_acquire_ref(%struct.proc* %31)
  store %struct.vmspace* %32, %struct.vmspace** %7, align 8
  %33 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %34 = icmp ne %struct.vmspace* %33, null
  br i1 %34, label %35, label %49

35:                                               ; preds = %26
  %36 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %37 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MAP_ASLR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %35
  %44 = load i32, i32* @PROC_ASLR_ACTIVE, align 4
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %8, align 4
  %47 = load %struct.vmspace*, %struct.vmspace** %7, align 8
  %48 = call i32 @vmspace_free(%struct.vmspace* %47)
  br label %49

49:                                               ; preds = %43, %35, %26
  %50 = load %struct.proc*, %struct.proc** %5, align 8
  %51 = call i32 @PROC_LOCK(%struct.proc* %50)
  %52 = load %struct.proc*, %struct.proc** %5, align 8
  %53 = call i32 @_PRELE(%struct.proc* %52)
  br label %54

54:                                               ; preds = %49, %19
  %55 = load i32, i32* %8, align 4
  %56 = load i32*, i32** %6, align 8
  store i32 %55, i32* %56, align 4
  ret i32 0
}

declare dso_local i32 @_PHOLD(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local %struct.vmspace* @vmspace_acquire_ref(%struct.proc*) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @_PRELE(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
