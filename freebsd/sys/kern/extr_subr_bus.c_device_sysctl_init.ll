; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_sysctl_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_device_sysctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32* }

@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"device_index\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%desc\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@DEVICE_SYSCTL_DESC = common dso_local global i32 0, align 4
@device_sysctl_handler = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"device description\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%driver\00", align 1
@DEVICE_SYSCTL_DRIVER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"device driver name\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"%location\00", align 1
@DEVICE_SYSCTL_LOCATION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"device location relative to parent\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"%pnpinfo\00", align 1
@DEVICE_SYSCTL_PNPINFO = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [22 x i8] c"device identification\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"%parent\00", align 1
@DEVICE_SYSCTL_PARENT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [14 x i8] c"parent device\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"%domain\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"NUMA domain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @device_sysctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_sysctl_init(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %122

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = call i32 @devclass_sysctl_init(%struct.TYPE_8__* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = call i32 @sysctl_ctx_init(i32* %17)
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @SYSCTL_CHILDREN(i32* %23)
  %25 = load i32, i32* @OID_AUTO, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i64 @strlen(i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = call i32* @SYSCTL_ADD_NODE_WITH_LABEL(i32* %20, i32 %24, i32 %25, i64 %33, i32 %34, i32* null, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @SYSCTL_CHILDREN(i32* %42)
  %44 = load i32, i32* @OID_AUTO, align 4
  %45 = load i32, i32* @CTLTYPE_STRING, align 4
  %46 = load i32, i32* @CTLFLAG_RD, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = load i32, i32* @DEVICE_SYSCTL_DESC, align 4
  %50 = load i32, i32* @device_sysctl_handler, align 4
  %51 = call i32 @SYSCTL_ADD_PROC(i32* %39, i32 %43, i32 %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %47, %struct.TYPE_7__* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @SYSCTL_CHILDREN(i32* %56)
  %58 = load i32, i32* @OID_AUTO, align 4
  %59 = load i32, i32* @CTLTYPE_STRING, align 4
  %60 = load i32, i32* @CTLFLAG_RD, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %63 = load i32, i32* @DEVICE_SYSCTL_DRIVER, align 4
  %64 = load i32, i32* @device_sysctl_handler, align 4
  %65 = call i32 @SYSCTL_ADD_PROC(i32* %53, i32 %57, i32 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i32 %61, %struct.TYPE_7__* %62, i32 %63, i32 %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @SYSCTL_CHILDREN(i32* %70)
  %72 = load i32, i32* @OID_AUTO, align 4
  %73 = load i32, i32* @CTLTYPE_STRING, align 4
  %74 = load i32, i32* @CTLFLAG_RD, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %77 = load i32, i32* @DEVICE_SYSCTL_LOCATION, align 4
  %78 = load i32, i32* @device_sysctl_handler, align 4
  %79 = call i32 @SYSCTL_ADD_PROC(i32* %67, i32 %71, i32 %72, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i32 %75, %struct.TYPE_7__* %76, i32 %77, i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @SYSCTL_CHILDREN(i32* %84)
  %86 = load i32, i32* @OID_AUTO, align 4
  %87 = load i32, i32* @CTLTYPE_STRING, align 4
  %88 = load i32, i32* @CTLFLAG_RD, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %91 = load i32, i32* @DEVICE_SYSCTL_PNPINFO, align 4
  %92 = load i32, i32* @device_sysctl_handler, align 4
  %93 = call i32 @SYSCTL_ADD_PROC(i32* %81, i32 %85, i32 %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %89, %struct.TYPE_7__* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0))
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = call i32 @SYSCTL_CHILDREN(i32* %98)
  %100 = load i32, i32* @OID_AUTO, align 4
  %101 = load i32, i32* @CTLTYPE_STRING, align 4
  %102 = load i32, i32* @CTLFLAG_RD, align 4
  %103 = or i32 %101, %102
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %105 = load i32, i32* @DEVICE_SYSCTL_PARENT, align 4
  %106 = load i32, i32* @device_sysctl_handler, align 4
  %107 = call i32 @SYSCTL_ADD_PROC(i32* %95, i32 %99, i32 %100, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 %103, %struct.TYPE_7__* %104, i32 %105, i32 %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = call i64 @bus_get_domain(%struct.TYPE_7__* %108, i32* %4)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %13
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @SYSCTL_CHILDREN(i32* %116)
  %118 = load i32, i32* @OID_AUTO, align 4
  %119 = load i32, i32* @CTLFLAG_RD, align 4
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @SYSCTL_ADD_INT(i32* %113, i32 %117, i32 %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %119, i32* null, i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.14, i64 0, i64 0))
  br label %122

122:                                              ; preds = %12, %111, %13
  ret void
}

declare dso_local i32 @devclass_sysctl_init(%struct.TYPE_8__*) #1

declare dso_local i32 @sysctl_ctx_init(i32*) #1

declare dso_local i32* @SYSCTL_ADD_NODE_WITH_LABEL(i32*, i32, i32, i64, i32, i32*, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.TYPE_7__*, i32, i32, i8*, i8*) #1

declare dso_local i64 @bus_get_domain(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @SYSCTL_ADD_INT(i32*, i32, i32, i8*, i32, i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
