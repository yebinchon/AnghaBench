; ModuleID = '/home/carl/AnghaBench/freebsd/sys/isa/extr_vga_isa.c_vga_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/isa/extr_vga_isa.c_vga_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32, i32* }

@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"saving %d bytes of video state\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to save state (nbytes=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"saving color palette\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"failed to save palette\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @vga_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vga_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.TYPE_3__* @device_get_softc(i32 %5)
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %62

12:                                               ; preds = %1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @vidd_save_state(i32 %15, i32* null, i32 0)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %62

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @M_TEMP, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = call i8* @malloc(i32 %21, i32 %22, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %62

33:                                               ; preds = %20
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %40

40:                                               ; preds = %36, %33
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @vidd_save_state(i32 %43, i32* %46, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %40
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* @M_TEMP, align 4
  %58 = call i32 @free(i32* %56, i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %50, %40
  br label %62

62:                                               ; preds = %61, %32, %19, %11
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %105

68:                                               ; preds = %62
  %69 = load i32, i32* @M_TEMP, align 4
  %70 = load i32, i32* @M_NOWAIT, align 4
  %71 = call i8* @malloc(i32 768, i32 %69, i32 %70)
  %72 = bitcast i8* %71 to i32*
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  br label %105

80:                                               ; preds = %68
  %81 = load i64, i64* @bootverbose, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* %2, align 4
  %85 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @vidd_save_palette(i32 %89, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %86
  %96 = load i32, i32* %2, align 4
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %96, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* @M_TEMP, align 4
  %102 = call i32 @free(i32* %100, i32 %101)
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %67, %79, %95, %86
  ret void
}

declare dso_local %struct.TYPE_3__* @device_get_softc(i32) #1

declare dso_local i32 @vidd_save_state(i32, i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i64 @vidd_save_palette(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
