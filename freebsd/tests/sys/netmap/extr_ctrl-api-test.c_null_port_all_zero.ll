; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_null_port_all_zero.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_null_port_all_zero.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32, i64, i64, i64, i64, i32 }

@NR_REG_NULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @null_port_all_zero to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_port_all_zero(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  %4 = alloca i32, align 4
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %5 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %6 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %5, i32 0, i32 0
  store i32 1, i32* %6, align 8
  %7 = load i32, i32* @NR_REG_NULL, align 4
  %8 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %9 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %11 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %13 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %15 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %14, i32 0, i32 2
  store i64 0, i64* %15, align 8
  %16 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %17 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %16, i32 0, i32 1
  store i64 0, i64* %17, align 8
  %18 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %19 = call i32 @port_register(%struct.TestContext* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %22
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @port_register(%struct.TestContext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
