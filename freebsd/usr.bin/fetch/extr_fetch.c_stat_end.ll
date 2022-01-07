; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xferstat = type { i32, i32 }

@v_progress = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@v_level = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"        %s %s %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xferstat*)* @stat_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_end(%struct.xferstat* %0) #0 {
  %2 = alloca %struct.xferstat*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca [16 x i8], align 16
  %5 = alloca [16 x i8], align 16
  store %struct.xferstat* %0, %struct.xferstat** %2, align 8
  %6 = load %struct.xferstat*, %struct.xferstat** %2, align 8
  %7 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %6, i32 0, i32 1
  %8 = call i32 @gettimeofday(i32* %7, i32* null)
  %9 = load i64, i64* @v_progress, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.xferstat*, %struct.xferstat** %2, align 8
  %13 = call i32 @stat_display(%struct.xferstat* %12, i32 2)
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 @putc(i8 signext 10, i32 %14)
  br label %37

16:                                               ; preds = %1
  %17 = load i64, i64* @v_level, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %21 = load %struct.xferstat*, %struct.xferstat** %2, align 8
  %22 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @stat_bytes(i8* %20, i32 16, i32 %23)
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %26 = load %struct.xferstat*, %struct.xferstat** %2, align 8
  %27 = call i32 @stat_bps(i8* %25, i32 16, %struct.xferstat* %26)
  %28 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %29 = load %struct.xferstat*, %struct.xferstat** %2, align 8
  %30 = call i32 @stat_eta(i8* %28, i32 16, %struct.xferstat* %29)
  %31 = load i32, i32* @stderr, align 4
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %4, i64 0, i64 0
  %34 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %35 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33, i8* %34)
  br label %36

36:                                               ; preds = %19, %16
  br label %37

37:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @stat_display(%struct.xferstat*, i32) #1

declare dso_local i32 @putc(i8 signext, i32) #1

declare dso_local i32 @stat_bytes(i8*, i32, i32) #1

declare dso_local i32 @stat_bps(i8*, i32, %struct.xferstat*) #1

declare dso_local i32 @stat_eta(i8*, i32, %struct.xferstat*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
