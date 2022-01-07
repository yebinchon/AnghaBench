; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_check_parity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_check_parity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i32 }
%struct.bio = type { i64*, %struct.TYPE_4__*, %struct.gv_sd* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.gv_sd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.gv_raid5_packet = type { i32, %struct.bio*, %struct.bio* }

@EAGAIN = common dso_local global i32 0, align 4
@GV_BIO_PARITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gv_plex*, %struct.bio*, %struct.gv_raid5_packet*)* @gv_check_parity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gv_check_parity(%struct.gv_plex* %0, %struct.bio* %1, %struct.gv_raid5_packet* %2) #0 {
  %4 = alloca %struct.gv_plex*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.gv_raid5_packet*, align 8
  %7 = alloca %struct.bio*, align 8
  %8 = alloca %struct.gv_sd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.gv_plex* %0, %struct.gv_plex** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.gv_raid5_packet* %2, %struct.gv_raid5_packet** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %12 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %13 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %12, i32 0, i32 2
  %14 = load %struct.bio*, %struct.bio** %13, align 8
  %15 = icmp ne %struct.bio* %14, null
  br i1 %15, label %16, label %32

16:                                               ; preds = %3
  %17 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %18 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %17, i32 0, i32 2
  %19 = load %struct.bio*, %struct.bio** %18, align 8
  store %struct.bio* %19, %struct.bio** %7, align 8
  %20 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %21 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %20, i32 0, i32 2
  store %struct.bio* null, %struct.bio** %21, align 8
  %22 = load %struct.bio*, %struct.bio** %7, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 2
  %24 = load %struct.gv_sd*, %struct.gv_sd** %23, align 8
  store %struct.gv_sd* %24, %struct.gv_sd** %8, align 8
  %25 = load %struct.bio*, %struct.bio** %7, align 8
  %26 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %27 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @g_io_request(%struct.bio* %25, i32 %30)
  store i32 0, i32* %10, align 4
  br label %113

32:                                               ; preds = %3
  %33 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %34 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %33, i32 0, i32 1
  %35 = load %struct.bio*, %struct.bio** %34, align 8
  %36 = icmp ne %struct.bio* %35, null
  br i1 %36, label %37, label %112

37:                                               ; preds = %32
  %38 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %39 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %38, i32 0, i32 1
  %40 = load %struct.bio*, %struct.bio** %39, align 8
  store %struct.bio* %40, %struct.bio** %7, align 8
  %41 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %42 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %41, i32 0, i32 1
  store %struct.bio* null, %struct.bio** %42, align 8
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %67, %37
  %44 = load i32, i32* %11, align 4
  %45 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %6, align 8
  %46 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %70

49:                                               ; preds = %43
  %50 = load %struct.bio*, %struct.bio** %5, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bio*, %struct.bio** %7, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %56, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %49
  store i32 1, i32* %9, align 4
  br label %70

66:                                               ; preds = %49
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %43

70:                                               ; preds = %65, %43
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %70
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = load %struct.bio*, %struct.bio** %5, align 8
  %76 = getelementptr inbounds %struct.bio, %struct.bio* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 4
  %79 = load %struct.bio*, %struct.bio** %5, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @GV_BIO_PARITY, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %73
  %88 = load %struct.bio*, %struct.bio** %7, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 2
  %90 = load %struct.gv_sd*, %struct.gv_sd** %89, align 8
  store %struct.gv_sd* %90, %struct.gv_sd** %8, align 8
  %91 = load %struct.bio*, %struct.bio** %7, align 8
  %92 = load %struct.gv_sd*, %struct.gv_sd** %8, align 8
  %93 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @g_io_request(%struct.bio* %91, i32 %96)
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %87, %73
  br label %99

99:                                               ; preds = %98, %70
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load %struct.bio*, %struct.bio** %5, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 1
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 4
  %109 = load %struct.bio*, %struct.bio** %7, align 8
  %110 = call i32 @g_destroy_bio(%struct.bio* %109)
  br label %111

111:                                              ; preds = %102, %99
  br label %112

112:                                              ; preds = %111, %32
  br label %113

113:                                              ; preds = %112, %16
  %114 = load i32, i32* %10, align 4
  ret i32 %114
}

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
