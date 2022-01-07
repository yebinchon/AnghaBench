; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_fatal_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_t4_fatal_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }

@LOG_ALERT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%s: encountered fatal error, adapter stopped.\0A\00", align 1
@ADAP_ERR = common dso_local global i32 0, align 4
@t4_panic_on_fatal_err = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"%s: panic on fatal error after 30s\00", align 1
@fatal_callout = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@delayed_panic = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_fatal_err(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.adapter*, %struct.adapter** %3, align 8
  %6 = call i32 @t4_shutdown_adapter(%struct.adapter* %5)
  %7 = load i32, i32* @LOG_ALERT, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_nameunit(i32 %10)
  %12 = call i32 @log(i32 %7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = call i32 @ASSERT_SYNCHRONIZED_OP(%struct.adapter* %16)
  %18 = load i32, i32* @ADAP_ERR, align 4
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %33

23:                                               ; preds = %2
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = call i32 @ADAPTER_LOCK(%struct.adapter* %24)
  %26 = load i32, i32* @ADAP_ERR, align 4
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = call i32 @ADAPTER_UNLOCK(%struct.adapter* %31)
  br label %33

33:                                               ; preds = %23, %15
  %34 = load i64, i64* @t4_panic_on_fatal_err, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33
  %37 = load i32, i32* @LOG_ALERT, align 4
  %38 = load %struct.adapter*, %struct.adapter** %3, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_get_nameunit(i32 %40)
  %42 = call i32 @log(i32 %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @hz, align 4
  %44 = mul nsw i32 %43, 30
  %45 = load i32, i32* @delayed_panic, align 4
  %46 = load %struct.adapter*, %struct.adapter** %3, align 8
  %47 = call i32 @callout_reset(i32* @fatal_callout, i32 %44, i32 %45, %struct.adapter* %46)
  br label %48

48:                                               ; preds = %36, %33
  ret void
}

declare dso_local i32 @t4_shutdown_adapter(%struct.adapter*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ASSERT_SYNCHRONIZED_OP(%struct.adapter*) #1

declare dso_local i32 @ADAPTER_LOCK(%struct.adapter*) #1

declare dso_local i32 @ADAPTER_UNLOCK(%struct.adapter*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
