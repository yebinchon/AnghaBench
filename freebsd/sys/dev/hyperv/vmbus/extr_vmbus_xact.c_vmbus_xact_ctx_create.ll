; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_ctx_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_ctx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact_ctx = type { i64, i64, i64, i32, i32* }

@.str = private unnamed_addr constant [18 x i8] c"request size is 0\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"response size is 0\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"vmbus xact\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmbus_xact_ctx* @vmbus_xact_ctx_create(i32 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vmbus_xact_ctx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vmbus_xact_ctx*, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ugt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load i64, i64* %8, align 8
  %16 = icmp ugt i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %19 = load i32, i32* @M_DEVBUF, align 4
  %20 = load i32, i32* @M_WAITOK, align 4
  %21 = load i32, i32* @M_ZERO, align 4
  %22 = or i32 %20, %21
  %23 = call %struct.vmbus_xact_ctx* @malloc(i32 40, i32 %19, i32 %22)
  store %struct.vmbus_xact_ctx* %23, %struct.vmbus_xact_ctx** %10, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %26 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %29 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %32 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  %33 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32* @vmbus_xact_alloc(%struct.vmbus_xact_ctx* %33, i32 %34)
  %36 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %37 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %39 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %4
  %43 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = call i32 @free(%struct.vmbus_xact_ctx* %43, i32 %44)
  store %struct.vmbus_xact_ctx* null, %struct.vmbus_xact_ctx** %5, align 8
  br label %52

46:                                               ; preds = %4
  %47 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  %48 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %47, i32 0, i32 3
  %49 = load i32, i32* @MTX_DEF, align 4
  %50 = call i32 @mtx_init(i32* %48, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %49)
  %51 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %10, align 8
  store %struct.vmbus_xact_ctx* %51, %struct.vmbus_xact_ctx** %5, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %5, align 8
  ret %struct.vmbus_xact_ctx* %53
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vmbus_xact_ctx* @malloc(i32, i32, i32) #1

declare dso_local i32* @vmbus_xact_alloc(%struct.vmbus_xact_ctx*, i32) #1

declare dso_local i32 @free(%struct.vmbus_xact_ctx*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
