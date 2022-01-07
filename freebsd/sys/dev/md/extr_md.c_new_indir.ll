; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_new_indir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_new_indir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.indir = type { i32, i32, i32* }

@M_MD = common dso_local global i32 0, align 4
@md_malloc_wait = common dso_local global i64 0, align 8
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NINDIR = common dso_local global i32 0, align 4
@M_MDSECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.indir* (i32)* @new_indir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.indir* @new_indir(i32 %0) #0 {
  %2 = alloca %struct.indir*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.indir*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @M_MD, align 4
  %6 = load i64, i64* @md_malloc_wait, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @M_WAITOK, align 4
  br label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @M_NOWAIT, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i8* @malloc(i32 16, i32 %5, i32 %15)
  %17 = bitcast i8* %16 to %struct.indir*
  store %struct.indir* %17, %struct.indir** %4, align 8
  %18 = load %struct.indir*, %struct.indir** %4, align 8
  %19 = icmp eq %struct.indir* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store %struct.indir* null, %struct.indir** %2, align 8
  br label %57

21:                                               ; preds = %12
  %22 = load i32, i32* @NINDIR, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 8, %23
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @M_MDSECT, align 4
  %27 = load i64, i64* @md_malloc_wait, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @M_WAITOK, align 4
  br label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @M_NOWAIT, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load i32, i32* @M_ZERO, align 4
  %36 = or i32 %34, %35
  %37 = call i8* @malloc(i32 %25, i32 %26, i32 %36)
  %38 = bitcast i8* %37 to i32*
  %39 = load %struct.indir*, %struct.indir** %4, align 8
  %40 = getelementptr inbounds %struct.indir, %struct.indir* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load %struct.indir*, %struct.indir** %4, align 8
  %42 = getelementptr inbounds %struct.indir, %struct.indir* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %33
  %46 = load %struct.indir*, %struct.indir** %4, align 8
  %47 = load i32, i32* @M_MD, align 4
  %48 = call i32 @free(%struct.indir* %46, i32 %47)
  store %struct.indir* null, %struct.indir** %2, align 8
  br label %57

49:                                               ; preds = %33
  %50 = load i32, i32* @NINDIR, align 4
  %51 = load %struct.indir*, %struct.indir** %4, align 8
  %52 = getelementptr inbounds %struct.indir, %struct.indir* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %3, align 4
  %54 = load %struct.indir*, %struct.indir** %4, align 8
  %55 = getelementptr inbounds %struct.indir, %struct.indir* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.indir*, %struct.indir** %4, align 8
  store %struct.indir* %56, %struct.indir** %2, align 8
  br label %57

57:                                               ; preds = %49, %45, %20
  %58 = load %struct.indir*, %struct.indir** %2, align 8
  ret %struct.indir* %58
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(%struct.indir*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
