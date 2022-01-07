; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_normal_parity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_normal_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32 }
%struct.bio = type { %struct.gv_sd*, i32* }
%struct.gv_sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gv_raid5_packet = type { i32, %struct.bio*, %struct.bio* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gv_plex*, %struct.bio*, %struct.gv_raid5_packet*)* @gv_normal_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv_normal_parity(%struct.gv_plex* %0, %struct.bio* %1, %struct.gv_raid5_packet* %2) #0 {
  %4 = alloca %struct.gv_plex*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.gv_raid5_packet*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.gv_sd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gv_plex* %0, %struct.gv_plex** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.gv_raid5_packet* %2, %struct.gv_raid5_packet** %6, align 8
  store i32 1, i32* %10, align 4
  %12 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %13 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %12, i32 0, i32 2
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  %15 = icmp ne %struct.bio* %14, null
  br i1 %15, label %16, label %61

16:                                               ; preds = %3
  %17 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %18 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %17, i32 0, i32 2
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %19, %struct.bio** %8, align 8
  %20 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %21 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %20, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %21, align 8
  %22 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %23 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %22, i32 0, i32 1
  %24 = load %struct.bio*, %struct.bio** %23, align 8
  store %struct.bio* %24, %struct.bio** %7, align 8
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %47, %16
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %28 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %50

31:                                               ; preds = %25
  %32 = load %struct.bio*, %struct.bio** %8, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.bio*, %struct.bio** %7, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, %38
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %31
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %25

50:                                               ; preds = %25
  %51 = load %struct.bio*, %struct.bio** %8, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  %53 = load %struct.gv_sd*, %struct.gv_sd** %52, align 8
  store %struct.gv_sd* %53, %struct.gv_sd** %9, align 8
  %54 = load %struct.bio*, %struct.bio** %8, align 8
  %55 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %56 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @g_io_request(%struct.bio* %54, i32 %59)
  store i32 0, i32* %10, align 4
  br label %83

61:                                               ; preds = %3
  %62 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %63 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %62, i32 0, i32 1
  %64 = load %struct.bio*, %struct.bio** %63, align 8
  %65 = icmp ne %struct.bio* %64, null
  br i1 %65, label %66, label %82

66:                                               ; preds = %61
  %67 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %68 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %67, i32 0, i32 1
  %69 = load %struct.bio*, %struct.bio** %68, align 8
  store %struct.bio* %69, %struct.bio** %7, align 8
  %70 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %71 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %70, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %71, align 8
  %72 = load %struct.bio*, %struct.bio** %7, align 8
  %73 = getelementptr inbounds %struct.bio, %struct.bio* %72, i32 0, i32 0
  %74 = load %struct.gv_sd*, %struct.gv_sd** %73, align 8
  store %struct.gv_sd* %74, %struct.gv_sd** %9, align 8
  %75 = load %struct.bio*, %struct.bio** %7, align 8
  %76 = load %struct.gv_sd*, %struct.gv_sd** %9, align 8
  %77 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @g_io_request(%struct.bio* %75, i32 %80)
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %66, %61
  br label %83

83:                                               ; preds = %82, %50
  %84 = load i32, i32* %10, align 4
  ret i32 %84
}

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
