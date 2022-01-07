; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_find_next_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_find_next_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_id_state = type { i64, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_id_state*)* @find_next_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_next_volume(%struct.config_id_state* %0) #0 {
  %2 = alloca %struct.config_id_state*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  store %struct.config_id_state* %0, %struct.config_id_state** %2, align 8
  br label %5

5:                                                ; preds = %86, %59, %29, %1
  %6 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %7 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %31, %5
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %13 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %10
  %17 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %18 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %26 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %5

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %10

34:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %61, %34
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %38 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %36, %41
  br i1 %42, label %43, label %64

43:                                               ; preds = %35
  %44 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %45 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %44, i32 0, i32 3
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %48, i64 %50
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %56 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %43
  br label %5

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %35

64:                                               ; preds = %35
  %65 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %66 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  store %struct.TYPE_10__* %69, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %88, %64
  %71 = load i32, i32* %4, align 4
  %72 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %73 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %72, i32 0, i32 2
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp slt i32 %71, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %83 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %5

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 1
  store %struct.TYPE_10__* %90, %struct.TYPE_10__** %3, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %4, align 4
  br label %70

93:                                               ; preds = %70
  %94 = load %struct.config_id_state*, %struct.config_id_state** %2, align 8
  %95 = getelementptr inbounds %struct.config_id_state, %struct.config_id_state* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  ret i64 %96
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
