; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_rpcbind_get_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_check_bound.c_rpcbind_get_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdlist = type { %struct.netconfig*, %struct.fdlist* }
%struct.netconfig = type { i32 }

@fdhead = common dso_local global %struct.fdlist* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netconfig* @rpcbind_get_conf(i8* %0) #0 {
  %2 = alloca %struct.netconfig*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fdlist*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.fdlist*, %struct.fdlist** @fdhead, align 8
  store %struct.fdlist* %5, %struct.fdlist** %4, align 8
  br label %6

6:                                                ; preds = %20, %1
  %7 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %8 = icmp ne %struct.fdlist* %7, null
  br i1 %8, label %9, label %24

9:                                                ; preds = %6
  %10 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %11 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %10, i32 0, i32 0
  %12 = load %struct.netconfig*, %struct.netconfig** %11, align 8
  %13 = getelementptr inbounds %struct.netconfig, %struct.netconfig* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strcmp(i32 %14, i8* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  br label %24

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %22 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %21, i32 0, i32 1
  %23 = load %struct.fdlist*, %struct.fdlist** %22, align 8
  store %struct.fdlist* %23, %struct.fdlist** %4, align 8
  br label %6

24:                                               ; preds = %18, %6
  %25 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %26 = icmp eq %struct.fdlist* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store %struct.netconfig* null, %struct.netconfig** %2, align 8
  br label %32

28:                                               ; preds = %24
  %29 = load %struct.fdlist*, %struct.fdlist** %4, align 8
  %30 = getelementptr inbounds %struct.fdlist, %struct.fdlist* %29, i32 0, i32 0
  %31 = load %struct.netconfig*, %struct.netconfig** %30, align 8
  store %struct.netconfig* %31, %struct.netconfig** %2, align 8
  br label %32

32:                                               ; preds = %28, %27
  %33 = load %struct.netconfig*, %struct.netconfig** %2, align 8
  ret %struct.netconfig* %33
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
