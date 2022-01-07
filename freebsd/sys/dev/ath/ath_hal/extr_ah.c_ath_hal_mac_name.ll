; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_mac_name.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/extr_ah.c_ath_hal_mac_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"AR5210\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"AR5211\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"AR5212\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"AR2413\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"AR5424\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"AR5413\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"AR2415\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"AR2425\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"AR2417\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"AR5416\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"AR5418\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"AR9130\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"AR9160\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"AR9280\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"AR9220\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"AR9285\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"AR9287\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"AR9227\00", align 1
@AR_SREV_REVISION_AR9580_10 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [7 x i8] c"AR9580\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"AR9380\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"AR9460\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"AR9330\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"AR9340\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"QCA9550\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"AR9485\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"QCA9565\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"QCA9530\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"????\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ath_hal_mac_name(%struct.ath_hal* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ath_hal*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  %4 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %5 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %52 [
    i32 144, label %7
    i32 141, label %7
    i32 140, label %8
    i32 139, label %8
    i32 135, label %9
    i32 142, label %10
    i32 145, label %11
    i32 143, label %12
    i32 146, label %13
    i32 152, label %14
    i32 153, label %15
    i32 130, label %16
    i32 129, label %17
    i32 134, label %18
    i32 128, label %19
    i32 131, label %20
    i32 133, label %28
    i32 132, label %29
    i32 149, label %37
    i32 148, label %45
    i32 151, label %46
    i32 150, label %47
    i32 137, label %48
    i32 147, label %49
    i32 136, label %50
    i32 138, label %51
  ]

7:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %53

8:                                                ; preds = %1, %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %53

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %53

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %53

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %53

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %53

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %53

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %53

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %53

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %53

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %53

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %53

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %53

20:                                               ; preds = %1
  %21 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %22 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %53

27:                                               ; preds = %20
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %53

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %53

29:                                               ; preds = %1
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %53

36:                                               ; preds = %29
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %53

37:                                               ; preds = %1
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AR_SREV_REVISION_AR9580_10, align 4
  %42 = icmp sge i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %53

44:                                               ; preds = %37
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %53

45:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %53

46:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %53

47:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %53

48:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %53

49:                                               ; preds = %1
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %53

50:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %53

51:                                               ; preds = %1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %53

52:                                               ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %53

53:                                               ; preds = %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %36, %35, %28, %27, %26, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %54 = load i8*, i8** %2, align 8
  ret i8* %54
}

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
