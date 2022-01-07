; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64 }
%struct.sgsave = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append(%struct.sglist* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sglist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sgsave, align 4
  %9 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.sglist*, %struct.sglist** %5, align 8
  %11 = getelementptr inbounds %struct.sglist, %struct.sglist* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.sglist*, %struct.sglist** %5, align 8
  %18 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %8, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @SGLIST_SAVE(%struct.sglist* %17, i32 %19)
  %21 = load %struct.sglist*, %struct.sglist** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @_sglist_append_buf(%struct.sglist* %21, i8* %22, i64 %23, i32* null, i32* null)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %16
  %28 = load %struct.sglist*, %struct.sglist** %5, align 8
  %29 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SGLIST_RESTORE(%struct.sglist* %28, i32 %30)
  br label %32

32:                                               ; preds = %27, %16
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %14
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @SGLIST_SAVE(%struct.sglist*, i32) #1

declare dso_local i32 @_sglist_append_buf(%struct.sglist*, i8*, i64, i32*, i32*) #1

declare dso_local i32 @SGLIST_RESTORE(%struct.sglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
