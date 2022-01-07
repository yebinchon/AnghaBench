; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/mt/extr_mt.c_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tape_desc = type { i64, i8*, i32, i32 }
%struct.mtget = type { i32, i32, i64, i64 }

@tapes = common dso_local global %struct.tape_desc* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"%d: unknown tape drive type\0A\00", align 1
@MT_ISAR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"%s tape drive, residual=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"ds\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0Aer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtget*)* @status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status(%struct.mtget* %0) #0 {
  %2 = alloca %struct.mtget*, align 8
  %3 = alloca %struct.tape_desc*, align 8
  store %struct.mtget* %0, %struct.mtget** %2, align 8
  %4 = load %struct.tape_desc*, %struct.tape_desc** @tapes, align 8
  store %struct.tape_desc* %4, %struct.tape_desc** %3, align 8
  br label %5

5:                                                ; preds = %26, %1
  %6 = load %struct.tape_desc*, %struct.tape_desc** %3, align 8
  %7 = getelementptr inbounds %struct.tape_desc, %struct.tape_desc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.mtget*, %struct.mtget** %2, align 8
  %12 = getelementptr inbounds %struct.mtget, %struct.mtget* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %63

15:                                               ; preds = %5
  %16 = load %struct.tape_desc*, %struct.tape_desc** %3, align 8
  %17 = getelementptr inbounds %struct.tape_desc, %struct.tape_desc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.mtget*, %struct.mtget** %2, align 8
  %20 = getelementptr inbounds %struct.mtget, %struct.mtget* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %18, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  br label %29

25:                                               ; preds = %15
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.tape_desc*, %struct.tape_desc** %3, align 8
  %28 = getelementptr inbounds %struct.tape_desc, %struct.tape_desc* %27, i32 1
  store %struct.tape_desc* %28, %struct.tape_desc** %3, align 8
  br label %5

29:                                               ; preds = %24
  %30 = load %struct.tape_desc*, %struct.tape_desc** %3, align 8
  %31 = getelementptr inbounds %struct.tape_desc, %struct.tape_desc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MT_ISAR, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.mtget*, %struct.mtget** %2, align 8
  %37 = call i32 @st_status(%struct.mtget* %36)
  br label %63

38:                                               ; preds = %29
  %39 = load %struct.tape_desc*, %struct.tape_desc** %3, align 8
  %40 = getelementptr inbounds %struct.tape_desc, %struct.tape_desc* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.mtget*, %struct.mtget** %2, align 8
  %43 = getelementptr inbounds %struct.mtget, %struct.mtget* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %44)
  %46 = load %struct.mtget*, %struct.mtget** %2, align 8
  %47 = getelementptr inbounds %struct.mtget, %struct.mtget* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = trunc i64 %48 to i16
  %50 = load %struct.tape_desc*, %struct.tape_desc** %3, align 8
  %51 = getelementptr inbounds %struct.tape_desc, %struct.tape_desc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @printreg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %49, i32 %52)
  %54 = load %struct.mtget*, %struct.mtget** %2, align 8
  %55 = getelementptr inbounds %struct.mtget, %struct.mtget* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i16
  %58 = load %struct.tape_desc*, %struct.tape_desc** %3, align 8
  %59 = getelementptr inbounds %struct.tape_desc, %struct.tape_desc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @printreg(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i16 zeroext %57, i32 %60)
  %62 = call i32 @putchar(i8 signext 10)
  br label %63

63:                                               ; preds = %10, %38, %35
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @st_status(%struct.mtget*) #1

declare dso_local i32 @printreg(i8*, i16 zeroext, i32) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
