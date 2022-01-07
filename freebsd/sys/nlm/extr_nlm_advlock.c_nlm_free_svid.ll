; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_free_svid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_advlock.c_nlm_free_svid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_file_svid = type { i64, i32, i32, i32 }

@nlm_svid_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Freeing active SVID\00", align 1
@ns_link = common dso_local global i32 0, align 4
@nlm_svid_allocator = common dso_local global i32 0, align 4
@M_NLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlm_file_svid*)* @nlm_free_svid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_free_svid(%struct.nlm_file_svid* %0) #0 {
  %2 = alloca %struct.nlm_file_svid*, align 8
  store %struct.nlm_file_svid* %0, %struct.nlm_file_svid** %2, align 8
  %3 = call i32 @mtx_lock(i32* @nlm_svid_lock)
  %4 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %5 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = add nsw i32 %6, -1
  store i32 %7, i32* %5, align 8
  %8 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %9 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %42, label %12

12:                                               ; preds = %1
  %13 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %14 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %21 = load i32, i32* @ns_link, align 4
  %22 = call i32 @LIST_REMOVE(%struct.nlm_file_svid* %20, i32 %21)
  %23 = call i32 @mtx_unlock(i32* @nlm_svid_lock)
  %24 = load i32, i32* @nlm_svid_allocator, align 4
  %25 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %26 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @free_unr(i32 %24, i32 %27)
  %29 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %30 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %12
  %34 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %35 = getelementptr inbounds %struct.nlm_file_svid, %struct.nlm_file_svid* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @crfree(i64 %36)
  br label %38

38:                                               ; preds = %33, %12
  %39 = load %struct.nlm_file_svid*, %struct.nlm_file_svid** %2, align 8
  %40 = load i32, i32* @M_NLM, align 4
  %41 = call i32 @free(%struct.nlm_file_svid* %39, i32 %40)
  br label %44

42:                                               ; preds = %1
  %43 = call i32 @mtx_unlock(i32* @nlm_svid_lock)
  br label %44

44:                                               ; preds = %42, %38
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @LIST_REMOVE(%struct.nlm_file_svid*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free_unr(i32, i32) #1

declare dso_local i32 @crfree(i64) #1

declare dso_local i32 @free(%struct.nlm_file_svid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
