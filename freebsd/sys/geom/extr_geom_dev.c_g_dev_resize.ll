; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_dev.c_g_dev_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@SPECNAMELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"cdev=%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"GEOM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"DEV\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"SIZECHANGE\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_consumer*)* @g_dev_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_dev_resize(%struct.g_consumer* %0) #0 {
  %2 = alloca %struct.g_consumer*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %2, align 8
  %5 = load i32, i32* @SPECNAMELEN, align 4
  %6 = add nsw i32 %5, 6
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = trunc i64 %7 to i32
  %11 = load %struct.g_consumer*, %struct.g_consumer** %2, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @snprintf(i8* %9, i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call i32 @devctl_notify_f(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %9, i32 %17)
  %19 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %19)
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
