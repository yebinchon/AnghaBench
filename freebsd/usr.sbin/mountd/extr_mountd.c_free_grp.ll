; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_free_grp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mountd/extr_mountd.c_free_grp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.grouplist = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32* }
%struct.TYPE_3__ = type { i64 }

@GT_HOST = common dso_local global i64 0, align 8
@GT_NET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.grouplist*)* @free_grp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_grp(%struct.grouplist* %0) #0 {
  %2 = alloca %struct.grouplist*, align 8
  store %struct.grouplist* %0, %struct.grouplist** %2, align 8
  %3 = load %struct.grouplist*, %struct.grouplist** %2, align 8
  %4 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @GT_HOST, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.grouplist*, %struct.grouplist** %2, align 8
  %10 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.grouplist*, %struct.grouplist** %2, align 8
  %16 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @freeaddrinfo(i32* %18)
  br label %20

20:                                               ; preds = %14, %8
  br label %43

21:                                               ; preds = %1
  %22 = load %struct.grouplist*, %struct.grouplist** %2, align 8
  %23 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GT_NET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.grouplist*, %struct.grouplist** %2, align 8
  %29 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load %struct.grouplist*, %struct.grouplist** %2, align 8
  %36 = getelementptr inbounds %struct.grouplist, %struct.grouplist* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @free(i64 %39)
  br label %41

41:                                               ; preds = %34, %27
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.grouplist*, %struct.grouplist** %2, align 8
  %45 = ptrtoint %struct.grouplist* %44 to i64
  %46 = call i32 @free(i64 %45)
  ret void
}

declare dso_local i32 @freeaddrinfo(i32*) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
