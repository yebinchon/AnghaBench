; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_event.c_knote_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.kqueue = type { i32, i64, i32, %struct.klist*, %struct.klist* }
%struct.klist = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"knote %p not marked influx\00", align 1
@KQ_CLOSING = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kn_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.kqueue*)* @knote_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @knote_attach(%struct.knote* %0, %struct.kqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.kqueue*, align 8
  %6 = alloca %struct.klist*, align 8
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.kqueue* %1, %struct.kqueue** %5, align 8
  %7 = load %struct.knote*, %struct.knote** %4, align 8
  %8 = call i32 @kn_in_flux(%struct.knote* %7)
  %9 = load %struct.knote*, %struct.knote** %4, align 8
  %10 = bitcast %struct.knote* %9 to i8*
  %11 = call i32 @KASSERT(i32 %8, i8* %10)
  %12 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %13 = call i32 @KQ_OWNED(%struct.kqueue* %12)
  %14 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %15 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @KQ_CLOSING, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EBADF, align 4
  store i32 %21, i32* %3, align 4
  br label %71

22:                                               ; preds = %2
  %23 = load %struct.knote*, %struct.knote** %4, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %22
  %30 = load %struct.knote*, %struct.knote** %4, align 8
  %31 = getelementptr inbounds %struct.knote, %struct.knote* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %34 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp uge i64 %32, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %3, align 4
  br label %71

39:                                               ; preds = %29
  %40 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %41 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %40, i32 0, i32 4
  %42 = load %struct.klist*, %struct.klist** %41, align 8
  %43 = load %struct.knote*, %struct.knote** %4, align 8
  %44 = getelementptr inbounds %struct.knote, %struct.knote* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.klist, %struct.klist* %42, i64 %45
  store %struct.klist* %46, %struct.klist** %6, align 8
  br label %66

47:                                               ; preds = %22
  %48 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %49 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %48, i32 0, i32 3
  %50 = load %struct.klist*, %struct.klist** %49, align 8
  %51 = icmp eq %struct.klist* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @ENOMEM, align 4
  store i32 %53, i32* %3, align 4
  br label %71

54:                                               ; preds = %47
  %55 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %56 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %55, i32 0, i32 3
  %57 = load %struct.klist*, %struct.klist** %56, align 8
  %58 = load %struct.knote*, %struct.knote** %4, align 8
  %59 = getelementptr inbounds %struct.knote, %struct.knote* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.kqueue*, %struct.kqueue** %5, align 8
  %62 = getelementptr inbounds %struct.kqueue, %struct.kqueue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @KN_HASH(i64 %60, i32 %63)
  %65 = getelementptr inbounds %struct.klist, %struct.klist* %57, i64 %64
  store %struct.klist* %65, %struct.klist** %6, align 8
  br label %66

66:                                               ; preds = %54, %39
  %67 = load %struct.klist*, %struct.klist** %6, align 8
  %68 = load %struct.knote*, %struct.knote** %4, align 8
  %69 = load i32, i32* @kn_link, align 4
  %70 = call i32 @SLIST_INSERT_HEAD(%struct.klist* %67, %struct.knote* %68, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %66, %52, %37, %20
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @kn_in_flux(%struct.knote*) #1

declare dso_local i32 @KQ_OWNED(%struct.kqueue*) #1

declare dso_local i64 @KN_HASH(i64, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.klist*, %struct.knote*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
