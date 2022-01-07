; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2c.c_i2c_opal_send_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_i2c.c_i2c_opal_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opal_i2c_request = type { i32 }
%struct.opal_msg = type { i32 }

@OPAL_I2C_REQUEST = common dso_local global i32 0, align 4
@OPAL_ASYNC_COMPLETION = common dso_local global i32 0, align 4
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.opal_i2c_request*)* @i2c_opal_send_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_opal_send_request(i32 %0, %struct.opal_i2c_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.opal_i2c_request*, align 8
  %5 = alloca %struct.opal_msg, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.opal_i2c_request* %1, %struct.opal_i2c_request** %4, align 8
  %8 = call i32 (...) @opal_alloc_async_token()
  store i32 %8, i32* %6, align 4
  %9 = call i32 @memset(%struct.opal_msg* %5, i32 0, i32 4)
  %10 = load i32, i32* @OPAL_I2C_REQUEST, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.opal_i2c_request*, %struct.opal_i2c_request** %4, align 8
  %14 = call i32 @vtophys(%struct.opal_i2c_request* %13)
  %15 = call i32 @opal_call(i32 %10, i32 %11, i32 %12, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @OPAL_ASYNC_COMPLETION, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %31

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @opal_wait_completion(%struct.opal_msg* %5, i32 4, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @OPAL_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %31

27:                                               ; preds = %20
  %28 = getelementptr inbounds %struct.opal_msg, %struct.opal_msg* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @opal_get_async_rc(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %27, %26, %19
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @opal_free_async_token(i32 %32)
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @opal_alloc_async_token(...) #1

declare dso_local i32 @memset(%struct.opal_msg*, i32, i32) #1

declare dso_local i32 @opal_call(i32, i32, i32, i32) #1

declare dso_local i32 @vtophys(%struct.opal_i2c_request*) #1

declare dso_local i32 @opal_wait_completion(%struct.opal_msg*, i32, i32) #1

declare dso_local i32 @opal_get_async_rc(i32) #1

declare dso_local i32 @opal_free_async_token(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
