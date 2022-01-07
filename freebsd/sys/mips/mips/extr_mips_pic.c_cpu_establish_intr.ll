; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_cpu_establish_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_mips_pic.c_cpu_establish_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mips_pic_softc = type { i32 }
%struct.mips_pic_intr = type { i32, %struct.resource* }
%struct.resource = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unable to map IRQ %d: %d\00", align 1
@mips_pic_mtx = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unable to allocate IRQ %d->%u resource\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Unable to add IRQ %d handler: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mips_pic_softc*, i8*, i32*, void (i8*)*, i8*, i32, i32, i8**)* @cpu_establish_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu_establish_intr(%struct.mips_pic_softc* %0, i8* %1, i32* %2, void (i8*)* %3, i8* %4, i32 %5, i32 %6, i8** %7) #0 {
  %9 = alloca %struct.mips_pic_softc*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca void (i8*)*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8**, align 8
  %17 = alloca %struct.mips_pic_intr*, align 8
  %18 = alloca %struct.resource*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mips_pic_softc* %0, %struct.mips_pic_softc** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32* %2, i32** %11, align 8
  store void (i8*)* %3, void (i8*)** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8** %7, i8*** %16, align 8
  store i32 -1, i32* %19, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @mips_pic_map_fixed_intr(i32 %21, %struct.mips_pic_intr** %17)
  store i32 %22, i32* %20, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %20, align 4
  %27 = call i32 @panic(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %8
  %29 = call i32 @mtx_lock(i32* @mips_pic_mtx)
  %30 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %31 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %30, i32 0, i32 1
  %32 = load %struct.resource*, %struct.resource** %31, align 8
  store %struct.resource* %32, %struct.resource** %18, align 8
  %33 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  %34 = load %struct.resource*, %struct.resource** %18, align 8
  %35 = icmp eq %struct.resource* %34, null
  br i1 %35, label %36, label %98

36:                                               ; preds = %28
  %37 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %38 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %19, align 4
  %40 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %9, align 8
  %41 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @SYS_RES_IRQ, align 4
  %44 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %45 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %48 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @RF_SHAREABLE, align 4
  %51 = load i32, i32* @RF_ACTIVE, align 4
  %52 = or i32 %50, %51
  %53 = call %struct.resource* @bus_alloc_resource(i32 %42, i32 %43, i32* %19, i32 %46, i32 %49, i32 1, i32 %52)
  store %struct.resource* %53, %struct.resource** %18, align 8
  %54 = load %struct.resource*, %struct.resource** %18, align 8
  %55 = icmp ne %struct.resource* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %36
  %57 = call i32 @mtx_lock(i32* @mips_pic_mtx)
  %58 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %59 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %58, i32 0, i32 1
  %60 = load %struct.resource*, %struct.resource** %59, align 8
  %61 = icmp eq %struct.resource* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.resource*, %struct.resource** %18, align 8
  %64 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %65 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %64, i32 0, i32 1
  store %struct.resource* %63, %struct.resource** %65, align 8
  br label %66

66:                                               ; preds = %62, %56
  %67 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  %68 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %69 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %68, i32 0, i32 1
  %70 = load %struct.resource*, %struct.resource** %69, align 8
  %71 = load %struct.resource*, %struct.resource** %18, align 8
  %72 = icmp ne %struct.resource* %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %66
  %74 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %9, align 8
  %75 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SYS_RES_IRQ, align 4
  %78 = load i32, i32* %19, align 4
  %79 = load %struct.resource*, %struct.resource** %18, align 8
  %80 = call i32 @bus_release_resource(i32 %76, i32 %77, i32 %78, %struct.resource* %79)
  br label %81

81:                                               ; preds = %73, %66
  br label %88

82:                                               ; preds = %36
  %83 = call i32 @mtx_lock(i32* @mips_pic_mtx)
  %84 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %85 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %84, i32 0, i32 1
  %86 = load %struct.resource*, %struct.resource** %85, align 8
  store %struct.resource* %86, %struct.resource** %18, align 8
  %87 = call i32 @mtx_unlock(i32* @mips_pic_mtx)
  br label %88

88:                                               ; preds = %82, %81
  %89 = load %struct.resource*, %struct.resource** %18, align 8
  %90 = icmp eq %struct.resource* %89, null
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %14, align 4
  %93 = load %struct.mips_pic_intr*, %struct.mips_pic_intr** %17, align 8
  %94 = getelementptr inbounds %struct.mips_pic_intr, %struct.mips_pic_intr* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %91, %88
  br label %98

98:                                               ; preds = %97, %28
  %99 = load %struct.mips_pic_softc*, %struct.mips_pic_softc** %9, align 8
  %100 = getelementptr inbounds %struct.mips_pic_softc, %struct.mips_pic_softc* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.resource*, %struct.resource** %18, align 8
  %103 = load i32, i32* %15, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = load void (i8*)*, void (i8*)** %12, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i8**, i8*** %16, align 8
  %108 = call i32 @bus_setup_intr(i32 %101, %struct.resource* %102, i32 %103, i32* %104, void (i8*)* %105, i8* %106, i8** %107)
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %20, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %98
  %112 = load i32, i32* %14, align 4
  %113 = load i32, i32* %20, align 4
  %114 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %98
  ret void
}

declare dso_local i32 @mips_pic_map_fixed_intr(i32, %struct.mips_pic_intr**) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.resource* @bus_alloc_resource(i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_setup_intr(i32, %struct.resource*, i32, i32*, void (i8*)*, i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
