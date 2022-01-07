; ModuleID = '/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_num_registered_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/tests/sys/netmap/extr_ctrl-api-test.c_num_registered_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TestContext = type { i32, i32, i32 }

@NR_TX_RINGS_ONLY = common dso_local global i32 0, align 4
@NR_RX_RINGS_ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TestContext*)* @num_registered_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @num_registered_rings(%struct.TestContext* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TestContext*, align 8
  store %struct.TestContext* %0, %struct.TestContext** %3, align 8
  %4 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %5 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @NR_TX_RINGS_ONLY, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %12 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %2, align 4
  br label %33

14:                                               ; preds = %1
  %15 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %16 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NR_RX_RINGS_ONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %23 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %2, align 4
  br label %33

25:                                               ; preds = %14
  %26 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %27 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TestContext*, %struct.TestContext** %3, align 8
  %30 = getelementptr inbounds %struct.TestContext, %struct.TestContext* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %25, %21, %10
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
