; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_v14_print/extr_ath_ee_v14_print.c_eeprom_v14_print_targets.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/ath_ee_v14_print/extr_ath_ee_v14_print.c_eeprom_v14_print_targets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [11 x i8] c"2Ghz CCK:\0A\00", align 1
@AR5416_NUM_2G_CCK_TARGET_POWERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"2Ghz 11g:\0A\00", align 1
@AR5416_NUM_2G_20_TARGET_POWERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"2Ghz HT20:\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"2Ghz HT40:\0A\00", align 1
@AR5416_NUM_2G_40_TARGET_POWERS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [11 x i8] c"5Ghz 11a:\0A\00", align 1
@AR5416_NUM_5G_20_TARGET_POWERS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"5Ghz HT20:\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"5Ghz HT40:\0A\00", align 1
@AR5416_NUM_5G_40_TARGET_POWERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @eeprom_v14_print_targets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeprom_v14_print_targets(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %3, align 8
  %7 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AR5416_NUM_2G_CCK_TARGET_POWERS, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = call i32 @eeprom_v14_target_legacy_print(i32* %19)
  br label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %4, align 4
  br label %8

24:                                               ; preds = %8
  %25 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %39, %24
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AR5416_NUM_2G_20_TARGET_POWERS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 5
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @eeprom_v14_target_legacy_print(i32* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %26

42:                                               ; preds = %26
  %43 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %57, %42
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @AR5416_NUM_2G_20_TARGET_POWERS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = call i32 @eeprom_v14_target_ht_print(i32* %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %4, align 4
  br label %44

60:                                               ; preds = %44
  %61 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %75, %60
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @AR5416_NUM_2G_40_TARGET_POWERS, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %62
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = call i32 @eeprom_v14_target_ht_print(i32* %73)
  br label %75

75:                                               ; preds = %66
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %62

78:                                               ; preds = %62
  %79 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %93, %78
  %81 = load i32, i32* %4, align 4
  %82 = load i32, i32* @AR5416_NUM_5G_20_TARGET_POWERS, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %80
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = call i32 @eeprom_v14_target_legacy_print(i32* %91)
  br label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  br label %80

96:                                               ; preds = %80
  %97 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %111, %96
  %99 = load i32, i32* %4, align 4
  %100 = load i32, i32* @AR5416_NUM_5G_20_TARGET_POWERS, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %114

102:                                              ; preds = %98
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = call i32 @eeprom_v14_target_ht_print(i32* %109)
  br label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %98

114:                                              ; preds = %98
  %115 = call i32 @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %129, %114
  %117 = load i32, i32* %4, align 4
  %118 = load i32, i32* @AR5416_NUM_5G_40_TARGET_POWERS, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = call i32 @eeprom_v14_target_ht_print(i32* %127)
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  br label %116

132:                                              ; preds = %116
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @eeprom_v14_target_legacy_print(i32*) #1

declare dso_local i32 @eeprom_v14_target_ht_print(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
