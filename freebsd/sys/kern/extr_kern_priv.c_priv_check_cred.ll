; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_priv.c_priv_check_cred.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_priv.c_priv_check_cred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"priv_check_cred: invalid privilege %d\00", align 1
@unprivileged_mlock = common dso_local global i64 0, align 8
@unprivileged_read_msgbuf = common dso_local global i64 0, align 8
@PRIV_MSGBUF = common dso_local global i32 0, align 4
@suser_enabled = common dso_local global i64 0, align 8
@PRIV_KMEM_READ = common dso_local global i32 0, align 4
@PRIV_DEBUG_UNPRIV = common dso_local global i32 0, align 4
@PR_ALLOW_UNPRIV_DEBUG = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@kernel = common dso_local global i32 0, align 4
@priv_check = common dso_local global i32 0, align 4
@priv__err = common dso_local global i32 0, align 4
@priv__ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @priv_check_cred(%struct.ucred* %0, i32 %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @PRIV_VALID(i32 %6)
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = inttoptr i64 %9 to i8*
  %11 = call i32 @KASSERT(i32 %7, i8* %10)
  %12 = load %struct.ucred*, %struct.ucred** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @prison_priv_check(%struct.ucred* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  br label %72

18:                                               ; preds = %2
  %19 = load i64, i64* @unprivileged_mlock, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  switch i32 %22, label %24 [
    i32 129, label %23
    i32 128, label %23
  ]

23:                                               ; preds = %21, %21
  store i32 0, i32* %5, align 4
  br label %72

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %18
  %26 = load i64, i64* @unprivileged_read_msgbuf, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @PRIV_MSGBUF, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %72

33:                                               ; preds = %28
  br label %34

34:                                               ; preds = %33, %25
  %35 = load i64, i64* @suser_enabled, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %34
  %38 = load i32, i32* %4, align 4
  switch i32 %38, label %46 [
    i32 132, label %39
    i32 131, label %39
    i32 130, label %39
  ]

39:                                               ; preds = %37, %37, %37
  %40 = load %struct.ucred*, %struct.ucred** %3, align 8
  %41 = getelementptr inbounds %struct.ucred, %struct.ucred* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %72

45:                                               ; preds = %39
  br label %53

46:                                               ; preds = %37
  %47 = load %struct.ucred*, %struct.ucred** %3, align 8
  %48 = getelementptr inbounds %struct.ucred, %struct.ucred* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %72

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52, %45
  br label %54

54:                                               ; preds = %53, %34
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @PRIV_KMEM_READ, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54
  store i32 0, i32* %5, align 4
  br label %72

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @PRIV_DEBUG_UNPRIV, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %59
  %64 = load %struct.ucred*, %struct.ucred** %3, align 8
  %65 = load i32, i32* @PR_ALLOW_UNPRIV_DEBUG, align 4
  %66 = call i64 @prison_allow(%struct.ucred* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %72

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69, %59
  %71 = load i32, i32* @EPERM, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %68, %58, %51, %44, %32, %23, %17
  %73 = call i64 (...) @SDT_PROBES_ENABLED()
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %72
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @kernel, align 4
  %81 = load i32, i32* @priv_check, align 4
  %82 = load i32, i32* @priv__err, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @SDT_PROBE1(i32 %79, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %92

85:                                               ; preds = %75
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @kernel, align 4
  %88 = load i32, i32* @priv_check, align 4
  %89 = load i32, i32* @priv__ok, align 4
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @SDT_PROBE1(i32 %86, i32 %87, i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %85, %78
  br label %93

93:                                               ; preds = %92, %72
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PRIV_VALID(i32) #1

declare dso_local i32 @prison_priv_check(%struct.ucred*, i32) #1

declare dso_local i64 @prison_allow(%struct.ucred*, i32) #1

declare dso_local i64 @SDT_PROBES_ENABLED(...) #1

declare dso_local i32 @SDT_PROBE1(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
