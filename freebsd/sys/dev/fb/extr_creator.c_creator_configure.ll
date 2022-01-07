; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_creator.c_creator_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.creator_softc = type { i32, %struct.TYPE_2__, i32**, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@VIO_PROBE_ONLY = common dso_local global i32 0, align 4
@CREATOR_DRIVER_NAME = common dso_local global i32 0, align 4
@creator_softc = common dso_local global %struct.creator_softc zeroinitializer, align 8
@V_ADP_REGISTERED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"SUNW,ffb\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"SUNW,afb\00", align 1
@CREATOR_CONSOLE = common dso_local global i32 0, align 4
@CREATOR_AFB = common dso_local global i32 0, align 4
@FFB_DAC = common dso_local global i32 0, align 4
@FFB_FBC = common dso_local global i32 0, align 4
@creator_bst_store = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @creator_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @creator_configure(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.creator_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca [9 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @VIO_PROBE_ONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %1
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %23, %16
  %18 = load i32, i32* @CREATOR_DRIVER_NAME, align 4
  %19 = load i32, i32* %10, align 4
  %20 = call i64 @vid_find_adapter(i32 %18, i32 %19)
  %21 = icmp sge i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %10, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %10, align 4
  br label %17

26:                                               ; preds = %17
  %27 = load i32, i32* %10, align 4
  store i32 %27, i32* %2, align 4
  br label %135

28:                                               ; preds = %1
  store %struct.creator_softc* @creator_softc, %struct.creator_softc** %4, align 8
  %29 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %30 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @V_ADP_REGISTERED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %134

37:                                               ; preds = %28
  %38 = call i32 @OF_finddevice(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  store i32 %38, i32* %5, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %135

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @OF_getprop(i32 %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %7, i32 1)
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %135

46:                                               ; preds = %41
  %47 = load i8, i8* %7, align 1
  %48 = call i32 @OF_instance_to_package(i8 signext %47)
  store i32 %48, i32* %6, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 0, i32* %2, align 4
  br label %135

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %54 = call i32 @OF_getprop(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 9)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %2, align 4
  br label %135

57:                                               ; preds = %51
  %58 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %63 = call i64 @strcmp(i8* %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %82

65:                                               ; preds = %61, %57
  %66 = load i32, i32* @CREATOR_CONSOLE, align 4
  %67 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %68 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  %69 = getelementptr inbounds [9 x i8], [9 x i8]* %9, i64 0, i64 0
  %70 = call i64 @strcmp(i8* %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %65
  %73 = load i32, i32* @CREATOR_AFB, align 4
  %74 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %75 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %65
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %81 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  br label %83

82:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %135

83:                                               ; preds = %78
  %84 = load i32, i32* @FFB_DAC, align 4
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %124, %83
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @FFB_FBC, align 4
  %88 = icmp sle i32 %86, %87
  br i1 %88, label %89, label %127

89:                                               ; preds = %85
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i64 @OF_decode_addr(i32 %90, i32 %91, i32* %11, i32* %8)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 0, i32* %2, align 4
  br label %135

95:                                               ; preds = %89
  %96 = load i32*, i32** @creator_bst_store, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @FFB_DAC, align 4
  %99 = sub nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %103 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %102, i32 0, i32 2
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32*, i32** %104, i64 %106
  store i32* %101, i32** %107, align 8
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %111 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %110, i32 0, i32 2
  %112 = load i32**, i32*** %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32*, i32** %112, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @sparc64_fake_bustag(i32 %108, i32 %109, i32* %116)
  %118 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %119 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  br label %124

124:                                              ; preds = %95
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %85

127:                                              ; preds = %85
  %128 = load %struct.creator_softc*, %struct.creator_softc** %4, align 8
  %129 = getelementptr inbounds %struct.creator_softc, %struct.creator_softc* %128, i32 0, i32 1
  %130 = call i64 @creator_init(i32 0, %struct.TYPE_2__* %129, i32 0)
  %131 = icmp slt i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %135

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133, %36
  store i32 1, i32* %2, align 4
  br label %135

135:                                              ; preds = %134, %132, %94, %82, %56, %50, %45, %40, %26
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @vid_find_adapter(i32, i32) #1

declare dso_local i32 @OF_finddevice(i8*) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @OF_instance_to_package(i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @OF_decode_addr(i32, i32, i32*, i32*) #1

declare dso_local i32 @sparc64_fake_bustag(i32, i32, i32*) #1

declare dso_local i64 @creator_init(i32, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
