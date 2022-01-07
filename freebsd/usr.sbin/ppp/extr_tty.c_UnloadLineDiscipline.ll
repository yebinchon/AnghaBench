; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_UnloadLineDiscipline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_UnloadLineDiscipline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ttydevice = type { i32, i8*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't reset tty speed to %d\0A\00", align 1
@TIOCSETD = common dso_local global i32 0, align 4
@PHYSICAL_NOFORCE = common dso_local global i32 0, align 4
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%s: Unloaded netgraph tty line discipline\0A\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: Failed to unload netgraph tty line discipline\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*)* @UnloadLineDiscipline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @UnloadLineDiscipline(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca %struct.ttydevice*, align 8
  store %struct.physical* %0, %struct.physical** %2, align 8
  %4 = load %struct.physical*, %struct.physical** %2, align 8
  %5 = getelementptr inbounds %struct.physical, %struct.physical* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.ttydevice* @device2tty(i32 %6)
  store %struct.ttydevice* %7, %struct.ttydevice** %3, align 8
  %8 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %9 = call i64 @isngtty(%struct.ttydevice* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %83

11:                                               ; preds = %1
  %12 = load %struct.physical*, %struct.physical** %2, align 8
  %13 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %14 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @physical_SetSpeed(%struct.physical* %12, i64 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* @LogWARN, align 4
  %21 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %22 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @log_Printf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %26

26:                                               ; preds = %19, %11
  %27 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %28 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.physical*, %struct.physical** %2, align 8
  %31 = getelementptr inbounds %struct.physical, %struct.physical* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @close(i32 %32)
  %34 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %35 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.physical*, %struct.physical** %2, align 8
  %39 = getelementptr inbounds %struct.physical, %struct.physical* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %41 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 -1, i32* %42, align 8
  %43 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %44 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @close(i32 %45)
  %47 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %48 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %50 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  store i8 0, i8* %51, align 1
  %52 = load %struct.physical*, %struct.physical** %2, align 8
  %53 = getelementptr inbounds %struct.physical, %struct.physical* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TIOCSETD, align 4
  %56 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %57 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i64 @ID0ioctl(i32 %54, i32 %55, i32* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %75

61:                                               ; preds = %26
  %62 = load %struct.physical*, %struct.physical** %2, align 8
  %63 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %64 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @PHYSICAL_NOFORCE, align 4
  %68 = call i32 @physical_SetupStack(%struct.physical* %62, i32 %66, i32 %67)
  %69 = load i32, i32* @LogPHASE, align 4
  %70 = load %struct.physical*, %struct.physical** %2, align 8
  %71 = getelementptr inbounds %struct.physical, %struct.physical* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @log_Printf(i32 %69, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  br label %82

75:                                               ; preds = %26
  %76 = load i32, i32* @LogWARN, align 4
  %77 = load %struct.physical*, %struct.physical** %2, align 8
  %78 = getelementptr inbounds %struct.physical, %struct.physical* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @log_Printf(i32 %76, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %75, %61
  br label %83

83:                                               ; preds = %82, %1
  ret void
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i64 @isngtty(%struct.ttydevice*) #1

declare dso_local i32 @physical_SetSpeed(%struct.physical*, i64) #1

declare dso_local i32 @log_Printf(i32, i8*, i64) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @ID0ioctl(i32, i32, i32*) #1

declare dso_local i32 @physical_SetupStack(%struct.physical*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
