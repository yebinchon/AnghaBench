; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_delkey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ioctl.c_ieee80211_ioctl_delkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211vap = type { i64, i32*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211req = type { i32, i32 }
%struct.ieee80211req_del_key = type { i32, i32 }
%struct.ieee80211_node = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEYIX_NONE = common dso_local global i64 0, align 8
@IEEE80211_M_STA = common dso_local global i64 0, align 8
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IEEE80211_WEP_NKID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211vap*, %struct.ieee80211req*)* @ieee80211_ioctl_delkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_ioctl_delkey(%struct.ieee80211vap* %0, %struct.ieee80211req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.ieee80211req*, align 8
  %6 = alloca %struct.ieee80211req_del_key, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_node*, align 8
  store %struct.ieee80211vap* %0, %struct.ieee80211vap** %4, align 8
  store %struct.ieee80211req* %1, %struct.ieee80211req** %5, align 8
  %10 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 8
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %92

17:                                               ; preds = %2
  %18 = load %struct.ieee80211req*, %struct.ieee80211req** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @copyin(i32 %20, %struct.ieee80211req_del_key* %6, i32 8)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %92

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.ieee80211req_del_key, %struct.ieee80211req_del_key* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds %struct.ieee80211req_del_key, %struct.ieee80211req_del_key* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* @IEEE80211_KEYIX_NONE, align 8
  %32 = trunc i64 %31 to i32
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %26
  %35 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @IEEE80211_M_STA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %34
  %41 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.ieee80211_node* @ieee80211_ref_node(i32 %43)
  store %struct.ieee80211_node* %44, %struct.ieee80211_node** %9, align 8
  %45 = getelementptr inbounds %struct.ieee80211req_del_key, %struct.ieee80211req_del_key* %6, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %48 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @IEEE80211_ADDR_EQ(i32 %46, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %40
  %53 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %54 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %53)
  %55 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %55, i32* %3, align 4
  br label %92

56:                                               ; preds = %40
  br label %71

57:                                               ; preds = %34
  %58 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %63 = getelementptr inbounds %struct.ieee80211req_del_key, %struct.ieee80211req_del_key* %6, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.ieee80211_node* @ieee80211_find_vap_node(i32* %61, %struct.ieee80211vap* %62, i32 %64)
  store %struct.ieee80211_node* %65, %struct.ieee80211_node** %9, align 8
  %66 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %67 = icmp eq %struct.ieee80211_node* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i32, i32* @ENOENT, align 4
  store i32 %69, i32* %3, align 4
  br label %92

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %56
  %72 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %73 = call i32 @ieee80211_node_delucastkey(%struct.ieee80211_node* %72)
  %74 = load %struct.ieee80211_node*, %struct.ieee80211_node** %9, align 8
  %75 = call i32 @ieee80211_free_node(%struct.ieee80211_node* %74)
  br label %91

76:                                               ; preds = %26
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IEEE80211_WEP_NKID, align 4
  %79 = icmp sge i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %3, align 4
  br label %92

82:                                               ; preds = %76
  %83 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %84 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = call i32 @ieee80211_crypto_delkey(%struct.ieee80211vap* %83, i32* %89)
  br label %91

91:                                               ; preds = %82, %71
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %80, %68, %52, %24, %15
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @copyin(i32, %struct.ieee80211req_del_key*, i32) #1

declare dso_local %struct.ieee80211_node* @ieee80211_ref_node(i32) #1

declare dso_local i32 @IEEE80211_ADDR_EQ(i32, i32) #1

declare dso_local i32 @ieee80211_free_node(%struct.ieee80211_node*) #1

declare dso_local %struct.ieee80211_node* @ieee80211_find_vap_node(i32*, %struct.ieee80211vap*, i32) #1

declare dso_local i32 @ieee80211_node_delucastkey(%struct.ieee80211_node*) #1

declare dso_local i32 @ieee80211_crypto_delkey(%struct.ieee80211vap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
