; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_ciu.c_ciu_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_event = type { i32 }
%struct.resource = type { i32 }

@CIU_IRQ_EN0_END = common dso_local global i32 0, align 4
@ciu_en0_intr_events = common dso_local global %struct.intr_event** null, align 8
@CIU_IRQ_EN0_BEGIN = common dso_local global i32 0, align 4
@ciu_en0_intrcnt = common dso_local global i32* null, align 8
@ciu_en1_intr_events = common dso_local global %struct.intr_event** null, align 8
@CIU_IRQ_EN1_BEGIN = common dso_local global i32 0, align 4
@ciu_en1_intrcnt = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"int%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.resource*, i32, i32*, i32*, i8*, i8**)* @ciu_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciu_setup_intr(i32 %0, i32 %1, %struct.resource* %2, i32 %3, i32* %4, i32* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.intr_event*, align 8
  %19 = alloca %struct.intr_event**, align 8
  %20 = alloca void (i8*)*, align 8
  %21 = alloca void (i8*)*, align 8
  %22 = alloca i32 (i8*, i32)*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %26 = load %struct.resource*, %struct.resource** %12, align 8
  %27 = call i32 @rman_get_start(%struct.resource* %26)
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* %25, align 4
  %29 = load i32, i32* @CIU_IRQ_EN0_END, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %8
  %32 = load %struct.intr_event**, %struct.intr_event*** @ciu_en0_intr_events, align 8
  %33 = load i32, i32* %25, align 4
  %34 = load i32, i32* @CIU_IRQ_EN0_BEGIN, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %32, i64 %36
  store %struct.intr_event** %37, %struct.intr_event*** %19, align 8
  %38 = load i32*, i32** @ciu_en0_intrcnt, align 8
  %39 = load i32, i32* %25, align 4
  %40 = load i32, i32* @CIU_IRQ_EN0_BEGIN, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %23, align 4
  store void (i8*)* @ciu_en0_intr_mask, void (i8*)** %20, align 8
  store void (i8*)* @ciu_en0_intr_unmask, void (i8*)** %21, align 8
  br label %59

45:                                               ; preds = %8
  %46 = load %struct.intr_event**, %struct.intr_event*** @ciu_en1_intr_events, align 8
  %47 = load i32, i32* %25, align 4
  %48 = load i32, i32* @CIU_IRQ_EN1_BEGIN, align 4
  %49 = sub nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %46, i64 %50
  store %struct.intr_event** %51, %struct.intr_event*** %19, align 8
  %52 = load i32*, i32** @ciu_en1_intrcnt, align 8
  %53 = load i32, i32* %25, align 4
  %54 = load i32, i32* @CIU_IRQ_EN1_BEGIN, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %23, align 4
  store void (i8*)* @ciu_en1_intr_mask, void (i8*)** %20, align 8
  store void (i8*)* @ciu_en1_intr_unmask, void (i8*)** %21, align 8
  br label %59

59:                                               ; preds = %45, %31
  store i32 (i8*, i32)* null, i32 (i8*, i32)** %22, align 8
  %60 = load %struct.intr_event**, %struct.intr_event*** %19, align 8
  %61 = load %struct.intr_event*, %struct.intr_event** %60, align 8
  store %struct.intr_event* %61, %struct.intr_event** %18, align 8
  %62 = icmp eq %struct.intr_event* %61, null
  br i1 %62, label %63, label %85

63:                                               ; preds = %59
  %64 = load %struct.intr_event**, %struct.intr_event*** %19, align 8
  %65 = load i32, i32* %25, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* %25, align 4
  %69 = load void (i8*)*, void (i8*)** %20, align 8
  %70 = load void (i8*)*, void (i8*)** %21, align 8
  %71 = load i32 (i8*, i32)*, i32 (i8*, i32)** %22, align 8
  %72 = load i32, i32* %25, align 4
  %73 = call i32 @intr_event_create(%struct.intr_event** %64, i8* %67, i32 0, i32 %68, void (i8*)* %69, void (i8*)* %70, i32* null, i32 (i8*, i32)* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 %73, i32* %24, align 4
  %74 = load i32, i32* %24, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %63
  %77 = load i32, i32* %24, align 4
  store i32 %77, i32* %9, align 4
  br label %102

78:                                               ; preds = %63
  %79 = load %struct.intr_event**, %struct.intr_event*** %19, align 8
  %80 = load %struct.intr_event*, %struct.intr_event** %79, align 8
  store %struct.intr_event* %80, %struct.intr_event** %18, align 8
  %81 = load void (i8*)*, void (i8*)** %21, align 8
  %82 = load i32, i32* %25, align 4
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  call void %81(i8* %84)
  br label %85

85:                                               ; preds = %78, %59
  %86 = load %struct.intr_event*, %struct.intr_event** %18, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @device_get_nameunit(i32 %87)
  %89 = load i32*, i32** %14, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @intr_priority(i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = load i8**, i8*** %17, align 8
  %96 = call i32 @intr_event_add_handler(%struct.intr_event* %86, i32 %88, i32* %89, i32* %90, i8* %91, i32 %93, i32 %94, i8** %95)
  %97 = load i32, i32* %23, align 4
  %98 = load %struct.intr_event*, %struct.intr_event** %18, align 8
  %99 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mips_intrcnt_setname(i32 %97, i32 %100)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %85, %76
  %103 = load i32, i32* %9, align 4
  ret i32 %103
}

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local void @ciu_en0_intr_mask(i8*) #1

declare dso_local void @ciu_en0_intr_unmask(i8*) #1

declare dso_local void @ciu_en1_intr_mask(i8*) #1

declare dso_local void @ciu_en1_intr_unmask(i8*) #1

declare dso_local i32 @intr_event_create(%struct.intr_event**, i8*, i32, i32, void (i8*)*, void (i8*)*, i32*, i32 (i8*, i32)*, i8*, i32) #1

declare dso_local i32 @intr_event_add_handler(%struct.intr_event*, i32, i32*, i32*, i8*, i32, i32, i8**) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @intr_priority(i32) #1

declare dso_local i32 @mips_intrcnt_setname(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
