; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_xact.c_vmbus_xact_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_xact = type { i8*, i8*, i32*, i32, %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32, i32, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BUS_DMA_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vmbus_xact* (%struct.vmbus_xact_ctx*, i32)* @vmbus_xact_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vmbus_xact* @vmbus_xact_alloc(%struct.vmbus_xact_ctx* %0, i32 %1) #0 {
  %3 = alloca %struct.vmbus_xact*, align 8
  %4 = alloca %struct.vmbus_xact_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_xact*, align 8
  store %struct.vmbus_xact_ctx* %0, %struct.vmbus_xact_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @M_DEVBUF, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call i8* @malloc(i32 40, i32 %7, i32 %10)
  %12 = bitcast i8* %11 to %struct.vmbus_xact*
  store %struct.vmbus_xact* %12, %struct.vmbus_xact** %6, align 8
  %13 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %14 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %15 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %14, i32 0, i32 4
  store %struct.vmbus_xact_ctx* %13, %struct.vmbus_xact_ctx** %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @PAGE_SIZE, align 4
  %18 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %19 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %22 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %21, i32 0, i32 3
  %23 = load i32, i32* @BUS_DMA_WAITOK, align 4
  %24 = call i32* @hyperv_dmamem_alloc(i32 %16, i32 %17, i32 0, i32 %20, i32* %22, i32 %23)
  %25 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %26 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %25, i32 0, i32 2
  store i32* %24, i32** %26, align 8
  %27 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %28 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %33 = load i32, i32* @M_DEVBUF, align 4
  %34 = call i32 @free(%struct.vmbus_xact* %32, i32 %33)
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %3, align 8
  br label %59

35:                                               ; preds = %2
  %36 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %42 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @M_DEVBUF, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = call i8* @malloc(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %48 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %40, %35
  %50 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %51 = getelementptr inbounds %struct.vmbus_xact_ctx, %struct.vmbus_xact_ctx* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @M_DEVBUF, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = call i8* @malloc(i32 %52, i32 %53, i32 %54)
  %56 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %57 = getelementptr inbounds %struct.vmbus_xact, %struct.vmbus_xact* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  store %struct.vmbus_xact* %58, %struct.vmbus_xact** %3, align 8
  br label %59

59:                                               ; preds = %49, %31
  %60 = load %struct.vmbus_xact*, %struct.vmbus_xact** %3, align 8
  ret %struct.vmbus_xact* %60
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @hyperv_dmamem_alloc(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @free(%struct.vmbus_xact*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
