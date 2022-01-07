; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_work_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/bde/extr_g_bde_work.c_g_bde_work_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_bde_work = type { i32*, i32*, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_bde_work*, i32)* @g_bde_work_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_bde_work_done(%struct.g_bde_work* %0, i32 %1) #0 {
  %3 = alloca %struct.g_bde_work*, align 8
  %4 = alloca i32, align 4
  store %struct.g_bde_work* %0, %struct.g_bde_work** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %6 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %9 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @g_bde_contribute(i32 %7, i32 %10, i32 %11)
  %13 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %14 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %19 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %22 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @g_bde_delete_sector(i32 %20, i32* %23)
  br label %25

25:                                               ; preds = %17, %2
  %26 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %27 = getelementptr inbounds %struct.g_bde_work, %struct.g_bde_work* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %32 = call i32 @g_bde_release_keysector(%struct.g_bde_work* %31)
  br label %33

33:                                               ; preds = %30, %25
  %34 = load %struct.g_bde_work*, %struct.g_bde_work** %3, align 8
  %35 = call i32 @g_bde_delete_work(%struct.g_bde_work* %34)
  ret void
}

declare dso_local i32 @g_bde_contribute(i32, i32, i32) #1

declare dso_local i32 @g_bde_delete_sector(i32, i32*) #1

declare dso_local i32 @g_bde_release_keysector(%struct.g_bde_work*) #1

declare dso_local i32 @g_bde_delete_work(%struct.g_bde_work*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
