; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_put_physical_details.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_put_physical_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.physical = type { %struct.TYPE_9__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@RAD_VIRTUAL = common dso_local global i32 0, align 4
@RAD_ISDN_SYNC = common dso_local global i32 0, align 4
@RAD_ASYNC = common dso_local global i32 0, align 4
@RAD_ETHERNET = common dso_local global i32 0, align 4
@RAD_NAS_PORT_TYPE = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rad_put: rad_put_int: %s\0A\00", align 1
@RAD_NAS_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radius*, %struct.physical*)* @radius_put_physical_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radius_put_physical_details(%struct.radius* %0, %struct.physical* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radius*, align 8
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.radius* %0, %struct.radius** %4, align 8
  store %struct.physical* %1, %struct.physical** %5, align 8
  %8 = load i32, i32* @RAD_VIRTUAL, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.physical*, %struct.physical** %5, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.physical*, %struct.physical** %5, align 8
  %15 = getelementptr inbounds %struct.physical, %struct.physical* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %27 [
    i32 136, label %19
    i32 129, label %21
    i32 138, label %23
    i32 130, label %25
    i32 128, label %25
    i32 137, label %25
    i32 139, label %25
    i32 135, label %25
  ]

19:                                               ; preds = %13
  %20 = load i32, i32* @RAD_ISDN_SYNC, align 4
  store i32 %20, i32* %7, align 4
  br label %27

21:                                               ; preds = %13
  %22 = load i32, i32* @RAD_ASYNC, align 4
  store i32 %22, i32* %7, align 4
  br label %27

23:                                               ; preds = %13
  %24 = load i32, i32* @RAD_ETHERNET, align 4
  store i32 %24, i32* %7, align 4
  br label %27

25:                                               ; preds = %13, %13, %13, %13, %13
  %26 = load i32, i32* @RAD_VIRTUAL, align 4
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %13, %25, %23, %21, %19
  br label %28

28:                                               ; preds = %27, %2
  %29 = load %struct.radius*, %struct.radius** %4, align 8
  %30 = getelementptr inbounds %struct.radius, %struct.radius* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @RAD_NAS_PORT_TYPE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i64 @rad_put_int(i32 %32, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %28
  %38 = load i32, i32* @LogERROR, align 4
  %39 = load %struct.radius*, %struct.radius** %4, align 8
  %40 = getelementptr inbounds %struct.radius, %struct.radius* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @rad_strerror(i32 %42)
  %44 = call i32 @log_Printf(i32 %38, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.radius*, %struct.radius** %4, align 8
  %46 = getelementptr inbounds %struct.radius, %struct.radius* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rad_close(i32 %48)
  store i32 0, i32* %3, align 4
  br label %106

50:                                               ; preds = %28
  %51 = load %struct.radius*, %struct.radius** %4, align 8
  %52 = getelementptr inbounds %struct.radius, %struct.radius* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %76 [
    i32 132, label %54
    i32 133, label %57
    i32 131, label %67
    i32 134, label %75
  ]

54:                                               ; preds = %50
  %55 = call i64 (...) @getpid()
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %6, align 4
  br label %79

57:                                               ; preds = %50
  %58 = load %struct.physical*, %struct.physical** %5, align 8
  %59 = getelementptr inbounds %struct.physical, %struct.physical* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  br label %79

67:                                               ; preds = %50
  %68 = load %struct.physical*, %struct.physical** %5, align 8
  %69 = getelementptr inbounds %struct.physical, %struct.physical* %68, i32 0, i32 0
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %6, align 4
  br label %79

75:                                               ; preds = %50
  br label %76

76:                                               ; preds = %50, %75
  %77 = load %struct.physical*, %struct.physical** %5, align 8
  %78 = call i32 @physical_Slot(%struct.physical* %77)
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %76, %67, %57, %54
  %80 = load i32, i32* %6, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %105

82:                                               ; preds = %79
  %83 = load %struct.radius*, %struct.radius** %4, align 8
  %84 = getelementptr inbounds %struct.radius, %struct.radius* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @RAD_NAS_PORT, align 4
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @rad_put_int(i32 %86, i32 %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %82
  %92 = load i32, i32* @LogERROR, align 4
  %93 = load %struct.radius*, %struct.radius** %4, align 8
  %94 = getelementptr inbounds %struct.radius, %struct.radius* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @rad_strerror(i32 %96)
  %98 = call i32 @log_Printf(i32 %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load %struct.radius*, %struct.radius** %4, align 8
  %100 = getelementptr inbounds %struct.radius, %struct.radius* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @rad_close(i32 %102)
  store i32 0, i32* %3, align 4
  br label %106

104:                                              ; preds = %82
  br label %105

105:                                              ; preds = %104, %79
  store i32 1, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %91, %37
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i64 @rad_put_int(i32, i32, i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @rad_strerror(i32) #1

declare dso_local i32 @rad_close(i32) #1

declare dso_local i64 @getpid(...) #1

declare dso_local i32 @physical_Slot(%struct.physical*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
