; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_dumpit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/pac/extr_pac.c_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hent = type { i32, float, i8*, %struct.hent* }

@hashtab = common dso_local global %struct.hent** null, align 8
@hcount = common dso_local global i64 0, align 8
@qucmp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"  Login               pages/feet   runs    price\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%-24s %7.2f %4d   $%6.2f\0A\00", align 1
@price = common dso_local global double 0.000000e+00, align 8
@allflag = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"total\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dumpit() #0 {
  %1 = alloca %struct.hent**, align 8
  %2 = alloca %struct.hent*, align 8
  %3 = alloca %struct.hent**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = load %struct.hent**, %struct.hent*** @hashtab, align 8
  %9 = getelementptr inbounds %struct.hent*, %struct.hent** %8, i64 0
  %10 = load %struct.hent*, %struct.hent** %9, align 8
  store %struct.hent* %10, %struct.hent** %2, align 8
  store i32 1, i32* %4, align 4
  %11 = load i64, i64* @hcount, align 8
  %12 = call i64 @calloc(i32 8, i64 %11)
  %13 = inttoptr i64 %12 to %struct.hent**
  store %struct.hent** %13, %struct.hent*** %1, align 8
  %14 = load %struct.hent**, %struct.hent*** %1, align 8
  store %struct.hent** %14, %struct.hent*** %3, align 8
  %15 = load i64, i64* @hcount, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %37, %0
  %17 = load i64, i64* %6, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %6, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %24, %20
  %22 = load %struct.hent*, %struct.hent** %2, align 8
  %23 = icmp eq %struct.hent* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %21
  %25 = load %struct.hent**, %struct.hent*** @hashtab, align 8
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %4, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds %struct.hent*, %struct.hent** %25, i64 %28
  %30 = load %struct.hent*, %struct.hent** %29, align 8
  store %struct.hent* %30, %struct.hent** %2, align 8
  br label %21

31:                                               ; preds = %21
  %32 = load %struct.hent*, %struct.hent** %2, align 8
  %33 = load %struct.hent**, %struct.hent*** %3, align 8
  store %struct.hent* %32, %struct.hent** %33, align 8
  %34 = load %struct.hent*, %struct.hent** %2, align 8
  %35 = getelementptr inbounds %struct.hent, %struct.hent* %34, i32 0, i32 3
  %36 = load %struct.hent*, %struct.hent** %35, align 8
  store %struct.hent* %36, %struct.hent** %2, align 8
  br label %37

37:                                               ; preds = %31
  %38 = load %struct.hent**, %struct.hent*** %3, align 8
  %39 = getelementptr inbounds %struct.hent*, %struct.hent** %38, i32 1
  store %struct.hent** %39, %struct.hent*** %3, align 8
  br label %16

40:                                               ; preds = %16
  %41 = load %struct.hent**, %struct.hent*** %1, align 8
  %42 = load i64, i64* @hcount, align 8
  %43 = load i32, i32* @qucmp, align 4
  %44 = call i32 @qsort(%struct.hent** %41, i64 %42, i32 8, i32 %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store float 0.000000e+00, float* %7, align 4
  store i32 0, i32* %5, align 4
  %46 = load %struct.hent**, %struct.hent*** %1, align 8
  store %struct.hent** %46, %struct.hent*** %3, align 8
  %47 = load i64, i64* @hcount, align 8
  store i64 %47, i64* %6, align 8
  br label %48

48:                                               ; preds = %82, %40
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, -1
  store i64 %50, i64* %6, align 8
  %51 = icmp ne i64 %49, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %48
  %53 = load %struct.hent**, %struct.hent*** %3, align 8
  %54 = load %struct.hent*, %struct.hent** %53, align 8
  store %struct.hent* %54, %struct.hent** %2, align 8
  %55 = load %struct.hent*, %struct.hent** %2, align 8
  %56 = getelementptr inbounds %struct.hent, %struct.hent* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load %struct.hent*, %struct.hent** %2, align 8
  %61 = getelementptr inbounds %struct.hent, %struct.hent* %60, i32 0, i32 1
  %62 = load float, float* %61, align 4
  %63 = load float, float* %7, align 4
  %64 = fadd float %63, %62
  store float %64, float* %7, align 4
  %65 = load %struct.hent*, %struct.hent** %2, align 8
  %66 = getelementptr inbounds %struct.hent, %struct.hent* %65, i32 0, i32 2
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.hent*, %struct.hent** %2, align 8
  %69 = getelementptr inbounds %struct.hent, %struct.hent* %68, i32 0, i32 1
  %70 = load float, float* %69, align 4
  %71 = fpext float %70 to double
  %72 = load %struct.hent*, %struct.hent** %2, align 8
  %73 = getelementptr inbounds %struct.hent, %struct.hent* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hent*, %struct.hent** %2, align 8
  %76 = getelementptr inbounds %struct.hent, %struct.hent* %75, i32 0, i32 1
  %77 = load float, float* %76, align 4
  %78 = fpext float %77 to double
  %79 = load double, double* @price, align 8
  %80 = fmul double %78, %79
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %67, double %71, i32 %74, double %80)
  br label %82

82:                                               ; preds = %52
  %83 = load %struct.hent**, %struct.hent*** %3, align 8
  %84 = getelementptr inbounds %struct.hent*, %struct.hent** %83, i32 1
  store %struct.hent** %84, %struct.hent*** %3, align 8
  br label %48

85:                                               ; preds = %48
  %86 = load i64, i64* @allflag, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %90 = load float, float* %7, align 4
  %91 = fpext float %90 to double
  %92 = load i32, i32* %5, align 4
  %93 = load float, float* %7, align 4
  %94 = fpext float %93 to double
  %95 = load double, double* @price, align 8
  %96 = fmul double %94, %95
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), double %91, i32 %92, double %96)
  br label %98

98:                                               ; preds = %88, %85
  ret void
}

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32 @qsort(%struct.hent**, i64, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
