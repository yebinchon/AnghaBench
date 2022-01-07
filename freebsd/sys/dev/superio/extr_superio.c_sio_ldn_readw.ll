; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_sio_ldn_readw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_sio_ldn_readw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siosc = type { i64, i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sio_ldn_select failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.siosc*, i64, i64)* @sio_ldn_readw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sio_ldn_readw(%struct.siosc* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.siosc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.siosc* %0, %struct.siosc** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.siosc*, %struct.siosc** %4, align 8
  %8 = getelementptr inbounds %struct.siosc, %struct.siosc* %7, i32 0, i32 3
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.siosc*, %struct.siosc** %4, align 8
  %13 = getelementptr inbounds %struct.siosc, %struct.siosc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sge i64 %11, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.siosc*, %struct.siosc** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @sio_ldn_select(%struct.siosc* %17, i64 %18)
  %20 = load %struct.siosc*, %struct.siosc** %4, align 8
  %21 = getelementptr inbounds %struct.siosc, %struct.siosc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.siosc*, %struct.siosc** %4, align 8
  %29 = getelementptr inbounds %struct.siosc, %struct.siosc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @sio_readw(i32 %30, i64 %31)
  ret i32 %32
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @sio_ldn_select(%struct.siosc*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sio_readw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
