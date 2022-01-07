; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_free_va.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_obj_free_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_obj_pool = type { i64, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [52 x i8] c"address %p is not contained inside any cluster (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netmap_obj_pool*, i8*)* @netmap_obj_free_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netmap_obj_free_va(%struct.netmap_obj_pool* %0, i8* %1) #0 {
  %3 = alloca %struct.netmap_obj_pool*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.netmap_obj_pool* %0, %struct.netmap_obj_pool** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %11 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %59, %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %13
  %18 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %19 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %18, i32 0, i32 5
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %23 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = mul i64 %21, %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = ptrtoint i8* %29 to i32
  %31 = load i8*, i8** %8, align 8
  %32 = ptrtoint i8* %31 to i32
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %17
  %37 = load i8*, i8** %4, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = icmp ult i8* %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %43 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40, %36, %17
  br label %59

47:                                               ; preds = %40
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %51 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %49, %52
  %54 = sext i32 %53 to i64
  %55 = add i64 %48, %54
  store i64 %55, i64* %6, align 8
  %56 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %57 = load i64, i64* %6, align 8
  %58 = call i32 @netmap_obj_free(%struct.netmap_obj_pool* %56, i64 %57)
  br label %73

59:                                               ; preds = %46
  %60 = load i64, i64* %5, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %5, align 8
  %62 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %63 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %6, align 8
  br label %13

67:                                               ; preds = %13
  %68 = load i8*, i8** %4, align 8
  %69 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %3, align 8
  %70 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @nm_prerr(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %71)
  br label %73

73:                                               ; preds = %67, %47
  ret void
}

declare dso_local i32 @netmap_obj_free(%struct.netmap_obj_pool*, i64) #1

declare dso_local i32 @nm_prerr(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
