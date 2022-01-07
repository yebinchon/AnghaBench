; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_rp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rp/extr_rp_isa.c_rp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }

@rp_controller = common dso_local global i32 0, align 4
@FREQ_DIS = common dso_local global i32 0, align 4
@MAX_AIOPS_PER_BOARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call %struct.TYPE_9__* @device_get_softc(i32 %12)
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %8, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %36, %1
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %17
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @sResetAiopByNum(%struct.TYPE_9__* %22, i32 %23)
  %25 = load i32, i32* @rp_controller, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sEnAiop(i32 %25, %struct.TYPE_9__* %26, i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @sGetAiopNumChan(%struct.TYPE_9__* %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %31
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @rp_attachcommon(%struct.TYPE_9__* %40, i32 %41, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %52

48:                                               ; preds = %46
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %50 = call i32 @rp_isareleaseresource(%struct.TYPE_9__* %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local %struct.TYPE_9__* @device_get_softc(i32) #1

declare dso_local i32 @sResetAiopByNum(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @sEnAiop(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @sGetAiopNumChan(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @rp_attachcommon(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @rp_isareleaseresource(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
