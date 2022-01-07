; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_bio_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_ns.c_nvme_ns_bio_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_namespace = type { i64 }
%struct.bio = type { i32, i32, i32, %struct.nvme_dsm_range*, i32 }
%struct.nvme_dsm_range = type { i32, i32 }

@nvme_ns_bio_done = common dso_local global i32 0, align 4
@M_NVME = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvme_ns_bio_process(%struct.nvme_namespace* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_namespace*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nvme_dsm_range*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nvme_namespace* %0, %struct.nvme_namespace** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.bio*, %struct.bio** %6, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 8
  %14 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %15 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %3
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp eq i32 %21, 129
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.bio*, %struct.bio** %6, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, 128
  br i1 %27, label %28, label %49

28:                                               ; preds = %23, %18
  %29 = load %struct.bio*, %struct.bio** %6, align 8
  %30 = getelementptr inbounds %struct.bio, %struct.bio* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bio*, %struct.bio** %6, align 8
  %33 = getelementptr inbounds %struct.bio, %struct.bio* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @nvme_get_num_segments(i32 %31, i32 %34, i64 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %43 = load %struct.bio*, %struct.bio** %6, align 8
  %44 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %45 = getelementptr inbounds %struct.nvme_namespace, %struct.nvme_namespace* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @nvme_ns_split_bio(%struct.nvme_namespace* %42, %struct.bio* %43, i64 %46)
  store i32 %47, i32* %4, align 4
  br label %118

48:                                               ; preds = %28
  br label %49

49:                                               ; preds = %48, %23, %3
  %50 = load %struct.bio*, %struct.bio** %6, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %114 [
    i32 129, label %53
    i32 128, label %59
    i32 130, label %65
    i32 131, label %70
  ]

53:                                               ; preds = %49
  %54 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %55 = load %struct.bio*, %struct.bio** %6, align 8
  %56 = load i32, i32* @nvme_ns_bio_done, align 4
  %57 = load %struct.bio*, %struct.bio** %6, align 8
  %58 = call i32 @nvme_ns_cmd_read_bio(%struct.nvme_namespace* %54, %struct.bio* %55, i32 %56, %struct.bio* %57)
  store i32 %58, i32* %10, align 4
  br label %116

59:                                               ; preds = %49
  %60 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %61 = load %struct.bio*, %struct.bio** %6, align 8
  %62 = load i32, i32* @nvme_ns_bio_done, align 4
  %63 = load %struct.bio*, %struct.bio** %6, align 8
  %64 = call i32 @nvme_ns_cmd_write_bio(%struct.nvme_namespace* %60, %struct.bio* %61, i32 %62, %struct.bio* %63)
  store i32 %64, i32* %10, align 4
  br label %116

65:                                               ; preds = %49
  %66 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %67 = load i32, i32* @nvme_ns_bio_done, align 4
  %68 = load %struct.bio*, %struct.bio** %6, align 8
  %69 = call i32 @nvme_ns_cmd_flush(%struct.nvme_namespace* %66, i32 %67, %struct.bio* %68)
  store i32 %69, i32* %10, align 4
  br label %116

70:                                               ; preds = %49
  %71 = load i32, i32* @M_NVME, align 4
  %72 = load i32, i32* @M_ZERO, align 4
  %73 = load i32, i32* @M_WAITOK, align 4
  %74 = or i32 %72, %73
  %75 = call %struct.nvme_dsm_range* @malloc(i32 8, i32 %71, i32 %74)
  store %struct.nvme_dsm_range* %75, %struct.nvme_dsm_range** %8, align 8
  %76 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %77 = icmp ne %struct.nvme_dsm_range* %76, null
  br i1 %77, label %80, label %78

78:                                               ; preds = %70
  %79 = load i32, i32* @ENOMEM, align 4
  store i32 %79, i32* %10, align 4
  br label %116

80:                                               ; preds = %70
  %81 = load %struct.bio*, %struct.bio** %6, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %85 = call i32 @nvme_ns_get_sector_size(%struct.nvme_namespace* %84)
  %86 = sdiv i32 %83, %85
  %87 = call i32 @htole32(i32 %86)
  %88 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %89 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load %struct.bio*, %struct.bio** %6, align 8
  %91 = getelementptr inbounds %struct.bio, %struct.bio* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %94 = call i32 @nvme_ns_get_sector_size(%struct.nvme_namespace* %93)
  %95 = sdiv i32 %92, %94
  %96 = call i32 @htole64(i32 %95)
  %97 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %98 = getelementptr inbounds %struct.nvme_dsm_range, %struct.nvme_dsm_range* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  %99 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %100 = load %struct.bio*, %struct.bio** %6, align 8
  %101 = getelementptr inbounds %struct.bio, %struct.bio* %100, i32 0, i32 3
  store %struct.nvme_dsm_range* %99, %struct.nvme_dsm_range** %101, align 8
  %102 = load %struct.nvme_namespace*, %struct.nvme_namespace** %5, align 8
  %103 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %104 = load i32, i32* @nvme_ns_bio_done, align 4
  %105 = load %struct.bio*, %struct.bio** %6, align 8
  %106 = call i32 @nvme_ns_cmd_deallocate(%struct.nvme_namespace* %102, %struct.nvme_dsm_range* %103, i32 1, i32 %104, %struct.bio* %105)
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %80
  %110 = load %struct.nvme_dsm_range*, %struct.nvme_dsm_range** %8, align 8
  %111 = load i32, i32* @M_NVME, align 4
  %112 = call i32 @free(%struct.nvme_dsm_range* %110, i32 %111)
  br label %113

113:                                              ; preds = %109, %80
  br label %116

114:                                              ; preds = %49
  %115 = load i32, i32* @EIO, align 4
  store i32 %115, i32* %10, align 4
  br label %116

116:                                              ; preds = %114, %113, %78, %65, %59, %53
  %117 = load i32, i32* %10, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %116, %41
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @nvme_get_num_segments(i32, i32, i64) #1

declare dso_local i32 @nvme_ns_split_bio(%struct.nvme_namespace*, %struct.bio*, i64) #1

declare dso_local i32 @nvme_ns_cmd_read_bio(%struct.nvme_namespace*, %struct.bio*, i32, %struct.bio*) #1

declare dso_local i32 @nvme_ns_cmd_write_bio(%struct.nvme_namespace*, %struct.bio*, i32, %struct.bio*) #1

declare dso_local i32 @nvme_ns_cmd_flush(%struct.nvme_namespace*, i32, %struct.bio*) #1

declare dso_local %struct.nvme_dsm_range* @malloc(i32, i32, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @nvme_ns_get_sector_size(%struct.nvme_namespace*) #1

declare dso_local i32 @htole64(i32) #1

declare dso_local i32 @nvme_ns_cmd_deallocate(%struct.nvme_namespace*, %struct.nvme_dsm_range*, i32, i32, %struct.bio*) #1

declare dso_local i32 @free(%struct.nvme_dsm_range*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
