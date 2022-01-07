; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/aio/aiop/extr_aiop.c_set_aio.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/aio/aiop/extr_aiop.c_set_aio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { i32, i32, i8*, i32 }

@IOT_READ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"set_aio call failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aiocb*, i64, i32, i32, i32, i8*)* @set_aio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_aio(%struct.aiocb* %0, i64 %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.aiocb*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.aiocb* %0, %struct.aiocb** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %14 = load %struct.aiocb*, %struct.aiocb** %7, align 8
  %15 = call i32 @bzero(%struct.aiocb* %14, i32 24)
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.aiocb*, %struct.aiocb** %7, align 8
  %18 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.aiocb*, %struct.aiocb** %7, align 8
  %21 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load %struct.aiocb*, %struct.aiocb** %7, align 8
  %24 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.aiocb*, %struct.aiocb** %7, align 8
  %27 = getelementptr inbounds %struct.aiocb, %struct.aiocb* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @IOT_READ, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %6
  %32 = load %struct.aiocb*, %struct.aiocb** %7, align 8
  %33 = call i32 @aio_read(%struct.aiocb* %32)
  store i32 %33, i32* %13, align 4
  br label %37

34:                                               ; preds = %6
  %35 = load %struct.aiocb*, %struct.aiocb** %7, align 8
  %36 = call i32 @aio_write(%struct.aiocb* %35)
  store i32 %36, i32* %13, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @err(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %37
  ret void
}

declare dso_local i32 @bzero(%struct.aiocb*, i32) #1

declare dso_local i32 @aio_read(%struct.aiocb*) #1

declare dso_local i32 @aio_write(%struct.aiocb*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
