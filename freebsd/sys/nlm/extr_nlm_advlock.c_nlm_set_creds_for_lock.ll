; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_set_creds_for_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_set_creds_for_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.ucred* }
%struct.ucred = type { i32 }
%struct.flock = type { i64 }
%struct.nlm_file_svid = type { i64, %struct.ucred* }
%struct.proc = type { %struct.ucred* }

@PID_MAX = common dso_local global i64 0, align 8
@nlm_svid_lock = common dso_local global i32 0, align 4
@NLM_SVID_HASH_SIZE = common dso_local global i32 0, align 4
@nlm_file_svids = common dso_local global i32* null, align 8
@ns_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.thread*, %struct.flock*)* @nlm_set_creds_for_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_set_creds_for_lock(%struct.thread* %0, %struct.flock* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.flock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nlm_file_svid*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.ucred*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.flock* %1, %struct.flock** %4, align 8
  store %struct.ucred* null, %struct.ucred** %8, align 8
  %9 = load %struct.flock*, %struct.flock** %4, align 8
  %10 = getelementptr inbounds %struct.flock, %struct.flock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PID_MAX, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %2
  %15 = call i32 @mtx_lock(i32* @nlm_svid_lock)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %48, %14
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NLM_SVID_HASH_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %51

20:                                               ; preds = %16
  %21 = load i32*, i32** @nlm_file_svids, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call %struct.nlm_file_svid* @LIST_FIRST(i32* %24)
  store %struct.nlm_file_svid* %25, %struct.nlm_file_svid** %6, align 8
  br label %26

26:                                               ; preds = %43, %20
  %27 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %6, align 8
  %28 = icmp ne %struct.nlm_file_svid* %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %26
  %30 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %6, align 8
  %31 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.flock*, %struct.flock** %4, align 8
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %6, align 8
  %39 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %38, i32 0, i32 1
  %40 = load %struct.ucred*, %struct.ucred** %39, align 8
  %41 = call %struct.ucred* @crhold(%struct.ucred* %40)
  store %struct.ucred* %41, %struct.ucred** %8, align 8
  br label %47

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %6, align 8
  %45 = load i32, i32* @ns_link, align 4
  %46 = call %struct.nlm_file_svid* @LIST_NEXT(%struct.nlm_file_svid* %44, i32 %45)
  store %struct.nlm_file_svid* %46, %struct.nlm_file_svid** %6, align 8
  br label %26

47:                                               ; preds = %37, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %16

51:                                               ; preds = %16
  %52 = call i32 @mtx_unlock(i32* @nlm_svid_lock)
  br label %68

53:                                               ; preds = %2
  %54 = load %struct.flock*, %struct.flock** %4, align 8
  %55 = getelementptr inbounds %struct.flock, %struct.flock* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call %struct.proc* @pfind(i64 %56)
  store %struct.proc* %57, %struct.proc** %7, align 8
  %58 = load %struct.proc*, %struct.proc** %7, align 8
  %59 = icmp ne %struct.proc* %58, null
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.proc*, %struct.proc** %7, align 8
  %62 = getelementptr inbounds %struct.proc, %struct.proc* %61, i32 0, i32 0
  %63 = load %struct.ucred*, %struct.ucred** %62, align 8
  %64 = call %struct.ucred* @crhold(%struct.ucred* %63)
  store %struct.ucred* %64, %struct.ucred** %8, align 8
  %65 = load %struct.proc*, %struct.proc** %7, align 8
  %66 = call i32 @PROC_UNLOCK(%struct.proc* %65)
  br label %67

67:                                               ; preds = %60, %53
  br label %68

68:                                               ; preds = %67, %51
  %69 = load %struct.ucred*, %struct.ucred** %8, align 8
  %70 = icmp ne %struct.ucred* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load %struct.thread*, %struct.thread** %3, align 8
  %73 = getelementptr inbounds %struct.thread, %struct.thread* %72, i32 0, i32 0
  %74 = load %struct.ucred*, %struct.ucred** %73, align 8
  %75 = call %struct.ucred* @crhold(%struct.ucred* %74)
  store %struct.ucred* %75, %struct.ucred** %8, align 8
  br label %76

76:                                               ; preds = %71, %68
  %77 = load %struct.ucred*, %struct.ucred** %8, align 8
  %78 = load %struct.thread*, %struct.thread** %3, align 8
  %79 = getelementptr inbounds %struct.thread, %struct.thread* %78, i32 0, i32 0
  store %struct.ucred* %77, %struct.ucred** %79, align 8
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.nlm_file_svid* @LIST_FIRST(i32*) #1

declare dso_local %struct.ucred* @crhold(%struct.ucred*) #1

declare dso_local %struct.nlm_file_svid* @LIST_NEXT(%struct.nlm_file_svid*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.proc* @pfind(i64) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
