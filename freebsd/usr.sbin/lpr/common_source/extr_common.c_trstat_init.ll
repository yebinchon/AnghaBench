; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_trstat_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_trstat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer = type { i8*, i32, i32, i32 }

@TIMESTR_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trstat_init(%struct.printer* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.printer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store %struct.printer* %0, %struct.printer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.printer*, %struct.printer** %4, align 8
  %11 = getelementptr inbounds %struct.printer, %struct.printer* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @memset(i8* %12, i32 0, i32 8)
  %14 = load %struct.printer*, %struct.printer** %4, align 8
  %15 = getelementptr inbounds %struct.printer, %struct.printer* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  store i8 48, i8* %17, align 1
  %18 = load i8*, i8** %5, align 8
  %19 = call i8* @strchr(i8* %18, i8 signext 47)
  store i8* %19, i8** %7, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i8*, i8** %5, align 8
  store i8* %23, i8** %7, align 8
  br label %24

24:                                               ; preds = %22, %3
  %25 = load %struct.printer*, %struct.printer** %4, align 8
  %26 = getelementptr inbounds %struct.printer, %struct.printer* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 0
  store i8* %28, i8** %8, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 5
  store i8* %30, i8** %9, align 8
  br label %31

31:                                               ; preds = %50, %24
  %32 = load i8*, i8** %7, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i8*, i8** %7, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp slt i32 %39, 48
  br i1 %40, label %46, label %41

41:                                               ; preds = %36
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp sgt i32 %44, 57
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i1 [ true, %36 ], [ %45, %41 ]
  br label %48

48:                                               ; preds = %46, %31
  %49 = phi i1 [ false, %31 ], [ %47, %46 ]
  br i1 %49, label %50, label %53

50:                                               ; preds = %48
  %51 = load i8*, i8** %7, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %7, align 8
  br label %31

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %70, %53
  %55 = load i8*, i8** %7, align 8
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp sge i32 %57, 48
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load i8*, i8** %7, align 8
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i8*, i8** %8, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = icmp ult i8* %65, %66
  br label %68

68:                                               ; preds = %64, %59, %54
  %69 = phi i1 [ false, %59 ], [ false, %54 ], [ %67, %64 ]
  br i1 %69, label %70, label %76

70:                                               ; preds = %68
  %71 = load i8*, i8** %7, align 8
  %72 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %72, i8** %7, align 8
  %73 = load i8, i8* %71, align 1
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %8, align 8
  store i8 %73, i8* %74, align 1
  br label %54

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.printer*, %struct.printer** %4, align 8
  %79 = getelementptr inbounds %struct.printer, %struct.printer* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.printer*, %struct.printer** %4, align 8
  %81 = getelementptr inbounds %struct.printer, %struct.printer* %80, i32 0, i32 3
  %82 = load %struct.printer*, %struct.printer** %4, align 8
  %83 = getelementptr inbounds %struct.printer, %struct.printer* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load i64, i64* @TIMESTR_SIZE, align 8
  %86 = call i32 @lpd_gettime(i32* %81, i32 %84, i64 %85)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @lpd_gettime(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
