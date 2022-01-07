; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_candelete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_candelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_concat_softc* }
%struct.g_concat_softc = type { i32, %struct.g_concat_disk* }
%struct.g_concat_disk = type { i64, i32 }

@.str = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_concat_candelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_candelete(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_concat_softc*, align 8
  %4 = alloca %struct.g_concat_disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %2, align 8
  %7 = load %struct.bio*, %struct.bio** %2, align 8
  %8 = getelementptr inbounds %struct.bio, %struct.bio* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.g_concat_softc*, %struct.g_concat_softc** %12, align 8
  store %struct.g_concat_softc* %13, %struct.g_concat_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %38, %1
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %17 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %41

20:                                               ; preds = %14
  %21 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %22 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %21, i32 0, i32 1
  %23 = load %struct.g_concat_disk*, %struct.g_concat_disk** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %23, i64 %25
  store %struct.g_concat_disk* %26, %struct.g_concat_disk** %4, align 8
  %27 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %28 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %20
  %32 = load %struct.g_concat_disk*, %struct.g_concat_disk** %4, align 8
  %33 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31, %20
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %14

41:                                               ; preds = %36, %14
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.g_concat_softc*, %struct.g_concat_softc** %3, align 8
  %44 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %6, align 4
  %48 = load %struct.bio*, %struct.bio** %2, align 8
  %49 = call i32 @g_handleattr(%struct.bio* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  ret void
}

declare dso_local i32 @g_handleattr(%struct.bio*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
