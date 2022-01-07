; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_add_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_uninorth.c_unin_chip_add_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unin_chip_devinfo = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"unin: device has more than 6 interrupts\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"interrupts\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"AAPL,interrupts\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"interrupt-parent\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Interrupt but no interrupt parent!\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"#interrupt-cells\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.unin_chip_devinfo*)* @unin_chip_add_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unin_chip_add_intr(i32 %0, %struct.unin_chip_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.unin_chip_devinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.unin_chip_devinfo* %1, %struct.unin_chip_devinfo** %4, align 8
  %11 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %4, align 8
  %12 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sge i32 %13, 6
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %108

17:                                               ; preds = %2
  %18 = load i32, i32* %3, align 4
  %19 = bitcast i32** %6 to i8**
  %20 = call i32 @OF_getprop_alloc_multi(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 4, i8** %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = bitcast i32** %6 to i8**
  %26 = call i32 @OF_getprop_alloc_multi(i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 4, i8** %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %108

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %108

37:                                               ; preds = %31
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @OF_getprop(i32 %38, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %5, i32 4)
  %40 = icmp sle i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %5, align 4
  %45 = call i64 @OF_searchprop(i32 %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %9, i32 4)
  %46 = icmp sle i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store i32 1, i32* %9, align 4
  br label %48

48:                                               ; preds = %47, %43
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %104, %48
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %108

53:                                               ; preds = %49
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @MAP_IRQ(i32 %54, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %4, align 8
  %62 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %61, i32 0, i32 2
  %63 = load i32, i32* @SYS_RES_IRQ, align 4
  %64 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %4, align 8
  %65 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @resource_list_add(i32* %62, i32 %63, i32 %66, i32 %67, i32 %68, i32 1)
  %70 = load i32, i32* %9, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %90

72:                                               ; preds = %53
  %73 = load i32, i32* %10, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  br label %86

84:                                               ; preds = %72
  %85 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i32 [ %83, %82 ], [ %85, %84 ]
  %88 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %89 = call i32 @powerpc_config_intr(i32 %73, i32 %87, i32 %88)
  br label %90

90:                                               ; preds = %86, %53
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %4, align 8
  %93 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %4, align 8
  %96 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  store i32 %91, i32* %99, align 4
  %100 = load %struct.unin_chip_devinfo*, %struct.unin_chip_devinfo** %4, align 8
  %101 = getelementptr inbounds %struct.unin_chip_devinfo, %struct.unin_chip_devinfo* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, %105
  store i32 %107, i32* %7, align 4
  br label %49

108:                                              ; preds = %15, %29, %36, %49
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @OF_getprop_alloc_multi(i32, i8*, i32, i8**) #1

declare dso_local i64 @OF_getprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @OF_searchprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @MAP_IRQ(i32, i32) #1

declare dso_local i32 @resource_list_add(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @powerpc_config_intr(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
