; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_get_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dme/extr_if_dme.c_dme_get_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dme_softc = type { i32*, i32 }

@.str = private unnamed_addr constant [19 x i8] c"hint.%s.%d.macaddr\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MAC address: %s (hints)\0A\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"MAC address %6D (existing)\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dme_softc*)* @dme_get_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dme_get_macaddr(%struct.dme_softc* %0) #0 {
  %2 = alloca %struct.dme_softc*, align 8
  %3 = alloca [32 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.dme_softc* %0, %struct.dme_softc** %2, align 8
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %7 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %8 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i8* @device_get_name(i32 %9)
  %11 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @device_get_unit(i32 %13)
  %15 = call i32 @snprintf(i8* %6, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %10, i32 %14)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %3, i64 0, i64 0
  %17 = call i8* @kern_getenv(i8* %16)
  store i8* %17, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %22 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @dme_parse_macaddr(i8* %20, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %19
  %27 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %28 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  br label %61

32:                                               ; preds = %19
  br label %33

33:                                               ; preds = %32, %1
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %49, %33
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @DME_PAR(i32 %40)
  %42 = call i32 @dme_read_reg(%struct.dme_softc* %39, i32 %41)
  %43 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %44 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %42, i32* %48, align 4
  br label %49

49:                                               ; preds = %38
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %54 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.dme_softc*, %struct.dme_softc** %2, align 8
  %57 = getelementptr inbounds %struct.dme_softc, %struct.dme_softc* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = bitcast i32* %58 to i8*
  %60 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %52, %26
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @kern_getenv(i8*) #1

declare dso_local i32 @dme_parse_macaddr(i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @dme_read_reg(%struct.dme_softc*, i32) #1

declare dso_local i32 @DME_PAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
