; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_raid5.c_gv_raid5_clone_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_raid5.c_gv_raid5_clone_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { %struct.gv_raid5_packet*, %struct.gv_sd*, i32, i32, i64, i32*, i32 }
%struct.gv_sd = type { i64 }
%struct.gv_raid5_packet = type { i32, i64 }

@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@GV_BIO_MALLOC = common dso_local global i32 0, align 4
@gv_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bio* (%struct.bio*, %struct.gv_sd*, %struct.gv_raid5_packet*, i32*, i32)* @gv_raid5_clone_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bio* @gv_raid5_clone_bio(%struct.bio* %0, %struct.gv_sd* %1, %struct.gv_raid5_packet* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.gv_sd*, align 8
  %9 = alloca %struct.gv_raid5_packet*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bio*, align 8
  store %struct.bio* %0, %struct.bio** %7, align 8
  store %struct.gv_sd* %1, %struct.gv_sd** %8, align 8
  store %struct.gv_raid5_packet* %2, %struct.gv_raid5_packet** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.bio*, %struct.bio** %7, align 8
  %14 = call %struct.bio* @g_clone_bio(%struct.bio* %13)
  store %struct.bio* %14, %struct.bio** %12, align 8
  %15 = load %struct.bio*, %struct.bio** %12, align 8
  %16 = icmp eq %struct.bio* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store %struct.bio* null, %struct.bio** %6, align 8
  br label %69

18:                                               ; preds = %5
  %19 = load i32*, i32** %10, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %9, align 8
  %23 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i32* @g_malloc(i32 %24, i32 %27)
  %29 = load %struct.bio*, %struct.bio** %12, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  %31 = load i32, i32* @GV_BIO_MALLOC, align 4
  %32 = load %struct.bio*, %struct.bio** %12, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %40

36:                                               ; preds = %18
  %37 = load i32*, i32** %10, align 8
  %38 = load %struct.bio*, %struct.bio** %12, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 5
  store i32* %37, i32** %39, align 8
  br label %40

40:                                               ; preds = %36, %21
  %41 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %9, align 8
  %42 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %45 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = load %struct.bio*, %struct.bio** %12, align 8
  %49 = getelementptr inbounds %struct.bio, %struct.bio* %48, i32 0, i32 4
  store i64 %47, i64* %49, align 8
  %50 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %9, align 8
  %51 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bio*, %struct.bio** %12, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @gv_done, align 4
  %56 = load %struct.bio*, %struct.bio** %12, align 8
  %57 = getelementptr inbounds %struct.bio, %struct.bio* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %59 = load %struct.bio*, %struct.bio** %12, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 1
  store %struct.gv_sd* %58, %struct.gv_sd** %60, align 8
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %40
  %64 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %9, align 8
  %65 = load %struct.bio*, %struct.bio** %12, align 8
  %66 = getelementptr inbounds %struct.bio, %struct.bio* %65, i32 0, i32 0
  store %struct.gv_raid5_packet* %64, %struct.gv_raid5_packet** %66, align 8
  br label %67

67:                                               ; preds = %63, %40
  %68 = load %struct.bio*, %struct.bio** %12, align 8
  store %struct.bio* %68, %struct.bio** %6, align 8
  br label %69

69:                                               ; preds = %67, %17
  %70 = load %struct.bio*, %struct.bio** %6, align 8
  ret %struct.bio* %70
}

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32* @g_malloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
