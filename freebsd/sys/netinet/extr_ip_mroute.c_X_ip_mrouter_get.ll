; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_X_ip_mrouter_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_mroute.c_X_ip_mrouter_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i32 }

@mrt_api_version = common dso_local global i32 0, align 4
@V_pim_assert_enabled = common dso_local global i32 0, align 4
@mrt_api_support = common dso_local global i32 0, align 4
@V_mrt_api_config = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*)* @X_ip_mrouter_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @X_ip_mrouter_get(%struct.socket* %0, %struct.sockopt* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sockopt*, align 8
  %5 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.sockopt* %1, %struct.sockopt** %4, align 8
  %6 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %7 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %21 [
    i32 128, label %9
    i32 129, label %12
    i32 130, label %15
    i32 131, label %18
  ]

9:                                                ; preds = %2
  %10 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %11 = call i32 @sooptcopyout(%struct.sockopt* %10, i32* @mrt_api_version, i32 4)
  store i32 %11, i32* %5, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %14 = call i32 @sooptcopyout(%struct.sockopt* %13, i32* @V_pim_assert_enabled, i32 4)
  store i32 %14, i32* %5, align 4
  br label %23

15:                                               ; preds = %2
  %16 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %17 = call i32 @sooptcopyout(%struct.sockopt* %16, i32* @mrt_api_support, i32 4)
  store i32 %17, i32* %5, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load %struct.sockopt*, %struct.sockopt** %4, align 8
  %20 = call i32 @sooptcopyout(%struct.sockopt* %19, i32* @V_mrt_api_config, i32 4)
  store i32 %20, i32* %5, align 4
  br label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %21, %18, %15, %12, %9
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @sooptcopyout(%struct.sockopt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
