; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_setpos.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_setpos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i64, i64 }

@.str = private unnamed_addr constant [45 x i8] c"attempt to seek to a negative position (%jd)\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"attempt to seek past end of sbuf (%jd >= %jd)\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"attempt to seek when in a section\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sbuf_setpos(%struct.sbuf* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbuf*, align 8
  %5 = alloca i64, align 8
  store %struct.sbuf* %0, %struct.sbuf** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %7 = call i32 @assert_sbuf_integrity(%struct.sbuf* %6)
  %8 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %9 = call i32 @assert_sbuf_state(%struct.sbuf* %8, i32 0)
  %10 = load i64, i64* %5, align 8
  %11 = icmp sge i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %12, i8* %16)
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %20 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  %23 = zext i1 %22 to i32
  %24 = load i64, i64* %5, align 8
  %25 = trunc i64 %24 to i32
  %26 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %27 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %23, i8* %31)
  %33 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %34 = call i32 @SBUF_ISSECTION(%struct.sbuf* %33)
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i64, i64* %5, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %2
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %44 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41, %2
  store i32 -1, i32* %3, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load i64, i64* %5, align 8
  %50 = load %struct.sbuf*, %struct.sbuf** %4, align 8
  %51 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %47
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SBUF_ISSECTION(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
