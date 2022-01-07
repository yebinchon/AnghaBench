; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_mpt_pd_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_mpt_pd_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_drive_list = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64 }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mpt_drive_list*, i64)* @mpt_pd_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_pd_insert(i32 %0, %struct.mpt_drive_list* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpt_drive_list*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mpt_drive_list* %1, %struct.mpt_drive_list** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %43, %3
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %13 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %46

16:                                               ; preds = %10
  %17 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %18 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %19, i64 %21
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %98

29:                                               ; preds = %16
  %30 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %31 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %34
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp sgt i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %46

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %10

46:                                               ; preds = %41, %10
  %47 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %48 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %70, %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp sge i32 %52, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %51
  %56 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %57 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %57, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %58, i64 %60
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %64 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %68
  store %struct.TYPE_2__* %62, %struct.TYPE_2__** %69, align 8
  br label %70

70:                                               ; preds = %55
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %9, align 4
  br label %51

73:                                               ; preds = %51
  %74 = load i32, i32* %5, align 4
  %75 = load i64, i64* %7, align 8
  %76 = call %struct.TYPE_2__* @mpt_pd_info(i32 %74, i64 %75, i32* null)
  %77 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %78 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %81
  store %struct.TYPE_2__* %76, %struct.TYPE_2__** %82, align 8
  %83 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %84 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %83, i32 0, i32 1
  %85 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %85, i64 %87
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = icmp eq %struct.TYPE_2__* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %73
  %92 = load i32, i32* @errno, align 4
  store i32 %92, i32* %4, align 4
  br label %98

93:                                               ; preds = %73
  %94 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %6, align 8
  %95 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  store i32 0, i32* %4, align 4
  br label %98

98:                                               ; preds = %93, %91, %28
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_2__* @mpt_pd_info(i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
