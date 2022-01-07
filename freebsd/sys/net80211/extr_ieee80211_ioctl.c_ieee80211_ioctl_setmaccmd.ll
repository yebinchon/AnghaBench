; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setmaccmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_setmaccmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_aclator* }
%struct.ieee80211_aclator = type { {}*, i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*, i32)*, i32 (%struct.ieee80211vap*)* }
%struct.ieee80211req = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_setmaccmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_setmaccmd(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211_aclator*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %7 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %8 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %8, align 8
  store %struct.ieee80211_aclator* %9, %struct.ieee80211_aclator** %6, align 8
  %10 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %64 [
    i32 129, label %13
    i32 131, label %13
    i32 130, label %13
    i32 128, label %13
    i32 132, label %42
    i32 133, label %52
  ]

13:                                               ; preds = %2, %2, %2, %2
  %14 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %15 = icmp eq %struct.ieee80211_aclator* %14, null
  br i1 %15, label %16, label %33

16:                                               ; preds = %13
  %17 = call %struct.ieee80211_aclator* @ieee80211_aclator_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.ieee80211_aclator* %17, %struct.ieee80211_aclator** %6, align 8
  %18 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %19 = icmp eq %struct.ieee80211_aclator* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %21, i32 0, i32 4
  %23 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %22, align 8
  %24 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %25 = call i32 %23(%struct.ieee80211vap* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %20, %16
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %78

29:                                               ; preds = %20
  %30 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %31 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %31, i32 0, i32 0
  store %struct.ieee80211_aclator* %30, %struct.ieee80211_aclator** %32, align 8
  br label %33

33:                                               ; preds = %29, %13
  %34 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %34, i32 0, i32 3
  %36 = load i32 (%struct.ieee80211vap*, i32)*, i32 (%struct.ieee80211vap*, i32)** %35, align 8
  %37 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %38 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 %36(%struct.ieee80211vap* %37, i32 %40)
  br label %77

42:                                               ; preds = %2
  %43 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %44 = icmp ne %struct.ieee80211_aclator* %43, null
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %46, i32 0, i32 2
  %48 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %47, align 8
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %50 = call i32 %48(%struct.ieee80211vap* %49)
  br label %51

51:                                               ; preds = %45, %42
  br label %77

52:                                               ; preds = %2
  %53 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %54 = icmp ne %struct.ieee80211_aclator* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %56, i32 0, i32 0
  store %struct.ieee80211_aclator* null, %struct.ieee80211_aclator** %57, align 8
  %58 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %59 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %58, i32 0, i32 1
  %60 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %59, align 8
  %61 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %62 = call i32 %60(%struct.ieee80211vap* %61)
  br label %63

63:                                               ; preds = %55, %52
  br label %77

64:                                               ; preds = %2
  %65 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %66 = icmp eq %struct.ieee80211_aclator* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %3, align 4
  br label %78

69:                                               ; preds = %64
  %70 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %6, align 8
  %71 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %70, i32 0, i32 0
  %72 = bitcast {}** %71 to i32 (%struct.ieee80211vap*, %struct.ieee80211req*)**
  %73 = load i32 (%struct.ieee80211vap*, %struct.ieee80211req*)*, i32 (%struct.ieee80211vap*, %struct.ieee80211req*)** %72, align 8
  %74 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %75 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %76 = call i32 %73(%struct.ieee80211vap* %74, %struct.ieee80211req* %75)
  store i32 %76, i32* %3, align 4
  br label %78

77:                                               ; preds = %63, %51, %33
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %69, %67, %27
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.ieee80211_aclator* @ieee80211_aclator_get(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
