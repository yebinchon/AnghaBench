; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_g_virstor_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/virstor/extr_g_virstor.c_g_virstor_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, i64, i64, i64, i64, %struct.TYPE_4__*, i32, %struct.bio* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.g_virstor_softc* }
%struct.g_virstor_softc = type { i32 }

@LVL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error %d for offset=%ju, length=%ju, %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_virstor_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_virstor_done(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.g_virstor_softc*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 7
  %7 = load %struct.bio*, %struct.bio** %6, align 8
  store %struct.bio* %7, %struct.bio** %4, align 8
  %8 = load %struct.bio*, %struct.bio** %4, align 8
  %9 = getelementptr inbounds %struct.bio, %struct.bio* %8, i32 0, i32 5
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.g_virstor_softc*, %struct.g_virstor_softc** %13, align 8
  store %struct.g_virstor_softc* %14, %struct.g_virstor_softc** %3, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %47

19:                                               ; preds = %1
  %20 = load i32, i32* @LVL_ERROR, align 4
  %21 = load %struct.bio*, %struct.bio** %2, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.bio*, %struct.bio** %2, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bio*, %struct.bio** %2, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 5
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @LOG_MSG(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %26, i64 %29, i32 %34)
  %36 = load %struct.bio*, %struct.bio** %4, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %19
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bio*, %struct.bio** %4, align 8
  %45 = getelementptr inbounds %struct.bio, %struct.bio* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %40, %19
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.bio*, %struct.bio** %4, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 1
  store i64 %51, i64* %49, align 8
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.bio*, %struct.bio** %4, align 8
  %56 = getelementptr inbounds %struct.bio, %struct.bio* %55, i32 0, i32 4
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %54
  store i64 %58, i64* %56, align 8
  %59 = load %struct.bio*, %struct.bio** %4, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.bio*, %struct.bio** %4, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %77

66:                                               ; preds = %47
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = getelementptr inbounds %struct.bio, %struct.bio* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.bio*, %struct.bio** %4, align 8
  %71 = getelementptr inbounds %struct.bio, %struct.bio* %70, i32 0, i32 4
  store i64 %69, i64* %71, align 8
  %72 = load %struct.bio*, %struct.bio** %4, align 8
  %73 = load %struct.bio*, %struct.bio** %4, align 8
  %74 = getelementptr inbounds %struct.bio, %struct.bio* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @g_io_deliver(%struct.bio* %72, i64 %75)
  br label %77

77:                                               ; preds = %66, %47
  %78 = load %struct.bio*, %struct.bio** %2, align 8
  %79 = call i32 @g_destroy_bio(%struct.bio* %78)
  ret void
}

declare dso_local i32 @LOG_MSG(i32, i8*, i64, i32, i64, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
