; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_sioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_cx_sioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }
%struct.TYPE_8__ = type { i32* }

@T_NONE = common dso_local global i64 0, align 8
@M_ASYNC = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ioctl 0x%lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"SIOCADDMULTI\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"SIOCDELMULTI\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"SIOCSIFFLAGS\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"SIOCSIFADDR\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, i32)* @cx_sioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx_sioctl(%struct.ifnet* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
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
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %8, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %9, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @T_NONE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %3
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @M_ASYNC, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29, %3
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %4, align 4
  br label %140

39:                                               ; preds = %29
  %40 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %41 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @sppp_ioctl(%struct.ifnet* %47, i32 %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %39
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %140

55:                                               ; preds = %39
  %56 = call i32 (...) @splhigh()
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @CX_LOCK(i32* %57)
  %59 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %60 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IFF_DEBUG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %55
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %80

70:                                               ; preds = %55
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i64 %75, i64* %79, align 8
  br label %80

80:                                               ; preds = %70, %65
  %81 = load i32*, i32** %9, align 8
  %82 = call i32 @CX_UNLOCK(i32* %81)
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @splx(i32 %83)
  %85 = load i32, i32* %6, align 4
  switch i32 %85, label %86 [
    i32 131, label %92
    i32 130, label %95
    i32 128, label %98
    i32 129, label %101
  ]

86:                                               ; preds = %80
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @CX_DEBUG2(%struct.TYPE_10__* %87, i8* %90)
  store i32 0, i32* %4, align 4
  br label %140

92:                                               ; preds = %80
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %94 = call i32 @CX_DEBUG2(%struct.TYPE_10__* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %140

95:                                               ; preds = %80
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %97 = call i32 @CX_DEBUG2(%struct.TYPE_10__* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %140

98:                                               ; preds = %80
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %100 = call i32 @CX_DEBUG2(%struct.TYPE_10__* %99, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %104

101:                                              ; preds = %80
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %103 = call i32 @CX_DEBUG2(%struct.TYPE_10__* %102, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %104

104:                                              ; preds = %101, %98
  %105 = call i32 (...) @splhigh()
  store i32 %105, i32* %11, align 4
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @CX_LOCK(i32* %106)
  %108 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %109 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %125, label %117

117:                                              ; preds = %104
  %118 = load i32, i32* %13, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %122 = call i32 @cx_up(%struct.TYPE_10__* %121)
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %124 = call i32 @cx_start(%struct.TYPE_10__* %123)
  br label %135

125:                                              ; preds = %117, %104
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %133 = call i32 @cx_down(%struct.TYPE_10__* %132)
  br label %134

134:                                              ; preds = %131, %128, %125
  br label %135

135:                                              ; preds = %134, %120
  %136 = load i32*, i32** %9, align 8
  %137 = call i32 @CX_UNLOCK(i32* %136)
  %138 = load i32, i32* %11, align 4
  %139 = call i32 @splx(i32 %138)
  store i32 0, i32* %4, align 4
  br label %140

140:                                              ; preds = %135, %95, %92, %86, %53, %37
  %141 = load i32, i32* %4, align 4
  ret i32 %141
}

declare dso_local i32 @sppp_ioctl(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @CX_LOCK(i32*) #1

declare dso_local i32 @CX_UNLOCK(i32*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @CX_DEBUG2(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @cx_up(%struct.TYPE_10__*) #1

declare dso_local i32 @cx_start(%struct.TYPE_10__*) #1

declare dso_local i32 @cx_down(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
