; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_get2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_get2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i16 }
%struct.mb_args = type { i32, i16 }

@MHLEN = common dso_local global i32 0, align 4
@MLEN = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@zone_mbuf = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@zone_pack = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@zone_jumbop = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_get2(i32 %0, i32 %1, i16 signext %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %struct.mb_args, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = getelementptr inbounds %struct.mb_args, %struct.mb_args* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i16, i16* %8, align 2
  %16 = getelementptr inbounds %struct.mb_args, %struct.mb_args* %10, i32 0, i32 1
  store i16 %15, i16* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MHLEN, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @MLEN, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @M_PKTHDR, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24, %4
  %30 = load i32, i32* @zone_mbuf, align 4
  %31 = bitcast %struct.mb_args* %10 to %struct.mbuf*
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.mbuf* @uma_zalloc_arg(i32 %30, %struct.mbuf* %31, i32 %32)
  store %struct.mbuf* %33, %struct.mbuf** %5, align 8
  br label %69

34:                                               ; preds = %24, %20
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MCLBYTES, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @zone_pack, align 4
  %40 = bitcast %struct.mb_args* %10 to %struct.mbuf*
  %41 = load i32, i32* %7, align 4
  %42 = call %struct.mbuf* @uma_zalloc_arg(i32 %39, %struct.mbuf* %40, i32 %41)
  store %struct.mbuf* %42, %struct.mbuf** %5, align 8
  br label %69

43:                                               ; preds = %34
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @MJUMPAGESIZE, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %69

48:                                               ; preds = %43
  %49 = load i32, i32* @zone_mbuf, align 4
  %50 = bitcast %struct.mb_args* %10 to %struct.mbuf*
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.mbuf* @uma_zalloc_arg(i32 %49, %struct.mbuf* %50, i32 %51)
  store %struct.mbuf* %52, %struct.mbuf** %11, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %54 = icmp eq %struct.mbuf* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %69

56:                                               ; preds = %48
  %57 = load i32, i32* @zone_jumbop, align 4
  %58 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call %struct.mbuf* @uma_zalloc_arg(i32 %57, %struct.mbuf* %58, i32 %59)
  store %struct.mbuf* %60, %struct.mbuf** %12, align 8
  %61 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %62 = icmp eq %struct.mbuf* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @zone_mbuf, align 4
  %65 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %66 = call i32 @uma_zfree(i32 %64, %struct.mbuf* %65)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %69

67:                                               ; preds = %56
  %68 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %68, %struct.mbuf** %5, align 8
  br label %69

69:                                               ; preds = %67, %63, %55, %47, %38, %29
  %70 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %70
}

declare dso_local %struct.mbuf* @uma_zalloc_arg(i32, %struct.mbuf*, i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
