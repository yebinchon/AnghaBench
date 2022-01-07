; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [49 x i8] c"%s: return offset %d (cluster %d) for pointer %p\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"address %p is not contained inside any cluster (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netmap_obj_pool*, i8*)* @netmap_obj_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @netmap_obj_offset(%struct.netmap_obj_pool* %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.netmap_obj_pool*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %13 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %16 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %18

18:                                               ; preds = %57, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %24 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %23, i32 0, i32 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  store i8* %30, i8** %10, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = ptrtoint i8* %31 to i64
  %34 = ptrtoint i8* %32 to i64
  %35 = sub i64 %33, %34
  store i64 %35, i64* %11, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %22
  %39 = load i64, i64* %11, align 8
  %40 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %41 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sge i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38, %22
  br label %57

45:                                               ; preds = %38
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %11, align 8
  %48 = add nsw i64 %46, %47
  store i64 %48, i64* %9, align 8
  %49 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %50 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i8*, i8** %5, align 8
  %55 = call i32 @nm_prdis(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %52, i32 %53, i8* %54)
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %3, align 8
  br label %72

57:                                               ; preds = %44
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %62 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = add nsw i64 %64, %63
  store i64 %65, i64* %9, align 8
  br label %18

66:                                               ; preds = %18
  %67 = load i8*, i8** %5, align 8
  %68 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %4, align 8
  %69 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @nm_prerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %70)
  store i64 0, i64* %3, align 8
  br label %72

72:                                               ; preds = %66, %45
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i32 @nm_prdis(i8*, i32, i64, i32, i8*) #1

declare dso_local i32 @nm_prerr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
