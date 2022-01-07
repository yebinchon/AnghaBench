; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_macmac.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_macmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { %struct.ieee80211_aclator* }
%struct.ieee80211_aclator = type { i32 (%struct.ieee80211vap*, i32*)*, i32 (%struct.ieee80211vap*, i32*)*, i32 (%struct.ieee80211vap*)* }
%struct.ieee80211req = type { i32, i64, i32 }

@IEEE80211_ADDR_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@IEEE80211_IOC_ADDMAC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_macmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_macmac(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_aclator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %11 = load i32, i32* @IEEE80211_ADDR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %15, i32 0, i32 0
  %17 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %16, align 8
  store %struct.ieee80211_aclator* %17, %struct.ieee80211_aclator** %8, align 8
  %18 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul nuw i64 4, %12
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

26:                                               ; preds = %2
  %27 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %28 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %31 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @copyin(i32 %29, i32* %14, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

38:                                               ; preds = %26
  %39 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %8, align 8
  %40 = icmp eq %struct.ieee80211_aclator* %39, null
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  %42 = call %struct.ieee80211_aclator* @ieee80211_aclator_get(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.ieee80211_aclator* %42, %struct.ieee80211_aclator** %8, align 8
  %43 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %8, align 8
  %44 = icmp eq %struct.ieee80211_aclator* %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %8, align 8
  %47 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %46, i32 0, i32 2
  %48 = load i32 (%struct.ieee80211vap*)*, i32 (%struct.ieee80211vap*)** %47, align 8
  %49 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %50 = call i32 %48(%struct.ieee80211vap* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45, %41
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

54:                                               ; preds = %45
  %55 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %8, align 8
  %56 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %57 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %56, i32 0, i32 0
  store %struct.ieee80211_aclator* %55, %struct.ieee80211_aclator** %57, align 8
  br label %58

58:                                               ; preds = %54, %38
  %59 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %60 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @IEEE80211_IOC_ADDMAC, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %65, i32 0, i32 1
  %67 = load i32 (%struct.ieee80211vap*, i32*)*, i32 (%struct.ieee80211vap*, i32*)** %66, align 8
  %68 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %69 = call i32 %67(%struct.ieee80211vap* %68, i32* %14)
  br label %76

70:                                               ; preds = %58
  %71 = load %struct.ieee80211_aclator*, %struct.ieee80211_aclator** %8, align 8
  %72 = getelementptr inbounds %struct.ieee80211_aclator, %struct.ieee80211_aclator* %71, i32 0, i32 0
  %73 = load i32 (%struct.ieee80211vap*, i32*)*, i32 (%struct.ieee80211vap*, i32*)** %72, align 8
  %74 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %75 = call i32 %73(%struct.ieee80211vap* %74, i32* %14)
  br label %76

76:                                               ; preds = %70, %64
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %77

77:                                               ; preds = %76, %52, %36, %24
  %78 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @copyin(i32, i32*, i32) #2

declare dso_local %struct.ieee80211_aclator* @ieee80211_aclator_get(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
