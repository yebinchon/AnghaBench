; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.mmcsd_part* }
%struct.mmcsd_part = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"MMC::device\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bio*)* @mmcsd_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_getattr(%struct.bio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.mmcsd_part*, align 8
  %5 = alloca i32, align 4
  store %struct.bio* %0, %struct.bio** %3, align 8
  %6 = load %struct.bio*, %struct.bio** %3, align 8
  %7 = getelementptr inbounds %struct.bio, %struct.bio* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i64 @strcmp(i32 %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %39

11:                                               ; preds = %1
  %12 = load %struct.bio*, %struct.bio** %3, align 8
  %13 = getelementptr inbounds %struct.bio, %struct.bio* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 4
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @EFAULT, align 4
  store i32 %18, i32* %2, align 4
  br label %40

19:                                               ; preds = %11
  %20 = load %struct.bio*, %struct.bio** %3, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.mmcsd_part*, %struct.mmcsd_part** %23, align 8
  store %struct.mmcsd_part* %24, %struct.mmcsd_part** %4, align 8
  %25 = load %struct.mmcsd_part*, %struct.mmcsd_part** %4, align 8
  %26 = getelementptr inbounds %struct.mmcsd_part, %struct.mmcsd_part* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.bio*, %struct.bio** %3, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bcopy(i32* %5, i32 %32, i32 4)
  %34 = load %struct.bio*, %struct.bio** %3, align 8
  %35 = getelementptr inbounds %struct.bio, %struct.bio* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bio*, %struct.bio** %3, align 8
  %38 = getelementptr inbounds %struct.bio, %struct.bio* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %2, align 4
  br label %40

39:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %19, %17
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
