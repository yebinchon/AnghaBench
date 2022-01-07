; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_getjcl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_m_getjcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i16 }
%struct.mb_args = type { i32, i16 }

@MCLBYTES = common dso_local global i32 0, align 4
@zone_mbuf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_getjcl(i32 %0, i16 signext %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mb_args, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @MCLBYTES, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %4
  %18 = load i32, i32* %6, align 4
  %19 = load i16, i16* %7, align 2
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.mbuf* @m_getcl(i32 %18, i16 signext %19, i32 %20)
  store %struct.mbuf* %21, %struct.mbuf** %5, align 8
  br label %49

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds %struct.mb_args, %struct.mb_args* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load i16, i16* %7, align 2
  %26 = getelementptr inbounds %struct.mb_args, %struct.mb_args* %10, i32 0, i32 1
  store i16 %25, i16* %26, align 4
  %27 = load i32, i32* @zone_mbuf, align 4
  %28 = bitcast %struct.mb_args* %10 to %struct.mbuf*
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.mbuf* @uma_zalloc_arg(i32 %27, %struct.mbuf* %28, i32 %29)
  store %struct.mbuf* %30, %struct.mbuf** %11, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %32 = icmp eq %struct.mbuf* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %49

34:                                               ; preds = %22
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @m_getzone(i32 %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.mbuf* @uma_zalloc_arg(i32 %37, %struct.mbuf* %38, i32 %39)
  store %struct.mbuf* %40, %struct.mbuf** %12, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @zone_mbuf, align 4
  %45 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %46 = call i32 @uma_zfree(i32 %44, %struct.mbuf* %45)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %49

47:                                               ; preds = %34
  %48 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %48, %struct.mbuf** %5, align 8
  br label %49

49:                                               ; preds = %47, %43, %33, %17
  %50 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %50
}

declare dso_local %struct.mbuf* @m_getcl(i32, i16 signext, i32) #1

declare dso_local %struct.mbuf* @uma_zalloc_arg(i32, %struct.mbuf*, i32) #1

declare dso_local i32 @m_getzone(i32) #1

declare dso_local i32 @uma_zfree(i32, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
