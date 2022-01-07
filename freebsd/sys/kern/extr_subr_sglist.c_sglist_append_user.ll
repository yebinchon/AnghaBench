; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_sglist.c_sglist_append_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sglist = type { i64 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sgsave = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sglist_append_user(%struct.sglist* %0, i8* %1, i64 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sglist*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.sgsave, align 4
  %11 = alloca i32, align 4
  store %struct.sglist* %0, %struct.sglist** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.sglist*, %struct.sglist** %6, align 8
  %13 = getelementptr inbounds %struct.sglist, %struct.sglist* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %5, align 4
  br label %42

18:                                               ; preds = %4
  %19 = load %struct.sglist*, %struct.sglist** %6, align 8
  %20 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %10, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SGLIST_SAVE(%struct.sglist* %19, i32 %21)
  %23 = load %struct.sglist*, %struct.sglist** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.thread*, %struct.thread** %9, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @vmspace_pmap(i32 %30)
  %32 = call i32 @_sglist_append_buf(%struct.sglist* %23, i8* %24, i64 %25, i32 %31, i32* null)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %18
  %36 = load %struct.sglist*, %struct.sglist** %6, align 8
  %37 = getelementptr inbounds %struct.sgsave, %struct.sgsave* %10, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @SGLIST_RESTORE(%struct.sglist* %36, i32 %38)
  br label %40

40:                                               ; preds = %35, %18
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %16
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @SGLIST_SAVE(%struct.sglist*, i32) #1

declare dso_local i32 @_sglist_append_buf(%struct.sglist*, i8*, i64, i32, i32*) #1

declare dso_local i32 @vmspace_pmap(i32) #1

declare dso_local i32 @SGLIST_RESTORE(%struct.sglist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
