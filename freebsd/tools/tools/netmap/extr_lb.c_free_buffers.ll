; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_free_buffers.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_lb.c_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port_des = type { %struct.TYPE_5__*, i32, %struct.overflow_queue* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.overflow_queue = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.netmap_slot = type { i32 }

@ports = common dso_local global %struct.port_des* null, align 8
@glob_arg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [37 x i8] c"added %d buffers to netmap free list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_buffers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.port_des*, align 8
  %4 = alloca %struct.port_des*, align 8
  %5 = alloca %struct.overflow_queue*, align 8
  %6 = alloca %struct.netmap_slot, align 4
  %7 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  %8 = load %struct.port_des*, %struct.port_des** @ports, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glob_arg, i32 0, i32 0), align 8
  %10 = getelementptr inbounds %struct.port_des, %struct.port_des* %8, i64 %9
  store %struct.port_des* %10, %struct.port_des** %3, align 8
  store i32 0, i32* %1, align 4
  br label %11

11:                                               ; preds = %64, %0
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glob_arg, i32 0, i32 0), align 8
  %15 = add i64 %14, 1
  %16 = icmp ult i64 %13, %15
  br i1 %16, label %17, label %67

17:                                               ; preds = %11
  %18 = load %struct.port_des*, %struct.port_des** @ports, align 8
  %19 = load i32, i32* %1, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.port_des, %struct.port_des* %18, i64 %20
  store %struct.port_des* %21, %struct.port_des** %4, align 8
  %22 = load %struct.port_des*, %struct.port_des** %4, align 8
  %23 = getelementptr inbounds %struct.port_des, %struct.port_des* %22, i32 0, i32 2
  %24 = load %struct.overflow_queue*, %struct.overflow_queue** %23, align 8
  store %struct.overflow_queue* %24, %struct.overflow_queue** %5, align 8
  %25 = load %struct.overflow_queue*, %struct.overflow_queue** %5, align 8
  %26 = icmp ne %struct.overflow_queue* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %17
  br label %64

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %34, %28
  %30 = load %struct.overflow_queue*, %struct.overflow_queue** %5, align 8
  %31 = getelementptr inbounds %struct.overflow_queue, %struct.overflow_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load %struct.overflow_queue*, %struct.overflow_queue** %5, align 8
  %36 = call i32 @oq_deq(%struct.overflow_queue* %35)
  %37 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %6, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load %struct.port_des*, %struct.port_des** %4, align 8
  %39 = getelementptr inbounds %struct.port_des, %struct.port_des* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @NETMAP_BUF(i32 %40, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %7, align 8
  %45 = load %struct.port_des*, %struct.port_des** %3, align 8
  %46 = getelementptr inbounds %struct.port_des, %struct.port_des* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds %struct.netmap_slot, %struct.netmap_slot* %6, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.port_des*, %struct.port_des** %3, align 8
  %56 = getelementptr inbounds %struct.port_des, %struct.port_des* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %54, i32* %60, align 4
  %61 = load i32, i32* %2, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %2, align 4
  br label %29

63:                                               ; preds = %29
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %1, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %1, align 4
  br label %11

67:                                               ; preds = %11
  %68 = load i32, i32* %2, align 4
  %69 = call i32 @D(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %68)
  store i32 0, i32* %1, align 4
  br label %70

70:                                               ; preds = %84, %67
  %71 = load i32, i32* %1, align 4
  %72 = sext i32 %71 to i64
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @glob_arg, i32 0, i32 0), align 8
  %74 = add i64 %73, 1
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %70
  %77 = load %struct.port_des*, %struct.port_des** @ports, align 8
  %78 = load i32, i32* %1, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.port_des, %struct.port_des* %77, i64 %79
  %81 = getelementptr inbounds %struct.port_des, %struct.port_des* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call i32 @nm_close(%struct.TYPE_5__* %82)
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %1, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %1, align 4
  br label %70

87:                                               ; preds = %70
  ret void
}

declare dso_local i32 @oq_deq(%struct.overflow_queue*) #1

declare dso_local i64 @NETMAP_BUF(i32, i32) #1

declare dso_local i32 @D(i8*, i32) #1

declare dso_local i32 @nm_close(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
