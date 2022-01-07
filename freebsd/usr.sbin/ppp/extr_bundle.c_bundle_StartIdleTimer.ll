; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_StartIdleTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_StartIdleTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32, %struct.bundle*, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHYS_DDIAL = common dso_local global i32 0, align 4
@bundle_IdleTimeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@SECTICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_StartIdleTimer(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bundle*, %struct.bundle** %3, align 8
  %8 = getelementptr inbounds %struct.bundle, %struct.bundle* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %10 = call i32 @timer_Stop(%struct.TYPE_11__* %9)
  %11 = load %struct.bundle*, %struct.bundle** %3, align 8
  %12 = getelementptr inbounds %struct.bundle, %struct.bundle* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PHYS_DEDICATED, align 4
  %16 = load i32, i32* @PHYS_DDIAL, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = load %struct.bundle*, %struct.bundle** %3, align 8
  %20 = getelementptr inbounds %struct.bundle, %struct.bundle* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %18, %22
  br i1 %23, label %24, label %120

24:                                               ; preds = %2
  %25 = load %struct.bundle*, %struct.bundle** %3, align 8
  %26 = getelementptr inbounds %struct.bundle, %struct.bundle* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %120

31:                                               ; preds = %24
  %32 = call i32 @time(i32* null)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.bundle*, %struct.bundle** %3, align 8
  %37 = getelementptr inbounds %struct.bundle, %struct.bundle* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.bundle*, %struct.bundle** %3, align 8
  %43 = getelementptr inbounds %struct.bundle, %struct.bundle* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ugt i32 %46, %47
  br i1 %48, label %49, label %88

49:                                               ; preds = %41
  %50 = load %struct.bundle*, %struct.bundle** %3, align 8
  %51 = getelementptr inbounds %struct.bundle, %struct.bundle* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %88

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.bundle*, %struct.bundle** %3, align 8
  %57 = getelementptr inbounds %struct.bundle, %struct.bundle* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sub i32 %55, %58
  store i32 %59, i32* %6, align 4
  %60 = load %struct.bundle*, %struct.bundle** %3, align 8
  %61 = getelementptr inbounds %struct.bundle, %struct.bundle* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %87

67:                                               ; preds = %54
  %68 = load %struct.bundle*, %struct.bundle** %3, align 8
  %69 = getelementptr inbounds %struct.bundle, %struct.bundle* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = sub i32 %72, %73
  %75 = zext i32 %74 to i64
  %76 = load i32, i32* %4, align 4
  %77 = zext i32 %76 to i64
  %78 = icmp sgt i64 %75, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %67
  %80 = load %struct.bundle*, %struct.bundle** %3, align 8
  %81 = getelementptr inbounds %struct.bundle, %struct.bundle* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = sub i32 %84, %85
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %79, %67, %54
  br label %88

88:                                               ; preds = %87, %49, %41
  %89 = load i32, i32* @bundle_IdleTimeout, align 4
  %90 = load %struct.bundle*, %struct.bundle** %3, align 8
  %91 = getelementptr inbounds %struct.bundle, %struct.bundle* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  store i32 %89, i32* %93, align 8
  %94 = load %struct.bundle*, %struct.bundle** %3, align 8
  %95 = getelementptr inbounds %struct.bundle, %struct.bundle* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %97, align 8
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @SECTICKS, align 4
  %100 = mul i32 %98, %99
  %101 = load %struct.bundle*, %struct.bundle** %3, align 8
  %102 = getelementptr inbounds %struct.bundle, %struct.bundle* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  store i32 %100, i32* %104, align 8
  %105 = load %struct.bundle*, %struct.bundle** %3, align 8
  %106 = load %struct.bundle*, %struct.bundle** %3, align 8
  %107 = getelementptr inbounds %struct.bundle, %struct.bundle* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  store %struct.bundle* %105, %struct.bundle** %109, align 8
  %110 = load %struct.bundle*, %struct.bundle** %3, align 8
  %111 = getelementptr inbounds %struct.bundle, %struct.bundle* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = call i32 @timer_Start(%struct.TYPE_11__* %112)
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* %4, align 4
  %116 = add i32 %114, %115
  %117 = load %struct.bundle*, %struct.bundle** %3, align 8
  %118 = getelementptr inbounds %struct.bundle, %struct.bundle* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 0
  store i32 %116, i32* %119, align 8
  br label %120

120:                                              ; preds = %88, %24, %2
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_11__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
