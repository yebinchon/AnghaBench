; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_RemoveFromSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ether.c_ether_RemoveFromSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32 }
%struct.etherdevice = type { i64 }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s: fdunset(ctrl) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*, i32*, i32*, i32*)* @ether_RemoveFromSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ether_RemoveFromSet(%struct.physical* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.physical*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.etherdevice*, align 8
  %10 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.physical*, %struct.physical** %5, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = call %struct.etherdevice* @device2ether(%struct.TYPE_4__* %13)
  store %struct.etherdevice* %14, %struct.etherdevice** %9, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %44

17:                                               ; preds = %4
  %18 = load %struct.etherdevice*, %struct.etherdevice** %9, align 8
  %19 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %17
  %23 = load %struct.etherdevice*, %struct.etherdevice** %9, align 8
  %24 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @FD_ISSET(i64 %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.etherdevice*, %struct.etherdevice** %9, align 8
  %31 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @FD_CLR(i64 %32, i32* %33)
  %35 = load i32, i32* @LogTIMER, align 4
  %36 = load %struct.physical*, %struct.physical** %5, align 8
  %37 = getelementptr inbounds %struct.physical, %struct.physical* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.etherdevice*, %struct.etherdevice** %9, align 8
  %41 = getelementptr inbounds %struct.etherdevice, %struct.etherdevice* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @log_Printf(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %39, i64 %42)
  store i32 1, i32* %10, align 4
  br label %45

44:                                               ; preds = %22, %17, %4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.physical*, %struct.physical** %5, align 8
  %47 = getelementptr inbounds %struct.physical, %struct.physical* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to i32 (%struct.physical*, i32*, i32*, i32*)**
  store i32 (%struct.physical*, i32*, i32*, i32*)* null, i32 (%struct.physical*, i32*, i32*, i32*)** %50, align 8
  %51 = load %struct.physical*, %struct.physical** %5, align 8
  %52 = load i32*, i32** %6, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i64 @physical_RemoveFromSet(%struct.physical* %51, i32* %52, i32* %53, i32* %54)
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %10, align 4
  %60 = load %struct.physical*, %struct.physical** %5, align 8
  %61 = getelementptr inbounds %struct.physical, %struct.physical* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = bitcast {}** %63 to i32 (%struct.physical*, i32*, i32*, i32*)**
  store i32 (%struct.physical*, i32*, i32*, i32*)* @ether_RemoveFromSet, i32 (%struct.physical*, i32*, i32*, i32*)** %64, align 8
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local %struct.etherdevice* @device2ether(%struct.TYPE_4__*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @FD_CLR(i64, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i64) #1

declare dso_local i64 @physical_RemoveFromSet(%struct.physical*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
