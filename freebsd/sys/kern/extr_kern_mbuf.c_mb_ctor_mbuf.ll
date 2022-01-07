; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_ctor_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_mbuf.c_mb_ctor_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.mb_args = type { i16, i32 }

@MT_NOINIT = common dso_local global i16 0, align 2
@M_NOFREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32)* @mb_ctor_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb_ctor_mbuf(i8* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca %struct.mb_args*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i16, align 2
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to %struct.mb_args*
  store %struct.mb_args* %16, %struct.mb_args** %11, align 8
  %17 = load %struct.mb_args*, %struct.mb_args** %11, align 8
  %18 = getelementptr inbounds %struct.mb_args, %struct.mb_args* %17, i32 0, i32 0
  %19 = load i16, i16* %18, align 4
  store i16 %19, i16* %14, align 2
  %20 = load i16, i16* %14, align 2
  %21 = sext i16 %20 to i32
  %22 = load i16, i16* @MT_NOINIT, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %44

26:                                               ; preds = %4
  %27 = load i8*, i8** %6, align 8
  %28 = bitcast i8* %27 to %struct.mbuf*
  store %struct.mbuf* %28, %struct.mbuf** %10, align 8
  %29 = load %struct.mb_args*, %struct.mb_args** %11, align 8
  %30 = getelementptr inbounds %struct.mb_args, %struct.mb_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @M_NOFREE, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  %38 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i16, i16* %14, align 2
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @m_init(%struct.mbuf* %38, i32 %39, i16 signext %40, i32 %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %26, %25
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @m_init(%struct.mbuf*, i32, i16 signext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
