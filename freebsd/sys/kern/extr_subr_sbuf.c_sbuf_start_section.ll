; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_start_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sbuf.c_sbuf_start_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i64, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"s_sect_len != 0 when starting a section\00", align 1
@SBUF_INSECTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"s_sect_len should be saved when starting a subsection\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sbuf_start_section(%struct.sbuf* %0, i32* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca i32*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = call i32 @assert_sbuf_integrity(%struct.sbuf* %5)
  %7 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %8 = call i32 @assert_sbuf_state(%struct.sbuf* %7, i32 0)
  %9 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %10 = call i32 @SBUF_ISSECTION(%struct.sbuf* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %32, label %12

12:                                               ; preds = %2
  %13 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %14 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %19 = load i32*, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32*, i32** %4, align 8
  store i32 -1, i32* %22, align 4
  br label %23

23:                                               ; preds = %21, %12
  %24 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %25 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %28 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %30 = load i32, i32* @SBUF_INSECTION, align 4
  %31 = call i32 @SBUF_SETFLAG(%struct.sbuf* %29, i32 %30)
  br label %44

32:                                               ; preds = %2
  %33 = load i32*, i32** %4, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @KASSERT(i32 %35, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %38 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %4, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %43 = getelementptr inbounds %struct.sbuf, %struct.sbuf* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %32, %23
  ret void
}

declare dso_local i32 @assert_sbuf_integrity(%struct.sbuf*) #1

declare dso_local i32 @assert_sbuf_state(%struct.sbuf*, i32) #1

declare dso_local i32 @SBUF_ISSECTION(%struct.sbuf*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SBUF_SETFLAG(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
