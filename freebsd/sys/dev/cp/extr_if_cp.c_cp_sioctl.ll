; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_sioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_if_cp.c_cp_sioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64 }
%struct.TYPE_9__ = type { i32* }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ioctl 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"ioctl SIOCADDMULTI\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"ioctl SIOCDELMULTI\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ioctl SIOCSIFFLAGS\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ioctl SIOCSIFADDR\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"ioctl 0x%lx p4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @cp_sioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_sioctl(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %15 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %14, i32 0, i32 2
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @sppp_ioctl(%struct.ifnet* %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %120

37:                                               ; preds = %3
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_DEBUG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %37
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  br label %59

49:                                               ; preds = %37
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  store i64 %54, i64* %58, align 8
  br label %59

59:                                               ; preds = %49, %44
  %60 = load i32, i32* %6, align 4
  switch i32 %60, label %61 [
    i32 131, label %67
    i32 130, label %70
    i32 128, label %73
    i32 129, label %76
  ]

61:                                               ; preds = %59
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 @CP_DEBUG2(%struct.TYPE_11__* %62, i8* %65)
  store i32 0, i32* %4, align 4
  br label %120

67:                                               ; preds = %59
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %69 = call i32 @CP_DEBUG2(%struct.TYPE_11__* %68, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %120

70:                                               ; preds = %59
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %72 = call i32 @CP_DEBUG2(%struct.TYPE_11__* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %120

73:                                               ; preds = %59
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = call i32 @CP_DEBUG2(%struct.TYPE_11__* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %79

76:                                               ; preds = %59
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = call i32 @CP_DEBUG2(%struct.TYPE_11__* %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %79

79:                                               ; preds = %76, %73
  %80 = call i32 (...) @splimp()
  store i32 %80, i32* %11, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @CP_LOCK(i32* %81)
  %83 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %84 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %100, label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = call i32 @cp_up(%struct.TYPE_11__* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = call i32 @cp_start(%struct.TYPE_11__* %98)
  br label %110

100:                                              ; preds = %92, %79
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %103
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %108 = call i32 @cp_down(%struct.TYPE_11__* %107)
  br label %109

109:                                              ; preds = %106, %103, %100
  br label %110

110:                                              ; preds = %109, %95
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @CP_DEBUG(%struct.TYPE_11__* %111, i8* %114)
  %116 = load i32*, i32** %9, align 8
  %117 = call i32 @CP_UNLOCK(i32* %116)
  %118 = load i32, i32* %11, align 4
  %119 = call i32 @splx(i32 %118)
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %110, %70, %67, %61, %35
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @sppp_ioctl(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @CP_DEBUG2(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @CP_LOCK(i32*) #1

declare dso_local i32 @cp_up(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_start(%struct.TYPE_11__*) #1

declare dso_local i32 @cp_down(%struct.TYPE_11__*) #1

declare dso_local i32 @CP_DEBUG(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @CP_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
