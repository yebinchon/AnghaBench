; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_put_minor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_put_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_minor = type { i32, i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"release secondary minor %d\0A\00", align 1
@DRM_MEM_MINOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_put_minor(%struct.drm_minor** %0) #0 {
  %2 = alloca %struct.drm_minor**, align 8
  %3 = alloca %struct.drm_minor*, align 8
  store %struct.drm_minor** %0, %struct.drm_minor*** %2, align 8
  %4 = load %struct.drm_minor**, %struct.drm_minor*** %2, align 8
  %5 = load %struct.drm_minor*, %struct.drm_minor** %4, align 8
  store %struct.drm_minor* %5, %struct.drm_minor** %3, align 8
  %6 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %7 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @DRM_DEBUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %11 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %10, i32 0, i32 1
  %12 = call i32 @funsetown(i32* %11)
  %13 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %14 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @destroy_dev(i32 %15)
  %17 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %18 = load i32, i32* @DRM_MEM_MINOR, align 4
  %19 = call i32 @free(%struct.drm_minor* %17, i32 %18)
  %20 = load %struct.drm_minor**, %struct.drm_minor*** %2, align 8
  store %struct.drm_minor* null, %struct.drm_minor** %20, align 8
  ret i32 0
}

declare dso_local i32 @DRM_DEBUG(i8*, i32) #1

declare dso_local i32 @funsetown(i32*) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @free(%struct.drm_minor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
