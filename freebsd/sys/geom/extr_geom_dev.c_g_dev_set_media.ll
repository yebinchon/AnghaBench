; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_set_media.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_set_media.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_dev_softc* }
%struct.g_dev_softc = type { %struct.cdev*, %struct.cdev* }
%struct.cdev = type { i8* }

@SPECNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cdev=%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"DEVFS\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CDEV\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"MEDIACHANGE\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"GEOM\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"DEV\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_dev_set_media to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_dev_set_media(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca %struct.g_dev_softc*, align 8
  %4 = alloca %struct.cdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %7 = load i32, i32* @SPECNAMELEN, align 4
  %8 = add nsw i32 %7, 6
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %13 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %12, i32 0, i32 0
  %14 = load %struct.g_dev_softc*, %struct.g_dev_softc** %13, align 8
  store %struct.g_dev_softc* %14, %struct.g_dev_softc** %3, align 8
  %15 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %16 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %15, i32 0, i32 1
  %17 = load %struct.cdev*, %struct.cdev** %16, align 8
  store %struct.cdev* %17, %struct.cdev** %4, align 8
  %18 = trunc i64 %9 to i32
  %19 = load %struct.cdev*, %struct.cdev** %4, align 8
  %20 = getelementptr inbounds %struct.cdev, %struct.cdev* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @snprintf(i8* %11, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = call i32 @devctl_notify_f(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %11, i32 %23)
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = call i32 @devctl_notify_f(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %11, i32 %25)
  %27 = load %struct.g_dev_softc*, %struct.g_dev_softc** %3, align 8
  %28 = getelementptr inbounds %struct.g_dev_softc, %struct.g_dev_softc* %27, i32 0, i32 0
  %29 = load %struct.cdev*, %struct.cdev** %28, align 8
  store %struct.cdev* %29, %struct.cdev** %4, align 8
  %30 = load %struct.cdev*, %struct.cdev** %4, align 8
  %31 = icmp ne %struct.cdev* %30, null
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = trunc i64 %9 to i32
  %34 = load %struct.cdev*, %struct.cdev** %4, align 8
  %35 = getelementptr inbounds %struct.cdev, %struct.cdev* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @snprintf(i8* %11, i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @M_WAITOK, align 4
  %39 = call i32 @devctl_notify_f(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %11, i32 %38)
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = call i32 @devctl_notify_f(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %11, i32 %40)
  br label %42

42:                                               ; preds = %32, %1
  %43 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %43)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @devctl_notify_f(i8*, i8*, i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
