; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/isa/extr_mss.c_mss_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mss_info = type { i64, %struct.TYPE_5__, i32*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@MD_YM0020 = common dso_local global i64 0, align 8
@MD_CS423X = common dso_local global i64 0, align 8
@MSS_INDEXED_REGS = common dso_local global i32 0, align 4
@OPL_INDEXED_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mss_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mss_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mss_info*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.mss_info* @pcm_getdevinfo(i32 %5)
  store %struct.mss_info* %6, %struct.mss_info** %3, align 8
  %7 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %8 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MD_YM0020, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %14 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MD_CS423X, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %12, %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %34, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MSS_INDEXED_REGS, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %27 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ad_write(%struct.mss_info* %24, i32 %25, i32 %32)
  br label %34

34:                                               ; preds = %23
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %19

37:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @OPL_INDEXED_REGS, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %46 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @conf_wr(%struct.mss_info* %43, i32 %44, i32 %51)
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %58 = call i32 @mss_intr(%struct.mss_info* %57)
  br label %59

59:                                               ; preds = %56, %12
  %60 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %61 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MD_CS423X, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %67 = call i32 @mss_lock(%struct.mss_info* %66)
  %68 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %69 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %68, i32 0, i32 1
  %70 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %71 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @mss_format(%struct.TYPE_5__* %69, i32 %75)
  %77 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %78 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %77, i32 0, i32 1
  %79 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %80 = getelementptr inbounds %struct.mss_info, %struct.mss_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @mss_speed(%struct.TYPE_5__* %78, i32 %84)
  %86 = load %struct.mss_info*, %struct.mss_info** %3, align 8
  %87 = call i32 @mss_unlock(%struct.mss_info* %86)
  br label %88

88:                                               ; preds = %65, %59
  ret i32 0
}

declare dso_local %struct.mss_info* @pcm_getdevinfo(i32) #1

declare dso_local i32 @ad_write(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @conf_wr(%struct.mss_info*, i32, i32) #1

declare dso_local i32 @mss_intr(%struct.mss_info*) #1

declare dso_local i32 @mss_lock(%struct.mss_info*) #1

declare dso_local i32 @mss_format(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mss_speed(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @mss_unlock(%struct.mss_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
