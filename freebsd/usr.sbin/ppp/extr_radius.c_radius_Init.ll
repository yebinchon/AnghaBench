; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_radius.c_radius_Init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radius = type { %struct.TYPE_12__, %struct.TYPE_11__, i32*, i32*, i32*, i32*, i32*, i32, i32*, %struct.TYPE_10__, %struct.TYPE_9__, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { i8* }
%struct.TYPE_11__ = type { i64, i32*, i64, i32*, i64, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@RADIUS_DESCRIPTOR = common dso_local global i32 0, align 4
@radius_UpdateSet = common dso_local global i32 0, align 4
@radius_IsSet = common dso_local global i32 0, align 4
@radius_Read = common dso_local global i32 0, align 4
@radius_Write = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@INADDR_NONE = common dso_local global i32 0, align 4
@DEF_MTU = common dso_local global i32 0, align 4
@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Radius: radius_Init\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radius_Init(%struct.radius* %0) #0 {
  %2 = alloca %struct.radius*, align 8
  store %struct.radius* %0, %struct.radius** %2, align 8
  %3 = load i32, i32* @RADIUS_DESCRIPTOR, align 4
  %4 = load %struct.radius*, %struct.radius** %2, align 8
  %5 = getelementptr inbounds %struct.radius, %struct.radius* %4, i32 0, i32 14
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 4
  store i32 %3, i32* %6, align 8
  %7 = load i32, i32* @radius_UpdateSet, align 4
  %8 = load %struct.radius*, %struct.radius** %2, align 8
  %9 = getelementptr inbounds %struct.radius, %struct.radius* %8, i32 0, i32 14
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 3
  store i32 %7, i32* %10, align 4
  %11 = load i32, i32* @radius_IsSet, align 4
  %12 = load %struct.radius*, %struct.radius** %2, align 8
  %13 = getelementptr inbounds %struct.radius, %struct.radius* %12, i32 0, i32 14
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32 %11, i32* %14, align 8
  %15 = load i32, i32* @radius_Read, align 4
  %16 = load %struct.radius*, %struct.radius** %2, align 8
  %17 = getelementptr inbounds %struct.radius, %struct.radius* %16, i32 0, i32 14
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @radius_Write, align 4
  %20 = load %struct.radius*, %struct.radius** %2, align 8
  %21 = getelementptr inbounds %struct.radius, %struct.radius* %20, i32 0, i32 14
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.radius*, %struct.radius** %2, align 8
  %24 = getelementptr inbounds %struct.radius, %struct.radius* %23, i32 0, i32 13
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  %26 = load %struct.radius*, %struct.radius** %2, align 8
  %27 = getelementptr inbounds %struct.radius, %struct.radius* %26, i32 0, i32 13
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.radius*, %struct.radius** %2, align 8
  %30 = getelementptr inbounds %struct.radius, %struct.radius* %29, i32 0, i32 13
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  %32 = call i32 @memset(i32* %31, i8 signext 0, i32 4)
  %33 = load %struct.radius*, %struct.radius** %2, align 8
  %34 = getelementptr inbounds %struct.radius, %struct.radius* %33, i32 0, i32 13
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.radius*, %struct.radius** %2, align 8
  %37 = getelementptr inbounds %struct.radius, %struct.radius* %36, i32 0, i32 12
  store i64 0, i64* %37, align 8
  %38 = load %struct.radius*, %struct.radius** %2, align 8
  %39 = getelementptr inbounds %struct.radius, %struct.radius* %38, i32 0, i32 11
  store i64 0, i64* %39, align 8
  %40 = load i32, i32* @INADDR_ANY, align 4
  %41 = load %struct.radius*, %struct.radius** %2, align 8
  %42 = getelementptr inbounds %struct.radius, %struct.radius* %41, i32 0, i32 10
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @INADDR_NONE, align 4
  %45 = load %struct.radius*, %struct.radius** %2, align 8
  %46 = getelementptr inbounds %struct.radius, %struct.radius* %45, i32 0, i32 9
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 8
  %48 = load %struct.radius*, %struct.radius** %2, align 8
  %49 = getelementptr inbounds %struct.radius, %struct.radius* %48, i32 0, i32 8
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @DEF_MTU, align 4
  %51 = load %struct.radius*, %struct.radius** %2, align 8
  %52 = getelementptr inbounds %struct.radius, %struct.radius* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 8
  %53 = load %struct.radius*, %struct.radius** %2, align 8
  %54 = getelementptr inbounds %struct.radius, %struct.radius* %53, i32 0, i32 6
  store i32* null, i32** %54, align 8
  %55 = load %struct.radius*, %struct.radius** %2, align 8
  %56 = getelementptr inbounds %struct.radius, %struct.radius* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load %struct.radius*, %struct.radius** %2, align 8
  %58 = getelementptr inbounds %struct.radius, %struct.radius* %57, i32 0, i32 4
  store i32* null, i32** %58, align 8
  %59 = load %struct.radius*, %struct.radius** %2, align 8
  %60 = getelementptr inbounds %struct.radius, %struct.radius* %59, i32 0, i32 3
  store i32* null, i32** %60, align 8
  %61 = load %struct.radius*, %struct.radius** %2, align 8
  %62 = getelementptr inbounds %struct.radius, %struct.radius* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  %63 = load %struct.radius*, %struct.radius** %2, align 8
  %64 = getelementptr inbounds %struct.radius, %struct.radius* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 5
  store i64 0, i64* %65, align 8
  %66 = load %struct.radius*, %struct.radius** %2, align 8
  %67 = getelementptr inbounds %struct.radius, %struct.radius* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.radius*, %struct.radius** %2, align 8
  %70 = getelementptr inbounds %struct.radius, %struct.radius* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i32* null, i32** %71, align 8
  %72 = load %struct.radius*, %struct.radius** %2, align 8
  %73 = getelementptr inbounds %struct.radius, %struct.radius* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.radius*, %struct.radius** %2, align 8
  %76 = getelementptr inbounds %struct.radius, %struct.radius* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  %78 = load %struct.radius*, %struct.radius** %2, align 8
  %79 = getelementptr inbounds %struct.radius, %struct.radius* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.radius*, %struct.radius** %2, align 8
  %82 = getelementptr inbounds %struct.radius, %struct.radius* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  store i8 0, i8* %84, align 1
  %85 = load i32, i32* @LogDEBUG, align 4
  %86 = call i32 @log_Printf(i32 %85, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @log_Printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
