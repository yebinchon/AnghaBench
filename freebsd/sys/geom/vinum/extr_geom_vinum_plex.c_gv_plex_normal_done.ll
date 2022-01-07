; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_plex_normal_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_plex_normal_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32 }
%struct.bio = type { i64, i64, i64, i32, i32, i32, %struct.bio* }

@GV_BIO_SYNCREQ = common dso_local global i32 0, align 4
@GV_BIO_GROW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_plex_normal_done(%struct.gv_plex* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.gv_plex*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  store %struct.gv_plex* %0, %struct.gv_plex** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.bio*, %struct.bio** %4, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 6
  %8 = load %struct.bio*, %struct.bio** %7, align 8
  store %struct.bio* %8, %struct.bio** %5, align 8
  %9 = load %struct.bio*, %struct.bio** %5, align 8
  %10 = getelementptr inbounds %struct.bio, %struct.bio* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.bio*, %struct.bio** %4, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.bio*, %struct.bio** %5, align 8
  %18 = getelementptr inbounds %struct.bio, %struct.bio* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.bio*, %struct.bio** %4, align 8
  %21 = call i32 @g_destroy_bio(%struct.bio* %20)
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 1
  store i64 %25, i64* %23, align 8
  %26 = load %struct.bio*, %struct.bio** %5, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bio*, %struct.bio** %5, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %68

33:                                               ; preds = %19
  %34 = load %struct.bio*, %struct.bio** %5, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bio*, %struct.bio** %5, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.bio*, %struct.bio** %5, align 8
  %40 = getelementptr inbounds %struct.bio, %struct.bio* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GV_BIO_SYNCREQ, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %47 = load %struct.bio*, %struct.bio** %5, align 8
  %48 = call i32 @gv_sync_complete(%struct.gv_plex* %46, %struct.bio* %47)
  br label %67

49:                                               ; preds = %33
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GV_BIO_GROW, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %49
  %57 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %58 = load %struct.bio*, %struct.bio** %5, align 8
  %59 = call i32 @gv_grow_complete(%struct.gv_plex* %57, %struct.bio* %58)
  br label %66

60:                                               ; preds = %49
  %61 = load %struct.bio*, %struct.bio** %5, align 8
  %62 = load %struct.bio*, %struct.bio** %5, align 8
  %63 = getelementptr inbounds %struct.bio, %struct.bio* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @g_io_deliver(%struct.bio* %61, i64 %64)
  br label %66

66:                                               ; preds = %60, %56
  br label %67

67:                                               ; preds = %66, %45
  br label %68

68:                                               ; preds = %67, %19
  ret void
}

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @gv_sync_complete(%struct.gv_plex*, %struct.bio*) #1

declare dso_local i32 @gv_grow_complete(%struct.gv_plex*, %struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
