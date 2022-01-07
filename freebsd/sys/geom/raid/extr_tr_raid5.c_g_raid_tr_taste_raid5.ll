; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_taste_raid5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_taste_raid5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_tr_raid5_object = type { i32 }

@G_RAID_VOLUME_RL_RAID4 = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R4P0 = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R4PN = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID5 = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID5E = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID5EE = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID5R = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAID6 = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RL_RAIDMDF = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R5RA = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R5RS = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R5LA = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R5LS = common dso_local global i64 0, align 8
@G_RAID_TR_TASTE_FAIL = common dso_local global i32 0, align 4
@G_RAID_TR_TASTE_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*, %struct.g_raid_volume*)* @g_raid_tr_taste_raid5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_taste_raid5(%struct.g_raid_tr_object* %0, %struct.g_raid_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid_tr_object*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_tr_raid5_object*, align 8
  %7 = alloca i64, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %4, align 8
  store %struct.g_raid_volume* %1, %struct.g_raid_volume** %5, align 8
  %8 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %9 = bitcast %struct.g_raid_tr_object* %8 to %struct.g_raid_tr_raid5_object*
  store %struct.g_raid_tr_raid5_object* %9, %struct.g_raid_tr_raid5_object** %6, align 8
  %10 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %11 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %16 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @G_RAID_VOLUME_RL_RAID4, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @G_RAID_VOLUME_RLQ_R4P0, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @G_RAID_VOLUME_RLQ_R4PN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26, %22
  br label %99

31:                                               ; preds = %26, %2
  %32 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %33 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @G_RAID_VOLUME_RL_RAID5, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %79, label %39

39:                                               ; preds = %31
  %40 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %41 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @G_RAID_VOLUME_RL_RAID5E, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %79, label %47

47:                                               ; preds = %39
  %48 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %49 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @G_RAID_VOLUME_RL_RAID5EE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %79, label %55

55:                                               ; preds = %47
  %56 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %57 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @G_RAID_VOLUME_RL_RAID5R, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %79, label %63

63:                                               ; preds = %55
  %64 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %65 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @G_RAID_VOLUME_RL_RAID6, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %73 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @G_RAID_VOLUME_RL_RAIDMDF, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %71, %63, %55, %47, %39, %31
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* @G_RAID_VOLUME_RLQ_R5RA, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* @G_RAID_VOLUME_RLQ_R5RS, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load i64, i64* %7, align 8
  %89 = load i64, i64* @G_RAID_VOLUME_RLQ_R5LA, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* @G_RAID_VOLUME_RLQ_R5LS, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91, %87, %83, %79
  br label %98

96:                                               ; preds = %91, %71
  %97 = load i32, i32* @G_RAID_TR_TASTE_FAIL, align 4
  store i32 %97, i32* %3, align 4
  br label %103

98:                                               ; preds = %95
  br label %99

99:                                               ; preds = %98, %30
  %100 = load %struct.g_raid_tr_raid5_object*, %struct.g_raid_tr_raid5_object** %6, align 8
  %101 = getelementptr inbounds %struct.g_raid_tr_raid5_object, %struct.g_raid_tr_raid5_object* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* @G_RAID_TR_TASTE_SUCCEED, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %99, %96
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
