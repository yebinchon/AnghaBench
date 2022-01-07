; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/fire/extr_fire_saver.c_fire_saver.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/fire/extr_fire_saver.c_fire_saver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i64 }

@blanked = common dso_local global i64 0, align 8
@scrmode = common dso_local global i32 0, align 4
@fire_pal = common dso_local global i32 0, align 4
@vid = common dso_local global i32* null, align 8
@banksize = common dso_local global i32 0, align 4
@bpsl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @fire_saver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fire_saver(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %38

8:                                                ; preds = %2
  %9 = load i64, i64* @blanked, align 8
  %10 = icmp sle i64 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = call i32 (...) @splhigh()
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = load i32, i32* @scrmode, align 4
  %15 = call i32 @vidd_set_mode(%struct.TYPE_7__* %13, i32 %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = load i32, i32* @fire_pal, align 4
  %18 = call i32 @vidd_load_palette(%struct.TYPE_7__* %16, i32 %17)
  %19 = load i64, i64* @blanked, align 8
  %20 = add nsw i64 %19, 1
  store i64 %20, i64* @blanked, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** @vid, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @banksize, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* @bpsl, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @splx(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %34 = call i32 @vidd_clear(%struct.TYPE_7__* %33)
  br label %35

35:                                               ; preds = %11, %8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %37 = call i32 @fire_update(%struct.TYPE_7__* %36)
  br label %39

38:                                               ; preds = %2
  store i64 0, i64* @blanked, align 8
  br label %39

39:                                               ; preds = %38, %35
  ret i32 0
}

declare dso_local i32 @splhigh(...) #1

declare dso_local i32 @vidd_set_mode(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @vidd_load_palette(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @vidd_clear(%struct.TYPE_7__*) #1

declare dso_local i32 @fire_update(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
