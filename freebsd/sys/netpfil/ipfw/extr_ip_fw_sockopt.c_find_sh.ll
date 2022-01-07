; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_sh.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_find_sh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_sopt_handler = type { i32*, i32, i32 }

@ctl3_handlers = common dso_local global i32 0, align 4
@ctl3_hsize = common dso_local global i32 0, align 4
@compare_sh = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipfw_sopt_handler* (i32, i32, i32*)* @find_sh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipfw_sopt_handler* @find_sh(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ipfw_sopt_handler*, align 8
  %8 = alloca %struct.ipfw_sopt_handler, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = call i32 @memset(%struct.ipfw_sopt_handler* %8, i32 0, i32 16)
  %10 = load i32, i32* %4, align 4
  %11 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %8, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %5, align 4
  %13 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %8, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = getelementptr inbounds %struct.ipfw_sopt_handler, %struct.ipfw_sopt_handler* %8, i32 0, i32 0
  store i32* %14, i32** %15, align 8
  %16 = load i32, i32* @ctl3_handlers, align 4
  %17 = load i32, i32* @ctl3_hsize, align 4
  %18 = load i32, i32* @compare_sh, align 4
  %19 = call i64 @bsearch(%struct.ipfw_sopt_handler* %8, i32 %16, i32 %17, i32 16, i32 %18)
  %20 = inttoptr i64 %19 to %struct.ipfw_sopt_handler*
  store %struct.ipfw_sopt_handler* %20, %struct.ipfw_sopt_handler** %7, align 8
  %21 = load %struct.ipfw_sopt_handler*, %struct.ipfw_sopt_handler** %7, align 8
  ret %struct.ipfw_sopt_handler* %21
}

declare dso_local i32 @memset(%struct.ipfw_sopt_handler*, i32, i32) #1

declare dso_local i64 @bsearch(%struct.ipfw_sopt_handler*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
