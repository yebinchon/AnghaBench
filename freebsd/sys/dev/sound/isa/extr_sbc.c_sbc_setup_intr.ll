; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_sbc.c_sbc_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.sbc_softc = type { %struct.sbc_ihl*, %struct.resource** }
%struct.sbc_ihl = type { i32**, i8** }

@.str = private unnamed_addr constant [36 x i8] c"sbc.c: we cannot use a filter here\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_MAX = common dso_local global i32 0, align 4
@INTR_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @sbc_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbc_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.sbc_softc*, align 8
  %19 = alloca %struct.sbc_ihl*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.sbc_softc* @device_get_softc(i32 %22)
  store %struct.sbc_softc* %23, %struct.sbc_softc** %18, align 8
  store %struct.sbc_ihl* null, %struct.sbc_ihl** %19, align 8
  %24 = load i32*, i32** %14, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %8
  %27 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %9, align 4
  br label %117

29:                                               ; preds = %8
  %30 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %31 = call i32 @sbc_lock(%struct.sbc_softc* %30)
  store i32 0, i32* %20, align 4
  br label %32

32:                                               ; preds = %53, %29
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @IRQ_MAX, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load %struct.resource*, %struct.resource** %12, align 8
  %38 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %39 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %38, i32 0, i32 1
  %40 = load %struct.resource**, %struct.resource*** %39, align 8
  %41 = load i32, i32* %20, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.resource*, %struct.resource** %40, i64 %42
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = icmp eq %struct.resource* %37, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %48 = getelementptr inbounds %struct.sbc_softc, %struct.sbc_softc* %47, i32 0, i32 0
  %49 = load %struct.sbc_ihl*, %struct.sbc_ihl** %48, align 8
  %50 = load i32, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sbc_ihl, %struct.sbc_ihl* %49, i64 %51
  store %struct.sbc_ihl* %52, %struct.sbc_ihl** %19, align 8
  br label %53

53:                                               ; preds = %46, %36
  %54 = load i32, i32* %20, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %20, align 4
  br label %32

56:                                               ; preds = %32
  store i32 0, i32* %21, align 4
  %57 = load %struct.sbc_ihl*, %struct.sbc_ihl** %19, align 8
  %58 = icmp eq %struct.sbc_ihl* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %21, align 4
  br label %61

61:                                               ; preds = %59, %56
  store i32 0, i32* %20, align 4
  br label %62

62:                                               ; preds = %106, %61
  %63 = load i32, i32* %21, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @INTR_MAX, align 4
  %68 = icmp slt i32 %66, %67
  br label %69

69:                                               ; preds = %65, %62
  %70 = phi i1 [ false, %62 ], [ %68, %65 ]
  br i1 %70, label %71, label %107

71:                                               ; preds = %69
  %72 = load %struct.sbc_ihl*, %struct.sbc_ihl** %19, align 8
  %73 = getelementptr inbounds %struct.sbc_ihl, %struct.sbc_ihl* %72, i32 0, i32 0
  %74 = load i32**, i32*** %73, align 8
  %75 = load i32, i32* %20, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %74, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %103

80:                                               ; preds = %71
  %81 = load i32*, i32** %15, align 8
  %82 = load %struct.sbc_ihl*, %struct.sbc_ihl** %19, align 8
  %83 = getelementptr inbounds %struct.sbc_ihl, %struct.sbc_ihl* %82, i32 0, i32 0
  %84 = load i32**, i32*** %83, align 8
  %85 = load i32, i32* %20, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32*, i32** %84, i64 %86
  store i32* %81, i32** %87, align 8
  %88 = load i8*, i8** %16, align 8
  %89 = load %struct.sbc_ihl*, %struct.sbc_ihl** %19, align 8
  %90 = getelementptr inbounds %struct.sbc_ihl, %struct.sbc_ihl* %89, i32 0, i32 1
  %91 = load i8**, i8*** %90, align 8
  %92 = load i32, i32* %20, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8*, i8** %91, i64 %93
  store i8* %88, i8** %94, align 8
  %95 = load %struct.sbc_ihl*, %struct.sbc_ihl** %19, align 8
  %96 = getelementptr inbounds %struct.sbc_ihl, %struct.sbc_ihl* %95, i32 0, i32 0
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %20, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = bitcast i32** %100 to i8*
  %102 = load i8**, i8*** %17, align 8
  store i8* %101, i8** %102, align 8
  store i32 -1, i32* %21, align 4
  br label %106

103:                                              ; preds = %71
  %104 = load i32, i32* %20, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %20, align 4
  br label %106

106:                                              ; preds = %103, %80
  br label %62

107:                                              ; preds = %69
  %108 = load %struct.sbc_softc*, %struct.sbc_softc** %18, align 8
  %109 = call i32 @sbc_unlock(%struct.sbc_softc* %108)
  %110 = load i32, i32* %21, align 4
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @EINVAL, align 4
  br label %115

114:                                              ; preds = %107
  br label %115

115:                                              ; preds = %114, %112
  %116 = phi i32 [ %113, %112 ], [ 0, %114 ]
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %115, %26
  %118 = load i32, i32* %9, align 4
  ret i32 %118
}

declare dso_local %struct.sbc_softc* @device_get_softc(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sbc_lock(%struct.sbc_softc*) #1

declare dso_local i32 @sbc_unlock(%struct.sbc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
