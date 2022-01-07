; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_doorbell_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_doorbell_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.qlnxr_cq = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_cq*, i32, i32)* @doorbell_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @doorbell_cq(%struct.qlnxr_dev* %0, %struct.qlnxr_cq* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.qlnxr_dev*, align 8
  %6 = alloca %struct.qlnxr_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %5, align 8
  store %struct.qlnxr_cq* %1, %struct.qlnxr_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %5, align 8
  %12 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %10, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %15 = call i32 @QL_DPRINT12(%struct.TYPE_9__* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @wmb()
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %19 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i32 %17, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @cpu_to_le32(i32 %22)
  %24 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %25 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %29 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i32*
  %37 = ptrtoint i32* %31 to i64
  %38 = ptrtoint i32* %36 to i64
  %39 = sub i64 %37, %38
  %40 = sdiv exact i64 %39, 4
  store i64 %40, i64* %9, align 8
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %6, align 8
  %46 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @bus_write_8(i32 %43, i64 %44, i32 %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %54 = call i32 @bus_barrier(i32 %52, i32 0, i32 0, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %56 = call i32 @QL_DPRINT12(%struct.TYPE_9__* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @bus_write_8(i32, i64, i32) #1

declare dso_local i32 @bus_barrier(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
