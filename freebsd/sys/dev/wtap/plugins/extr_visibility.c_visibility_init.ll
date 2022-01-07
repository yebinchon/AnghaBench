; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_visibility_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wtap/plugins/extr_visibility.c_visibility_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wtap_plugin = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.visibility_plugin* }
%struct.visibility_plugin = type { i32 }

@vis_cdevsw = common dso_local global i32 0, align 4
@UID_ROOT = common dso_local global i32 0, align 4
@GID_WHEEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"visctl\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"visibility_plugin mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@MTX_RECURSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Using visibility wtap plugin...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @visibility_init(%struct.wtap_plugin* %0) #0 {
  %2 = alloca %struct.wtap_plugin*, align 8
  %3 = alloca %struct.visibility_plugin*, align 8
  store %struct.wtap_plugin* %0, %struct.wtap_plugin** %2, align 8
  %4 = load %struct.wtap_plugin*, %struct.wtap_plugin** %2, align 8
  %5 = bitcast %struct.wtap_plugin* %4 to %struct.visibility_plugin*
  store %struct.visibility_plugin* %5, %struct.visibility_plugin** %3, align 8
  %6 = load i32, i32* @UID_ROOT, align 4
  %7 = load i32, i32* @GID_WHEEL, align 4
  %8 = call %struct.TYPE_2__* @make_dev(i32* @vis_cdevsw, i32 0, i32 %6, i32 %7, i32 384, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wtap_plugin*, %struct.wtap_plugin** %2, align 8
  %10 = getelementptr inbounds %struct.wtap_plugin, %struct.wtap_plugin* %9, i32 0, i32 0
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %10, align 8
  %11 = load %struct.visibility_plugin*, %struct.visibility_plugin** %3, align 8
  %12 = load %struct.wtap_plugin*, %struct.wtap_plugin** %2, align 8
  %13 = getelementptr inbounds %struct.wtap_plugin, %struct.wtap_plugin* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.visibility_plugin* %11, %struct.visibility_plugin** %15, align 8
  %16 = load %struct.visibility_plugin*, %struct.visibility_plugin** %3, align 8
  %17 = getelementptr inbounds %struct.visibility_plugin, %struct.visibility_plugin* %16, i32 0, i32 0
  %18 = load i32, i32* @MTX_DEF, align 4
  %19 = load i32, i32* @MTX_RECURSE, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @mtx_init(i32* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %20)
  %22 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local %struct.TYPE_2__* @make_dev(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
