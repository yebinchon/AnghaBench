; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_manage_sets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_manage_sets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_MAX_SETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_9__*, %struct.sockopt_data*)* @manage_sets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manage_sets(%struct.ip_fw_chain* %0, %struct.TYPE_9__* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %10 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %11 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 24
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %78

17:                                               ; preds = %3
  %18 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %19 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %20 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %18, i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 4
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store i32 1, i32* %4, align 4
  br label %78

32:                                               ; preds = %17
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 130
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @IPFW_MAX_SETS, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @IPFW_MAX_SETS, align 8
  %50 = icmp sge i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44, %37
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %4, align 4
  br label %78

53:                                               ; preds = %44, %32
  store i32 0, i32* %9, align 4
  %54 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %55 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %74 [
    i32 128, label %59
    i32 129, label %59
    i32 130, label %69
  ]

59:                                               ; preds = %53, %53
  %60 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 129
  %67 = zext i1 %66 to i32
  %68 = call i32 @swap_sets(%struct.ip_fw_chain* %60, %struct.TYPE_10__* %62, i32 %67)
  store i32 %68, i32* %9, align 4
  br label %74

69:                                               ; preds = %53
  %70 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @enable_sets(%struct.ip_fw_chain* %70, %struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %53, %69, %59
  %75 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %76 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %75)
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %74, %51, %31, %15
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @swap_sets(%struct.ip_fw_chain*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @enable_sets(%struct.ip_fw_chain*, %struct.TYPE_10__*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
