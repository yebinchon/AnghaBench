; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt2host_config_page_raid_phys_disk_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt2host_config_page_raid_phys_disk_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@Reserved1 = common dso_local global i32 0, align 4
@PhysDiskStatus = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MaxLBA = common dso_local global i32 0, align 4
@ErrorData = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt2host_config_page_raid_phys_disk_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @Reserved1, align 4
  %5 = call i32 @MPT_2_HOST32(i32* %3, i32 %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @PhysDiskStatus, i32 0, i32 0), align 4
  %8 = call i32 @MPT_2_HOST16(i32* %6, i32 %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load i32, i32* @MaxLBA, align 4
  %11 = call i32 @MPT_2_HOST32(i32* %9, i32 %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ErrorData, i32 0, i32 2), align 4
  %14 = call i32 @MPT_2_HOST16(i32* %12, i32 %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ErrorData, i32 0, i32 1), align 4
  %17 = call i32 @MPT_2_HOST16(i32* %15, i32 %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ErrorData, i32 0, i32 0), align 4
  %20 = call i32 @MPT_2_HOST16(i32* %18, i32 %19)
  ret void
}

declare dso_local i32 @MPT_2_HOST32(i32*, i32) #1

declare dso_local i32 @MPT_2_HOST16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
