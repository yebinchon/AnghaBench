; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_collision.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid3/extr_g_raid3.c_g_raid3_sync_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid3_softc = type { i32, %struct.g_raid3_disk* }
%struct.g_raid3_disk = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bio** }
%struct.bio = type { i32, i32, i64 }

@g_raid3_syncreqs = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid3_softc*, %struct.bio*)* @g_raid3_sync_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid3_sync_collision(%struct.g_raid3_softc* %0, %struct.bio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid3_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.g_raid3_disk*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.g_raid3_softc* %0, %struct.g_raid3_softc** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  %13 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %14 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %13, i32 0, i32 1
  %15 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %14, align 8
  store %struct.g_raid3_disk* %15, %struct.g_raid3_disk** %6, align 8
  %16 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %17 = icmp eq %struct.g_raid3_disk* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %88

19:                                               ; preds = %2
  %20 = load %struct.bio*, %struct.bio** %5, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %8, align 4
  %23 = load %struct.bio*, %struct.bio** %5, align 8
  %24 = getelementptr inbounds %struct.bio, %struct.bio* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %30

30:                                               ; preds = %84, %19
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @g_raid3_syncreqs, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %87

34:                                               ; preds = %30
  %35 = load %struct.g_raid3_disk*, %struct.g_raid3_disk** %6, align 8
  %36 = getelementptr inbounds %struct.g_raid3_disk, %struct.g_raid3_disk* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.bio**, %struct.bio*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.bio*, %struct.bio** %38, i64 %40
  %42 = load %struct.bio*, %struct.bio** %41, align 8
  store %struct.bio* %42, %struct.bio** %7, align 8
  %43 = load %struct.bio*, %struct.bio** %7, align 8
  %44 = icmp eq %struct.bio* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  br label %84

46:                                               ; preds = %34
  %47 = load %struct.bio*, %struct.bio** %7, align 8
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %10, align 4
  %50 = load %struct.bio*, %struct.bio** %7, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %11, align 4
  %53 = load %struct.bio*, %struct.bio** %7, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @BIO_WRITE, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %46
  %59 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %60 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  %65 = load %struct.g_raid3_softc*, %struct.g_raid3_softc** %4, align 8
  %66 = getelementptr inbounds %struct.g_raid3_softc, %struct.g_raid3_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %11, align 4
  %70 = mul nsw i32 %69, %68
  store i32 %70, i32* %11, align 4
  br label %71

71:                                               ; preds = %58, %46
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %88

83:                                               ; preds = %78, %71
  br label %84

84:                                               ; preds = %83, %45
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %30

87:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %82, %18
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
