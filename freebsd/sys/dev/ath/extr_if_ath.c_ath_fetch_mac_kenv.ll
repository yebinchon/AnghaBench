; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_fetch_mac_kenv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_fetch_mac_kenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"hint.%s.%d.macaddr\00", align 1
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"Overriding MAC address from environment: '%s'\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"%x%*c%x%*c%x%*c%x%*c%x%*c%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, i32*)* @ath_fetch_mac_kenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_fetch_mac_kenv(%struct.ath_softc* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [32 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @device_get_name(i32 %16)
  %18 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %19 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_get_unit(i32 %20)
  %22 = call i32 @snprintf(i8* %13, i32 32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %17, i32 %21)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %24 = call i8* @kern_getenv(i8* %23)
  store i8* %24, i8** %8, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %68

26:                                               ; preds = %2
  %27 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %9, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %10, align 8
  %31 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  %36 = load i8*, i8** %8, align 8
  %37 = getelementptr inbounds i32, i32* %30, i64 0
  %38 = getelementptr inbounds i32, i32* %30, i64 1
  %39 = getelementptr inbounds i32, i32* %30, i64 2
  %40 = getelementptr inbounds i32, i32* %30, i64 3
  %41 = getelementptr inbounds i32, i32* %30, i64 4
  %42 = getelementptr inbounds i32, i32* %30, i64 5
  %43 = call i32 @sscanf(i8* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %37, i32* %38, i32* %39, i32* %40, i32* %41, i32* %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %44, 6
  br i1 %45, label %46, label %64

46:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %60, %46
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %30, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %55, i32* %59, align 4
  br label %60

60:                                               ; preds = %51
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %47

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %26
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @freeenv(i8* %65)
  store i8* null, i8** %8, align 8
  %67 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %67)
  br label %68

68:                                               ; preds = %64, %2
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %73

72:                                               ; preds = %68
  store i32 -1, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i8* @device_get_name(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i8* @kern_getenv(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @device_printf(i32, i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @freeenv(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
