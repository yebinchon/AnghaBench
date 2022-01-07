; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_start_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_sector = type { i32, i32, i32, i32, i32*, %struct.g_bde_softc* }
%struct.g_bde_softc = type { i32 }
%struct.bio = type { %struct.g_bde_softc*, %struct.g_bde_sector*, i32, i32, i32, i32, i32 }

@G_T_TOPOLOGY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"g_bde_start_write(%p)\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"NULL sc in g_bde_start_write\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"NULL sp->owner in g_bde_start_write\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i32 0, align 4
@g_bde_write_done = common dso_local global i32 0, align 4
@IO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_bde_sector*)* @g_bde_start_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_bde_start_write(%struct.g_bde_sector* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.g_bde_sector*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_bde_softc*, align 8
  store %struct.g_bde_sector* %0, %struct.g_bde_sector** %3, align 8
  %6 = load i32, i32* @G_T_TOPOLOGY, align 4
  %7 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %8 = call i32 @g_trace(i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.g_bde_sector* %7)
  %9 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %10 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %9, i32 0, i32 5
  %11 = load %struct.g_bde_softc*, %struct.g_bde_softc** %10, align 8
  store %struct.g_bde_softc* %11, %struct.g_bde_softc** %5, align 8
  %12 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %13 = icmp ne %struct.g_bde_softc* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %17 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %22 = call %struct.bio* (...) @g_new_bio()
  store %struct.bio* %22, %struct.bio** %4, align 8
  %23 = load %struct.bio*, %struct.bio** %4, align 8
  %24 = icmp eq %struct.bio* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %2, align 4
  br label %63

27:                                               ; preds = %1
  %28 = load i32, i32* @BIO_WRITE, align 4
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %32 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.bio*, %struct.bio** %4, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 5
  store i32 %33, i32* %35, align 4
  %36 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %37 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.bio*, %struct.bio** %4, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %42 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @g_bde_write_done, align 4
  %47 = load %struct.bio*, %struct.bio** %4, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %50 = load %struct.bio*, %struct.bio** %4, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 1
  store %struct.g_bde_sector* %49, %struct.g_bde_sector** %51, align 8
  %52 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %53 = load %struct.bio*, %struct.bio** %4, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  store %struct.g_bde_softc* %52, %struct.g_bde_softc** %54, align 8
  %55 = load i32, i32* @IO, align 4
  %56 = load %struct.g_bde_sector*, %struct.g_bde_sector** %3, align 8
  %57 = getelementptr inbounds %struct.g_bde_sector, %struct.g_bde_sector* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bio*, %struct.bio** %4, align 8
  %59 = load %struct.g_bde_softc*, %struct.g_bde_softc** %5, align 8
  %60 = getelementptr inbounds %struct.g_bde_softc, %struct.g_bde_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @g_io_request(%struct.bio* %58, i32 %61)
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %27, %25
  %64 = load i32, i32* %2, align 4
  ret i32 %64
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
