; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_copyfromunmapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mbuf.c_m_copyfromunmapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.iovec = type { i32, i32 }
%struct.uio = type { i32, i32, i32, i64, i32, %struct.iovec* }

@.str = private unnamed_addr constant [36 x i8] c"m_copyfromunmapped: negative off %d\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"m_copyfromunmapped: negative len %d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"m_copyfromunmapped: len exceeds mbuf length\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"m_unmappedtouio failed: off %d, len %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*, i32, i32, i32)* @m_copyfromunmapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m_copyfromunmapped(%struct.mbuf* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iovec, align 4
  %10 = alloca %struct.uio, align 8
  %11 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sge i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %14, i8* %17)
  %19 = load i32, i32* %7, align 4
  %20 = icmp sge i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %21, i8* %24)
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %33 = load i32, i32* %8, align 4
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = getelementptr inbounds %struct.iovec, %struct.iovec* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 5
  store %struct.iovec* %9, %struct.iovec** %39, align 8
  %40 = load i32, i32* @UIO_SYSSPACE, align 4
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 4
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @UIO_READ, align 4
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %10, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @m_unmappedtouio(%struct.mbuf* %46, i32 %47, %struct.uio* %10, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = call i32 @KASSERT(i32 %52, i8* %56)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @m_unmappedtouio(%struct.mbuf*, i32, %struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
