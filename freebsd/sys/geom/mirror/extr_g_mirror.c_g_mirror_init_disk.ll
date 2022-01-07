; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_init_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/mirror/extr_g_mirror.c_g_mirror_init_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_mirror_disk = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, %struct.g_mirror_softc* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32* }
%struct.g_mirror_softc = type { i32 }
%struct.g_provider = type { i32 }
%struct.g_mirror_metadata = type { i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@M_MIRROR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@G_MIRROR_DISK_STATE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@G_MIRROR_DISK_FLAG_CANDELETE = common dso_local global i32 0, align 4
@G_MIRROR_DISK_FLAG_HARDCODED = common dso_local global i32 0, align 4
@time_uptime = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.g_mirror_disk* (%struct.g_mirror_softc*, %struct.g_provider*, %struct.g_mirror_metadata*, i32*)* @g_mirror_init_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.g_mirror_disk* @g_mirror_init_disk(%struct.g_mirror_softc* %0, %struct.g_provider* %1, %struct.g_mirror_metadata* %2, i32* %3) #0 {
  %5 = alloca %struct.g_mirror_disk*, align 8
  %6 = alloca %struct.g_mirror_softc*, align 8
  %7 = alloca %struct.g_provider*, align 8
  %8 = alloca %struct.g_mirror_metadata*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.g_mirror_disk*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.g_mirror_softc* %0, %struct.g_mirror_softc** %6, align 8
  store %struct.g_provider* %1, %struct.g_provider** %7, align 8
  store %struct.g_mirror_metadata* %2, %struct.g_mirror_metadata** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* @M_MIRROR, align 4
  %14 = load i32, i32* @M_NOWAIT, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.g_mirror_disk* @malloc(i32 72, i32 %13, i32 %16)
  store %struct.g_mirror_disk* %17, %struct.g_mirror_disk** %10, align 8
  %18 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %19 = icmp eq %struct.g_mirror_disk* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @ENOMEM, align 4
  store i32 %21, i32* %12, align 4
  br label %137

22:                                               ; preds = %4
  %23 = load %struct.g_mirror_softc*, %struct.g_mirror_softc** %6, align 8
  %24 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %25 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %24, i32 0, i32 11
  store %struct.g_mirror_softc* %23, %struct.g_mirror_softc** %25, align 8
  %26 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %27 = load %struct.g_provider*, %struct.g_provider** %7, align 8
  %28 = call i32 @g_mirror_connect_disk(%struct.g_mirror_disk* %26, %struct.g_provider* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %137

32:                                               ; preds = %22
  %33 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %34 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %37 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %36, i32 0, i32 10
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @G_MIRROR_DISK_STATE_NONE, align 4
  %39 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %40 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %42 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %45 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %47 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %50 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %49, i32 0, i32 6
  store i32 %48, i32* %50, align 4
  %51 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %52 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @g_getattr(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %53, i32* %11)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %32
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* @G_MIRROR_DISK_FLAG_CANDELETE, align 4
  %62 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %63 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %57, %32
  %67 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %68 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 0
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load i32, i32* @G_MIRROR_DISK_FLAG_HARDCODED, align 4
  %76 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %77 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %66
  %81 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %82 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store i32* null, i32** %83, align 8
  %84 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %85 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %88 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 %86, i32* %89, align 4
  %90 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %91 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %94 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @time_uptime, align 4
  %97 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %98 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  store i32 %96, i32* %99, align 4
  %100 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %101 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %104 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %106 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %109 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 8
  %111 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %112 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %115 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 4
  %116 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %117 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %120 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %119, i32 0, i32 2
  store i32 %118, i32* %120, align 8
  %121 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %122 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %125 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load %struct.g_mirror_metadata*, %struct.g_mirror_metadata** %8, align 8
  %127 = getelementptr inbounds %struct.g_mirror_metadata, %struct.g_mirror_metadata* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %130 = getelementptr inbounds %struct.g_mirror_disk, %struct.g_mirror_disk* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %80
  %134 = load i32*, i32** %9, align 8
  store i32 0, i32* %134, align 4
  br label %135

135:                                              ; preds = %133, %80
  %136 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  store %struct.g_mirror_disk* %136, %struct.g_mirror_disk** %5, align 8
  br label %151

137:                                              ; preds = %31, %20
  %138 = load i32*, i32** %9, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %143

140:                                              ; preds = %137
  %141 = load i32, i32* %12, align 4
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  br label %143

143:                                              ; preds = %140, %137
  %144 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %145 = icmp ne %struct.g_mirror_disk* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %10, align 8
  %148 = load i32, i32* @M_MIRROR, align 4
  %149 = call i32 @free(%struct.g_mirror_disk* %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %143
  store %struct.g_mirror_disk* null, %struct.g_mirror_disk** %5, align 8
  br label %151

151:                                              ; preds = %150, %135
  %152 = load %struct.g_mirror_disk*, %struct.g_mirror_disk** %5, align 8
  ret %struct.g_mirror_disk* %152
}

declare dso_local %struct.g_mirror_disk* @malloc(i32, i32, i32) #1

declare dso_local i32 @g_mirror_connect_disk(%struct.g_mirror_disk*, %struct.g_provider*) #1

declare dso_local i32 @g_getattr(i8*, i32, i32*) #1

declare dso_local i32 @free(%struct.g_mirror_disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
