; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mn/extr_if_mn.c_ngmn_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn_softc = type { i32, i64, i8* }

@.str = private unnamed_addr constant [6 x i8] c"line \00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"line e1\00", align 1
@E1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"line e1u\00", align 1
@E1U = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"ENOGROK\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Cannot change line when %d hooks open\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"%s CONFIG SET [%s]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @ngmn_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ngmn_config(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mn_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.mn_softc* @NG_NODE_PRIVATE(i32 %9)
  store %struct.mn_softc* %10, %struct.mn_softc** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %69

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8
  %15 = call i32 @strncmp(i8* %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %60, label %17

17:                                               ; preds = %13
  %18 = load %struct.mn_softc*, %struct.mn_softc** %7, align 8
  %19 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %8, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* @E1, align 4
  store i32 %25, i32* %8, align 4
  br label %36

26:                                               ; preds = %17
  %27 = load i8*, i8** %5, align 8
  %28 = call i32 @strcmp(i8* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* @E1U, align 4
  store i32 %31, i32* %8, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %6, align 8
  %34 = call i32 @strcat(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %69

35:                                               ; preds = %30
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.mn_softc*, %struct.mn_softc** %7, align 8
  %39 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %69

43:                                               ; preds = %36
  %44 = load %struct.mn_softc*, %struct.mn_softc** %7, align 8
  %45 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.mn_softc*, %struct.mn_softc** %7, align 8
  %51 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @sprintf(i8* %49, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i64 %52)
  br label %69

54:                                               ; preds = %43
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.mn_softc*, %struct.mn_softc** %7, align 8
  %57 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.mn_softc*, %struct.mn_softc** %7, align 8
  %59 = call i32 @f54_init(%struct.mn_softc* %58)
  br label %68

60:                                               ; preds = %13
  %61 = load %struct.mn_softc*, %struct.mn_softc** %7, align 8
  %62 = getelementptr inbounds %struct.mn_softc, %struct.mn_softc* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %63, i8* %64)
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @strcat(i8* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  br label %69

68:                                               ; preds = %54
  br label %69

69:                                               ; preds = %32, %42, %48, %60, %68, %3
  ret void
}

declare dso_local %struct.mn_softc* @NG_NODE_PRIVATE(i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @f54_init(%struct.mn_softc*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
