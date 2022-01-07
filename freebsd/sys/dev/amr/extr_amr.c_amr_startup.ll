; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amr/extr_amr.c_amr_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amr_softc = type { %struct.TYPE_2__, i32, i32, %struct.amr_logdrive* }
%struct.TYPE_2__ = type { i32* }
%struct.amr_logdrive = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"can't scan controller for drives\0A\00", align 1
@AMR_MAXLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device_add_child failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"bus_generic_attach returned %d\0A\00", align 1
@AMR_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@AMR_STATE_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @amr_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amr_startup(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.amr_softc*, align 8
  %4 = alloca %struct.amr_logdrive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.amr_softc*
  store %struct.amr_softc* %8, %struct.amr_softc** %3, align 8
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %11 = call i64 @amr_query_controller(%struct.amr_softc* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %15 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %132

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %19 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %20 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %19, i32 0, i32 3
  %21 = load %struct.amr_logdrive*, %struct.amr_logdrive** %20, align 8
  %22 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %21, i64 0
  store %struct.amr_logdrive* %22, %struct.amr_logdrive** %4, align 8
  br label %23

23:                                               ; preds = %90, %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @AMR_MAXLD, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %29 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, -1
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi i1 [ false, %23 ], [ %31, %27 ]
  br i1 %33, label %34, label %95

34:                                               ; preds = %32
  %35 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %36 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %89

39:                                               ; preds = %34
  %40 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %41 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %42, 2097152
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %46 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %45, i32 0, i32 2
  store i32 255, i32* %46, align 8
  %47 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %48 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %47, i32 0, i32 3
  store i32 63, i32* %48, align 4
  br label %54

49:                                               ; preds = %39
  %50 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %51 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %50, i32 0, i32 2
  store i32 64, i32* %51, align 8
  %52 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %53 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %52, i32 0, i32 3
  store i32 32, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %56 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %59 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %62 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = mul nsw i32 %60, %63
  %65 = sdiv i32 %57, %64
  %66 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %67 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %69 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @device_add_child(i32 %70, i32* null, i32 -1)
  %72 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %73 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %72, i32 0, i32 1
  store i64 %71, i64* %73, align 8
  %74 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %75 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %54
  %79 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %80 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %54
  %84 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %85 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %88 = call i32 @device_set_ivars(i64 %86, %struct.amr_logdrive* %87)
  br label %89

89:                                               ; preds = %83, %34
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %5, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %5, align 4
  %93 = load %struct.amr_logdrive*, %struct.amr_logdrive** %4, align 8
  %94 = getelementptr inbounds %struct.amr_logdrive, %struct.amr_logdrive* %93, i32 1
  store %struct.amr_logdrive* %94, %struct.amr_logdrive** %4, align 8
  br label %23

95:                                               ; preds = %32
  %96 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %97 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @bus_generic_attach(i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %103 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %6, align 4
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %101, %95
  %108 = load i32, i32* @AMR_STATE_SHUTDOWN, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %111 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @AMR_STATE_INTEN, align 4
  %115 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %116 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  %119 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %120 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %107
  %125 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %126 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %125, i32 0, i32 0
  %127 = call i32 @config_intrhook_disestablish(%struct.TYPE_2__* %126)
  br label %128

128:                                              ; preds = %124, %107
  %129 = load %struct.amr_softc*, %struct.amr_softc** %3, align 8
  %130 = getelementptr inbounds %struct.amr_softc, %struct.amr_softc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %128, %13
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i64 @amr_query_controller(%struct.amr_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @device_set_ivars(i64, %struct.amr_logdrive*) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @config_intrhook_disestablish(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
