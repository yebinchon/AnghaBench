; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_mbox.c_oce_pass_through_mbox.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_mbox.c_oce_pass_through_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.oce_mbx = type { i32, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.oce_mq_sge* }
%struct.oce_mq_sge = type { i8*, i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }

@OCE_BMBX_RHDR_SZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @oce_pass_through_mbox(i32 %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.oce_mbx, align 8
  %8 = alloca %struct.oce_mq_sge*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @bzero(%struct.oce_mbx* %7, i32 32)
  %11 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %7, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %7, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 1, i32* %18, align 8
  %19 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.oce_mq_sge*, %struct.oce_mq_sge** %22, align 8
  %24 = getelementptr inbounds %struct.oce_mq_sge, %struct.oce_mq_sge* %23, i64 0
  store %struct.oce_mq_sge* %24, %struct.oce_mq_sge** %8, align 8
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @upper_32_bits(i32 %27)
  %29 = call i8* @htole32(i32 %28)
  %30 = load %struct.oce_mq_sge*, %struct.oce_mq_sge** %8, align 8
  %31 = getelementptr inbounds %struct.oce_mq_sge, %struct.oce_mq_sge* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @htole32(i32 %34)
  %36 = load %struct.oce_mq_sge*, %struct.oce_mq_sge** %8, align 8
  %37 = getelementptr inbounds %struct.oce_mq_sge, %struct.oce_mq_sge* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i8* @htole32(i32 %38)
  %40 = load %struct.oce_mq_sge*, %struct.oce_mq_sge** %8, align 8
  %41 = getelementptr inbounds %struct.oce_mq_sge, %struct.oce_mq_sge* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = call i32 @u32ptr(%struct.oce_mbx* %7)
  %43 = getelementptr inbounds %struct.oce_mbx, %struct.oce_mbx* %7, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @OCE_BMBX_RHDR_SZ, align 4
  %46 = add nsw i32 %44, %45
  %47 = call i32 @DW_SWAP(i32 %42, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @oce_mbox_post(i32 %48, %struct.oce_mbx* %7, i32* null)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  ret i32 %50
}

declare dso_local i32 @bzero(%struct.oce_mbx*, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @DW_SWAP(i32, i32) #1

declare dso_local i32 @u32ptr(%struct.oce_mbx*) #1

declare dso_local i32 @oce_mbox_post(i32, %struct.oce_mbx*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
