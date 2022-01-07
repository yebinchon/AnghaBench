; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_freesc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_ccd.c_g_ccd_freesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccd_s = type { i64, %struct.ccd_s*, %struct.ccd_s*, %struct.ccd_s* }
%struct.ccdiinfo = type { i64, %struct.ccdiinfo*, %struct.ccdiinfo*, %struct.ccdiinfo* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccd_s*)* @g_ccd_freesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_ccd_freesc(%struct.ccd_s* %0) #0 {
  %2 = alloca %struct.ccd_s*, align 8
  %3 = alloca %struct.ccdiinfo*, align 8
  store %struct.ccd_s* %0, %struct.ccd_s** %2, align 8
  %4 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %5 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %4, i32 0, i32 3
  %6 = load %struct.ccd_s*, %struct.ccd_s** %5, align 8
  %7 = bitcast %struct.ccd_s* %6 to %struct.ccdiinfo*
  %8 = call i32 @g_free(%struct.ccdiinfo* %7)
  %9 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %10 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %9, i32 0, i32 1
  %11 = load %struct.ccd_s*, %struct.ccd_s** %10, align 8
  %12 = icmp ne %struct.ccd_s* %11, null
  br i1 %12, label %13, label %43

13:                                               ; preds = %1
  %14 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %15 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %14, i32 0, i32 1
  %16 = load %struct.ccd_s*, %struct.ccd_s** %15, align 8
  %17 = bitcast %struct.ccd_s* %16 to %struct.ccdiinfo*
  store %struct.ccdiinfo* %17, %struct.ccdiinfo** %3, align 8
  br label %18

18:                                               ; preds = %34, %13
  %19 = load %struct.ccdiinfo*, %struct.ccdiinfo** %3, align 8
  %20 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = load %struct.ccdiinfo*, %struct.ccdiinfo** %3, align 8
  %25 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %24, i32 0, i32 2
  %26 = load %struct.ccdiinfo*, %struct.ccdiinfo** %25, align 8
  %27 = icmp ne %struct.ccdiinfo* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.ccdiinfo*, %struct.ccdiinfo** %3, align 8
  %30 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %29, i32 0, i32 2
  %31 = load %struct.ccdiinfo*, %struct.ccdiinfo** %30, align 8
  %32 = call i32 @g_free(%struct.ccdiinfo* %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.ccdiinfo*, %struct.ccdiinfo** %3, align 8
  %36 = getelementptr inbounds %struct.ccdiinfo, %struct.ccdiinfo* %35, i32 1
  store %struct.ccdiinfo* %36, %struct.ccdiinfo** %3, align 8
  br label %18

37:                                               ; preds = %18
  %38 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %39 = getelementptr inbounds %struct.ccd_s, %struct.ccd_s* %38, i32 0, i32 1
  %40 = load %struct.ccd_s*, %struct.ccd_s** %39, align 8
  %41 = bitcast %struct.ccd_s* %40 to %struct.ccdiinfo*
  %42 = call i32 @g_free(%struct.ccdiinfo* %41)
  br label %43

43:                                               ; preds = %37, %1
  %44 = load %struct.ccd_s*, %struct.ccd_s** %2, align 8
  %45 = bitcast %struct.ccd_s* %44 to %struct.ccdiinfo*
  %46 = call i32 @g_free(%struct.ccdiinfo* %45)
  ret void
}

declare dso_local i32 @g_free(%struct.ccdiinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
