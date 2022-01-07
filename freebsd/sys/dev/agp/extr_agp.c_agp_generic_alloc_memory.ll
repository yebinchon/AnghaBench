; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_alloc_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_generic_alloc_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { i32, i64, i64, i64, i32, i64, i64 }
%struct.agp_softc = type { i32, i32, i32, i32 }

@AGP_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"agp_generic_alloc_memory: unsupported type %d\0A\00", align 1
@M_AGP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@OBJT_DEFAULT = common dso_local global i32 0, align 4
@am_link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agp_memory* @agp_generic_alloc_memory(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.agp_memory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.agp_softc*, align 8
  %9 = alloca %struct.agp_memory*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.agp_softc* @device_get_softc(i32 %10)
  store %struct.agp_softc* %11, %struct.agp_softc** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @AGP_PAGE_SIZE, align 4
  %14 = sub nsw i32 %13, 1
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %75

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %21 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %24 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = icmp sgt i32 %19, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %75

29:                                               ; preds = %18
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %33)
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %75

35:                                               ; preds = %29
  %36 = load i32, i32* @M_AGP, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = call %struct.agp_memory* @malloc(i32 56, i32 %36, i32 %37)
  store %struct.agp_memory* %38, %struct.agp_memory** %9, align 8
  %39 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %40 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = sext i32 %41 to i64
  %44 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %45 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %44, i32 0, i32 6
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %48 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %50 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @OBJT_DEFAULT, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @round_page(i32 %52)
  %54 = call i32 @atop(i32 %53)
  %55 = call i32 @vm_object_allocate(i32 %51, i32 %54)
  %56 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %57 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %59 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %61 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %60, i32 0, i32 2
  store i64 0, i64* %61, align 8
  %62 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %63 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %62, i32 0, i32 1
  store i64 0, i64* %63, align 8
  %64 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %65 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %64, i32 0, i32 2
  %66 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %67 = load i32, i32* @am_link, align 4
  %68 = call i32 @TAILQ_INSERT_TAIL(i32* %65, %struct.agp_memory* %66, i32 %67)
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.agp_softc*, %struct.agp_softc** %8, align 8
  %71 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  store %struct.agp_memory* %74, %struct.agp_memory** %4, align 8
  br label %75

75:                                               ; preds = %35, %32, %28, %17
  %76 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  ret %struct.agp_memory* %76
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local %struct.agp_memory* @malloc(i32, i32, i32) #1

declare dso_local i32 @vm_object_allocate(i32, i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.agp_memory*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
