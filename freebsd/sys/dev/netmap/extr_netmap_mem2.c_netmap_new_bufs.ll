; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_new_bufs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_mem2.c_netmap_new_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_mem_d = type { %struct.netmap_obj_pool* }
%struct.netmap_obj_pool = type { i32, i32, i32 }
%struct.netmap_slot = type { i32, i64, i64, i32 }

@NETMAP_BUF_POOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"no more buffers after %d of %d\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: allocated %d buffers, %d available, first at %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netmap_mem_d*, %struct.netmap_slot*, i64)* @netmap_new_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netmap_new_bufs(%struct.netmap_mem_d* %0, %struct.netmap_slot* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.netmap_mem_d*, align 8
  %6 = alloca %struct.netmap_slot*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.netmap_obj_pool*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.netmap_mem_d* %0, %struct.netmap_mem_d** %5, align 8
  store %struct.netmap_slot* %1, %struct.netmap_slot** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %14 = getelementptr inbounds %struct.netmap_mem_d, %struct.netmap_mem_d* %13, i32 0, i32 0
  %15 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %14, align 8
  %16 = load i64, i64* @NETMAP_BUF_POOL, align 8
  %17 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %15, i64 %16
  store %struct.netmap_obj_pool* %17, %struct.netmap_obj_pool** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %52, %3
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %7, align 8
  %21 = icmp ult i64 %19, %20
  br i1 %21, label %22, label %55

22:                                               ; preds = %18
  %23 = load %struct.netmap_mem_d*, %struct.netmap_mem_d** %5, align 8
  %24 = call i8* @netmap_buf_malloc(%struct.netmap_mem_d* %23, i32* %10, i32* %11)
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @nm_prerr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %29)
  br label %65

31:                                               ; preds = %22
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %33, i64 %34
  %36 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %35, i32 0, i32 0
  store i32 %32, i32* %36, align 8
  %37 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %8, align 8
  %38 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %40, i64 %41
  %43 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %42, i32 0, i32 3
  store i32 %39, i32* %43, align 8
  %44 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %44, i64 %45
  %47 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %48, i64 %49
  %51 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  br label %52

52:                                               ; preds = %31
  %53 = load i64, i64* %9, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %18

55:                                               ; preds = %18
  %56 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %8, align 8
  %57 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %8, align 8
  %61 = getelementptr inbounds %struct.netmap_obj_pool, %struct.netmap_obj_pool* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @nm_prdis(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %58, i64 %59, i32 %62, i32 %63)
  store i32 0, i32* %4, align 4
  br label %85

65:                                               ; preds = %27
  br label %66

66:                                               ; preds = %69, %65
  %67 = load i64, i64* %9, align 8
  %68 = icmp ugt i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66
  %70 = load i64, i64* %9, align 8
  %71 = add i64 %70, -1
  store i64 %71, i64* %9, align 8
  %72 = load %struct.netmap_obj_pool*, %struct.netmap_obj_pool** %8, align 8
  %73 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %74 = load i64, i64* %9, align 8
  %75 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %73, i64 %74
  %76 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netmap_obj_free(%struct.netmap_obj_pool* %72, i32 %77)
  br label %66

79:                                               ; preds = %66
  %80 = load %struct.netmap_slot*, %struct.netmap_slot** %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = mul i64 %81, 32
  %83 = call i32 @bzero(%struct.netmap_slot* %80, i64 %82)
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %79, %55
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i8* @netmap_buf_malloc(%struct.netmap_mem_d*, i32*, i32*) #1

declare dso_local i32 @nm_prerr(i8*, i64, i64) #1

declare dso_local i32 @nm_prdis(i8*, i32, i64, i32, i32) #1

declare dso_local i32 @netmap_obj_free(%struct.netmap_obj_pool*, i32) #1

declare dso_local i32 @bzero(%struct.netmap_slot*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
