; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexSetWeights.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_btcoex.c_ar5416BTCoexSetWeights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_5416 = type { i32, i32 }

@AR5416_BT_WGHT = common dso_local global i8* null, align 8
@AR5416_STOMP_ALL_WLAN_WGHT = common dso_local global i8* null, align 8
@AR5416_STOMP_LOW_WLAN_WGHT = common dso_local global i8* null, align 8
@AR5416_STOMP_ALL_FORCE_WLAN_WGHT = common dso_local global i8* null, align 8
@AR5416_STOMP_LOW_FORCE_WLAN_WGHT = common dso_local global i8* null, align 8
@AR5416_STOMP_NONE_WLAN_WGHT = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5416BTCoexSetWeights(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_hal_5416*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call %struct.ath_hal_5416* @AH5416(%struct.ath_hal* %6)
  store %struct.ath_hal_5416* %7, %struct.ath_hal_5416** %5, align 8
  %8 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %9 = call i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %58 [
    i32 131, label %13
    i32 133, label %13
    i32 130, label %22
    i32 132, label %31
    i32 129, label %40
    i32 128, label %49
    i32 134, label %49
  ]

13:                                               ; preds = %11, %11
  %14 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %17 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i8*, i8** @AR5416_STOMP_ALL_WLAN_WGHT, align 8
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %21 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %67

22:                                               ; preds = %11
  %23 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %24 = ptrtoint i8* %23 to i32
  %25 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %26 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i8*, i8** @AR5416_STOMP_LOW_WLAN_WGHT, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %30 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  br label %67

31:                                               ; preds = %11
  %32 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %33 = ptrtoint i8* %32 to i32
  %34 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %35 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i8*, i8** @AR5416_STOMP_ALL_FORCE_WLAN_WGHT, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %39 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %67

40:                                               ; preds = %11
  %41 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %42 = ptrtoint i8* %41 to i32
  %43 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %44 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i8*, i8** @AR5416_STOMP_LOW_FORCE_WLAN_WGHT, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %48 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %67

49:                                               ; preds = %11, %11
  %50 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %53 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load i8*, i8** @AR5416_STOMP_NONE_WLAN_WGHT, align 8
  %55 = ptrtoint i8* %54 to i32
  %56 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %57 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %67

58:                                               ; preds = %11
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 65535
  %61 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %62 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %4, align 4
  %64 = ashr i32 %63, 16
  %65 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %66 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %58, %49, %40, %31, %22, %13
  br label %125

68:                                               ; preds = %2
  %69 = load i32, i32* %4, align 4
  switch i32 %69, label %115 [
    i32 131, label %70
    i32 133, label %70
    i32 130, label %79
    i32 132, label %88
    i32 129, label %97
    i32 128, label %106
    i32 134, label %106
  ]

70:                                               ; preds = %68, %68
  %71 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %74 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** @AR5416_STOMP_ALL_WLAN_WGHT, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %78 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %124

79:                                               ; preds = %68
  %80 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %83 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load i8*, i8** @AR5416_STOMP_LOW_WLAN_WGHT, align 8
  %85 = ptrtoint i8* %84 to i32
  %86 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %87 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %124

88:                                               ; preds = %68
  %89 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %92 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load i8*, i8** @AR5416_STOMP_ALL_FORCE_WLAN_WGHT, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %96 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  br label %124

97:                                               ; preds = %68
  %98 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %101 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load i8*, i8** @AR5416_STOMP_LOW_FORCE_WLAN_WGHT, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %105 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  br label %124

106:                                              ; preds = %68, %68
  %107 = load i8*, i8** @AR5416_BT_WGHT, align 8
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %110 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i8*, i8** @AR5416_STOMP_NONE_WLAN_WGHT, align 8
  %112 = ptrtoint i8* %111 to i32
  %113 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %114 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  br label %124

115:                                              ; preds = %68
  %116 = load i32, i32* %4, align 4
  %117 = and i32 %116, 65535
  %118 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %119 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %4, align 4
  %121 = ashr i32 %120, 16
  %122 = load %struct.ath_hal_5416*, %struct.ath_hal_5416** %5, align 8
  %123 = getelementptr inbounds %struct.ath_hal_5416, %struct.ath_hal_5416* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %115, %106, %97, %88, %79, %70
  br label %125

125:                                              ; preds = %124, %67
  ret void
}

declare dso_local %struct.ath_hal_5416* @AH5416(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_KIWI_10_OR_LATER(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
