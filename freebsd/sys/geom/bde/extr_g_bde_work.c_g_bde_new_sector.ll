; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_new_sector.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_new_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_sector = type { i32, i32, i32, i32, i32, %struct.g_bde_work*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.g_bde_work = type { i32, %struct.TYPE_2__* }

@M_GBDE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@g_bde_nsect = common dso_local global i32 0, align 4
@JUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_bde_sector* (%struct.g_bde_work*, i32)* @g_bde_new_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_bde_sector* @g_bde_new_sector(%struct.g_bde_work* %0, i32 %1) #0 {
  %3 = alloca %struct.g_bde_sector*, align 8
  %4 = alloca %struct.g_bde_work*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.g_bde_sector*, align 8
  store %struct.g_bde_work* %0, %struct.g_bde_work** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @M_GBDE, align 4
  %8 = load i32, i32* @M_NOWAIT, align 4
  %9 = load i32, i32* @M_ZERO, align 4
  %10 = or i32 %8, %9
  %11 = call i8* @malloc(i32 48, i32 %7, i32 %10)
  %12 = bitcast i8* %11 to %struct.g_bde_sector*
  store %struct.g_bde_sector* %12, %struct.g_bde_sector** %6, align 8
  %13 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %14 = icmp eq %struct.g_bde_sector* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  store %struct.g_bde_sector* %16, %struct.g_bde_sector** %3, align 8
  br label %72

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %17
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @M_GBDE, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i8* @malloc(i32 %21, i32 %22, i32 %25)
  %27 = bitcast i8* %26 to i32*
  %28 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %29 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %28, i32 0, i32 7
  store i32* %27, i32** %29, align 8
  %30 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %31 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %36 = load i32, i32* @M_GBDE, align 4
  %37 = call i32 @free(%struct.g_bde_sector* %35, i32 %36)
  store %struct.g_bde_sector* null, %struct.g_bde_sector** %3, align 8
  br label %72

38:                                               ; preds = %20
  %39 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %40 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %17
  %42 = load i32, i32* @g_bde_nsect, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* @g_bde_nsect, align 4
  %44 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %45 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %52 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %54 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %57 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %56, i32 0, i32 6
  store %struct.TYPE_2__* %55, %struct.TYPE_2__** %57, align 8
  %58 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %59 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %58, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %61 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %62 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %61, i32 0, i32 5
  store %struct.g_bde_work* %60, %struct.g_bde_work** %62, align 8
  %63 = load %struct.g_bde_work*, %struct.g_bde_work** %4, align 8
  %64 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %67 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @JUNK, align 4
  %69 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  %70 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load %struct.g_bde_sector*, %struct.g_bde_sector** %6, align 8
  store %struct.g_bde_sector* %71, %struct.g_bde_sector** %3, align 8
  br label %72

72:                                               ; preds = %41, %34, %15
  %73 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  ret %struct.g_bde_sector* %73
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.g_bde_sector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
