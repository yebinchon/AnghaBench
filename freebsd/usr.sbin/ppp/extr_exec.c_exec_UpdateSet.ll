; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_exec.c_exec_UpdateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_exec.c_exec_UpdateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.physical = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.execdevice = type { i32 }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%s: fdset(w) %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"%s: fdset(e) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, i32*, i32*, i32*, i32*)* @exec_UpdateSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_UpdateSet(%struct.fdescriptor* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.fdescriptor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.physical*, align 8
  %12 = alloca %struct.execdevice*, align 8
  %13 = alloca i32, align 4
  store %struct.fdescriptor* %0, %struct.fdescriptor** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %14 = load %struct.fdescriptor*, %struct.fdescriptor** %6, align 8
  %15 = call %struct.physical* @descriptor2physical(%struct.fdescriptor* %14)
  store %struct.physical* %15, %struct.physical** %11, align 8
  %16 = load %struct.physical*, %struct.physical** %11, align 8
  %17 = getelementptr inbounds %struct.physical, %struct.physical* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.execdevice* @device2exec(i32 %18)
  store %struct.execdevice* %19, %struct.execdevice** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %5
  %23 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %24 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %29 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @FD_SET(i32 %30, i32* %31)
  %33 = load i32, i32* @LogTIMER, align 4
  %34 = load %struct.physical*, %struct.physical** %11, align 8
  %35 = getelementptr inbounds %struct.physical, %struct.physical* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %39 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @log_Printf(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* %13, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %13, align 4
  store i32* null, i32** %8, align 8
  br label %44

44:                                               ; preds = %27, %22, %5
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %69

47:                                               ; preds = %44
  %48 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %49 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %47
  %53 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %54 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @FD_SET(i32 %55, i32* %56)
  %58 = load i32, i32* @LogTIMER, align 4
  %59 = load %struct.physical*, %struct.physical** %11, align 8
  %60 = getelementptr inbounds %struct.physical, %struct.physical* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %64 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @log_Printf(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load i32, i32* %13, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %13, align 4
  br label %69

69:                                               ; preds = %52, %47, %44
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %69
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %76 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp sle i32 %74, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %72
  %80 = load %struct.execdevice*, %struct.execdevice** %12, align 8
  %81 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  %84 = load i32*, i32** %10, align 8
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %79, %72, %69
  %86 = load i32, i32* %13, align 4
  %87 = load %struct.fdescriptor*, %struct.fdescriptor** %6, align 8
  %88 = load i32*, i32** %7, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = load i32*, i32** %10, align 8
  %92 = call i32 @physical_doUpdateSet(%struct.fdescriptor* %87, i32* %88, i32* %89, i32* %90, i32* %91, i32 0)
  %93 = add nsw i32 %86, %92
  ret i32 %93
}

declare dso_local %struct.physical* @descriptor2physical(%struct.fdescriptor*) #1

declare dso_local %struct.execdevice* @device2exec(i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @physical_doUpdateSet(%struct.fdescriptor*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
