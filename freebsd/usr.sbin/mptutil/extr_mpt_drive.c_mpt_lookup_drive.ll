; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_mpt_lookup_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_drive.c_mpt_lookup_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_drive_list = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mpt_lookup_drive(%struct.mpt_drive_list* %0, i8* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpt_drive_list*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.mpt_drive_list* %0, %struct.mpt_drive_list** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64* %2, i64** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i64 @strtol(i8* %12, i8** %11, i32 0)
  store i64 %13, i64* %8, align 8
  %14 = load i8*, i8** %11, align 8
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i64, i64* %8, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = icmp sgt i64 %22, 255
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %18
  br label %104

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %7, align 8
  store i64 %26, i64* %27, align 8
  store i32 0, i32* %4, align 4
  br label %106

28:                                               ; preds = %3
  %29 = load i8*, i8** %11, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 58
  br i1 %32, label %33, label %103

33:                                               ; preds = %28
  %34 = load i64, i64* %8, align 8
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = icmp sgt i64 %37, 255
  br i1 %38, label %39, label %40

39:                                               ; preds = %36, %33
  br label %104

40:                                               ; preds = %36
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %9, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 1
  %44 = call i64 @strtol(i8* %43, i8** %11, i32 0)
  store i64 %44, i64* %8, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %104

50:                                               ; preds = %40
  %51 = load i64, i64* %8, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64, i64* %8, align 8
  %55 = icmp sgt i64 %54, 255
  br i1 %55, label %56, label %57

56:                                               ; preds = %53, %50
  br label %104

57:                                               ; preds = %53
  %58 = load i64, i64* %8, align 8
  store i64 %58, i64* %10, align 8
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %98, %57
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %5, align 8
  %62 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %65, label %101

65:                                               ; preds = %59
  %66 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %5, align 8
  %67 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %67, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %68, i64 %69
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %65
  %77 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %5, align 8
  %78 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %79, i64 %80
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %10, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %76
  %88 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %5, align 8
  %89 = getelementptr inbounds %struct.mpt_drive_list, %struct.mpt_drive_list* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %90, i64 %91
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %7, align 8
  store i64 %95, i64* %96, align 8
  store i32 0, i32* %4, align 4
  br label %106

97:                                               ; preds = %76, %65
  br label %98

98:                                               ; preds = %97
  %99 = load i64, i64* %8, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %8, align 8
  br label %59

101:                                              ; preds = %59
  %102 = load i32, i32* @ENOENT, align 4
  store i32 %102, i32* %4, align 4
  br label %106

103:                                              ; preds = %28
  br label %104

104:                                              ; preds = %103, %56, %49, %39, %24
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %101, %87, %25
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
