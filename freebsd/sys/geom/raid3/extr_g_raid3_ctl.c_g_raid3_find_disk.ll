; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_find_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3_ctl.c_g_raid3_find_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_disk = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.g_raid3_softc = type { i64, %struct.g_raid3_disk*, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@G_RAID3_DISK_STATE_NODISK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_raid3_disk* (%struct.g_raid3_softc*, i8*)* @g_raid3_find_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_raid3_disk* @g_raid3_find_disk(%struct.g_raid3_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.g_raid3_disk*, align 8
  %4 = alloca %struct.g_raid3_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.g_raid3_disk*, align 8
  %7 = alloca i64, align 8
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %9 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %8, i32 0, i32 2
  %10 = load i32, i32* @SX_XLOCKED, align 4
  %11 = call i32 @sx_assert(i32* %9, i32 %10)
  %12 = load i8*, i8** %5, align 8
  %13 = call i64 @strncmp(i8* %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 5
  store i8* %17, i8** %5, align 8
  br label %18

18:                                               ; preds = %15, %2
  store i64 0, i64* %7, align 8
  br label %19

19:                                               ; preds = %65, %18
  %20 = load i64, i64* %7, align 8
  %21 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %22 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %27 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %26, i32 0, i32 1
  %28 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %27, align 8
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %28, i64 %29
  store %struct.g_raid3_disk* %30, %struct.g_raid3_disk** %6, align 8
  %31 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %32 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @G_RAID3_DISK_STATE_NODISK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  br label %65

37:                                               ; preds = %25
  %38 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %39 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp eq %struct.TYPE_4__* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %65

43:                                               ; preds = %37
  %44 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %45 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp eq %struct.TYPE_3__* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %65

51:                                               ; preds = %43
  %52 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %53 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %5, align 8
  %60 = call i64 @strcmp(i32 %58, i8* %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %51
  %63 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  store %struct.g_raid3_disk* %63, %struct.g_raid3_disk** %3, align 8
  br label %69

64:                                               ; preds = %51
  br label %65

65:                                               ; preds = %64, %50, %42, %36
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %7, align 8
  br label %19

68:                                               ; preds = %19
  store %struct.g_raid3_disk* null, %struct.g_raid3_disk** %3, align 8
  br label %69

69:                                               ; preds = %68, %62
  %70 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %3, align 8
  ret %struct.g_raid3_disk* %70
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
