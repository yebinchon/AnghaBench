; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_SetMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_bundle.c_bundle_SetMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.datalink = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@PHYS_AUTO = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i64 0, align 8
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"You must `set ifaddr' or `open' before changing mode to %s\0A\00", align 1
@PHASE_NETWORK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bundle_SetMode(%struct.bundle* %0, %struct.datalink* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.datalink*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.datalink* %1, %struct.datalink** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.datalink*, %struct.datalink** %6, align 8
  %10 = getelementptr inbounds %struct.datalink, %struct.datalink* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %77

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PHYS_AUTO, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %18
  %23 = load %struct.bundle*, %struct.bundle** %5, align 8
  %24 = getelementptr inbounds %struct.bundle, %struct.bundle* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @PHYS_AUTO, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %22
  %31 = load %struct.bundle*, %struct.bundle** %5, align 8
  %32 = getelementptr inbounds %struct.bundle, %struct.bundle* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @INADDR_ANY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %30
  %40 = load i32, i32* @LogWARN, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mode2Nam(i32 %41)
  %43 = call i32 @log_Printf(i32 %40, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %4, align 4
  br label %77

44:                                               ; preds = %30
  br label %45

45:                                               ; preds = %44, %22, %18
  %46 = load %struct.datalink*, %struct.datalink** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @datalink_SetMode(%struct.datalink* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %77

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @PHYS_AUTO, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.bundle*, %struct.bundle** %5, align 8
  %57 = getelementptr inbounds %struct.bundle, %struct.bundle* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PHYS_AUTO, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %55
  %64 = load %struct.bundle*, %struct.bundle** %5, align 8
  %65 = getelementptr inbounds %struct.bundle, %struct.bundle* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PHASE_NETWORK, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.bundle*, %struct.bundle** %5, align 8
  %71 = getelementptr inbounds %struct.bundle, %struct.bundle* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = call i32 @ipcp_InterfaceUp(%struct.TYPE_10__* %72)
  br label %74

74:                                               ; preds = %69, %63, %55, %51
  %75 = load %struct.bundle*, %struct.bundle** %5, align 8
  %76 = call i32 @bundle_LinksRemoved(%struct.bundle* %75)
  store i32 1, i32* %4, align 4
  br label %77

77:                                               ; preds = %74, %50, %39, %17
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @mode2Nam(i32) #1

declare dso_local i32 @datalink_SetMode(%struct.datalink*, i32) #1

declare dso_local i32 @ipcp_InterfaceUp(%struct.TYPE_10__*) #1

declare dso_local i32 @bundle_LinksRemoved(%struct.bundle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
