; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_dump_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_an_dump_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.an_softc = type { i32 }
%struct.an_ltv_gen = type { i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"RID %4x, Length %4d, Mode %s\0A\00", align 1
@an_dump = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.an_softc*, %struct.an_ltv_gen*, i8*)* @an_dump_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @an_dump_record(%struct.an_softc* %0, %struct.an_ltv_gen* %1, i8* %2) #0 {
  %4 = alloca %struct.an_softc*, align 8
  %5 = alloca %struct.an_ltv_gen*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [17 x i8], align 16
  %12 = alloca i8, align 1
  store %struct.an_softc* %0, %struct.an_softc** %4, align 8
  store %struct.an_ltv_gen* %1, %struct.an_ltv_gen** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %14 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %15, 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %18 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %21 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %24 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 (i32, i8*, ...) @if_printf(i32 %19, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %26, i8* %27)
  %29 = load i32, i32* @an_dump, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %37, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @an_dump, align 4
  %33 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %34 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %32, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %31, %3
  %38 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %39 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @if_printf(i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %42 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %43 = call i32 @bzero(i8* %42, i32 17)
  %44 = load %struct.an_ltv_gen*, %struct.an_ltv_gen** %5, align 8
  %45 = getelementptr inbounds %struct.an_ltv_gen, %struct.an_ltv_gen* %44, i32 0, i32 2
  store i32* %45, i32** %7, align 8
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %84, %37
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %87

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %7, align 8
  %56 = load i32, i32* %54, align 4
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %12, align 1
  %58 = load i8, i8* %12, align 1
  %59 = call i64 @isprint(i8 signext %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load i8, i8* %12, align 1
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 %64
  store i8 %62, i8* %65, align 1
  br label %70

66:                                               ; preds = %50
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 %68
  store i8 46, i8* %69, align 1
  br label %70

70:                                               ; preds = %66, %61
  %71 = load i32, i32* %10, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %10, align 4
  %73 = icmp eq i32 %72, 16
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  %75 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %75)
  %77 = load %struct.an_softc*, %struct.an_softc** %4, align 8
  %78 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @if_printf(i32 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %81 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %82 = call i32 @bzero(i8* %81, i32 17)
  br label %83

83:                                               ; preds = %74, %70
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %9, align 4
  br label %47

87:                                               ; preds = %47
  br label %88

88:                                               ; preds = %93, %87
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 16
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %91
  %94 = load i32, i32* %10, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %10, align 4
  br label %88

96:                                               ; preds = %88
  %97 = getelementptr inbounds [17 x i8], [17 x i8]* %11, i64 0, i64 0
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %96, %31
  ret void
}

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @isprint(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
