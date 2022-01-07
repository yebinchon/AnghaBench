; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/atm/extr_ngatmbase.c_uni_msg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_msg = type { i32*, i32*, i32*, i32* }
%struct.ngatm_msg = type { i32 }

@ngatm_unilist_mtx = common dso_local global i32 0, align 4
@ngatm_freeuni = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@M_UNIMSGHDR = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@EXTRA = common dso_local global i64 0, align 8
@M_UNIMSG = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uni_msg* @uni_msg_alloc(i64 %0) #0 {
  %2 = alloca %struct.uni_msg*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.ngatm_msg*, align 8
  %5 = alloca %struct.uni_msg*, align 8
  store i64 %0, i64* %3, align 8
  %6 = call i32 @mtx_lock(i32* @ngatm_unilist_mtx)
  %7 = call %struct.ngatm_msg* @LIST_FIRST(i32* @ngatm_freeuni)
  store %struct.ngatm_msg* %7, %struct.ngatm_msg** %4, align 8
  %8 = icmp ne %struct.ngatm_msg* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.ngatm_msg*, %struct.ngatm_msg** %4, align 8
  %11 = load i32, i32* @link, align 4
  %12 = call i32 @LIST_REMOVE(%struct.ngatm_msg* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %1
  %14 = call i32 @mtx_unlock(i32* @ngatm_unilist_mtx)
  %15 = load %struct.ngatm_msg*, %struct.ngatm_msg** %4, align 8
  %16 = icmp eq %struct.ngatm_msg* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %13
  %18 = load i32, i32* @M_UNIMSGHDR, align 4
  %19 = load i32, i32* @M_NOWAIT, align 4
  %20 = call i8* @malloc(i64 32, i32 %18, i32 %19)
  %21 = bitcast i8* %20 to %struct.uni_msg*
  store %struct.uni_msg* %21, %struct.uni_msg** %5, align 8
  %22 = icmp eq %struct.uni_msg* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store %struct.uni_msg* null, %struct.uni_msg** %2, align 8
  br label %66

24:                                               ; preds = %17
  %25 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %26 = bitcast %struct.uni_msg* %25 to %struct.ngatm_msg*
  store %struct.ngatm_msg* %26, %struct.ngatm_msg** %4, align 8
  br label %30

27:                                               ; preds = %13
  %28 = load %struct.ngatm_msg*, %struct.ngatm_msg** %4, align 8
  %29 = bitcast %struct.ngatm_msg* %28 to %struct.uni_msg*
  store %struct.uni_msg* %29, %struct.uni_msg** %5, align 8
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i64, i64* @EXTRA, align 8
  %32 = load i64, i64* %3, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %3, align 8
  %34 = load i64, i64* %3, align 8
  %35 = load i32, i32* @M_UNIMSG, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = load i32, i32* @M_ZERO, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @malloc(i64 %34, i32 %35, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %42 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %41, i32 0, i32 0
  store i32* %40, i32** %42, align 8
  %43 = icmp eq i32* %40, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %30
  %45 = call i32 @mtx_lock(i32* @ngatm_unilist_mtx)
  %46 = load %struct.ngatm_msg*, %struct.ngatm_msg** %4, align 8
  %47 = load i32, i32* @link, align 4
  %48 = call i32 @LIST_INSERT_HEAD(i32* @ngatm_freeuni, %struct.ngatm_msg* %46, i32 %47)
  %49 = call i32 @mtx_unlock(i32* @ngatm_unilist_mtx)
  store %struct.uni_msg* null, %struct.uni_msg** %2, align 8
  br label %66

50:                                               ; preds = %30
  %51 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %52 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %55 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %54, i32 0, i32 2
  store i32* %53, i32** %55, align 8
  %56 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %57 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %56, i32 0, i32 3
  store i32* %53, i32** %57, align 8
  %58 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %59 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %3, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  %64 = getelementptr inbounds %struct.uni_msg, %struct.uni_msg* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load %struct.uni_msg*, %struct.uni_msg** %5, align 8
  store %struct.uni_msg* %65, %struct.uni_msg** %2, align 8
  br label %66

66:                                               ; preds = %50, %44, %23
  %67 = load %struct.uni_msg*, %struct.uni_msg** %2, align 8
  ret %struct.uni_msg* %67
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.ngatm_msg* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.ngatm_msg*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.ngatm_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
