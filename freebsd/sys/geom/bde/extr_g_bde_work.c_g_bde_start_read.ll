; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_sector = type { i32, i32, i32, i32, %struct.g_bde_softc* }
%struct.g_bde_softc = type { i32 }
%struct.bio = type { %struct.g_bde_softc*, %struct.g_bde_sector*, i32, i32, i32, i32, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"g_bde_start_read(%p)\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Null softc in sp %p\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@g_bde_read_done = common dso_local global i32 0, align 4
@IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_bde_sector*)* @g_bde_start_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_bde_start_read(%struct.g_bde_sector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_bde_sector*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_bde_softc*, align 8
  store %struct.g_bde_sector* %0, %struct.g_bde_sector** %3, align 8
  %6 = load i32, i32* @G_T_TOPOLOGY, align 4
  %7 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %8 = call i32 @g_trace(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.g_bde_sector* %7)
  %9 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %10 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %9, i32 0, i32 4
  %11 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  store %struct.g_bde_softc* %11, %struct.g_bde_softc** %5, align 8
  %12 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %13 = icmp ne %struct.g_bde_softc* %12, null
  %14 = zext i1 %13 to i32
  %15 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %16 = bitcast %struct.g_bde_sector* %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = call %struct.bio* (...) @g_new_bio()
  store %struct.bio* %18, %struct.bio** %4, align 8
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = icmp eq %struct.bio* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %59

23:                                               ; preds = %1
  %24 = load i32, i32* @BIO_READ, align 4
  %25 = load %struct.bio*, %struct.bio** %4, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 8
  %27 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %28 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bio*, %struct.bio** %4, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %33 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.bio*, %struct.bio** %4, align 8
  %36 = getelementptr inbounds %struct.bio, %struct.bio* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 8
  %37 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %38 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @g_bde_read_done, align 4
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 1
  store %struct.g_bde_sector* %45, %struct.g_bde_sector** %47, align 8
  %48 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 0
  store %struct.g_bde_softc* %48, %struct.g_bde_softc** %50, align 8
  %51 = load i32, i32* @IO, align 4
  %52 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %53 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %56 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @g_io_request(%struct.bio* %54, i32 %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %23, %21
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @g_trace(i32, i8*, %struct.g_bde_sector*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.bio* @g_new_bio(...) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
