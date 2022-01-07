; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_hhook.c_hhook_head_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hhook_head = type { i64, i32, i32, i32, i64, i8*, i8* }

@EEXIST = common dso_local global i32 0, align 4
@M_HHOOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@HHOOK_WAITOK = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HHOOK_HEADISINVNET = common dso_local global i32 0, align 4
@HHH_ISINVNET = common dso_local global i32 0, align 4
@hhook_head_list = common dso_local global i32 0, align 4
@hhh_next = common dso_local global i32 0, align 4
@n_hhookheads = common dso_local global i32 0, align 4
@V_hhook_vhead_list = common dso_local global i32 0, align 4
@curvnet = common dso_local global i32* null, align 8
@hhh_vnext = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hhook_head_register(i8* %0, i8* %1, %struct.hhook_head** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hhook_head**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hhook_head*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.hhook_head** %2, %struct.hhook_head*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = call %struct.hhook_head* @hhook_head_get(i8* %11, i8* %12)
  store %struct.hhook_head* %13, %struct.hhook_head** %10, align 8
  %14 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %15 = icmp ne %struct.hhook_head* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %18 = call i32 @hhook_head_release(%struct.hhook_head* %17)
  %19 = load i32, i32* @EEXIST, align 4
  store i32 %19, i32* %5, align 4
  br label %87

20:                                               ; preds = %4
  %21 = load i32, i32* @M_HHOOK, align 4
  %22 = load i32, i32* @M_ZERO, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @HHOOK_WAITOK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @M_WAITOK, align 4
  br label %31

29:                                               ; preds = %20
  %30 = load i32, i32* @M_NOWAIT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = or i32 %22, %32
  %34 = call %struct.hhook_head* @malloc(i32 48, i32 %21, i32 %33)
  store %struct.hhook_head* %34, %struct.hhook_head** %10, align 8
  %35 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %36 = icmp eq %struct.hhook_head* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %5, align 4
  br label %87

39:                                               ; preds = %31
  %40 = load i8*, i8** %6, align 8
  %41 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %42 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %45 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %44, i32 0, i32 5
  store i8* %43, i8** %45, align 8
  %46 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %47 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %46, i32 0, i32 4
  store i64 0, i64* %47, align 8
  %48 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %49 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %48, i32 0, i32 3
  %50 = call i32 @STAILQ_INIT(i32* %49)
  %51 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %52 = call i32 @HHH_LOCK_INIT(%struct.hhook_head* %51)
  %53 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %54 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %53, i32 0, i32 1
  %55 = call i32 @refcount_init(i32* %54, i32 1)
  %56 = call i32 (...) @HHHLIST_LOCK()
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @HHOOK_HEADISINVNET, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %39
  %62 = load i32, i32* @HHH_ISINVNET, align 4
  %63 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %64 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %61, %39
  %68 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %69 = load i32, i32* @hhh_next, align 4
  %70 = call i32 @LIST_INSERT_HEAD(i32* @hhook_head_list, %struct.hhook_head* %68, i32 %69)
  %71 = load i32, i32* @n_hhookheads, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* @n_hhookheads, align 4
  %73 = call i32 (...) @HHHLIST_UNLOCK()
  %74 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @khelp_new_hhook_registered(%struct.hhook_head* %74, i32 %75)
  %77 = load %struct.hhook_head**, %struct.hhook_head*** %8, align 8
  %78 = icmp ne %struct.hhook_head** %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %81 = load %struct.hhook_head**, %struct.hhook_head*** %8, align 8
  store %struct.hhook_head* %80, %struct.hhook_head** %81, align 8
  br label %86

82:                                               ; preds = %67
  %83 = load %struct.hhook_head*, %struct.hhook_head** %10, align 8
  %84 = getelementptr inbounds %struct.hhook_head, %struct.hhook_head* %83, i32 0, i32 1
  %85 = call i32 @refcount_release(i32* %84)
  br label %86

86:                                               ; preds = %82, %79
  store i32 0, i32* %5, align 4
  br label %87

87:                                               ; preds = %86, %37, %16
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.hhook_head* @hhook_head_get(i8*, i8*) #1

declare dso_local i32 @hhook_head_release(%struct.hhook_head*) #1

declare dso_local %struct.hhook_head* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @HHH_LOCK_INIT(%struct.hhook_head*) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @HHHLIST_LOCK(...) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.hhook_head*, i32) #1

declare dso_local i32 @HHHLIST_UNLOCK(...) #1

declare dso_local i32 @khelp_new_hhook_registered(%struct.hhook_head*, i32) #1

declare dso_local i32 @refcount_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
