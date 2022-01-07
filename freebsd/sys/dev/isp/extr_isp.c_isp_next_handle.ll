; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_next_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_next_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64 }

@NPH_RESERVED = common dso_local global i64 0, align 8
@SNS_ID = common dso_local global i64 0, align 8
@NPH_MAX = common dso_local global i64 0, align 8
@NIL_HANDLE = common dso_local global i64 0, align 8
@ISP_LOGERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Out of port handles!\00", align 1
@ISP_ROLE_NONE = common dso_local global i64 0, align 8
@MAX_FC_TARG = common dso_local global i32 0, align 4
@FC_PORTDB_STATE_NIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i64*)* @isp_next_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isp_next_handle(%struct.TYPE_10__* %0, i64* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i64* %1, i64** %5, align 8
  %13 = load i64*, i64** %5, align 8
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %16 = call i64 @ISP_CAP_2KLOGIN(%struct.TYPE_10__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  store i64 0, i64* %11, align 8
  %19 = load i64, i64* @NPH_RESERVED, align 8
  %20 = sub nsw i64 %19, 1
  store i64 %20, i64* %12, align 8
  br label %26

21:                                               ; preds = %2
  %22 = load i64, i64* @SNS_ID, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %11, align 8
  %24 = load i64, i64* @NPH_MAX, align 8
  %25 = sub nsw i64 %24, 1
  store i64 %25, i64* %12, align 8
  br label %26

26:                                               ; preds = %21, %18
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %95, %26
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @NIL_HANDLE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  store i64 %32, i64* %10, align 8
  br label %51

33:                                               ; preds = %27
  %34 = load i64, i64* %10, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  %42 = icmp sge i32 %41, 2
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = load i32, i32* @ISP_LOGERR, align 4
  %46 = call i32 @isp_prt(%struct.TYPE_10__* %44, i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %47 = load i64, i64* @NIL_HANDLE, align 8
  store i64 %47, i64* %3, align 8
  br label %108

48:                                               ; preds = %39
  %49 = load i64, i64* %11, align 8
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %48, %33
  br label %51

51:                                               ; preds = %50, %31
  store i32 0, i32* %8, align 4
  br label %52

52:                                               ; preds = %101, %51
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %104

58:                                               ; preds = %52
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__* %59, i32 %60)
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %6, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ISP_ROLE_NONE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %101

68:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %69

69:                                               ; preds = %97, %68
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @MAX_FC_TARG, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %69
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @FC_PORTDB_STATE_NIL, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %73
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %10, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %27

96:                                               ; preds = %84, %73
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %69

100:                                              ; preds = %69
  br label %101

101:                                              ; preds = %100, %67
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %52

104:                                              ; preds = %52
  %105 = load i64, i64* %10, align 8
  %106 = load i64*, i64** %5, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i64, i64* %10, align 8
  store i64 %107, i64* %3, align 8
  br label %108

108:                                              ; preds = %104, %43
  %109 = load i64, i64* %3, align 8
  ret i64 %109
}

declare dso_local i64 @ISP_CAP_2KLOGIN(%struct.TYPE_10__*) #1

declare dso_local i32 @isp_prt(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local %struct.TYPE_11__* @FCPARAM(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
