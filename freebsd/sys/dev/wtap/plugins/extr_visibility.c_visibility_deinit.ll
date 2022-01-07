; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_visibility_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_visibility_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wtap_plugin = type { i32 }
%struct.visibility_plugin = type { i32 }

@M_WTAP_PLUGIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Removing visibility wtap plugin...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visibility_deinit(%struct.wtap_plugin* %0) #0 {
  %2 = alloca %struct.wtap_plugin*, align 8
  %3 = alloca %struct.visibility_plugin*, align 8
  store %struct.wtap_plugin* %0, %struct.wtap_plugin** %2, align 8
  %4 = load %struct.wtap_plugin*, %struct.wtap_plugin** %2, align 8
  %5 = bitcast %struct.wtap_plugin* %4 to %struct.visibility_plugin*
  store %struct.visibility_plugin* %5, %struct.visibility_plugin** %3, align 8
  %6 = load %struct.wtap_plugin*, %struct.wtap_plugin** %2, align 8
  %7 = getelementptr inbounds %struct.wtap_plugin, %struct.wtap_plugin* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @destroy_dev(i32 %8)
  %10 = load %struct.visibility_plugin*, %struct.visibility_plugin** %3, align 8
  %11 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %10, i32 0, i32 0
  %12 = call i32 @mtx_destroy(i32* %11)
  %13 = load %struct.visibility_plugin*, %struct.visibility_plugin** %3, align 8
  %14 = load i32, i32* @M_WTAP_PLUGIN, align 4
  %15 = call i32 @free(%struct.visibility_plugin* %13, i32 %14)
  %16 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @free(%struct.visibility_plugin*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
