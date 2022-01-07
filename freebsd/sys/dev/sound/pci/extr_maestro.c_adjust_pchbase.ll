; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_adjust_pchbase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_adjust_pchbase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_chinfo = type { i64, i64 }

@AGG_MAXPLAYCH = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"Total of %d bases are assigned.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ch.%d: phys 0x%llx, wpwa 0x%llx\0A\00", align 1
@BASE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_chinfo*, i64, i64)* @adjust_pchbase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adjust_pchbase(%struct.agg_chinfo* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.agg_chinfo*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.agg_chinfo* %0, %struct.agg_chinfo** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32, i32* @AGG_MAXPLAYCH, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %7, align 8
  %16 = alloca %struct.agg_chinfo*, i64 %14, align 16
  store i64 %14, i64* %8, align 8
  store i64 0, i64* %9, align 8
  br label %17

17:                                               ; preds = %65, %3
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %56, %21
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %22
  %27 = load %struct.agg_chinfo*, %struct.agg_chinfo** %4, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %27, i64 %28
  %30 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 %32
  %34 = load %struct.agg_chinfo*, %struct.agg_chinfo** %33, align 8
  %35 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp slt i64 %31, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %26
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %51, %38
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* %10, align 8
  %43 = icmp ugt i64 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i64, i64* %11, align 8
  %46 = sub i64 %45, 1
  %47 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 %46
  %48 = load %struct.agg_chinfo*, %struct.agg_chinfo** %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 %49
  store %struct.agg_chinfo* %48, %struct.agg_chinfo** %50, align 8
  br label %51

51:                                               ; preds = %44
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, -1
  store i64 %53, i64* %11, align 8
  br label %40

54:                                               ; preds = %40
  br label %59

55:                                               ; preds = %26
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %22

59:                                               ; preds = %54, %22
  %60 = load %struct.agg_chinfo*, %struct.agg_chinfo** %4, align 8
  %61 = load i64, i64* %9, align 8
  %62 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %60, i64 %61
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 %63
  store %struct.agg_chinfo* %62, %struct.agg_chinfo** %64, align 8
  br label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %9, align 8
  br label %17

68:                                               ; preds = %17
  %69 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 0
  %70 = load %struct.agg_chinfo*, %struct.agg_chinfo** %69, align 16
  %71 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %12, align 8
  store i64 1, i64* %11, align 8
  store i64 1, i64* %9, align 8
  br label %73

73:                                               ; preds = %114, %68
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp ult i64 %74, %75
  br i1 %76, label %77, label %117

77:                                               ; preds = %73
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 %78
  %80 = load %struct.agg_chinfo*, %struct.agg_chinfo** %79, align 8
  %81 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = add i64 %82, %83
  %85 = load i64, i64* %12, align 8
  %86 = sub i64 %84, %85
  %87 = call i32 (i32, ...) bitcast (i32 (...)* @WPWA_WTBAR_SHIFT to i32 (i32, ...)*)(i32 2)
  %88 = add nsw i32 %87, 2
  %89 = add nsw i32 %88, 1
  %90 = shl i32 1, %89
  %91 = sext i32 %90 to i64
  %92 = icmp uge i64 %86, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %77
  %94 = load i64, i64* %11, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %11, align 8
  %96 = call i32 (i32, ...) bitcast (i32 (...)* @WPWA_WTBAR_SHIFT to i32 (i32, ...)*)(i32 2)
  %97 = add nsw i32 %96, 2
  %98 = add nsw i32 %97, 1
  %99 = zext i32 %98 to i64
  %100 = shl i64 %94, %99
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 %101
  %103 = load %struct.agg_chinfo*, %struct.agg_chinfo** %102, align 8
  %104 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sub i64 %105, %100
  store i64 %106, i64* %104, align 8
  store i64 %106, i64* %12, align 8
  br label %113

107:                                              ; preds = %77
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %9, align 8
  %110 = getelementptr inbounds %struct.agg_chinfo*, %struct.agg_chinfo** %16, i64 %109
  %111 = load %struct.agg_chinfo*, %struct.agg_chinfo** %110, align 8
  %112 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %111, i32 0, i32 1
  store i64 %108, i64* %112, align 8
  br label %113

113:                                              ; preds = %107, %93
  br label %114

114:                                              ; preds = %113
  %115 = load i64, i64* %9, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %9, align 8
  br label %73

117:                                              ; preds = %73
  %118 = load i64, i64* @bootverbose, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %151

120:                                              ; preds = %117
  %121 = load i64, i64* %11, align 8
  %122 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %121)
  store i64 0, i64* %9, align 8
  br label %123

123:                                              ; preds = %147, %120
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %5, align 8
  %126 = icmp ult i64 %124, %125
  br i1 %126, label %127, label %150

127:                                              ; preds = %123
  %128 = load i64, i64* %9, align 8
  %129 = load %struct.agg_chinfo*, %struct.agg_chinfo** %4, align 8
  %130 = load i64, i64* %9, align 8
  %131 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %129, i64 %130
  %132 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.agg_chinfo*, %struct.agg_chinfo** %4, align 8
  %135 = load i64, i64* %9, align 8
  %136 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %134, i64 %135
  %137 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.agg_chinfo*, %struct.agg_chinfo** %4, align 8
  %140 = load i64, i64* %9, align 8
  %141 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %139, i64 %140
  %142 = getelementptr inbounds %struct.agg_chinfo, %struct.agg_chinfo* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %138, %143
  %145 = ashr i64 %144, 1
  %146 = call i32 (i8*, i64, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %128, i64 %133, i64 %145)
  br label %147

147:                                              ; preds = %127
  %148 = load i64, i64* %9, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %9, align 8
  br label %123

150:                                              ; preds = %123
  br label %151

151:                                              ; preds = %150, %117
  %152 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %152)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WPWA_WTBAR_SHIFT(...) #2

declare dso_local i32 @printf(i8*, i64, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
