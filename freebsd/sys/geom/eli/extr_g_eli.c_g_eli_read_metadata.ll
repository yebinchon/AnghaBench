; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_read_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/eli/extr_g_eli.c_g_eli_read_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_class = type { i32 }
%struct.g_provider = type { i64, i64 }
%struct.g_eli_metadata = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @g_eli_read_metadata(%struct.g_class* %0, %struct.g_provider* %1, %struct.g_eli_metadata* %2) #0 {
  %4 = alloca %struct.g_class*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.g_eli_metadata*, align 8
  store %struct.g_class* %0, %struct.g_class** %4, align 8
  store %struct.g_provider* %1, %struct.g_provider** %5, align 8
  store %struct.g_eli_metadata* %2, %struct.g_eli_metadata** %6, align 8
  %7 = load %struct.g_class*, %struct.g_class** %4, align 8
  %8 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %9 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %10 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %13 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.g_eli_metadata*, %struct.g_eli_metadata** %6, align 8
  %17 = call i32 @g_eli_read_metadata_offset(%struct.g_class* %7, %struct.g_provider* %8, i64 %15, %struct.g_eli_metadata* %16)
  ret i32 %17
}

declare dso_local i32 @g_eli_read_metadata_offset(%struct.g_class*, %struct.g_provider*, i64, %struct.g_eli_metadata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
