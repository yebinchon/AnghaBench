; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ismt/extr_ismt.c_ismt_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ismt/extr_ismt.c_ismt_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ismt_softc = type { i32 }

@curthread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SMB_REQUEST_BUS acquired=%d\0A\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"SMB_RELEASE_BUS called by wrong thread\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"SMB_RELEASE_BUS\0A\00", align 1
@SMB_EABORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @ismt_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ismt_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ismt_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.ismt_softc* @device_get_softc(i32 %10)
  store %struct.ismt_softc* %11, %struct.ismt_softc** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %43 [
    i32 128, label %13
    i32 129, label %29
  ]

13:                                               ; preds = %3
  %14 = load %struct.ismt_softc*, %struct.ismt_softc** %7, align 8
  %15 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to i64*
  %17 = load i32, i32* @curthread, align 4
  %18 = sext i32 %17 to i64
  %19 = call i32 @atomic_cmpset_ptr(i64* %16, i64 0, i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 (i32, i8*, ...) @ISMT_DEBUG(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 0, i32* %9, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %25
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.ismt_softc*, %struct.ismt_softc** %7, align 8
  %31 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @curthread, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* %4, align 4
  %38 = call i32 (i32, i8*, ...) @ISMT_DEBUG(i32 %37, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.ismt_softc*, %struct.ismt_softc** %7, align 8
  %40 = getelementptr inbounds %struct.ismt_softc, %struct.ismt_softc* %39, i32 0, i32 0
  %41 = bitcast i32* %40 to i64*
  %42 = call i32 @atomic_store_rel_ptr(i64* %41, i64 0)
  store i32 0, i32* %9, align 4
  br label %45

43:                                               ; preds = %3
  %44 = load i32, i32* @SMB_EABORT, align 4
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %43, %29, %28
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local %struct.ismt_softc* @device_get_softc(i32) #1

declare dso_local i32 @atomic_cmpset_ptr(i64*, i64, i64) #1

declare dso_local i32 @ISMT_DEBUG(i32, i8*, ...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_store_rel_ptr(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
