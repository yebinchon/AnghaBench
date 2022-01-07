; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetupStack.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_physical.c_physical_SetupStack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PHYSICAL_FORCE_SYNC = common dso_local global i32 0, align 4
@PHYSICAL_FORCE_SYNCNOACF = common dso_local global i32 0, align 4
@PHYSICAL_NOFORCE = common dso_local global i32 0, align 4
@synclayer = common dso_local global i32 0, align 4
@asynclayer = common dso_local global i32 0, align 4
@hdlclayer = common dso_local global i32 0, align 4
@acflayer = common dso_local global i32 0, align 4
@protolayer = common dso_local global i32 0, align 4
@lqrlayer = common dso_local global i32 0, align 4
@ccplayer = common dso_local global i32 0, align 4
@vjlayer = common dso_local global i32 0, align 4
@tcpmsslayer = common dso_local global i32 0, align 4
@natlayer = common dso_local global i32 0, align 4
@PHYSICAL_FORCE_ASYNC = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Sync device setting ignored for ``%s'' device\0A\00", align 1
@MODEM_SPEED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Async device setting ignored for ``%s'' device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @physical_SetupStack(%struct.physical* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.physical*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.physical*, %struct.physical** %4, align 8
  %8 = getelementptr inbounds %struct.physical, %struct.physical* %7, i32 0, i32 1
  %9 = call i32 @link_EmptyStack(i32* %8)
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @PHYSICAL_FORCE_SYNC, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PHYSICAL_FORCE_SYNCNOACF, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %25, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @PHYSICAL_NOFORCE, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = load %struct.physical*, %struct.physical** %4, align 8
  %23 = call i64 @physical_IsSync(%struct.physical* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %13, %3
  %26 = load %struct.physical*, %struct.physical** %4, align 8
  %27 = getelementptr inbounds %struct.physical, %struct.physical* %26, i32 0, i32 1
  %28 = call i32 @link_Stack(i32* %27, i32* @synclayer)
  br label %36

29:                                               ; preds = %21, %17
  %30 = load %struct.physical*, %struct.physical** %4, align 8
  %31 = getelementptr inbounds %struct.physical, %struct.physical* %30, i32 0, i32 1
  %32 = call i32 @link_Stack(i32* %31, i32* @asynclayer)
  %33 = load %struct.physical*, %struct.physical** %4, align 8
  %34 = getelementptr inbounds %struct.physical, %struct.physical* %33, i32 0, i32 1
  %35 = call i32 @link_Stack(i32* %34, i32* @hdlclayer)
  br label %36

36:                                               ; preds = %29, %25
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @PHYSICAL_FORCE_SYNCNOACF, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load %struct.physical*, %struct.physical** %4, align 8
  %42 = getelementptr inbounds %struct.physical, %struct.physical* %41, i32 0, i32 1
  %43 = call i32 @link_Stack(i32* %42, i32* @acflayer)
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.physical*, %struct.physical** %4, align 8
  %46 = getelementptr inbounds %struct.physical, %struct.physical* %45, i32 0, i32 1
  %47 = call i32 @link_Stack(i32* %46, i32* @protolayer)
  %48 = load %struct.physical*, %struct.physical** %4, align 8
  %49 = getelementptr inbounds %struct.physical, %struct.physical* %48, i32 0, i32 1
  %50 = call i32 @link_Stack(i32* %49, i32* @lqrlayer)
  %51 = load %struct.physical*, %struct.physical** %4, align 8
  %52 = getelementptr inbounds %struct.physical, %struct.physical* %51, i32 0, i32 1
  %53 = call i32 @link_Stack(i32* %52, i32* @ccplayer)
  %54 = load %struct.physical*, %struct.physical** %4, align 8
  %55 = getelementptr inbounds %struct.physical, %struct.physical* %54, i32 0, i32 1
  %56 = call i32 @link_Stack(i32* %55, i32* @vjlayer)
  %57 = load %struct.physical*, %struct.physical** %4, align 8
  %58 = getelementptr inbounds %struct.physical, %struct.physical* %57, i32 0, i32 1
  %59 = call i32 @link_Stack(i32* %58, i32* @tcpmsslayer)
  %60 = load %struct.physical*, %struct.physical** %4, align 8
  %61 = getelementptr inbounds %struct.physical, %struct.physical* %60, i32 0, i32 1
  %62 = call i32 @link_Stack(i32* %61, i32* @natlayer)
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PHYSICAL_FORCE_ASYNC, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %44
  %67 = load %struct.physical*, %struct.physical** %4, align 8
  %68 = call i64 @physical_IsSync(%struct.physical* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load i32, i32* @LogWARN, align 4
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @log_Printf(i32 %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %72)
  %74 = load i32, i32* @MODEM_SPEED, align 4
  %75 = load %struct.physical*, %struct.physical** %4, align 8
  %76 = getelementptr inbounds %struct.physical, %struct.physical* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 4
  br label %93

78:                                               ; preds = %66, %44
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @PHYSICAL_FORCE_SYNC, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %78
  %83 = load %struct.physical*, %struct.physical** %4, align 8
  %84 = call i64 @physical_IsSync(%struct.physical* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %82
  %87 = load i32, i32* @LogWARN, align 4
  %88 = load i8*, i8** %5, align 8
  %89 = call i32 @log_Printf(i32 %87, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %88)
  %90 = load %struct.physical*, %struct.physical** %4, align 8
  %91 = call i32 @physical_SetSync(%struct.physical* %90)
  br label %92

92:                                               ; preds = %86, %82, %78
  br label %93

93:                                               ; preds = %92, %70
  ret void
}

declare dso_local i32 @link_EmptyStack(i32*) #1

declare dso_local i64 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @link_Stack(i32*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i8*) #1

declare dso_local i32 @physical_SetSync(%struct.physical*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
