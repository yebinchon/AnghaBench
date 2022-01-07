; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_sioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ctau/extr_if_ct.c_ct_sioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i64, i64 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ioctl 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SIOCADDMULTI\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SIOCDELMULTI\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SIOCSIFFLAGS\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SIOCSIFADDR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @ct_sioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_sioctl(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
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
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %9, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %12, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @sppp_ioctl(%struct.ifnet* %27, i32 %28, i32 %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %113

35:                                               ; preds = %3
  %36 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %37 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_DEBUG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  br label %57

47:                                               ; preds = %35
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  store i64 %52, i64* %56, align 8
  br label %57

57:                                               ; preds = %47, %42
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %59 [
    i32 131, label %65
    i32 130, label %68
    i32 128, label %71
    i32 129, label %74
  ]

59:                                               ; preds = %57
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @CT_DEBUG2(%struct.TYPE_8__* %60, i8* %63)
  store i32 0, i32* %4, align 4
  br label %113

65:                                               ; preds = %57
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %67 = call i32 @CT_DEBUG2(%struct.TYPE_8__* %66, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %113

68:                                               ; preds = %57
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %70 = call i32 @CT_DEBUG2(%struct.TYPE_8__* %69, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %113

71:                                               ; preds = %57
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %73 = call i32 @CT_DEBUG2(%struct.TYPE_8__* %72, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %77

74:                                               ; preds = %57
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = call i32 @CT_DEBUG2(%struct.TYPE_8__* %75, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %77

77:                                               ; preds = %74, %71
  %78 = call i32 (...) @splimp()
  store i32 %78, i32* %11, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = call i32 @CT_LOCK(i32* %79)
  %81 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %82 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %98, label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %95 = call i32 @ct_up(%struct.TYPE_8__* %94)
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %97 = call i32 @ct_start(%struct.TYPE_8__* %96)
  br label %108

98:                                               ; preds = %90, %77
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %106 = call i32 @ct_down(%struct.TYPE_8__* %105)
  br label %107

107:                                              ; preds = %104, %101, %98
  br label %108

108:                                              ; preds = %107, %93
  %109 = load i32*, i32** %9, align 8
  %110 = call i32 @CT_UNLOCK(i32* %109)
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @splx(i32 %111)
  store i32 0, i32* %4, align 4
  br label %113

113:                                              ; preds = %108, %68, %65, %59, %33
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @sppp_ioctl(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @CT_DEBUG2(%struct.TYPE_8__*, i8*) #1

declare dso_local i32 @splimp(...) #1

declare dso_local i32 @CT_LOCK(i32*) #1

declare dso_local i32 @ct_up(%struct.TYPE_8__*) #1

declare dso_local i32 @ct_start(%struct.TYPE_8__*) #1

declare dso_local i32 @ct_down(%struct.TYPE_8__*) #1

declare dso_local i32 @CT_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
