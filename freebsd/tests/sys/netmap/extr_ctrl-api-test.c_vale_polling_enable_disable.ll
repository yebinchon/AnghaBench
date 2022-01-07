; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_polling_enable_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_vale_polling_enable_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32, i64, i32 }

@NETMAP_POLLING_MODE_SINGLE_CPU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @vale_polling_enable_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vale_polling_enable_disable(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %6 = call i32 @vale_attach(%struct.TestContext* %5)
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load i32, i32* @NETMAP_POLLING_MODE_SINGLE_CPU, align 4
  %12 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %15 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %17 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %19 = call i32 @vale_polling_enable(%struct.TestContext* %18)
  store i32 %19, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %10
  %22 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %23 = call i32 @vale_detach(%struct.TestContext* %22)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %36

25:                                               ; preds = %10
  %26 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %27 = call i32 @vale_polling_disable(%struct.TestContext* %26)
  store i32 %27, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %31 = call i32 @vale_detach(%struct.TestContext* %30)
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %36

33:                                               ; preds = %25
  %34 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %35 = call i32 @vale_detach(%struct.TestContext* %34)
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %33, %29, %21, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @vale_attach(%struct.TestContext*) #1

declare dso_local i32 @vale_polling_enable(%struct.TestContext*) #1

declare dso_local i32 @vale_detach(%struct.TestContext*) #1

declare dso_local i32 @vale_polling_disable(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
