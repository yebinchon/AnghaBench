; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_unbind.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i32*, i32 }

@.str = private unnamed_addr constant [49 x i8] c"NULL xen_intr_handle_t passed to xen_intr_unbind\00", align 1
@xen_intr_isrc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_intr_unbind(i32** %0) #0 {
  %2 = alloca i32**, align 8
  %3 = alloca %struct.xenisrc*, align 8
  store i32** %0, i32*** %2, align 8
  %4 = load i32**, i32*** %2, align 8
  %5 = icmp ne i32** %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @KASSERT(i32 %6, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %8 = load i32**, i32*** %2, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = call %struct.xenisrc* @xen_intr_isrc(i32* %9)
  store %struct.xenisrc* %10, %struct.xenisrc** %3, align 8
  %11 = load i32**, i32*** %2, align 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %13 = icmp eq %struct.xenisrc* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %37

15:                                               ; preds = %1
  %16 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %17 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %18 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %17, i32 0, i32 1
  %19 = call i64 @refcount_release(i32* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  br label %37

23:                                               ; preds = %15
  %24 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %25 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %26 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %31 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @intr_remove_handler(i32* %32)
  br label %34

34:                                               ; preds = %29, %23
  %35 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %36 = call i32 @xen_intr_release_isrc(%struct.xenisrc* %35)
  br label %37

37:                                               ; preds = %34, %21, %14
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.xenisrc* @xen_intr_isrc(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @intr_remove_handler(i32*) #1

declare dso_local i32 @xen_intr_release_isrc(%struct.xenisrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
