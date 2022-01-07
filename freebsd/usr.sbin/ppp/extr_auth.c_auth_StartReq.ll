; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_StartReq.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_auth.c_auth_StartReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.authinfo = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i8*, i32, i8*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.authinfo.0*)* }
%struct.authinfo.0 = type opaque
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@AuthTimeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@SECTICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_StartReq(%struct.authinfo* %0) #0 {
  %2 = alloca %struct.authinfo*, align 8
  store %struct.authinfo* %0, %struct.authinfo** %2, align 8
  %3 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %4 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %3, i32 0, i32 1
  %5 = call i32 @timer_Stop(%struct.TYPE_9__* %4)
  %6 = load i32, i32* @AuthTimeout, align 4
  %7 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %8 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  store i32 %6, i32* %9, align 8
  %10 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %11 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %14 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SECTICKS, align 4
  %19 = mul nsw i32 %17, %18
  %20 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %21 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 8
  %23 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %24 = bitcast %struct.authinfo* %23 to i8*
  %25 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %26 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %29 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %34 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %36 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %38 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32 (%struct.authinfo.0*)*, i32 (%struct.authinfo.0*)** %39, align 8
  %41 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %42 = bitcast %struct.authinfo* %41 to %struct.authinfo.0*
  %43 = call i32 %40(%struct.authinfo.0* %42)
  %44 = load %struct.authinfo*, %struct.authinfo** %2, align 8
  %45 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %44, i32 0, i32 1
  %46 = call i32 @timer_Start(%struct.TYPE_9__* %45)
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_9__*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
