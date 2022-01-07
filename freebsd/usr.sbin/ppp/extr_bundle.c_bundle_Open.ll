; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Open.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.datalink* }
%struct.datalink = type { i64, %struct.TYPE_5__, %struct.TYPE_4__*, i32, %struct.datalink* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@DATALINK_CLOSED = common dso_local global i64 0, align 8
@DATALINK_OPENING = common dso_local global i64 0, align 8
@TIMER_RUNNING = common dso_local global i64 0, align 8
@DATALINK_READY = common dso_local global i64 0, align 8
@PHYS_AUTO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_Open(%struct.bundle* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.datalink*, align 8
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.bundle*, %struct.bundle** %5, align 8
  %11 = getelementptr inbounds %struct.bundle, %struct.bundle* %10, i32 0, i32 0
  %12 = load %struct.datalink*, %struct.datalink** %11, align 8
  store %struct.datalink* %12, %struct.datalink** %9, align 8
  br label %13

13:                                               ; preds = %83, %4
  %14 = load %struct.datalink*, %struct.datalink** %9, align 8
  %15 = icmp ne %struct.datalink* %14, null
  br i1 %15, label %16, label %87

16:                                               ; preds = %13
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %16
  %20 = load %struct.datalink*, %struct.datalink** %9, align 8
  %21 = getelementptr inbounds %struct.datalink, %struct.datalink* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @strcasecmp(i32 %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %82, label %26

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.datalink*, %struct.datalink** %9, align 8
  %29 = getelementptr inbounds %struct.datalink, %struct.datalink* %28, i32 0, i32 2
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %27, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %77

35:                                               ; preds = %26
  %36 = load %struct.datalink*, %struct.datalink** %9, align 8
  %37 = getelementptr inbounds %struct.datalink, %struct.datalink* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DATALINK_CLOSED, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %64, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = load %struct.datalink*, %struct.datalink** %9, align 8
  %46 = getelementptr inbounds %struct.datalink, %struct.datalink* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DATALINK_OPENING, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load %struct.datalink*, %struct.datalink** %9, align 8
  %52 = getelementptr inbounds %struct.datalink, %struct.datalink* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TIMER_RUNNING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %50, %44, %41
  %59 = load %struct.datalink*, %struct.datalink** %9, align 8
  %60 = getelementptr inbounds %struct.datalink, %struct.datalink* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DATALINK_READY, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58, %50, %35
  %65 = load %struct.datalink*, %struct.datalink** %9, align 8
  %66 = getelementptr inbounds %struct.datalink, %struct.datalink* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @timer_Stop(%struct.TYPE_6__* %67)
  %69 = load %struct.datalink*, %struct.datalink** %9, align 8
  %70 = call i32 @datalink_Up(%struct.datalink* %69, i32 1, i32 1)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @PHYS_AUTO, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  br label %87

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %58, %26
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  br label %87

81:                                               ; preds = %77
  br label %82

82:                                               ; preds = %81, %19
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.datalink*, %struct.datalink** %9, align 8
  %85 = getelementptr inbounds %struct.datalink, %struct.datalink* %84, i32 0, i32 4
  %86 = load %struct.datalink*, %struct.datalink** %85, align 8
  store %struct.datalink* %86, %struct.datalink** %9, align 8
  br label %13

87:                                               ; preds = %80, %75, %13
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_6__*) #1

declare dso_local i32 @datalink_Up(%struct.datalink*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
