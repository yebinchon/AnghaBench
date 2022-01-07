; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_sio_ldn_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/superio/extr_superio.c_sio_ldn_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siosc = type { i64, i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"ignored attempt to write special register 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"sio_ldn_select failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siosc*, i64, i64, i64)* @sio_ldn_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sio_ldn_write(%struct.siosc* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.siosc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.siosc* %0, %struct.siosc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load %struct.siosc*, %struct.siosc** %5, align 8
  %10 = getelementptr inbounds %struct.siosc, %struct.siosc* %9, i32 0, i32 3
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.siosc*, %struct.siosc** %5, align 8
  %15 = getelementptr inbounds %struct.siosc, %struct.siosc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sle i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %38

21:                                               ; preds = %4
  %22 = load %struct.siosc*, %struct.siosc** %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @sio_ldn_select(%struct.siosc* %22, i64 %23)
  %25 = load %struct.siosc*, %struct.siosc** %5, align 8
  %26 = getelementptr inbounds %struct.siosc, %struct.siosc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.siosc*, %struct.siosc** %5, align 8
  %33 = getelementptr inbounds %struct.siosc, %struct.siosc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @sio_write(i32 %34, i64 %35, i64 %36)
  br label %38

38:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @sio_ldn_select(%struct.siosc*, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sio_write(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
