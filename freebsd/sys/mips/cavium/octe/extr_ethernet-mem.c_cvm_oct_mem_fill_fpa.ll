; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-mem.c_cvm_oct_mem_fill_fpa.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-mem.c_cvm_oct_mem_fill_fpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }

@MCLBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"mbuf clusters are too small\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Failed to allocate mbuf for hardware pool %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_mem_fill_fpa(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %10
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MCLBYTES, align 4
  %16 = sub nsw i32 %15, 128
  %17 = icmp sle i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @M_NOWAIT, align 4
  %21 = load i32, i32* @MT_DATA, align 4
  %22 = load i32, i32* @M_PKTHDR, align 4
  %23 = call %struct.mbuf* @m_getcl(i32 %20, i32 %21, i32 %22)
  store %struct.mbuf* %23, %struct.mbuf** %8, align 8
  %24 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %25 = icmp eq %struct.mbuf* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i64 @__predict_false(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %62

32:                                               ; preds = %13
  %33 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %34 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %36, 127
  %38 = sub i64 128, %37
  %39 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = add i64 %42, %38
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %40, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %46 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %47 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = sub i64 %49, 8
  %51 = inttoptr i64 %50 to %struct.mbuf**
  store %struct.mbuf* %45, %struct.mbuf** %51, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %53 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = sdiv i32 %56, 128
  %58 = call i32 @DONT_WRITEBACK(i32 %57)
  %59 = call i32 @cvmx_fpa_free(i32 %54, i32 %55, i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %7, align 4
  br label %10

62:                                               ; preds = %29, %10
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = sub nsw i32 %63, %64
  ret i32 %65
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.mbuf* @m_getcl(i32, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @cvmx_fpa_free(i32, i32, i32) #1

declare dso_local i32 @DONT_WRITEBACK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
