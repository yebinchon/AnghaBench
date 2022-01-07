; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_is_bound.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_is_bound.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdlist = type { %struct.TYPE_2__*, %struct.fdlist* }
%struct.TYPE_2__ = type { i32 }

@fdhead = common dso_local global %struct.fdlist* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_bound(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fdlist*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.fdlist*, %struct.fdlist** @fdhead, align 8
  store %struct.fdlist* %7, %struct.fdlist** %6, align 8
  br label %8

8:                                                ; preds = %22, %2
  %9 = load %struct.fdlist*, %struct.fdlist** %6, align 8
  %10 = icmp ne %struct.fdlist* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load %struct.fdlist*, %struct.fdlist** %6, align 8
  %13 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i64 @strcmp(i32 %16, i8* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %11
  br label %26

21:                                               ; preds = %11
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.fdlist*, %struct.fdlist** %6, align 8
  %24 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %23, i32 0, i32 1
  %25 = load %struct.fdlist*, %struct.fdlist** %24, align 8
  store %struct.fdlist* %25, %struct.fdlist** %6, align 8
  br label %8

26:                                               ; preds = %20, %8
  %27 = load %struct.fdlist*, %struct.fdlist** %6, align 8
  %28 = icmp eq %struct.fdlist* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %26
  %32 = load %struct.fdlist*, %struct.fdlist** %6, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call i32 @check_bound(%struct.fdlist* %32, i8* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @check_bound(%struct.fdlist*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
