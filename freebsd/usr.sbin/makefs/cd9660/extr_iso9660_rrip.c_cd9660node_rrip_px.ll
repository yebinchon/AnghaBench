; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660node_rrip_px.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/cd9660/extr_iso9660_rrip.c_cd9660node_rrip_px.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISO_SUSP_ATTRIBUTES = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i32* }
%struct.TYPE_15__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cd9660node_rrip_px(%struct.ISO_SUSP_ATTRIBUTES* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.ISO_SUSP_ATTRIBUTES*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.ISO_SUSP_ATTRIBUTES* %0, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %5 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %6 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  store i32 44, i32* %12, align 4
  %13 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %14 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 5
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %28 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @cd9660_bothendian_dword(i32 %26, i32 %32)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %41 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @cd9660_bothendian_dword(i32 %39, i32 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %54 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @cd9660_bothendian_dword(i32 %52, i32 %58)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %67 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @cd9660_bothendian_dword(i32 %65, i32 %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ISO_SUSP_ATTRIBUTES*, %struct.ISO_SUSP_ATTRIBUTES** %3, align 8
  %80 = getelementptr inbounds %struct.ISO_SUSP_ATTRIBUTES, %struct.ISO_SUSP_ATTRIBUTES* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @cd9660_bothendian_dword(i32 %78, i32 %84)
  ret i32 1
}

declare dso_local i32 @cd9660_bothendian_dword(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
