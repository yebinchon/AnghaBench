; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_exec.c_exec_RemoveFromSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_exec.c_exec_RemoveFromSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { {}* }
%struct.execdevice = type { i64 }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: fdunset(w) %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: fdunset(e) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i32*, i32*, i32*)* @exec_RemoveFromSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_RemoveFromSet(%struct.physical* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.execdevice*, align 8
  %10 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.physical*, %struct.physical** %5, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call %struct.execdevice* @device2exec(%struct.TYPE_4__* %13)
  store %struct.execdevice* %14, %struct.execdevice** %9, align 8
  %15 = load %struct.physical*, %struct.physical** %5, align 8
  %16 = getelementptr inbounds %struct.physical, %struct.physical* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.physical*, i32*, i32*, i32*)**
  store i32 (%struct.physical*, i32*, i32*, i32*)* null, i32 (%struct.physical*, i32*, i32*, i32*)** %19, align 8
  %20 = load %struct.physical*, %struct.physical** %5, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @physical_RemoveFromSet(%struct.physical* %20, i32* %21, i32* %22, i32* %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.physical*, %struct.physical** %5, align 8
  %26 = getelementptr inbounds %struct.physical, %struct.physical* %25, i32 0, i32 1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.physical*, i32*, i32*, i32*)**
  store i32 (%struct.physical*, i32*, i32*, i32*)* @exec_RemoveFromSet, i32 (%struct.physical*, i32*, i32*, i32*)** %29, align 8
  %30 = load %struct.execdevice*, %struct.execdevice** %9, align 8
  %31 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %32, 0
  br i1 %33, label %34, label %89

34:                                               ; preds = %4
  %35 = load i32*, i32** %7, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load %struct.execdevice*, %struct.execdevice** %9, align 8
  %39 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = call i64 @FD_ISSET(i64 %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load %struct.execdevice*, %struct.execdevice** %9, align 8
  %46 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32*, i32** %7, align 8
  %49 = call i32 @FD_CLR(i64 %47, i32* %48)
  %50 = load i32, i32* @LogTIMER, align 4
  %51 = load %struct.physical*, %struct.physical** %5, align 8
  %52 = getelementptr inbounds %struct.physical, %struct.physical* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.execdevice*, %struct.execdevice** %9, align 8
  %56 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @log_Printf(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %54, i64 %57)
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %44, %37, %34
  %62 = load i32*, i32** %8, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load %struct.execdevice*, %struct.execdevice** %9, align 8
  %66 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i64 @FD_ISSET(i64 %67, i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %64
  %72 = load %struct.execdevice*, %struct.execdevice** %9, align 8
  %73 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @FD_CLR(i64 %74, i32* %75)
  %77 = load i32, i32* @LogTIMER, align 4
  %78 = load %struct.physical*, %struct.physical** %5, align 8
  %79 = getelementptr inbounds %struct.physical, %struct.physical* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.execdevice*, %struct.execdevice** %9, align 8
  %83 = getelementptr inbounds %struct.execdevice, %struct.execdevice* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @log_Printf(i32 %77, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %81, i64 %84)
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %71, %64, %61
  br label %89

89:                                               ; preds = %88, %4
  %90 = load i32, i32* %10, align 4
  ret i32 %90
}

declare dso_local %struct.execdevice* @device2exec(%struct.TYPE_4__*) #1

declare dso_local i32 @physical_RemoveFromSet(%struct.physical*, i32*, i32*, i32*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @FD_CLR(i64, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
