; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32 }

@BBSIZE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOTBLK = common dso_local global i32 0, align 4
@DISKMAGIC = common dso_local global i64 0, align 8
@G_PART_PROBE_PRI_HIGH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_bsd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_bsd_probe(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %11 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %12 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %11, i32 0, i32 0
  %13 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  store %struct.g_provider* %13, %struct.g_provider** %6, align 8
  %14 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %15 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %21 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BBSIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @ENOSPC, align 4
  store i32 %26, i32* %3, align 4
  br label %71

27:                                               ; preds = %19
  %28 = load i32, i32* @BBSIZE, align 4
  %29 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %30 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = srem i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ENOTBLK, align 4
  store i32 %35, i32* %3, align 4
  br label %71

36:                                               ; preds = %27
  %37 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %38 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %39 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %42 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32* @g_read_data(%struct.g_consumer* %37, i32 %40, i32 %43, i32* %10)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %3, align 4
  br label %71

49:                                               ; preds = %36
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = call i64 @le32dec(i32* %51)
  store i64 %52, i64* %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 132
  %55 = call i64 @le32dec(i32* %54)
  store i64 %55, i64* %9, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @g_free(i32* %56)
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @DISKMAGIC, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %49
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* @DISKMAGIC, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @G_PART_PROBE_PRI_HIGH, align 4
  br label %69

67:                                               ; preds = %61, %49
  %68 = load i32, i32* @ENXIO, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %47, %34, %25
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32* @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i64 @le32dec(i32*) #1

declare dso_local i32 @g_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
