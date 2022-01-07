; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_print_ldrive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_print_ldrive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32 }
%struct.ciss_ldrive = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }

@.str = private unnamed_addr constant [16 x i8] c"does not exist\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"online\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"in interim recovery mode\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"ready to begin recovery\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c"being recovered, working on physical drive %d.%d, %u blocks remaining\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"being expanded, %u blocks remaining\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"queued for expansion\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"wrong physical drive inserted\0A\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"missing a needed physical drive\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"becoming ready\0A\00", align 1
@CISS_BIG_MAP_ENTRIES = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [34 x i8] c"physical drive %d:%d (%x) failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ciss_softc*, %struct.ciss_ldrive*)* @ciss_print_ldrive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciss_print_ldrive(%struct.ciss_softc* %0, %struct.ciss_ldrive* %1) #0 {
  %3 = alloca %struct.ciss_softc*, align 8
  %4 = alloca %struct.ciss_ldrive*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ciss_softc* %0, %struct.ciss_softc** %3, align 8
  store %struct.ciss_ldrive* %1, %struct.ciss_ldrive** %4, align 8
  %8 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %9 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = icmp eq %struct.TYPE_2__* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %115

14:                                               ; preds = %2
  %15 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %16 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %66 [
    i32 132, label %20
    i32 134, label %22
    i32 130, label %24
    i32 129, label %26
    i32 136, label %49
    i32 131, label %56
    i32 135, label %58
    i32 128, label %60
    i32 133, label %62
    i32 137, label %64
  ]

20:                                               ; preds = %14
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %66

22:                                               ; preds = %14
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %66

24:                                               ; preds = %14
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %66

26:                                               ; preds = %14
  %27 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %28 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %29 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @CISS_BIG_MAP_BUS(%struct.ciss_softc* %27, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %35 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %36 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @CISS_BIG_MAP_BUS(%struct.ciss_softc* %34, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %44 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %41, i32 %42, i32 %47)
  br label %66

49:                                               ; preds = %14
  %50 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %51 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %66

56:                                               ; preds = %14
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %66

58:                                               ; preds = %14
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %66

60:                                               ; preds = %14
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %66

62:                                               ; preds = %14
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %66

64:                                               ; preds = %14
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  br label %66

66:                                               ; preds = %14, %64, %62, %60, %58, %56, %49, %26, %24, %22, %20
  store i32 0, i32* %7, align 4
  br label %67

67:                                               ; preds = %112, %66
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @CISS_BIG_MAP_ENTRIES, align 4
  %70 = sdiv i32 %69, 8
  %71 = icmp slt i32 %68, %70
  br i1 %71, label %72, label %115

72:                                               ; preds = %67
  %73 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %74 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %75 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @CISS_BIG_MAP_BUS(%struct.ciss_softc* %73, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %85 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %86 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @CISS_BIG_MAP_TARGET(%struct.ciss_softc* %84, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %98

97:                                               ; preds = %72
  br label %112

98:                                               ; preds = %72
  %99 = load %struct.ciss_softc*, %struct.ciss_softc** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.ciss_ldrive*, %struct.ciss_ldrive** %4, align 8
  %103 = getelementptr inbounds %struct.ciss_ldrive, %struct.ciss_ldrive* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ciss_printf(%struct.ciss_softc* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0), i32 %100, i32 %101, i32 %110)
  br label %112

112:                                              ; preds = %98, %97
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %7, align 4
  br label %67

115:                                              ; preds = %12, %67
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @CISS_BIG_MAP_BUS(%struct.ciss_softc*, i32) #1

declare dso_local i32 @CISS_BIG_MAP_TARGET(%struct.ciss_softc*, i32) #1

declare dso_local i32 @ciss_printf(%struct.ciss_softc*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
