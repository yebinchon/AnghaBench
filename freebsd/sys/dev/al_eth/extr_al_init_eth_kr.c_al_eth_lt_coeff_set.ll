; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_kr.c_al_eth_lt_coeff_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_kr.c_al_eth_lt_coeff_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_kr_data = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32)* }

@C72_CSTATE_NOT_UPDATED = common dso_local global i32 0, align 4
@C72_CSTATE_UPDATED = common dso_local global i32 0, align 4
@C72_CSTATE_MAX = common dso_local global i32 0, align 4
@C72_CSTATE_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_kr_data*, i32, i32)* @al_eth_lt_coeff_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_lt_coeff_set(%struct.al_eth_kr_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.al_eth_kr_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.al_eth_kr_data* %0, %struct.al_eth_kr_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %49 [
    i32 129, label %9
    i32 128, label %11
    i32 130, label %30
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* @C72_CSTATE_NOT_UPDATED, align 4
  store i32 %10, i32* %7, align 4
  br label %50

11:                                               ; preds = %3
  %12 = load i32, i32* @C72_CSTATE_UPDATED, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %4, align 8
  %14 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32 (%struct.TYPE_3__*, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32)** %16, align 8
  %18 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %4, align 8
  %19 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %4, align 8
  %22 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 %17(%struct.TYPE_3__* %20, i32 %23, i32 %24)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %11
  %28 = load i32, i32* @C72_CSTATE_MAX, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %11
  br label %50

30:                                               ; preds = %3
  %31 = load i32, i32* @C72_CSTATE_UPDATED, align 4
  store i32 %31, i32* %7, align 4
  %32 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %4, align 8
  %33 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.TYPE_3__*, i32, i32)*, i32 (%struct.TYPE_3__*, i32, i32)** %35, align 8
  %37 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %4, align 8
  %38 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %4, align 8
  %41 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 %36(%struct.TYPE_3__* %39, i32 %42, i32 %43)
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %30
  %47 = load i32, i32* @C72_CSTATE_MIN, align 4
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %46, %30
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %48, %29, %9
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
