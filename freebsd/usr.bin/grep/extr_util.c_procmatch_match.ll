; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_util.c_procmatch_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/grep/extr_util.c_procmatch_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mprintc = type { i32, i64, i64, i32, i64 }
%struct.parsec = type { i64 }

@first_match = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"--\0A\00", align 1
@Bflag = common dso_local global i64 0, align 8
@Aflag = common dso_local global i32 0, align 4
@MAX_MATCHES = common dso_local global i64 0, align 8
@vflag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mprintc*, %struct.parsec*)* @procmatch_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @procmatch_match(%struct.mprintc* %0, %struct.parsec* %1) #0 {
  %3 = alloca %struct.mprintc*, align 8
  %4 = alloca %struct.parsec*, align 8
  store %struct.mprintc* %0, %struct.mprintc** %3, align 8
  store %struct.parsec* %1, %struct.parsec** %4, align 8
  %5 = load %struct.mprintc*, %struct.mprintc** %3, align 8
  %6 = getelementptr inbounds %struct.mprintc, %struct.mprintc* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %2
  %10 = load i32, i32* @first_match, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = load %struct.mprintc*, %struct.mprintc** %3, align 8
  %14 = getelementptr inbounds %struct.mprintc, %struct.mprintc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load %struct.mprintc*, %struct.mprintc** %3, align 8
  %19 = getelementptr inbounds %struct.mprintc, %struct.mprintc* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17, %12
  %23 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %17, %9
  %25 = load i64, i64* @Bflag, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = call i32 (...) @printqueue()
  br label %29

29:                                               ; preds = %27, %24
  %30 = load i32, i32* @Aflag, align 4
  %31 = load %struct.mprintc*, %struct.mprintc** %3, align 8
  %32 = getelementptr inbounds %struct.mprintc, %struct.mprintc* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %2
  %34 = load %struct.mprintc*, %struct.mprintc** %3, align 8
  %35 = getelementptr inbounds %struct.mprintc, %struct.mprintc* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load %struct.parsec*, %struct.parsec** %4, align 8
  %40 = call i32 @printline(%struct.parsec* %39, i8 signext 58)
  br label %41

41:                                               ; preds = %61, %38
  %42 = load %struct.parsec*, %struct.parsec** %4, align 8
  %43 = getelementptr inbounds %struct.parsec, %struct.parsec* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MAX_MATCHES, align 8
  %46 = icmp sge i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %41
  %48 = load %struct.parsec*, %struct.parsec** %4, align 8
  %49 = getelementptr inbounds %struct.parsec, %struct.parsec* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.parsec*, %struct.parsec** %4, align 8
  %51 = call i32 @procline(%struct.parsec* %50)
  %52 = load i32, i32* @vflag, align 4
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = icmp eq i32 %51, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load %struct.parsec*, %struct.parsec** %4, align 8
  %59 = call i32 @printline(%struct.parsec* %58, i8 signext 58)
  br label %61

60:                                               ; preds = %47
  br label %62

61:                                               ; preds = %57
  br label %41

62:                                               ; preds = %60, %41
  store i32 0, i32* @first_match, align 4
  %63 = load %struct.mprintc*, %struct.mprintc** %3, align 8
  %64 = getelementptr inbounds %struct.mprintc, %struct.mprintc* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.mprintc*, %struct.mprintc** %3, align 8
  %66 = getelementptr inbounds %struct.mprintc, %struct.mprintc* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %62, %33
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @printqueue(...) #1

declare dso_local i32 @printline(%struct.parsec*, i8 signext) #1

declare dso_local i32 @procline(%struct.parsec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
