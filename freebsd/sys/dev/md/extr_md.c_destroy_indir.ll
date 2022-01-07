; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_destroy_indir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/md/extr_md.c_destroy_indir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_s = type { i32 }
%struct.indir = type { i32*, i64 }

@NINDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_s*, %struct.indir*)* @destroy_indir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_indir(%struct.md_s* %0, %struct.indir* %1) #0 {
  %3 = alloca %struct.md_s*, align 8
  %4 = alloca %struct.indir*, align 8
  %5 = alloca i32, align 4
  store %struct.md_s* %0, %struct.md_s** %3, align 8
  store %struct.indir* %1, %struct.indir** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %61, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NINDIR, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %64

10:                                               ; preds = %6
  %11 = load %struct.indir*, %struct.indir** %4, align 8
  %12 = getelementptr inbounds %struct.indir, %struct.indir* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %61

20:                                               ; preds = %10
  %21 = load %struct.indir*, %struct.indir** %4, align 8
  %22 = getelementptr inbounds %struct.indir, %struct.indir* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = load %struct.md_s*, %struct.md_s** %3, align 8
  %27 = load %struct.indir*, %struct.indir** %4, align 8
  %28 = getelementptr inbounds %struct.indir, %struct.indir* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to %struct.indir*
  call void @destroy_indir(%struct.md_s* %26, %struct.indir* %35)
  br label %60

36:                                               ; preds = %20
  %37 = load %struct.indir*, %struct.indir** %4, align 8
  %38 = getelementptr inbounds %struct.indir, %struct.indir* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = icmp sgt i32 %43, 255
  br i1 %44, label %45, label %59

45:                                               ; preds = %36
  %46 = load %struct.md_s*, %struct.md_s** %3, align 8
  %47 = getelementptr inbounds %struct.md_s, %struct.md_s* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.indir*, %struct.indir** %4, align 8
  %50 = getelementptr inbounds %struct.indir, %struct.indir* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @uma_zfree(i32 %48, i8* %57)
  br label %59

59:                                               ; preds = %45, %36
  br label %60

60:                                               ; preds = %59, %25
  br label %61

61:                                               ; preds = %60, %19
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %6

64:                                               ; preds = %6
  %65 = load %struct.indir*, %struct.indir** %4, align 8
  %66 = call i32 @del_indir(%struct.indir* %65)
  ret void
}

declare dso_local i32 @uma_zfree(i32, i8*) #1

declare dso_local i32 @del_indir(%struct.indir*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
