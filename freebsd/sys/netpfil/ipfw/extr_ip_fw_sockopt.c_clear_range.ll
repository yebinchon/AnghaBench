; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_clear_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_clear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IPFW_RCFLAG_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_4__*, i32)* @clear_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clear_range(%struct.ip_fw_chain* %0, %struct.TYPE_4__* %1, i32 %2) #0 {
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @IPFW_RCFLAG_DEFAULT, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %16 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %42, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %20 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %17
  %24 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %25 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %24, i32 0, i32 1
  %26 = load %struct.ip_fw**, %struct.ip_fw*** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %26, i64 %28
  %30 = load %struct.ip_fw*, %struct.ip_fw** %29, align 8
  store %struct.ip_fw* %30, %struct.ip_fw** %7, align 8
  %31 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %33 = call i64 @ipfw_match_range(%struct.ip_fw* %31, %struct.TYPE_4__* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %42

36:                                               ; preds = %23
  %37 = load %struct.ip_fw*, %struct.ip_fw** %7, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @clear_counters(%struct.ip_fw* %37, i32 %38)
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %36, %35
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %17

45:                                               ; preds = %17
  %46 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %47 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %46)
  %48 = load i32, i32* %8, align 4
  ret i32 %48
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_match_range(%struct.ip_fw*, %struct.TYPE_4__*) #1

declare dso_local i32 @clear_counters(%struct.ip_fw*, i32) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
