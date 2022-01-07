; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib_clone.c_iflib_clone_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib_clone.c_iflib_clone_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8* }

@.str = private unnamed_addr constant [70 x i8] c"iflib_clone_register failed - shared_ctx needs to have a device name\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"iflib_clone_register failed - shared_ctx %s alread registered\0A\00", align 1
@M_IFLIB = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@iflib_clone_create = common dso_local global i32 0, align 4
@iflib_clone_destroy = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"clone_simple failed -- cloned %s  devices will not be available\0A\00", align 1
@IFC_NOGROUP = common dso_local global i32 0, align 4
@iflladdr_event = common dso_local global i32 0, align 4
@iflib_iflladdr = common dso_local global i32 0, align 4
@EVENTHANDLER_PRI_ANY = common dso_local global i32 0, align 4
@ifnet_departure_event = common dso_local global i32 0, align 4
@iflib_ifdetach = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @iflib_clone_register(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %110

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = call i32* @iflib_ip_lookup(i8* %14)
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %110

22:                                               ; preds = %11
  %23 = load i32, i32* @M_IFLIB, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call %struct.TYPE_9__* @malloc(i32 40, i32 %23, i32 %26)
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %4, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 4
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i32* @devclass_create(i8* %33)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %22
  br label %106

42:                                               ; preds = %22
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i32, i32* @iflib_clone_create, align 4
  %47 = load i32, i32* @iflib_clone_destroy, align 4
  %48 = call i32* @if_clone_simple(i8* %45, i32 %46, i32 %47, i32 0)
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store i32* %48, i32** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %60

55:                                               ; preds = %42
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  br label %106

60:                                               ; preds = %42
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @IFC_NOGROUP, align 4
  %65 = call i32 @ifc_flags_set(i32* %63, i32 %64)
  %66 = load i32, i32* @iflladdr_event, align 4
  %67 = load i32, i32* @iflib_iflladdr, align 4
  %68 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %69 = call i8* @EVENTHANDLER_REGISTER(i32 %66, i32 %67, i32* null, i32 %68)
  %70 = bitcast i8* %69 to i32*
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %60
  br label %101

78:                                               ; preds = %60
  %79 = load i32, i32* @ifnet_departure_event, align 4
  %80 = load i32, i32* @iflib_ifdetach, align 4
  %81 = load i32, i32* @EVENTHANDLER_PRI_ANY, align 4
  %82 = call i8* @EVENTHANDLER_REGISTER(i32 %79, i32 %80, i32* null, i32 %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 2
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %91

90:                                               ; preds = %78
  br label %95

91:                                               ; preds = %78
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %93 = call i32 @iflib_ip_insert(%struct.TYPE_9__* %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_9__* %94, %struct.TYPE_9__** %2, align 8
  br label %110

95:                                               ; preds = %90
  %96 = load i32, i32* @iflladdr_event, align 4
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @EVENTHANDLER_DEREGISTER(i32 %96, i32* %99)
  br label %101

101:                                              ; preds = %95, %77
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @if_clone_detach(i32* %104)
  br label %106

106:                                              ; preds = %101, %55, %41
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %108 = load i32, i32* @M_IFLIB, align 4
  %109 = call i32 @free(%struct.TYPE_9__* %107, i32 %108)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %2, align 8
  br label %110

110:                                              ; preds = %106, %91, %17, %9
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  ret %struct.TYPE_9__* %111
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32* @iflib_ip_lookup(i8*) #1

declare dso_local %struct.TYPE_9__* @malloc(i32, i32, i32) #1

declare dso_local i32* @devclass_create(i8*) #1

declare dso_local i32* @if_clone_simple(i8*, i32, i32, i32) #1

declare dso_local i32 @ifc_flags_set(i32*, i32) #1

declare dso_local i8* @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @iflib_ip_insert(%struct.TYPE_9__*) #1

declare dso_local i32 @EVENTHANDLER_DEREGISTER(i32, i32*) #1

declare dso_local i32 @if_clone_detach(i32*) #1

declare dso_local i32 @free(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
