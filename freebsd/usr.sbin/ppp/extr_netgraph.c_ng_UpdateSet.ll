; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_UpdateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_netgraph.c_ng_UpdateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdescriptor = type { i32 }
%struct.physical = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ngdevice = type { i32 }

@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s(ctrl): fdset(r) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fdescriptor*, i32*, i32*, i32*, i32*)* @ng_UpdateSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ng_UpdateSet(%struct.fdescriptor* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.fdescriptor*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.physical*, align 8
  %12 = alloca %struct.ngdevice*, align 8
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
  %17 = getelementptr inbounds %struct.physical, %struct.physical* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.ngdevice* @device2ng(i32 %18)
  store %struct.ngdevice* %19, %struct.ngdevice** %12, align 8
  %20 = load %struct.physical*, %struct.physical** %11, align 8
  %21 = getelementptr inbounds %struct.physical, %struct.physical* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %45 [
    i32 129, label %25
    i32 128, label %25
  ]

25:                                               ; preds = %5, %5
  %26 = load i32*, i32** %7, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %25
  %29 = load %struct.ngdevice*, %struct.ngdevice** %12, align 8
  %30 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @FD_SET(i32 %31, i32* %32)
  %34 = load i32, i32* @LogTIMER, align 4
  %35 = load %struct.physical*, %struct.physical** %11, align 8
  %36 = getelementptr inbounds %struct.physical, %struct.physical* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ngdevice*, %struct.ngdevice** %12, align 8
  %40 = getelementptr inbounds %struct.ngdevice, %struct.ngdevice* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @log_Printf(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  store i32 1, i32* %13, align 4
  br label %44

43:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %43, %28
  br label %52

45:                                               ; preds = %5
  %46 = load %struct.fdescriptor*, %struct.fdescriptor** %6, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32 @physical_doUpdateSet(%struct.fdescriptor* %46, i32* %47, i32* %48, i32* %49, i32* %50, i32 0)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %45, %44
  %53 = load i32, i32* %13, align 4
  ret i32 %53
}

declare dso_local %struct.physical* @descriptor2physical(%struct.fdescriptor*) #1

declare dso_local %struct.ngdevice* @device2ng(i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @physical_doUpdateSet(%struct.fdescriptor*, i32*, i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
