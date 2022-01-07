; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_deq_when.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mkuzip/extr_mkuz_fqueue.c_mkuz_fqueue_deq_when.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mkuz_blk = type { i32 }
%struct.mkuz_fifo_queue = type { i32, i32, %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link*, i32 }
%struct.mkuz_bchain_link = type { %struct.mkuz_blk*, %struct.mkuz_bchain_link* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mkuz_blk* @mkuz_fqueue_deq_when(%struct.mkuz_fifo_queue* %0, i64 (%struct.mkuz_blk*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.mkuz_fifo_queue*, align 8
  %5 = alloca i64 (%struct.mkuz_blk*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mkuz_bchain_link*, align 8
  %8 = alloca %struct.mkuz_bchain_link*, align 8
  %9 = alloca %struct.mkuz_bchain_link*, align 8
  %10 = alloca %struct.mkuz_bchain_link*, align 8
  %11 = alloca %struct.mkuz_blk*, align 8
  store %struct.mkuz_fifo_queue* %0, %struct.mkuz_fifo_queue** %4, align 8
  store i64 (%struct.mkuz_blk*, i8*)* %1, i64 (%struct.mkuz_blk*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %13 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %12, i32 0, i32 1
  %14 = call i32 @pthread_mutex_lock(i32* %13)
  br label %15

15:                                               ; preds = %29, %3
  %16 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %17 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %16, i32 0, i32 2
  %18 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %17, align 8
  %19 = icmp eq %struct.mkuz_bchain_link* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %15
  %21 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %22 = load i64 (%struct.mkuz_blk*, i8*)*, i64 (%struct.mkuz_blk*, i8*)** %5, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = call i32 @mkuz_fqueue_check(%struct.mkuz_fifo_queue* %21, i64 (%struct.mkuz_blk*, i8*)* %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %20, %15
  %28 = phi i1 [ true, %15 ], [ %26, %20 ]
  br i1 %28, label %29, label %35

29:                                               ; preds = %27
  %30 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %31 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %30, i32 0, i32 4
  %32 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %33 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %32, i32 0, i32 1
  %34 = call i32 @pthread_cond_wait(i32* %31, i32* %33)
  br label %15

35:                                               ; preds = %27
  %36 = load i64 (%struct.mkuz_blk*, i8*)*, i64 (%struct.mkuz_blk*, i8*)** %5, align 8
  %37 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %38 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %37, i32 0, i32 2
  %39 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %38, align 8
  %40 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %39, i32 0, i32 0
  %41 = load %struct.mkuz_blk*, %struct.mkuz_blk** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i64 %36(%struct.mkuz_blk* %41, i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %62

45:                                               ; preds = %35
  %46 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %47 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %46, i32 0, i32 2
  %48 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %47, align 8
  store %struct.mkuz_bchain_link* %48, %struct.mkuz_bchain_link** %10, align 8
  %49 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %10, align 8
  %50 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %49, i32 0, i32 1
  %51 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %50, align 8
  %52 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %53 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %52, i32 0, i32 2
  store %struct.mkuz_bchain_link* %51, %struct.mkuz_bchain_link** %53, align 8
  %54 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %55 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %54, i32 0, i32 2
  %56 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %55, align 8
  %57 = icmp eq %struct.mkuz_bchain_link* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %45
  %59 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %60 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %59, i32 0, i32 3
  store %struct.mkuz_bchain_link* null, %struct.mkuz_bchain_link** %60, align 8
  br label %61

61:                                               ; preds = %58, %45
  br label %102

62:                                               ; preds = %35
  %63 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %64 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %63, i32 0, i32 2
  %65 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %64, align 8
  store %struct.mkuz_bchain_link* %65, %struct.mkuz_bchain_link** %8, align 8
  store %struct.mkuz_bchain_link* %65, %struct.mkuz_bchain_link** %9, align 8
  store %struct.mkuz_bchain_link* null, %struct.mkuz_bchain_link** %10, align 8
  %66 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %67 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %66, i32 0, i32 2
  %68 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %67, align 8
  %69 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %68, i32 0, i32 1
  %70 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %69, align 8
  store %struct.mkuz_bchain_link* %70, %struct.mkuz_bchain_link** %7, align 8
  br label %71

71:                                               ; preds = %89, %62
  %72 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %7, align 8
  %73 = icmp ne %struct.mkuz_bchain_link* %72, null
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load i64 (%struct.mkuz_blk*, i8*)*, i64 (%struct.mkuz_blk*, i8*)** %5, align 8
  %76 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %7, align 8
  %77 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %76, i32 0, i32 0
  %78 = load %struct.mkuz_blk*, %struct.mkuz_blk** %77, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i64 %75(%struct.mkuz_blk* %78, i8* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %74
  %83 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %7, align 8
  store %struct.mkuz_bchain_link* %83, %struct.mkuz_bchain_link** %10, align 8
  br label %89

84:                                               ; preds = %74
  %85 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %7, align 8
  %86 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %9, align 8
  %87 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %86, i32 0, i32 1
  store %struct.mkuz_bchain_link* %85, %struct.mkuz_bchain_link** %87, align 8
  %88 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %7, align 8
  store %struct.mkuz_bchain_link* %88, %struct.mkuz_bchain_link** %9, align 8
  br label %89

89:                                               ; preds = %84, %82
  %90 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %7, align 8
  %91 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %90, i32 0, i32 1
  %92 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %91, align 8
  store %struct.mkuz_bchain_link* %92, %struct.mkuz_bchain_link** %7, align 8
  br label %71

93:                                               ; preds = %71
  %94 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %9, align 8
  %95 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %94, i32 0, i32 1
  store %struct.mkuz_bchain_link* null, %struct.mkuz_bchain_link** %95, align 8
  %96 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %9, align 8
  %97 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %98 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %97, i32 0, i32 3
  store %struct.mkuz_bchain_link* %96, %struct.mkuz_bchain_link** %98, align 8
  %99 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %8, align 8
  %100 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %101 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %100, i32 0, i32 2
  store %struct.mkuz_bchain_link* %99, %struct.mkuz_bchain_link** %101, align 8
  br label %102

102:                                              ; preds = %93, %61
  %103 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %104 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load %struct.mkuz_fifo_queue*, %struct.mkuz_fifo_queue** %4, align 8
  %108 = getelementptr inbounds %struct.mkuz_fifo_queue, %struct.mkuz_fifo_queue* %107, i32 0, i32 1
  %109 = call i32 @pthread_mutex_unlock(i32* %108)
  %110 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %10, align 8
  %111 = getelementptr inbounds %struct.mkuz_bchain_link, %struct.mkuz_bchain_link* %110, i32 0, i32 0
  %112 = load %struct.mkuz_blk*, %struct.mkuz_blk** %111, align 8
  store %struct.mkuz_blk* %112, %struct.mkuz_blk** %11, align 8
  %113 = load %struct.mkuz_bchain_link*, %struct.mkuz_bchain_link** %10, align 8
  %114 = call i32 @free(%struct.mkuz_bchain_link* %113)
  %115 = load %struct.mkuz_blk*, %struct.mkuz_blk** %11, align 8
  ret %struct.mkuz_blk* %115
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @mkuz_fqueue_check(%struct.mkuz_fifo_queue*, i64 (%struct.mkuz_blk*, i8*)*, i8*) #1

declare dso_local i32 @pthread_cond_wait(i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @free(%struct.mkuz_bchain_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
