; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_ip_carp.c_carp_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carp_softc = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@CARP_STATES = common dso_local global i8* null, align 8
@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%u@%s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s: %s -> %s (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"CARP\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.carp_softc*, i32, i8*)* @carp_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carp_set_state(%struct.carp_softc* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.carp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca [1 x i8*], align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.carp_softc* %0, %struct.carp_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load %struct.carp_softc*, %struct.carp_softc** %4, align 8
  %11 = call i32 @CARP_LOCK_ASSERT(%struct.carp_softc* %10)
  %12 = load %struct.carp_softc*, %struct.carp_softc** %4, align 8
  %13 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %57

17:                                               ; preds = %3
  %18 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 0
  %19 = load i8*, i8** @CARP_STATES, align 8
  store i8* %19, i8** %18, align 8
  %20 = load i32, i32* @IFNAMSIZ, align 4
  %21 = add nsw i32 %20, 5
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @IFNAMSIZ, align 4
  %26 = add nsw i32 %25, 5
  %27 = load %struct.carp_softc*, %struct.carp_softc** %4, align 8
  %28 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.carp_softc*, %struct.carp_softc** %4, align 8
  %31 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @snprintf(i8* %24, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %29, i8* %34)
  %36 = load %struct.carp_softc*, %struct.carp_softc** %4, align 8
  %37 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 %43
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @CARP_LOG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %24, i8* %41, i8* %45, i8* %46)
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.carp_softc*, %struct.carp_softc** %4, align 8
  %50 = getelementptr inbounds %struct.carp_softc, %struct.carp_softc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [1 x i8*], [1 x i8*]* %7, i64 0, i64 %52
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @devctl_notify(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %24, i8* %54, i32* null)
  %56 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %56)
  br label %57

57:                                               ; preds = %17, %3
  ret void
}

declare dso_local i32 @CARP_LOCK_ASSERT(%struct.carp_softc*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i8*) #1

declare dso_local i32 @CARP_LOG(i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @devctl_notify(i8*, i8*, i8*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
