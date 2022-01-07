; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_pools_info_get_and_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_pools_info_get_and_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32, i32 }

@NR_REG_ONE_NIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @pools_info_get_and_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pools_info_get_and_register(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %5 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %6 = call i32 @pools_info_get(%struct.TestContext* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load i32, i32* @NR_REG_ONE_NIC, align 4
  %13 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %14 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %16 = call i32 @port_register(%struct.TestContext* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %26

21:                                               ; preds = %11
  %22 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %23 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %25 = call i32 @pools_info_get(%struct.TestContext* %24)
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %19, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @pools_info_get(%struct.TestContext*) #1

declare dso_local i32 @port_register(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
