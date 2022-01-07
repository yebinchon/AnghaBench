; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_dimension.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_dimension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indir = type { i32, i32, i8* }

@NINDIR = common dso_local global i32 0, align 4
@M_MD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_MDSECT = common dso_local global i32 0, align 4
@nshift = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.indir* (i32)* @dimension to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.indir* @dimension(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.indir*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %3, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @NINDIR, align 4
  %10 = icmp sgt i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i32, i32* @NINDIR, align 4
  %13 = load i32, i32* %3, align 4
  %14 = sdiv i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %5, align 4
  br label %7

17:                                               ; preds = %7
  %18 = load i32, i32* @M_MD, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = load i32, i32* @M_ZERO, align 4
  %21 = or i32 %19, %20
  %22 = call i8* @malloc(i32 16, i32 %18, i32 %21)
  %23 = bitcast i8* %22 to %struct.indir*
  store %struct.indir* %23, %struct.indir** %4, align 8
  %24 = load i32, i32* @NINDIR, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 8, %25
  %27 = trunc i64 %26 to i32
  %28 = load i32, i32* @M_MDSECT, align 4
  %29 = load i32, i32* @M_WAITOK, align 4
  %30 = load i32, i32* @M_ZERO, align 4
  %31 = or i32 %29, %30
  %32 = call i8* @malloc(i32 %27, i32 %28, i32 %31)
  %33 = load %struct.indir*, %struct.indir** %4, align 8
  %34 = getelementptr inbounds %struct.indir, %struct.indir* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @NINDIR, align 4
  %36 = load %struct.indir*, %struct.indir** %4, align 8
  %37 = getelementptr inbounds %struct.indir, %struct.indir* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @nshift, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.indir*, %struct.indir** %4, align 8
  %42 = getelementptr inbounds %struct.indir, %struct.indir* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.indir*, %struct.indir** %4, align 8
  ret %struct.indir* %43
}

declare dso_local i8* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
