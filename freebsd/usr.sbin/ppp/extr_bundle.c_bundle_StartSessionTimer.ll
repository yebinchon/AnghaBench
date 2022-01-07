; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_StartSessionTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_StartSessionTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i32, %struct.bundle*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@PHYS_DEDICATED = common dso_local global i32 0, align 4
@PHYS_DDIAL = common dso_local global i32 0, align 4
@bundle_SessionTimeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"session\00", align 1
@SECTICKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bundle_StartSessionTimer(%struct.bundle* %0, i32 %1) #0 {
  %3 = alloca %struct.bundle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.bundle*, %struct.bundle** %3, align 8
  %7 = getelementptr inbounds %struct.bundle, %struct.bundle* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = call i32 @timer_Stop(%struct.TYPE_9__* %8)
  %10 = load %struct.bundle*, %struct.bundle** %3, align 8
  %11 = getelementptr inbounds %struct.bundle, %struct.bundle* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PHYS_DEDICATED, align 4
  %15 = load i32, i32* @PHYS_DDIAL, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = load %struct.bundle*, %struct.bundle** %3, align 8
  %19 = getelementptr inbounds %struct.bundle, %struct.bundle* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %17, %21
  br i1 %22, label %23, label %70

23:                                               ; preds = %2
  %24 = load %struct.bundle*, %struct.bundle** %3, align 8
  %25 = getelementptr inbounds %struct.bundle, %struct.bundle* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %70

29:                                               ; preds = %23
  %30 = call i32 @time(i32* null)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.bundle*, %struct.bundle** %3, align 8
  %35 = getelementptr inbounds %struct.bundle, %struct.bundle* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %29
  %39 = load i32, i32* @bundle_SessionTimeout, align 4
  %40 = load %struct.bundle*, %struct.bundle** %3, align 8
  %41 = getelementptr inbounds %struct.bundle, %struct.bundle* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  store i32 %39, i32* %43, align 8
  %44 = load %struct.bundle*, %struct.bundle** %3, align 8
  %45 = getelementptr inbounds %struct.bundle, %struct.bundle* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %47, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @SECTICKS, align 4
  %50 = mul i32 %48, %49
  %51 = load %struct.bundle*, %struct.bundle** %3, align 8
  %52 = getelementptr inbounds %struct.bundle, %struct.bundle* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  store i32 %50, i32* %54, align 8
  %55 = load %struct.bundle*, %struct.bundle** %3, align 8
  %56 = load %struct.bundle*, %struct.bundle** %3, align 8
  %57 = getelementptr inbounds %struct.bundle, %struct.bundle* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  store %struct.bundle* %55, %struct.bundle** %59, align 8
  %60 = load %struct.bundle*, %struct.bundle** %3, align 8
  %61 = getelementptr inbounds %struct.bundle, %struct.bundle* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = call i32 @timer_Start(%struct.TYPE_9__* %62)
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %64, %65
  %67 = load %struct.bundle*, %struct.bundle** %3, align 8
  %68 = getelementptr inbounds %struct.bundle, %struct.bundle* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  store i32 %66, i32* %69, align 8
  br label %70

70:                                               ; preds = %38, %23, %2
  ret void
}

declare dso_local i32 @timer_Stop(%struct.TYPE_9__*) #1

declare dso_local i32 @time(i32*) #1

declare dso_local i32 @timer_Start(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
