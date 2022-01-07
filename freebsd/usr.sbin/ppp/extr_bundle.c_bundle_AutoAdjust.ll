; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_AutoAdjust.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_AutoAdjust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_4__, %struct.datalink* }
%struct.TYPE_4__ = type { i32 }
%struct.datalink = type { i64, i32, %struct.TYPE_3__*, %struct.datalink* }
%struct.TYPE_3__ = type { i64 }

@PHYS_AUTO = common dso_local global i64 0, align 8
@DATALINK_OPEN = common dso_local global i64 0, align 8
@AUTO_DOWN = common dso_local global i32 0, align 4
@DATALINK_CLOSED = common dso_local global i64 0, align 8
@AUTO_UP = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%d%% saturation -> Opening link ``%s''\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%d%% saturation -> Closing link ``%s''\0A\00", align 1
@CLOSE_STAYDOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_AutoAdjust(%struct.bundle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bundle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.datalink*, align 8
  %8 = alloca %struct.datalink*, align 8
  %9 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.datalink* null, %struct.datalink** %9, align 8
  store %struct.datalink* null, %struct.datalink** %8, align 8
  %10 = load %struct.bundle*, %struct.bundle** %4, align 8
  %11 = getelementptr inbounds %struct.bundle, %struct.bundle* %10, i32 0, i32 1
  %12 = load %struct.datalink*, %struct.datalink** %11, align 8
  store %struct.datalink* %12, %struct.datalink** %7, align 8
  br label %13

13:                                               ; preds = %72, %3
  %14 = load %struct.datalink*, %struct.datalink** %7, align 8
  %15 = icmp ne %struct.datalink* %14, null
  br i1 %15, label %16, label %76

16:                                               ; preds = %13
  %17 = load %struct.datalink*, %struct.datalink** %7, align 8
  %18 = getelementptr inbounds %struct.datalink, %struct.datalink* %17, i32 0, i32 2
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PHYS_AUTO, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %58

24:                                               ; preds = %16
  %25 = load %struct.datalink*, %struct.datalink** %7, align 8
  %26 = getelementptr inbounds %struct.datalink, %struct.datalink* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DATALINK_OPEN, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @AUTO_DOWN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load %struct.datalink*, %struct.datalink** %8, align 8
  %36 = icmp ne %struct.datalink* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load %struct.datalink*, %struct.datalink** %8, align 8
  store %struct.datalink* %38, %struct.datalink** %9, align 8
  br label %39

39:                                               ; preds = %37, %34
  %40 = load %struct.datalink*, %struct.datalink** %7, align 8
  store %struct.datalink* %40, %struct.datalink** %8, align 8
  br label %41

41:                                               ; preds = %39, %30
  br label %57

42:                                               ; preds = %24
  %43 = load %struct.datalink*, %struct.datalink** %7, align 8
  %44 = getelementptr inbounds %struct.datalink, %struct.datalink* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @DATALINK_CLOSED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @AUTO_UP, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load %struct.datalink*, %struct.datalink** %7, align 8
  store %struct.datalink* %53, %struct.datalink** %8, align 8
  br label %76

54:                                               ; preds = %48
  br label %56

55:                                               ; preds = %42
  store %struct.datalink* null, %struct.datalink** %8, align 8
  br label %76

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %41
  br label %71

58:                                               ; preds = %16
  %59 = load %struct.datalink*, %struct.datalink** %7, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DATALINK_OPEN, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @AUTO_DOWN, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load %struct.datalink*, %struct.datalink** %7, align 8
  store %struct.datalink* %69, %struct.datalink** %9, align 8
  br label %70

70:                                               ; preds = %68, %64, %58
  br label %71

71:                                               ; preds = %70, %57
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.datalink*, %struct.datalink** %7, align 8
  %74 = getelementptr inbounds %struct.datalink, %struct.datalink* %73, i32 0, i32 3
  %75 = load %struct.datalink*, %struct.datalink** %74, align 8
  store %struct.datalink* %75, %struct.datalink** %7, align 8
  br label %13

76:                                               ; preds = %55, %52, %13
  %77 = load %struct.datalink*, %struct.datalink** %8, align 8
  %78 = icmp ne %struct.datalink* %77, null
  br i1 %78, label %79, label %115

79:                                               ; preds = %76
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @AUTO_UP, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %79
  %84 = load i32, i32* @LogPHASE, align 4
  %85 = load i32, i32* %5, align 4
  %86 = load %struct.datalink*, %struct.datalink** %8, align 8
  %87 = getelementptr inbounds %struct.datalink, %struct.datalink* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @log_Printf(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %88)
  %90 = load %struct.datalink*, %struct.datalink** %8, align 8
  %91 = call i32 @datalink_Up(%struct.datalink* %90, i32 1, i32 1)
  %92 = load %struct.bundle*, %struct.bundle** %4, align 8
  %93 = getelementptr inbounds %struct.bundle, %struct.bundle* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @mp_CheckAutoloadTimer(i32* %94)
  br label %114

96:                                               ; preds = %79
  %97 = load %struct.datalink*, %struct.datalink** %9, align 8
  %98 = icmp ne %struct.datalink* %97, null
  br i1 %98, label %99, label %113

99:                                               ; preds = %96
  %100 = load i32, i32* @LogPHASE, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.datalink*, %struct.datalink** %8, align 8
  %103 = getelementptr inbounds %struct.datalink, %struct.datalink* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @log_Printf(i32 %100, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104)
  %106 = load %struct.datalink*, %struct.datalink** %8, align 8
  %107 = load i32, i32* @CLOSE_STAYDOWN, align 4
  %108 = call i32 @datalink_Close(%struct.datalink* %106, i32 %107)
  %109 = load %struct.bundle*, %struct.bundle** %4, align 8
  %110 = getelementptr inbounds %struct.bundle, %struct.bundle* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = call i32 @mp_CheckAutoloadTimer(i32* %111)
  br label %113

113:                                              ; preds = %99, %96
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114, %76
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @datalink_Up(%struct.datalink*, i32, i32) #1

declare dso_local i32 @mp_CheckAutoloadTimer(i32*) #1

declare dso_local i32 @datalink_Close(%struct.datalink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
