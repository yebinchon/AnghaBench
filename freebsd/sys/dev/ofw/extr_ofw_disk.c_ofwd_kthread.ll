; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_disk.c_ofwd_kthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_ofw_disk.c_ofwd_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ofwd_softc = type { i32, i32 }
%struct.bio = type { i64, i32, i32 }

@PRIBIO = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_2__* null, align 8
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"ofwdwait\00", align 1
@BIO_GETATTR = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ofwd_kthread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ofwd_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ofwd_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ofwd_softc*
  store %struct.ofwd_softc* %7, %struct.ofwd_softc** %3, align 8
  %8 = load i32, i32* @PRIBIO, align 4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @curthread, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  br label %11

11:                                               ; preds = %55, %20, %1
  %12 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ofwd_softc, %struct.ofwd_softc* %12, i32 0, i32 0
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ofwd_softc, %struct.ofwd_softc* %15, i32 0, i32 1
  %17 = call %struct.bio* @bioq_takefirst(i32* %16)
  store %struct.bio* %17, %struct.bio** %4, align 8
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = icmp ne %struct.bio* %18, null
  br i1 %19, label %28, label %20

20:                                               ; preds = %11
  %21 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %22 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ofwd_softc, %struct.ofwd_softc* %22, i32 0, i32 0
  %24 = load i32, i32* @PRIBIO, align 4
  %25 = load i32, i32* @PDROP, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @msleep(%struct.ofwd_softc* %21, i32* %23, i32 %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %11

28:                                               ; preds = %11
  %29 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %30 = getelementptr inbounds %struct.ofwd_softc, %struct.ofwd_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BIO_GETATTR, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %38, i32* %5, align 4
  br label %43

39:                                               ; preds = %28
  %40 = load %struct.ofwd_softc*, %struct.ofwd_softc** %3, align 8
  %41 = load %struct.bio*, %struct.bio** %4, align 8
  %42 = call i32 @ofwd_startio(%struct.ofwd_softc* %40, %struct.bio* %41)
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %39, %37
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.bio*, %struct.bio** %4, align 8
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @g_io_deliver(%struct.bio* %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %43
  br label %11
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @msleep(%struct.ofwd_softc*, i32*, i32, i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ofwd_startio(%struct.ofwd_softc*, %struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
