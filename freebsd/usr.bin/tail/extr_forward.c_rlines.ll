; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_rlines.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/tail/extr_forward.c_rlines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }
%struct.mapinfo = type { i8*, i64, i64, i32, i32 }

@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64, %struct.stat*)* @rlines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rlines(i32* %0, i8* %1, i64 %2, %struct.stat* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.stat*, align 8
  %9 = alloca %struct.mapinfo, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.stat* %3, %struct.stat** %8, align 8
  %13 = load %struct.stat*, %struct.stat** %8, align 8
  %14 = getelementptr inbounds %struct.stat, %struct.stat* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %11, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %118

18:                                               ; preds = %4
  %19 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 0
  store i8* null, i8** %19, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @fileno(i32* %20)
  %22 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 4
  store i32 %21, i32* %22, align 4
  %23 = load i64, i64* %11, align 8
  %24 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 2
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 1
  store i64 %23, i64* %25, align 8
  %26 = load i64, i64* %11, align 8
  %27 = sub nsw i64 %26, 2
  store i64 %27, i64* %10, align 8
  br label %28

28:                                               ; preds = %79, %18
  %29 = load i64, i64* %10, align 8
  %30 = icmp sge i64 %29, 0
  br i1 %30, label %31, label %80

31:                                               ; preds = %28
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %32, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i64, i64* %10, align 8
  %38 = call i64 @maparound(%struct.mapinfo* %9, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %6, align 8
  %42 = call i32 @ierr(i8* %41)
  br label %118

43:                                               ; preds = %36, %31
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %44, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %67, %43
  %50 = load i32, i32* %12, align 4
  %51 = icmp sge i32 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8, i8* %57, align 1
  %59 = sext i8 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, -1
  store i64 %63, i64* %7, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %70

66:                                               ; preds = %61, %52
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %12, align 4
  br label %49

70:                                               ; preds = %65, %49
  %71 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  store i64 %75, i64* %10, align 8
  %76 = load i32, i32* %12, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  br label %80

79:                                               ; preds = %70
  br label %28

80:                                               ; preds = %78, %28
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %11, align 8
  %85 = load i64, i64* %10, align 8
  %86 = sub nsw i64 %84, %85
  %87 = call i64 @mapprint(%struct.mapinfo* %9, i64 %83, i64 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %80
  %90 = load i8*, i8** %6, align 8
  %91 = call i32 @ierr(i8* %90)
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %80
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.stat*, %struct.stat** %8, align 8
  %96 = getelementptr inbounds %struct.stat, %struct.stat* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @SEEK_SET, align 4
  %99 = call i32 @fseeko(i32* %94, i64 %97, i32 %98)
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %101, label %104

101:                                              ; preds = %93
  %102 = load i8*, i8** %6, align 8
  %103 = call i32 @ierr(i8* %102)
  br label %118

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %118

108:                                              ; preds = %104
  %109 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = getelementptr inbounds %struct.mapinfo, %struct.mapinfo* %9, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i64 @munmap(i8* %110, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %108
  %116 = load i8*, i8** %6, align 8
  %117 = call i32 @ierr(i8* %116)
  br label %118

118:                                              ; preds = %17, %40, %101, %115, %108, %104
  ret void
}

declare dso_local i32 @fileno(i32*) #1

declare dso_local i64 @maparound(%struct.mapinfo*, i64) #1

declare dso_local i32 @ierr(i8*) #1

declare dso_local i64 @mapprint(%struct.mapinfo*, i64, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fseeko(i32*, i64, i32) #1

declare dso_local i64 @munmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
