; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_ps3disk.c_ps3disk_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ps3disk_softc = type { i32, i32, i32 }
%struct.bio = type { i32* }

@PRIBIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"ps3disk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ps3disk_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps3disk_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ps3disk_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ps3disk_softc*
  store %struct.ps3disk_softc* %6, %struct.ps3disk_softc** %3, align 8
  br label %7

7:                                                ; preds = %1, %25, %48
  %8 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @kproc_suspend_check(i32 %10)
  %12 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %12, i32 0, i32 1
  %14 = load i32, i32* @PRIBIO, align 4
  %15 = call i32 @tsleep(i32* %13, i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 10)
  %16 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %17 = call i32 @PS3DISK_LOCK(%struct.ps3disk_softc* %16)
  %18 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %19 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %18, i32 0, i32 1
  %20 = call %struct.bio* @bioq_takefirst(i32* %19)
  store %struct.bio* %20, %struct.bio** %4, align 8
  %21 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %22 = call i32 @PS3DISK_UNLOCK(%struct.ps3disk_softc* %21)
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = icmp eq %struct.bio* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  br label %7

26:                                               ; preds = %7
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = ptrtoint i32* %37 to i32
  %39 = call i32 @bus_dmamap_unload(i32 %34, i32 %38)
  %40 = load %struct.ps3disk_softc*, %struct.ps3disk_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ps3disk_softc, %struct.ps3disk_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = ptrtoint i32* %45 to i32
  %47 = call i32 @bus_dmamap_destroy(i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %31, %26
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = call i32 @ps3disk_strategy(%struct.bio* %49)
  br label %7
}

declare dso_local i32 @kproc_suspend_check(i32) #1

declare dso_local i32 @tsleep(i32*, i32, i8*, i32) #1

declare dso_local i32 @PS3DISK_LOCK(%struct.ps3disk_softc*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @PS3DISK_UNLOCK(%struct.ps3disk_softc*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @ps3disk_strategy(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
