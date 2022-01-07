; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_plex_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/vinum/extr_geom_vinum_plex.c_gv_plex_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gv_plex = type { i64, i32, i32, i32 }
%struct.bio = type { i64, i64, %struct.gv_sd*, i32, i32*, i32 }
%struct.gv_sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gv_raid5_packet = type { i64, i32, i32 }

@GV_PLEX_RAID5 = common dso_local global i64 0, align 8
@list = common dso_local global i32 0, align 4
@GV_BIO_ONHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gv_plex_start(%struct.gv_plex* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.gv_plex*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.gv_sd*, align 8
  %7 = alloca %struct.gv_raid5_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.gv_plex* %0, %struct.gv_plex** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %12 = load %struct.bio*, %struct.bio** %4, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %9, align 8
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.bio*, %struct.bio** %4, align 8
  %19 = getelementptr inbounds %struct.bio, %struct.bio* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %75, %2
  %22 = load i64, i64* %9, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %87

24:                                               ; preds = %21
  store %struct.gv_raid5_packet* null, %struct.gv_raid5_packet** %7, align 8
  %25 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %26 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GV_PLEX_RAID5, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %64

30:                                               ; preds = %24
  %31 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %32 = load %struct.bio*, %struct.bio** %4, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call %struct.gv_raid5_packet* @gv_raid5_start(%struct.gv_plex* %31, %struct.bio* %32, i32 %33, i64 %34, i64 %35)
  store %struct.gv_raid5_packet* %36, %struct.gv_raid5_packet** %7, align 8
  %37 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %7, align 8
  %38 = icmp eq %struct.gv_raid5_packet* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %132

40:                                               ; preds = %30
  %41 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %7, align 8
  %42 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %11, align 8
  %44 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %7, align 8
  %45 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %44, i32 0, i32 2
  %46 = call i64 @TAILQ_EMPTY(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %7, align 8
  %50 = call i32 @g_free(%struct.gv_raid5_packet* %49)
  br label %63

51:                                               ; preds = %40
  %52 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %7, align 8
  %53 = getelementptr inbounds %struct.gv_raid5_packet, %struct.gv_raid5_packet* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %58 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %57, i32 0, i32 3
  %59 = load %struct.gv_raid5_packet*, %struct.gv_raid5_packet** %7, align 8
  %60 = load i32, i32* @list, align 4
  %61 = call i32 @TAILQ_INSERT_TAIL(i32* %58, %struct.gv_raid5_packet* %59, i32 %60)
  br label %62

62:                                               ; preds = %56, %51
  br label %63

63:                                               ; preds = %62, %48
  br label %71

64:                                               ; preds = %24
  %65 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @gv_plex_normal_request(%struct.gv_plex* %65, %struct.bio* %66, i64 %67, i64 %68, i32 %69)
  store i64 %70, i64* %11, align 8
  br label %71

71:                                               ; preds = %64, %63
  %72 = load i64, i64* %11, align 8
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  br label %132

75:                                               ; preds = %71
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* %9, align 8
  %78 = sub nsw i64 %77, %76
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %8, align 4
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %10, align 8
  %86 = add nsw i64 %85, %84
  store i64 %86, i64* %10, align 8
  br label %21

87:                                               ; preds = %21
  %88 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %89 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call %struct.bio* @bioq_takefirst(i32 %90)
  store %struct.bio* %91, %struct.bio** %5, align 8
  br label %92

92:                                               ; preds = %127, %87
  %93 = load %struct.bio*, %struct.bio** %5, align 8
  %94 = icmp ne %struct.bio* %93, null
  br i1 %94, label %95, label %132

95:                                               ; preds = %92
  %96 = load %struct.bio*, %struct.bio** %5, align 8
  %97 = getelementptr inbounds %struct.bio, %struct.bio* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %102 = load %struct.bio*, %struct.bio** %5, align 8
  %103 = call i64 @gv_stripe_active(%struct.gv_plex* %101, %struct.bio* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %116

105:                                              ; preds = %100
  %106 = load i32, i32* @GV_BIO_ONHOLD, align 4
  %107 = load %struct.bio*, %struct.bio** %5, align 8
  %108 = getelementptr inbounds %struct.bio, %struct.bio* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %112 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.bio*, %struct.bio** %5, align 8
  %115 = call i32 @bioq_disksort(i32 %113, %struct.bio* %114)
  br label %127

116:                                              ; preds = %100, %95
  %117 = load %struct.bio*, %struct.bio** %5, align 8
  %118 = getelementptr inbounds %struct.bio, %struct.bio* %117, i32 0, i32 2
  %119 = load %struct.gv_sd*, %struct.gv_sd** %118, align 8
  store %struct.gv_sd* %119, %struct.gv_sd** %6, align 8
  %120 = load %struct.bio*, %struct.bio** %5, align 8
  %121 = load %struct.gv_sd*, %struct.gv_sd** %6, align 8
  %122 = getelementptr inbounds %struct.gv_sd, %struct.gv_sd* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @g_io_request(%struct.bio* %120, i32 %125)
  br label %127

127:                                              ; preds = %116, %105
  %128 = load %struct.gv_plex*, %struct.gv_plex** %3, align 8
  %129 = getelementptr inbounds %struct.gv_plex, %struct.gv_plex* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call %struct.bio* @bioq_takefirst(i32 %130)
  store %struct.bio* %131, %struct.bio** %5, align 8
  br label %92

132:                                              ; preds = %39, %74, %92
  ret void
}

declare dso_local %struct.gv_raid5_packet* @gv_raid5_start(%struct.gv_plex*, %struct.bio*, i32, i64, i64) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @g_free(%struct.gv_raid5_packet*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.gv_raid5_packet*, i32) #1

declare dso_local i64 @gv_plex_normal_request(%struct.gv_plex*, %struct.bio*, i64, i64, i32) #1

declare dso_local %struct.bio* @bioq_takefirst(i32) #1

declare dso_local i64 @gv_stripe_active(%struct.gv_plex*, %struct.bio*) #1

declare dso_local i32 @bioq_disksort(i32, %struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
