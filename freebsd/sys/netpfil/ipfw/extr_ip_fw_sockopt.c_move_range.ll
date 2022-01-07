; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_move_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_move_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_5__*)* @move_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_range(%struct.ip_fw_chain* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.ip_fw*, align 8
  %7 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %8 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %9 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %8)
  %10 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %12 = call i32 @move_objects(%struct.ip_fw_chain* %10, %struct.TYPE_5__* %11)
  store i32 %12, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %16 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %15)
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %50

18:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %44, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %22 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %47

25:                                               ; preds = %19
  %26 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %27 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %26, i32 0, i32 1
  %28 = load %struct.ip_fw**, %struct.ip_fw*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %28, i64 %30
  %32 = load %struct.ip_fw*, %struct.ip_fw** %31, align 8
  store %struct.ip_fw* %32, %struct.ip_fw** %6, align 8
  %33 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %35 = call i64 @ipfw_match_range(%struct.ip_fw* %33, %struct.TYPE_5__* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %44

38:                                               ; preds = %25
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ip_fw*, %struct.ip_fw** %6, align 8
  %43 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %38, %37
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %19

47:                                               ; preds = %19
  %48 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %49 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %47, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @move_objects(%struct.ip_fw_chain*, %struct.TYPE_5__*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_match_range(%struct.ip_fw*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
